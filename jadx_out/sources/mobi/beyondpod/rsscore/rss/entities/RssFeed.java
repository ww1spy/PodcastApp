package mobi.beyondpod.rsscore.rss.entities;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Date;
import java.util.Hashtable;
import java.util.Iterator;
import java.util.List;
import java.util.UUID;
import mobi.beyondpod.rsscore.Feed;
import mobi.beyondpod.rsscore.FeedList;
import mobi.beyondpod.rsscore.helpers.CoreHelper;
import mobi.beyondpod.rsscore.helpers.MediaFile;
import mobi.beyondpod.rsscore.helpers.StringUtils;
import mobi.beyondpod.rsscore.repository.FeedRepository;
import mobi.beyondpod.rsscore.rss.ItemStateHistory;

/* loaded from: classes.dex */
public class RssFeed {
    public static final String IMG_ITUNES_KEY = "itunes";
    public static final String IMG_RSS_CHILD_ITEM_KEY = "rssChildItem";
    public static final String IMG_RSS_KEY = "rss";
    public UUID FeedID;
    public int FeedType;
    public Date LastRetrievalDate;
    SimpleDateFormat _FeedItemDateFormat;
    public final ArrayList<RssFeedItem> Items = new ArrayList<>();
    public Hashtable<String, String> FeedImageLinks = new Hashtable<>();
    ArrayList<RssFeedItem> _VisibleItems = null;
    public int PreferredEnclosureIndex = 0;
    public boolean IgnoreEnclosures = false;
    public int ItemIDGenerationAlgorithm = 1;
    public boolean RTL = false;
    public boolean IsSuspectedNotSubscribedInGoogleReader = false;
    public String Title = "";
    public String Link = "";
    public String Description = "";
    public Date PubDate = null;
    public Integer Ttl = null;

    public boolean IsSubscribedInGoogleReader() {
        return true;
    }

    public boolean IsOld() {
        if (this.LastRetrievalDate == null) {
            return false;
        }
        return System.currentTimeMillis() - this.LastRetrievalDate.getTime() > ((long) (this.Ttl != null ? this.Ttl.intValue() : CoreHelper.MillisecondsInDay));
    }

    public int getDaysOld() {
        if (this.LastRetrievalDate == null) {
            return 0;
        }
        return ((int) (System.currentTimeMillis() - this.LastRetrievalDate.getTime())) / CoreHelper.MillisecondsInDay;
    }

    private boolean FeedItemsHaveValidGuids() {
        int min = Math.min(10, this.Items.size());
        ArrayList arrayList = new ArrayList(min);
        for (int i = 0; i != min; i++) {
            String str = this.Items.get(i).Guid;
            if (!StringUtils.isNullOrEmpty(str) && !arrayList.contains(str)) {
                arrayList.add(str);
            }
        }
        return arrayList.size() > 0 && arrayList.size() == min;
    }

    public int AutodetectFingerprintType() {
        return FeedItemsHaveValidGuids() ? 2 : 1;
    }

    public int AutodetectSortOrder() {
        if (this.Items.size() <= 1) {
            return -1;
        }
        Date pubDate = this.Items.get(0).pubDate();
        Date pubDate2 = this.Items.get(this.Items.size() - 1).pubDate();
        if (pubDate == null || pubDate2 == null) {
            return -1;
        }
        if (pubDate2.after(pubDate)) {
            return 2;
        }
        return pubDate.after(pubDate2) ? 3 : -1;
    }

