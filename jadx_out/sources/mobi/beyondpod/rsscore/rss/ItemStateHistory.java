package mobi.beyondpod.rsscore.rss;

import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.EOFException;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.UUID;
import mobi.beyondpod.BeyondPodApplication;
import mobi.beyondpod.rsscore.Configuration;
import mobi.beyondpod.rsscore.Feed;
import mobi.beyondpod.rsscore.Track;
import mobi.beyondpod.rsscore.helpers.CoreHelper;
import mobi.beyondpod.rsscore.helpers.StringUtils;
import mobi.beyondpod.rsscore.repository.FeedRepository;
import mobi.beyondpod.rsscore.repository.RepositoryEvents;
import mobi.beyondpod.rsscore.repository.RepositoryPersistence;
import mobi.beyondpod.rsscore.rss.entities.RssFeed;
import mobi.beyondpod.rsscore.rss.entities.RssFeedItem;

/* loaded from: classes.dex */
public class ItemStateHistory {
    private static final String TAG = "ItemStateHistory";
    private static volatile int _ModificationChangeCount = 0;
    private static volatile boolean _Saving = false;
    private static Runnable _StateSaverRunnnable = new Runnable() { // from class: mobi.beyondpod.rsscore.rss.ItemStateHistory.1
        @Override // java.lang.Runnable
        public void run() {
            ItemStateHistory.saveHistoryInternal();
        }
    };
    public static int autoSaveModificationCount = 3;
    private static HashMap<UUID, HashMap<String, ItemStatus>> m_history;

    /* loaded from: classes.dex */
    public static class ItemStatus {
        static int READ = 1;
        static int READ_SYNCED = 32;
        static int SHARED = 4;
        static int STARRED = 2;
        static int STAR_SYNCED = 64;
        private volatile int _Data = 0;

        public ItemStatus() {
        }

        public ItemStatus(boolean z, boolean z2, boolean z3, boolean z4) {
            if (z3) {
                setRead();
            }
            if (z4) {
                setStarred();
            }
            if (z) {
                setReadSynced();
            }
            if (z2) {
                setStarSynced();
            }
        }

        public boolean isRead() {
            return (this._Data & READ) == READ;
        }

        public boolean isStarred() {
            return (this._Data & STARRED) == STARRED;
        }

        public boolean isShared() {
            return (this._Data & SHARED) != 0;
        }

        public boolean isReadSynced() {
            return Configuration.ignoreGoogleReaderReadStatus() || (this._Data & READ_SYNCED) != 0;
        }

        public boolean isStarSynced() {
            return (this._Data & STAR_SYNCED) != 0;
        }

        public synchronized void setRead() {
            this._Data |= READ;
            clearReadSynced();
        }

        public synchronized void clearRead() {
            this._Data &= READ ^ (-1);
            clearReadSynced();
        }

        public synchronized void setStarred() {
            this._Data |= STARRED;
            clearStarSynced();
        }

        public synchronized void clearStarred() {
            this._Data &= STARRED ^ (-1);
            clearStarSynced();
        }

        public synchronized void setShared() {
            this._Data |= SHARED;
        }

        public synchronized void clearShared() {
            this._Data &= SHARED ^ (-1);
        }

        public synchronized void setReadSynced() {
            this._Data |= READ_SYNCED;
        }

        public synchronized void clearReadSynced() {
            this._Data &= READ_SYNCED ^ (-1);
        }

        public synchronized void setStarSynced() {
            this._Data |= STAR_SYNCED;
        }

        public synchronized void clearStarSynced() {
            this._Data &= STAR_SYNCED ^ (-1);
        }

        public void write(DataOutputStream dataOutputStream) throws IOException {
            dataOutputStream.writeInt(this._Data);
        }

        public void read(DataInputStream dataInputStream) throws IOException {
            this._Data = dataInputStream.readInt();
        }

        public String toString() {
            return String.format("RS:%s, SS:%s - R:%s, S:%s", Boolean.valueOf(isReadSynced()), Boolean.valueOf(isStarSynced()), Boolean.valueOf(isRead()), Boolean.valueOf(isStarred()));
        }
    }

