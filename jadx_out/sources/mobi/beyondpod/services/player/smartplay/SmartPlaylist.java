package mobi.beyondpod.services.player.smartplay;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.UUID;
import mobi.beyondpod.R;
import mobi.beyondpod.rsscore.Feed;
import mobi.beyondpod.rsscore.FeedList;
import mobi.beyondpod.rsscore.Track;
import mobi.beyondpod.rsscore.categories.CategoryManager;
import mobi.beyondpod.rsscore.categories.FeedCategory;
import mobi.beyondpod.rsscore.helpers.CoreHelper;
import mobi.beyondpod.rsscore.helpers.StringUtils;
import mobi.beyondpod.rsscore.repository.FeedRepository;
import mobi.beyondpod.services.player.PlayList;

/* loaded from: classes.dex */
public class SmartPlaylist implements Cloneable {
    private static final String CATEGORY_LABEL = CoreHelper.loadResourceString(R.string.smartplay_category_label);
    public static final int DEFAULT_SMART_PLAYLIST_ID = 1;
    public static final String DEFAULT_SMART_PLAYLIST_NAME = "SmartPlay";
    private static final String TAG = "SmartPlaylist";
    ArrayList<SmartPlaylistEntry> _Entries;
    private int _PlaylistID;
    private String _PlaylistName;