    public int peekEnclosureMediaTypes() {
        MediaFile.MediaFileType fileType;
        if (this.Items.size() == 0) {
            return -1;
        }
        try {
            int min = Math.min(this.Items.size(), 10);
            int i = 0;
            int i2 = 0;
            int i3 = 0;
            for (int i4 = 0; i4 != min; i4++) {
                RssEnclosure enclosure = this.Items.get(i4).enclosure();
                if (enclosure != null) {
                    int fileTypeForMimeType = MediaFile.getFileTypeForMimeType(enclosure.Type);
                    if (fileTypeForMimeType == 0 && (fileType = MediaFile.getFileType(enclosure.fileName())) != null) {
                        fileTypeForMimeType = fileType.fileType;
                    }
                    if (MediaFile.isImageFileType(fileTypeForMimeType)) {
                        i++;
                    } else if (MediaFile.isAudioFileType(fileTypeForMimeType) || MediaFile.isVideoFileType(fileTypeForMimeType)) {
                        i2++;
                    } else {
                        i3++;
                    }
                }
            }
            if (i == 0 && i2 == 0 && i3 == 0) {
                return 0;
            }
            if (i > 0 && i2 == 0 && i3 == 0) {
                return 1;
            }
            return (i == 0 && i2 > 0 && i3 == 0) ? 2 : 3;
        } catch (Exception unused) {
            return -1;
        }
    }

    public String getFeedImageLink() {
        if (this.FeedImageLinks.containsKey(IMG_ITUNES_KEY)) {
            return this.FeedImageLinks.get(IMG_ITUNES_KEY);
        }
        if (this.FeedImageLinks.containsKey(IMG_RSS_KEY)) {
            return this.FeedImageLinks.get(IMG_RSS_KEY);
        }
        if (this.FeedImageLinks.containsKey(IMG_RSS_CHILD_ITEM_KEY)) {
            return this.FeedImageLinks.get(IMG_RSS_CHILD_ITEM_KEY);
        }
        return null;
    }

    public RssEnclosure GetEnclosureByLocalFileName(String str) {
        Iterator<RssFeedItem> it = this.Items.iterator();
        while (it.hasNext()) {
            RssFeedItem next = it.next();
            if (next.enclosure() != null && StringUtils.equalsIgnoreCase(next.enclosure().localFileName(), str)) {
                return next.enclosure();
            }
        }
        return null;
    }

    public ArrayList<RssEnclosure> GetDownloadableEnclosures(int i) {
        ArrayList<RssEnclosure> arrayList = new ArrayList<>();
        if (i <= 0) {
            return arrayList;
        }
        Iterator<RssFeedItem> it = this.Items.iterator();
        while (it.hasNext()) {
            RssFeedItem next = it.next();
            if (next.enclosure() != null) {
                if (!next.enclosure().downloaded() && !next.enclosure().isEnclosureInHistory()) {
                    arrayList.add(next.enclosure());
                }
                i--;
                if (i == 0) {
                    break;
                }
            }
        }
        return arrayList;
    }

    public ArrayList<RssEnclosure> GetCatchUpDownloadableEnclosures(int i) {
        ArrayList<RssEnclosure> arrayList = new ArrayList<>();
        if (i <= 0) {
            return arrayList;
        }
        Collections.sort(this.Items, new RssFeedItemSorter(2));
        Iterator<RssFeedItem> it = this.Items.iterator();
        while (it.hasNext()) {
            RssFeedItem next = it.next();
            if (next.enclosure() != null && !next.enclosure().downloaded() && !next.enclosure().isEnclosureInHistory()) {
                arrayList.add(next.enclosure());
                i--;
                if (i == 0) {
                    break;
                }
            }
        }
        return arrayList;
    }

    public RssFeedItem GetItemById(String str) {
        Iterator<RssFeedItem> it = this.Items.iterator();
        while (it.hasNext()) {
            RssFeedItem next = it.next();
            if (next.itemID() != null && next.itemID().equals(str)) {
                return next;
            }
        }
        return null;
    }

    public int NumUnreadItems() {
        int i = 0;
        for (int i2 = 0; i2 != this.Items.size(); i2++) {
            if (i2 < this.Items.size() && !this.Items.get(i2).getRead()) {
                i++;
            }
        }
        return i;
    }

    public void SetAllItemsAsRead() {
        SetItemsAsReadUnread(this.Items, true);
    }