    private static HashMap<UUID, HashMap<String, ItemStatus>> history() {
        if (m_history == null) {
            loadHistory();
        }
        return m_history;
    }

    private static ItemStatus getItemStatus(RssFeedItem rssFeedItem) {
        HashMap<String, ItemStatus> hashMap;
        UUID originatingFeedID = rssFeedItem.originatingFeedID();
        String itemID = rssFeedItem.itemID();
        if (originatingFeedID == null || rssFeedItem == null || itemID == null || (hashMap = history().get(originatingFeedID)) == null) {
            return null;
        }
        return hashMap.get(itemID);
    }

    public static String getItemIdUsedForStatus(RssFeedItem rssFeedItem) {
        ItemStatus itemStatus;
        UUID originatingFeedID = rssFeedItem.originatingFeedID();
        String itemID = rssFeedItem.itemID();
        if (originatingFeedID == null || rssFeedItem == null || itemID == null) {
            return null;
        }
        HashMap<String, ItemStatus> hashMap = history().get(originatingFeedID);
        if (hashMap == null || (itemStatus = hashMap.get(itemID)) == null) {
            return isFeedlyItemKey(itemID) ? "NA-FOR-READER-ITEMS" : "STATUS-NOT-FOUND";
        }
        return ">" + itemID + "< (" + itemStatus.toString() + ")";
    }

    public static boolean hasStatusFor(RssFeedItem rssFeedItem) {
        return getItemStatus(rssFeedItem) != null;
    }

    public static boolean isItemRead(RssFeedItem rssFeedItem) {
        ItemStatus itemStatus = getItemStatus(rssFeedItem);
        return itemStatus != null && itemStatus.isRead();
    }

    public static void setItemAsRead(RssFeedItem rssFeedItem) {
        if (rssFeedItem == null) {
            return;
        }
        synchronized (history()) {
            ItemStatus orCreateItemStatus = getOrCreateItemStatus(rssFeedItem);
            logFirstReaderStatusChange(rssFeedItem);
            orCreateItemStatus.setRead();
            markModified();
        }
        autoSaveHistory();
    }

    private static void logFirstReaderStatusChange(RssFeedItem rssFeedItem) {
        if (Configuration.enableLoggingInProduction() && isFeedlyItemKey(rssFeedItem.itemID()) && !hasUnsynchronizedGoogleReaderItems()) {
            CoreHelper.writeLogEntryInProduction(TAG, "*** First Reader change triggred by: " + ((Object) rssFeedItem.Title) + " ->" + rssFeedItem.OriginatingFeed);
        }
    }

    public static void clearItemReadStatus(RssFeedItem rssFeedItem) {
        ItemStatus orCreateItemStatus = getOrCreateItemStatus(rssFeedItem);
        logFirstReaderStatusChange(rssFeedItem);
        synchronized (history()) {
            orCreateItemStatus.clearRead();
            markModified();
        }
        autoSaveHistory();
    }

    public static void setItemAsStarred(RssFeedItem rssFeedItem) {
        synchronized (history()) {
            ItemStatus orCreateItemStatus = getOrCreateItemStatus(rssFeedItem);
            logFirstReaderStatusChange(rssFeedItem);
            if (Configuration.enableLoggingInProduction() && isFeedlyItemKey(rssFeedItem.itemID())) {
                CoreHelper.writeLogEntryInProduction(TAG, "*** Starred reader post: " + ((Object) rssFeedItem.Title) + " ->" + rssFeedItem.OriginatingFeed);
            }
            orCreateItemStatus.setStarred();
            markModified();
        }
        autoSaveHistory();
    }

    public static void clearItemStarredStatus(RssFeedItem rssFeedItem) {
        ItemStatus orCreateItemStatus = getOrCreateItemStatus(rssFeedItem);
        synchronized (history()) {
            logFirstReaderStatusChange(rssFeedItem);
            if (Configuration.enableLoggingInProduction() && isFeedlyItemKey(rssFeedItem.itemID())) {
                CoreHelper.writeLogEntryInProduction(TAG, "*** clear starred on reader post: " + ((Object) rssFeedItem.Title) + " ->" + rssFeedItem.OriginatingFeed);
            }
            orCreateItemStatus.clearStarred();
            markModified();
        }
        autoSaveHistory();
    }