    public SmartPlaylist(ArrayList<SmartPlaylistEntry> arrayList, int i, String str) {
        this._PlaylistID = 1;
        this._PlaylistName = DEFAULT_SMART_PLAYLIST_NAME;
        this._Entries = arrayList;
        this._PlaylistID = i;
        this._PlaylistName = StringUtils.isNullOrEmpty(str) ? DEFAULT_SMART_PLAYLIST_NAME : str;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean canIncludeInPlaylist(Track track, List<Track> list) {
        if (track.isPlayed()) {
            return false;
        }
        if (!track.isRemoteEpisode() || (!(track.getParentFeed().getPodcastDownloadAction() == 1 || track.getParentFeed().getPodcastDownloadAction() == 4) || track.hasDownloadStarted())) {
            return PlayList.canAddToPlaylist(track, list);
        }
        return false;
    }

    public void onCategoryRenamed(FeedCategory feedCategory) {
        for (int i = 0; i != size(); i++) {
            SmartPlaylistEntry smartPlaylistEntry = entries().get(i);
            if (smartPlaylistEntry.getCategory() != null && smartPlaylistEntry.getCategory().equals(feedCategory)) {
                smartPlaylistEntry.setIsModified(true);
            }
        }
    }

    public void onCategoryDeleted(FeedCategory feedCategory) {
        for (int i = 0; i != size(); i++) {
            SmartPlaylistEntry smartPlaylistEntry = entries().get(i);
            if (smartPlaylistEntry.getCategory() != null && smartPlaylistEntry.getCategory().equals(feedCategory)) {
                smartPlaylistEntry.markDeleted();
            }
        }
    }

    public void onFeedDeleted(Feed feed) {
        for (int i = 0; i != size(); i++) {
            SmartPlaylistEntry smartPlaylistEntry = entries().get(i);
            if (smartPlaylistEntry.getFeed() != null && smartPlaylistEntry.getFeed().equals(feed)) {
                smartPlaylistEntry.markDeleted();
            }
        }
    }

    public int size() {
        return entries().size();
    }

    public ArrayList<SmartPlaylistEntry> entries() {
        return this._Entries;
    }

    public void swapItems(int i, int i2) {
        SmartPlaylistEntry smartPlaylistEntry = entries().get(i);
        if (i2 < 0 || i2 >= size()) {
            return;
        }
        entries().set(i, entries().get(i2));
        entries().set(i2, smartPlaylistEntry);
        entries().get(i).setSortID(i);
        entries().get(i2).setSortID(i2);
    }

    public List<Track> generatePlaylist() {
        ArrayList arrayList = new ArrayList();
        Iterator<SmartPlaylistEntry> it = entries().iterator();
        while (it.hasNext()) {
            arrayList.addAll(it.next().getTracks(arrayList));
        }
        return arrayList;
    }

    public int id() {
        return this._PlaylistID;
    }

    public String name() {
        return this._PlaylistName;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean isMarkedForDeletion() {
        Iterator<SmartPlaylistEntry> it = entries().iterator();
        while (it.hasNext()) {
            if (!it.next().isMarkedForDeletion()) {
                return false;
            }
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void updateEntriesNameIds() {
        Iterator<SmartPlaylistEntry> it = entries().iterator();
        boolean z = false;
        while (it.hasNext()) {
            SmartPlaylistEntry next = it.next();
            if (!next.isMarkedForDeletion()) {
                next.setPlaylistId(this._PlaylistID);
                if (!z) {
                    next.setPlaylistName(this._PlaylistName);
                    z = true;
                } else {
                    next.setPlaylistName(null);
                }
            }
        }
    }

    public void markForDeletion() {
        Iterator<SmartPlaylistEntry> it = entries().iterator();
        while (it.hasNext()) {
            it.next().markDeleted();
        }
    }

    public void renameTo(String str) {
        if (StringUtils.isNullOrEmpty(str)) {
            str = DEFAULT_SMART_PLAYLIST_NAME;
        }
        this._PlaylistName = str;
    }

    public SmartPlaylist cloneSmartPlaylist() {
        try {
            SmartPlaylist smartPlaylist = (SmartPlaylist) clone();
            try {
                smartPlaylist._Entries = new ArrayList<>(this._Entries.size());
                Iterator<SmartPlaylistEntry> it = entries().iterator();
                while (it.hasNext()) {
                    smartPlaylist._Entries.add(it.next().cloneSmartPlaylistEntry());
                }
                return smartPlaylist;
            } catch (Exception unused) {
                return smartPlaylist;
            }
        } catch (Exception unused2) {
            return null;
        }
    }

    /* loaded from: classes.dex */
    public static class SmartPlaylistEntry implements Cloneable {
        private FeedCategory _Category;
        private String _Config;
        private int _ContentType;
        private boolean _Deleted;
        private int _EpisodeSortOrder;
        private Feed _Feed;
        private boolean _IsModified;
        private int _NumTracks;
        private int _PlaylistId;
        private String _PlaylistName;
        private int _SortID;
        private Long _StorageRowID;

        public SmartPlaylistEntry(Integer num, Integer num2) {
            this._EpisodeSortOrder = 2;
            this._ContentType = -2;
            this._PlaylistId = -1;
            this._IsModified = false;
            this._SortID = -1;
            this._Deleted = false;
            this._NumTracks = num.intValue();
            this._EpisodeSortOrder = num2.intValue();
        }

        public SmartPlaylistEntry(Feed feed, Integer num, Integer num2) {
            this(num, num2);
            this._Feed = feed;
        }

        public SmartPlaylistEntry(FeedCategory feedCategory, Integer num, Integer num2) {
            this(num, num2);
            this._Category = feedCategory;
        }

        public SmartPlaylistEntry(long j, int i, String str, String str2, int i2, String str3, int i3, int i4, int i5, String str4) {
            this(Integer.valueOf(i3), Integer.valueOf(i4));
            this._StorageRowID = Long.valueOf(j);
            this._PlaylistId = i;
            this._PlaylistName = str;
            if (!StringUtils.isNullOrEmpty(str2)) {
                this._Feed = FeedRepository.getFeedById(UUID.fromString(str2));
            } else {
                this._Category = CategoryManager.getCategoryByValue(str3);
            }
            this._SortID = i2;
            this._ContentType = i5;
            this._Config = str4;
        }

        /* JADX WARN: Removed duplicated region for block: B:12:0x0045  */
        /* JADX WARN: Removed duplicated region for block: B:15:0x004b  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public static mobi.beyondpod.services.player.smartplay.SmartPlaylist.SmartPlaylistEntry deserialize(java.io.DataInputStream r6) throws java.io.IOException {
            /*
                r0 = 0
                java.lang.String r1 = r6.readUTF()     // Catch: java.lang.IllegalArgumentException -> L18
                mobi.beyondpod.rsscore.categories.FeedCategory r2 = mobi.beyondpod.rsscore.categories.CategoryManager.getCategoryByValue(r1)     // Catch: java.lang.IllegalArgumentException -> L16
                mobi.beyondpod.rsscore.categories.FeedCategory r3 = mobi.beyondpod.rsscore.categories.CategoryManager.CategoryNull     // Catch: java.lang.IllegalArgumentException -> L1a
                if (r2 != r3) goto L32
                java.util.UUID r3 = java.util.UUID.fromString(r1)     // Catch: java.lang.IllegalArgumentException -> L1a
                mobi.beyondpod.rsscore.Feed r3 = mobi.beyondpod.rsscore.repository.FeedRepository.getFeedById(r3)     // Catch: java.lang.IllegalArgumentException -> L1a
                goto L33
            L16:
                r2 = r0
                goto L1a
            L18:
                r1 = r0
                r2 = r1
            L1a:
                java.lang.String r3 = mobi.beyondpod.services.player.smartplay.SmartPlaylist.access$000()
                java.lang.StringBuilder r4 = new java.lang.StringBuilder
                r4.<init>()
                java.lang.String r5 = "failed to parse UUID from string: "
                r4.append(r5)
                r4.append(r1)
                java.lang.String r4 = r4.toString()
                mobi.beyondpod.rsscore.helpers.CoreHelper.writeLogEntry(r3, r4)
            L32:
                r3 = r0
            L33:
                int r4 = r6.readInt()
                java.lang.Integer r4 = java.lang.Integer.valueOf(r4)
                int r6 = r6.readInt()
                java.lang.Integer r6 = java.lang.Integer.valueOf(r6)
                if (r3 == 0) goto L4b
                mobi.beyondpod.services.player.smartplay.SmartPlaylist$SmartPlaylistEntry r0 = new mobi.beyondpod.services.player.smartplay.SmartPlaylist$SmartPlaylistEntry
                r0.<init>(r3, r4, r6)
                return r0
            L4b:
                mobi.beyondpod.rsscore.categories.FeedCategory r3 = mobi.beyondpod.rsscore.categories.CategoryManager.CategoryNull
                if (r2 == r3) goto L55
                mobi.beyondpod.services.player.smartplay.SmartPlaylist$SmartPlaylistEntry r0 = new mobi.beyondpod.services.player.smartplay.SmartPlaylist$SmartPlaylistEntry
                r0.<init>(r2, r4, r6)
                return r0
            L55:
                java.lang.String r6 = mobi.beyondpod.services.player.smartplay.SmartPlaylist.access$000()
                java.lang.StringBuilder r2 = new java.lang.StringBuilder
                r2.<init>()
                java.lang.String r3 = "Unable to find feed or category with id "
                r2.append(r3)
                r2.append(r1)
                java.lang.String r1 = " in the repository"
                r2.append(r1)
                java.lang.String r1 = r2.toString()
                mobi.beyondpod.rsscore.helpers.CoreHelper.writeLogEntryInProduction(r6, r1)
                return r0
            */
            throw new UnsupportedOperationException("Method not decompiled: mobi.beyondpod.services.player.smartplay.SmartPlaylist.SmartPlaylistEntry.deserialize(java.io.DataInputStream):mobi.beyondpod.services.player.smartplay.SmartPlaylist$SmartPlaylistEntry");
        }

        public Long rowID() {
            return this._StorageRowID;
        }

        public void initRowID(Long l) {
            this._StorageRowID = l;
        }

        public boolean isMarkedForDeletion() {
            return this._Deleted;
        }

        public void markDeleted() {
            this._Deleted = true;
        }

        public boolean isModified() {
            return this._IsModified;
        }

        public void setIsModified(boolean z) {
            this._IsModified = z;
        }

        public boolean isNew() {
            return this._StorageRowID == null;
        }

        public List<Track> getTracks(List<Track> list) {
            if (getFeed() != null) {
                return FeedPlaylistTemplate.generatePlaylist(getFeed(), getNumTracks(), getEpisodeSortOrder(), getContentType(), list);
            }
            return CategoryPlaylistTemplate.generatePlaylist(getCategory(), getNumTracks(), getEpisodeSortOrder(), getContentType(), list);
        }

        public List<Feed> getFeeds() {
            FeedList feedList = new FeedList();
            if (getFeed() != null) {
                feedList.add(getFeed());
            } else {
                for (Feed feed : FeedRepository.getRootFeed().subFeeds()) {
                    if (CategoryManager.isInCategory(feed, getCategory())) {
                        feedList.add(feed);
                    }
                }
            }
            return feedList;
        }

        public String toString() {
            if (getFeed() != null) {
                return getFeed().toString();
            }
            if (getCategory() == null) {
                return "";
            }
            return SmartPlaylist.CATEGORY_LABEL + ": " + getCategory().toString();
        }

        public int getNumTracks() {
            return this._NumTracks;
        }

        public void setNumTracks(int i) {
            if (i != this._NumTracks) {
                setIsModified(true);
            }
            this._NumTracks = i;
        }

        public Feed getFeed() {
            return this._Feed;
        }

        public void setFeed(Feed feed) {
            if (this._Feed != feed) {
                setIsModified(true);
            }
            this._Feed = feed;
        }

        public FeedCategory getCategory() {
            return this._Category;
        }

        public void setCategory(FeedCategory feedCategory) {
            if (this._Category != feedCategory) {
                setIsModified(true);
            }
            this._Category = feedCategory;
        }

        public int getEpisodeSortOrder() {
            return this._EpisodeSortOrder;
        }

        public void setEpisodeSortOrder(int i) {
            if (this._EpisodeSortOrder != i) {
                setIsModified(true);
            }
            this._EpisodeSortOrder = i;
        }

        public int getContentType() {
            return this._ContentType;
        }

        public void setContentType(int i) {
            if (this._ContentType != i) {
                setIsModified(true);
            }
            this._ContentType = i;
        }

        public int getPlaylistId() {
            return this._PlaylistId;
        }

        public void setPlaylistId(int i) {
            if (this._PlaylistId != i) {
                setIsModified(true);
            }
            this._PlaylistId = i;
        }

        public String getPlaylistName() {
            return this._PlaylistName;
        }

        public void setPlaylistName(String str) {
            if (!StringUtils.equals(this._PlaylistName, str)) {
                setIsModified(true);
            }
            this._PlaylistName = str;
        }

        public String getConfig() {
            return this._Config;
        }

        public void setConfig(String str) {
            if (!StringUtils.equals(this._Config, str)) {
                setIsModified(true);
            }
            this._Config = str;
        }

        public int getSortID() {
            return this._SortID;
        }

        public void setSortID(int i) {
            if (this._SortID != i) {
                setIsModified(true);
            }
            this._SortID = i;
        }

        public SmartPlaylistEntry cloneSmartPlaylistEntry() {
            try {
                return (SmartPlaylistEntry) clone();
            } catch (Exception unused) {
                return null;
            }
        }
    }
}