    public void ClearAllItemsReadStatus() {
        SetItemsAsReadUnread(this.Items, false);
    }

    public void SetItemsAsReadUnread(List<RssFeedItem> list, boolean z) {
        ItemStateHistory.setItemsAsReadUnread(list, z);
        SyncAllDownloadedWithRead(!z);
        SyncAllPlayedWithRead();
        SyncOwnerFeedReadStatus();
    }

    public void SyncAllDownloadedWithRead(boolean z) {
        Iterator<RssFeedItem> it = this.Items.iterator();
        while (it.hasNext()) {
            it.next().syncDownloadedWithRead(z);
        }
    }

    public void SyncAllDownloadedWithLocalTrack() {
        Iterator<RssFeedItem> it = this.Items.iterator();
        while (it.hasNext()) {
            it.next().syncDownloadedWithLocalTrack();
        }
    }

    public void SyncAllPlayedWithRead() {
        Iterator<RssFeedItem> it = this.Items.iterator();
        while (it.hasNext()) {
            it.next().syncPlayedWithRead();
        }
    }

    public void SyncShowNotesWithLocalTrack() {
        Iterator<RssFeedItem> it = this.Items.iterator();
        while (it.hasNext()) {
            it.next().syncShowNotesWithLocalTrack();
        }
    }

    public FeedList GetAllOriginatingFeeds() {
        FeedList feedList = new FeedList();
        Iterator<RssFeedItem> it = this.Items.iterator();
        while (it.hasNext()) {
            Feed feedById = FeedRepository.getFeedById(it.next().originatingFeedID());
            if (feedById != null && !feedList.contains(feedById)) {
                feedList.add(feedById);
            }
        }
        return feedList;
    }

    public void SyncOwnerFeedReadStatus() {
        Feed feedById = FeedRepository.getFeedById(this.FeedID);
        if (feedById != null) {
            feedById.setNumUnreadItems(NumUnreadItems());
        }
    }

    public int UnreadItemsCount() {
        Iterator<RssFeedItem> it = this.Items.iterator();
        int i = 0;
        while (it.hasNext()) {
            if (!it.next().getRead()) {
                i++;
            }
        }
        return i;
    }

    public void HideReadItems() {
        Iterator<RssFeedItem> it = this.Items.iterator();
        boolean z = false;
        while (it.hasNext()) {
            RssFeedItem next = it.next();
            next.Visible = !next.getRead();
            if (!next.Visible) {
                z = true;
            }
        }
        if (z) {
            this._VisibleItems = new ArrayList<>();
            Iterator<RssFeedItem> it2 = this.Items.iterator();
            while (it2.hasNext()) {
                RssFeedItem next2 = it2.next();
                if (next2.Visible) {
                    this._VisibleItems.add(next2);
                }
            }
        }
    }

    public int VisibleItemCount() {
        return VisibleItems().size();
    }

    public boolean HasHiddenItems() {
        return this._VisibleItems != null && this._VisibleItems.size() < this.Items.size();
    }

    public final ArrayList<RssFeedItem> VisibleItems() {
        if (this._VisibleItems != null) {
            return this._VisibleItems;
        }
        return this.Items;
    }

    public void updateFingerprintAlgorithmTo(int i) {
        this.ItemIDGenerationAlgorithm = i;
        Iterator<RssFeedItem> it = this.Items.iterator();
        while (it.hasNext()) {
            it.next().rebuildItemId();
        }
    }

    public Date getLatestItemPubDate() {
        Date pubDate = this.Items.size() > 0 ? this.Items.get(0).pubDate() : null;
        Date pubDate2 = this.Items.size() > 1 ? this.Items.get(this.Items.size() - 1).pubDate() : null;
        return (pubDate == null || pubDate2 == null) ? pubDate != null ? pubDate : pubDate2 : pubDate.after(pubDate2) ? pubDate : pubDate2;
    }
}