    public static boolean isItemStarred(RssFeedItem rssFeedItem) {
        ItemStatus itemStatus = getItemStatus(rssFeedItem);
        return itemStatus != null && itemStatus.isStarred();
    }

    private static ItemStatus getOrCreateItemStatus(RssFeedItem rssFeedItem) {
        ItemStatus itemStatus;
        UUID originatingFeedID = rssFeedItem.originatingFeedID();
        ItemStatus itemStatus2 = getItemStatus(rssFeedItem);
        if (itemStatus2 != null) {
            return itemStatus2;
        }
        HashMap<String, ItemStatus> hashMap = history().get(originatingFeedID);
        synchronized (history()) {
            if (hashMap == null) {
                try {
                    hashMap = new HashMap<>();
                    history().put(originatingFeedID, hashMap);
                } catch (Throwable th) {
                    throw th;
                }
            }
            itemStatus = new ItemStatus(true, true, rssFeedItem.getRead(), rssFeedItem.getStarred());
            hashMap.put(rssFeedItem.itemID(), itemStatus);
        }
        return itemStatus;
    }

    public static void removeAllItemsFor(UUID uuid) {
        if (history().containsKey(uuid)) {
            synchronized (history()) {
                history().remove(uuid);
            }
            markModified();
        }
    }

    public static void clearHistory() {
        synchronized (history()) {
            history().clear();
        }
        markModified();
    }

    public static void purgeOldRecordsForFeed(RssFeed rssFeed) {
        if (rssFeed == null) {
            return;
        }
        synchronized (history()) {
            if (history().containsKey(rssFeed.FeedID)) {
                ArrayList arrayList = new ArrayList();
                for (String str : history().get(rssFeed.FeedID).keySet()) {
                    if (rssFeed.GetItemById(str) == null) {
                        arrayList.add(str);
                    } else {
                        ItemStatus itemStatus = history().get(rssFeed.FeedID).get(str);
                        if (!Configuration.ignoreGoogleReaderReadStatus() && itemStatus.isReadSynced() && itemStatus.isStarSynced()) {
                            arrayList.add(str);
                        }
                    }
                }
                if (arrayList.size() > 0) {
                    Iterator it = arrayList.iterator();
                    while (it.hasNext()) {
                        history().get(rssFeed.FeedID).remove((String) it.next());
                    }
                    CoreHelper.writeTraceEntry(TAG, ">>> Purged " + arrayList.size() + " items from the Item State history for feed " + rssFeed.Title);
                    markModified();
                }
            }
        }
    }

    public static HashMap<String, ItemStatus> getAllUnsynchronizedGoogleReaderItems() {
        HashMap<String, ItemStatus> hashMap = new HashMap<>();
        synchronized (history()) {
            for (UUID uuid : m_history.keySet()) {
                Feed feedById = FeedRepository.getFeedById(uuid);
                if (feedById != null && feedById.isGReaderFeed() && m_history.get(uuid).keySet().size() > 0) {
                    for (String str : m_history.get(uuid).keySet()) {
                        ItemStatus itemStatus = m_history.get(uuid).get(str);
                        if (!itemStatus.isReadSynced() || !itemStatus.isStarSynced()) {
                            hashMap.put(str, itemStatus);
                        }
                    }
                }
            }
        }
        return hashMap;
    }

    public static boolean hasUnsynchronizedGoogleReaderItems() {
        synchronized (history()) {
            for (UUID uuid : m_history.keySet()) {
                if (m_history.get(uuid).keySet().size() > 0) {
                    for (String str : m_history.get(uuid).keySet()) {
                        if (!isFeedlyItemKey(str)) {
                            break;
                        }
                        ItemStatus itemStatus = m_history.get(uuid).get(str);
                        if (!itemStatus.isReadSynced() || !itemStatus.isStarSynced()) {
                            return true;
                        }
                    }
                }
            }
            return false;
        }
    }

    public static void purgeAllGoogleReaderItems() {
        synchronized (history()) {
            for (UUID uuid : m_history.keySet()) {
                Iterator<String> it = m_history.get(uuid).keySet().iterator();
                if (it.hasNext() && isFeedlyItemKey(it.next())) {
                    m_history.get(uuid).clear();
                    markModified();
                    CoreHelper.writeTraceEntry(TAG, "Purged all Reader history items for feed id: " + uuid);
                }
            }
        }
        saveHistoryAsync();
    }

    private static boolean isFeedlyItemKey(String str) {
        return str.length() > 20;
    }

    public static void setItemsAsReadUnread(List<RssFeedItem> list, boolean z) {
        synchronized (history()) {
            for (RssFeedItem rssFeedItem : list) {
                if (rssFeedItem.itemID() != null && (z || !rssFeedItem.IsGoogleReadLocked || Configuration.ignoreGoogleReaderReadStatus())) {
                    if (!rssFeedItem.isMockItem().booleanValue()) {
                        ItemStatus orCreateItemStatus = getOrCreateItemStatus(rssFeedItem);
                        logFirstReaderStatusChange(rssFeedItem);
                        if (z) {
                            orCreateItemStatus.setRead();
                        } else {
                            orCreateItemStatus.clearRead();
                        }
                        rssFeedItem.clearGoogleRead();
                        _ModificationChangeCount++;
                    }
                }
            }
        }
        saveHistoryAsync();
    }

    public static void markModified() {
        _ModificationChangeCount++;
    }

    private static void autoSaveHistory() {
        if (_ModificationChangeCount > autoSaveModificationCount) {
            saveHistoryAsync();
        }
    }

    static {
        loadHistory();
    }

    public static void saveHistoryAsync() {
        RepositoryPersistence.repositoryHandler().removeCallbacks(_StateSaverRunnnable);
        RepositoryPersistence.repositoryHandler().post(_StateSaverRunnnable);
    }

    public static void saveHistorySync() {
        if (_Saving) {
            return;
        }
        saveHistoryInternal();
    }

    private static void loadHistory() {
        FileInputStream fileInputStream;
        UUID uuid;
        m_history = new HashMap<>();
        File file = new File(Configuration.itemHistoryFilePath());
        if (file.exists()) {
            FileInputStream fileInputStream2 = null;
            try {
                try {
                    try {
                        fileInputStream = new FileInputStream(file);
                    } catch (Exception e) {
                        e = e;
                    }
                    try {
                        try {
                            DataInputStream dataInputStream = new DataInputStream(fileInputStream);
                            while (true) {
                                try {
                                    try {
                                        uuid = UUID.fromString(dataInputStream.readUTF());
                                    } catch (Exception unused) {
                                        uuid = null;
                                    }
                                    int readInt = dataInputStream.readInt();
                                    if (uuid != null) {
                                        HashMap<String, ItemStatus> hashMap = m_history.get(uuid);
                                        if (hashMap == null) {
                                            hashMap = new HashMap<>();
                                        }
                                        for (int i = 0; i != readInt; i++) {
                                            String readUTF = dataInputStream.readUTF();
                                            ItemStatus itemStatus = new ItemStatus();
                                            itemStatus.read(dataInputStream);
                                            hashMap.put(readUTF, itemStatus);
                                        }
                                        m_history.put(uuid, hashMap);
                                    }
                                } catch (EOFException unused2) {
                                    fileInputStream.close();
                                    if (fileInputStream != null) {
                                        fileInputStream.close();
                                    }
                                }
                            }
                        } catch (Throwable th) {
                            th = th;
                            if (fileInputStream != null) {
                                try {
                                    fileInputStream.close();
                                } catch (Exception e2) {
                                    CoreHelper.logException(TAG, "Unable to load download history(). reason: ", e2);
                                }
                            }
                            throw th;
                        }
                    } catch (Exception e3) {
                        e = e3;
                        fileInputStream2 = fileInputStream;
                        CoreHelper.logException(TAG, "Unable to load download history(). reason: ", e);
                        if (fileInputStream2 != null) {
                            fileInputStream2.close();
                        }
                        _ModificationChangeCount = 0;
                    }
                } catch (Throwable th2) {
                    th = th2;
                    fileInputStream = fileInputStream2;
                }
            } catch (Exception e4) {
                CoreHelper.logException(TAG, "Unable to load download history(). reason: ", e4);
            }
        }
        _ModificationChangeCount = 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:47:0x014c A[Catch: Exception -> 0x017b, all -> 0x019e, TryCatch #8 {Exception -> 0x017b, blocks: (B:45:0x0145, B:47:0x014c, B:52:0x015e, B:54:0x0164, B:56:0x016e), top: B:44:0x0145, outer: #15 }] */
    /* JADX WARN: Removed duplicated region for block: B:52:0x015e A[Catch: Exception -> 0x017b, all -> 0x019e, TryCatch #8 {Exception -> 0x017b, blocks: (B:45:0x0145, B:47:0x014c, B:52:0x015e, B:54:0x0164, B:56:0x016e), top: B:44:0x0145, outer: #15 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void saveHistoryInternal() {
        /*
            Method dump skipped, instructions count: 418
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: mobi.beyondpod.rsscore.rss.ItemStateHistory.saveHistoryInternal():void");
    }

    public static String dumpHistory() {
        boolean z;
        StringBuilder sb = new StringBuilder();
        sb.append(">>> Item history Dump------------\n ");
        synchronized (history()) {
            z = true;
            for (UUID uuid : m_history.keySet()) {
                if (m_history.get(uuid).keySet().size() > 0) {
                    z = false;
                    sb.append(uuid);
                    sb.append("(");
                    sb.append(m_history.get(uuid).keySet().size());
                    sb.append(")\n");
                    for (String str : m_history.get(uuid).keySet()) {
                        sb.append("  ");
                        sb.append(str);
                        sb.append(":");
                        sb.append(m_history.get(uuid).get(str));
                        sb.append("\n");
                    }
                    sb.append("\n");
                }
            }
        }
        if (z) {
            sb.append(">>> The Item State history is empty!");
        }
        return sb.toString();
    }

    public static void markTracksItemAsRead(Track track) {
        if (StringUtils.isNullOrEmpty(track.rssItemID())) {
            return;
        }
        Feed parentFeed = track.getParentFeed();
        RssFeedItem rssFeedItem = new RssFeedItem(parentFeed.id(), track.rssItemID());
        if (isItemRead(rssFeedItem)) {
            return;
        }
        setItemAsRead(rssFeedItem);
        CoreHelper.writeLogEntryInProduction(TAG, String.format("Marked Item as READ when item's track is marked as PLAYED! track: %s (id:%s)...", track.displayName(), track.rssItemID()));
        if (parentFeed.numUnreadItems() > 0) {
            parentFeed.setNumUnreadItems(parentFeed.numUnreadItems() - 1);
        }
        BeyondPodApplication.messageBus.publishEventAsync(new RepositoryEvents.RepositoryEvent(15, track));
        saveHistoryAsync();
    }

    public static void markTracksItemAsUnRead(Track track) {
        if (StringUtils.isNullOrEmpty(track.rssItemID())) {
            return;
        }
        Feed parentFeed = track.getParentFeed();
        RssFeedItem rssFeedItem = new RssFeedItem(parentFeed.id(), track.rssItemID());
        if (isItemRead(rssFeedItem)) {
            clearItemReadStatus(rssFeedItem);
            CoreHelper.writeLogEntryInProduction(TAG, String.format("Marked Item as UN-READ when item's track is marked as UN-PLAYED! track: %s (id:%s)...", track.displayName(), track.rssItemID()));
            if (parentFeed.numUnreadItems() >= 0) {
                parentFeed.setNumUnreadItems(parentFeed.numUnreadItems() + 1);
            }
            BeyondPodApplication.messageBus.publishEventAsync(new RepositoryEvents.RepositoryEvent(15, track));
            saveHistoryAsync();
        }
    }
}
