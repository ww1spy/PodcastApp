package mobi.beyondpod.rsscore.rss.entities;

import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.UUID;
import mobi.beyondpod.rsscore.Configuration;
import mobi.beyondpod.rsscore.Feed;
import mobi.beyondpod.rsscore.Track;
import mobi.beyondpod.rsscore.helpers.CoreHelper;
import mobi.beyondpod.rsscore.helpers.DateTime;
import mobi.beyondpod.rsscore.helpers.MediaFile;
import mobi.beyondpod.rsscore.helpers.Path;
import mobi.beyondpod.rsscore.helpers.StringUtils;
import mobi.beyondpod.rsscore.repository.FeedRepository;
import mobi.beyondpod.rsscore.rss.EnclosureDownloadHistory;
import mobi.beyondpod.rsscore.rss.ItemStateHistory;
import mobi.beyondpod.rsscore.rss.RssFeedCache;
import mobi.beyondpod.rsscore.rss.parsers.ImageParser;
import mobi.beyondpod.services.auto.MediaIdHelper;
import mobi.beyondpod.sync.ChangeTracker;

/* loaded from: classes.dex */
public class RssFeedItem implements Comparable<RssFeedItem> {
    private static final int DESCRIPTION_SNAPSHOT_SIZE = 500;
    private static final int SHOW_NOTES_MAX_SIZE = 50000;
    public String Author;
    public String Category;
    public String Description;
    public String EnclosureDuration;
    public String Guid;
    public RssItemImage Image;
    public boolean IsGoogleReadLocked;
    public String Link;
    public String OriginalPubDateString;
    public String OriginatingFeed;
    public String OriginatingFeedTitle;
    public String OriginatingItemId;
    public String ShortDescription;
    public CharSequence Title;
    public boolean Visible;
    private ArrayList<RssEnclosure> _Enclosures;
    private Boolean _GoogleRead;
    private Boolean _GoogleStarred;
    private Boolean _InGoogleReadingList;
    private Boolean _IsMockItem;
    private String _ItemId;
    private ArrayList<String> _ItemImageUrls;
    private UUID _OriginatingFeedID;
    private final RssFeed _ParentFeed;
    private Date _PubDate;
    private String _SelectedItemImageUrl;
    private String _TLPItemId;

    /* loaded from: classes.dex */
    public static class RssItemImage {
        public String Url;
        public int Width = 0;
        public int Height = 0;

        public boolean HasSize() {
            return this.Width > 0 && this.Height > 0;
        }

        public boolean IsValid() {
            return !StringUtils.isNullOrEmpty(this.Url);
        }
    }

    public RssFeedItem(UUID uuid, String str) {
        this._Enclosures = new ArrayList<>();
        this._IsMockItem = false;
        this.IsGoogleReadLocked = false;
        this.OriginatingFeedTitle = "";
        this.Visible = true;
        this._OriginatingFeedID = uuid;
        this._ItemId = str;
        this._ParentFeed = null;
    }

    public RssFeedItem(RssFeed rssFeed) {
        this._Enclosures = new ArrayList<>();
        this._IsMockItem = false;
        this.IsGoogleReadLocked = false;
        this.OriginatingFeedTitle = "";
        this.Visible = true;
        this.Title = "";
        this.Link = "";
        this.Description = "";
        this.Author = "";
        this._PubDate = null;
        this.Category = "";
        this._ParentFeed = rssFeed;
    }

    public CharSequence taglessDescription() {
        return CoreHelper.cleanHtmlTags(this.Description, 500, true);
    }

    public String shortTaglessDescription() {
        if (this.ShortDescription == null) {
            this.ShortDescription = CoreHelper.cleanHtmlTags(this.Description, 500, false).toString();
        }
        return this.ShortDescription;
    }

    public String getShowNotes() {
        if (this.Description == null) {
            return "";
        }
        if (this.Description.length() > SHOW_NOTES_MAX_SIZE) {
            return this.Description.substring(0, 49999);
        }
        return this.Description;
    }

    public UUID originatingFeedID() {
        return this._OriginatingFeedID != null ? this._OriginatingFeedID : this._ParentFeed.FeedID;
    }

    public void SetOriginatingFeedID(UUID uuid) {
        this._OriginatingFeedID = uuid;
    }

    public Date pubDate() {
        if (this._PubDate == null) {
            if (StringUtils.isNullOrEmpty(this.OriginalPubDateString)) {
                return null;
            }
            this.OriginalPubDateString = this.OriginalPubDateString.trim();
            if (this._ParentFeed != null && this._ParentFeed._FeedItemDateFormat == null) {
                this._ParentFeed._FeedItemDateFormat = DateTime.tryFindFormatOfRFC822Time(this.OriginalPubDateString);
            }
            if (this._ParentFeed != null) {
                this._PubDate = DateTime.tryParseRFC822Time(this.OriginalPubDateString, this._ParentFeed._FeedItemDateFormat);
            }
        }
        return this._PubDate;
    }

    public void setPubDate(Date date) {
        this._PubDate = date;
    }

    public Boolean isMockItem() {
        return this._IsMockItem;
    }

    public ArrayList<RssEnclosure> itemEnclosures() {
        return this._Enclosures;
    }

    public RssEnclosure enclosure() {
        int min;
        if ((this._ParentFeed == null || !this._ParentFeed.IgnoreEnclosures) && this._ParentFeed != null && (min = Math.min(this._ParentFeed.PreferredEnclosureIndex, this._Enclosures.size() - 1)) >= 0) {
            return this._Enclosures.get(min);
        }
        return null;
    }

    public void setEnclosure(RssEnclosure rssEnclosure) {
        if (rssEnclosure.isIgnorable()) {
            return;
        }
        rssEnclosure.verifyAndFixEnclosure();
        Iterator<RssEnclosure> it = this._Enclosures.iterator();
        while (it.hasNext()) {
            RssEnclosure next = it.next();
            if (rssEnclosure.Url.equals(next.Url)) {
                if (rssEnclosure.enclosureFileLength() != null && (next.enclosureFileLength() == null || rssEnclosure.enclosureFileLength().longValue() > next.enclosureFileLength().longValue())) {
                    next.setEnclosureFileLength(rssEnclosure.enclosureFileLength());
                }
                if (!StringUtils.isNullOrEmpty(next.Type) || StringUtils.isNullOrEmpty(rssEnclosure.Type)) {
                    return;
                }
                next.Type = rssEnclosure.Type;
                return;
            }
        }
        rssEnclosure.Parent = this;
        if (rssEnclosure.isAllowed()) {
            this._Enclosures.add(rssEnclosure);
        }
    }

    public boolean getRead() {
        if (ItemStateHistory.hasStatusFor(this)) {
            return ItemStateHistory.isItemRead(this);
        }
        return isGoogleRead();
    }

    public void setRead(boolean z) {
        setReadUnreadInternal(z);
        syncDownloadedWithRead(!z);
        syncPlayedWithRead();
    }

    private void setReadUnreadInternal(boolean z) {
        if (itemID() == null) {
            return;
        }
        if ((z || !this.IsGoogleReadLocked || Configuration.ignoreGoogleReaderReadStatus()) && !isMockItem().booleanValue()) {
            if (z) {
                ItemStateHistory.setItemAsRead(this);
                ChangeTracker.addLocalPostChange(12, this);
            } else {
                ItemStateHistory.clearItemReadStatus(this);
                ChangeTracker.addLocalPostChange(13, this);
            }
            clearGoogleRead();
            if (this._ParentFeed != null && originatingFeedID().equals(this._ParentFeed.FeedID)) {
                this._ParentFeed.SyncOwnerFeedReadStatus();
                return;
            }
            Feed feedById = FeedRepository.getFeedById(originatingFeedID());
            if (feedById != null) {
                RssFeedCache.syncFeedReadStatus(feedById);
            }
        }
    }

    public boolean getStarred() {
        if (ItemStateHistory.hasStatusFor(this)) {
            return ItemStateHistory.isItemStarred(this);
        }
        return isGoogleStarred();
    }

    public void setStarred(boolean z) {
        if (itemID() != null && inGoogleReadingList()) {
            if (z) {
                ItemStateHistory.setItemAsStarred(this);
                ChangeTracker.addLocalPostChange(10, this);
            } else {
                ItemStateHistory.clearItemStarredStatus(this);
                ChangeTracker.addLocalPostChange(11, this);
            }
            this._GoogleStarred = null;
        }
    }

    public void setGoogleRead() {
        this._GoogleRead = true;
    }

    public void clearGoogleRead() {
        this._GoogleRead = null;
    }

    public boolean isGoogleRead() {
        return (Configuration.ignoreGoogleReaderReadStatus() || this._GoogleRead == null || !this._GoogleRead.booleanValue()) ? false : true;
    }

    public void setGoogleStarred() {
        this._GoogleStarred = true;
    }

    public boolean isGoogleStarred() {
        return this._GoogleStarred != null && this._GoogleStarred.booleanValue();
    }

    public boolean equals(RssFeedItem rssFeedItem) {
        if (rssFeedItem == null) {
            return false;
        }
        if (this.Title != null && !this.Title.equals(rssFeedItem.Title)) {
            return false;
        }
        if (this.Link == null || this.Link.equals(rssFeedItem.Link)) {
            return pubDate() == null || pubDate().equals(rssFeedItem.pubDate());
        }
        return false;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof RssFeedItem)) {
            obj = null;
        }
        return equals((RssFeedItem) obj);
    }

    private String generateItemID() {
        if (StringUtils.isNullOrEmpty(this.OriginatingFeed) || StringUtils.isNullOrEmpty(this.OriginatingItemId)) {
            if ((this._ParentFeed == null ? 1 : this._ParentFeed.ItemIDGenerationAlgorithm) == 2) {
                if (StringUtils.isNullOrEmpty(this.Guid)) {
                    return this._TLPItemId;
                }
                return generateGuidItemDigest();
            }
            return this._TLPItemId;
        }
        return this.OriginatingItemId + MediaIdHelper.AUTO_MEDIA_ID_SEPERATOR + this.OriginatingFeed;
    }

    private String generateGuidItemDigest() {
        return StringUtils.isNullOrEmpty(this.Guid) ? "<N/A>" : Integer.toString(this.Guid.hashCode());
    }

    private String generateFingerprintItemDigest() {
        return Integer.toString((29 * (((this.Title != null ? this.Title.hashCode() : 0) * 29) + (this.Link != null ? this.Link.hashCode() : 0))) + (pubDate() != null ? pubDate().hashCode() : 0));
    }

    public String itemID() {
        if (this._TLPItemId == null) {
            this._TLPItemId = generateFingerprintItemDigest();
        }
        if (this._ItemId == null) {
            this._ItemId = generateItemID();
        }
        return this._ItemId;
    }

    public void createItemSnapshot(PrintWriter printWriter) {
        RssEnclosure enclosure = enclosure();
        Object[] objArr = new Object[14];
        objArr[0] = itemID();
        objArr[1] = this._TLPItemId;
        objArr[2] = generateGuidItemDigest();
        objArr[3] = ItemStateHistory.getItemIdUsedForStatus(this);
        objArr[4] = Boolean.valueOf(getRead());
        objArr[5] = this.Guid;
        objArr[6] = this.Guid != null ? Integer.valueOf(this.Guid.hashCode()) : "N/A";
        objArr[7] = this.Title;
        objArr[8] = this.Link;
        objArr[9] = Long.valueOf(pubDate().getTime());
        objArr[10] = enclosure == null ? "NONE" : enclosure.fileName();
        objArr[11] = enclosure == null ? "NONE" : enclosure.Url;
        objArr[12] = enclosure == null ? "N/A" : Boolean.valueOf(EnclosureDownloadHistory.hasEntryFor(enclosure));
        objArr[13] = enclosure == null ? "N/A" : Integer.valueOf(enclosure.enclosureAlternativeID());
        printWriter.print(String.format("itemID:>%s<, TLPID:>%s<, GUIDID:>%s<, read status:%s, read:%s === Guid:>%s< (%s), TLP [title:>%s<, Link:>%s<, pubDate:>%s<], enclosure File name:>%s<, enclosure URL:>%s<, In History: %s, enclosureID:>%s<\r\n", objArr));
    }

    @Override // java.lang.Comparable
    public int compareTo(RssFeedItem rssFeedItem) {
        if (rssFeedItem == null) {
            return -1;
        }
        if (pubDate() == null && rssFeedItem.pubDate() == null) {
            return 0;
        }
        if (rssFeedItem.pubDate() == null) {
            return -1;
        }
        if (pubDate() == null) {
            return 1;
        }
        return rssFeedItem.pubDate().compareTo(pubDate());
    }

    public String resolveOriginatingFeedTitle() {
        return (this._ParentFeed == null || StringUtils.equalsIgnoreCase(this._ParentFeed.Title, this.OriginatingFeedTitle)) ? "" : this.OriginatingFeedTitle;
    }

    public String toString() {
        return String.format("%s (R:%s, S:%s, gR:%s, gS:%s) %s ", pubDate(), Boolean.valueOf(getRead()), Boolean.valueOf(getStarred()), this._GoogleRead, this._GoogleStarred, itemID());
    }

    public CharSequence[] dumpEnclosures() {
        CharSequence[] charSequenceArr = new CharSequence[this._Enclosures.size()];
        for (int i = 0; i != this._Enclosures.size(); i++) {
            RssEnclosure rssEnclosure = this._Enclosures.get(i);
            StringBuilder sb = new StringBuilder();
            sb.append(rssEnclosure.Type.replace("/", " - "));
            sb.append((rssEnclosure.enclosureFileLength() == null || rssEnclosure.enclosureFileLength().longValue() <= 0) ? "" : " " + rssEnclosure.enclosureSizeAsString());
            charSequenceArr[i] = sb.toString();
        }
        return charSequenceArr;
    }

    public static boolean isGreaderId(String str) {
        return str != null && str.length() > 11;
    }

    public CharSequence dumpItemDetails() {
        StringBuilder sb;
        if (enclosure() != null) {
            sb = enclosure().dumpEnclosure();
            sb.append("\n");
        } else {
            sb = new StringBuilder();
        }
        sb.append("Post Details");
        boolean isGreaderId = isGreaderId(itemID());
        sb.append("\n  • Fingerprint type: ");
        if (!isGreaderId) {
            if ((this._ParentFeed == null ? 1 : this._ParentFeed.ItemIDGenerationAlgorithm) == 2) {
                sb.append("GUID");
            } else {
                sb.append("TIP");
            }
        } else {
            sb.append("GReader");
        }
        sb.append("\n  • itemID: ");
        sb.append(itemID());
        if (isGreaderId) {
            sb.append(" (");
            sb.append(itemID().hashCode());
            sb.append(")");
        }
        if (!this._IsMockItem.booleanValue() && !isGreaderId) {
            if (this.Guid != null) {
                sb.append("\n  • GUID: ");
                sb.append(this.Guid);
                sb.append(" (");
                sb.append(this.Guid.hashCode());
                sb.append(")");
            } else {
                sb.append("\n  • GUID Not Avaialble!");
            }
        } else if (this._IsMockItem.booleanValue()) {
            sb.append("\n  • Episode is Archived");
        }
        if (enclosure() != null) {
            sb.append("\n  • enclosureID: ");
            sb.append(enclosure().enclosureID());
            if (!isGreaderId) {
                sb.append("\n  • itemID Hash: ");
                sb.append(itemID().hashCode());
            }
        }
        return sb.toString();
    }

    public void syncDownloadedWithRead(boolean z) {
        if (enclosure() == null) {
            return;
        }
        boolean isEnclosureInHistory = enclosure().isEnclosureInHistory();
        if (!isEnclosureInHistory && getRead()) {
            EnclosureDownloadHistory.addEnclosure(enclosure(), true);
            return;
        }
        if (enclosure().getLocalEnclosureTrack() == null && isEnclosureInHistory && !getRead()) {
            if (z) {
                EnclosureDownloadHistory.removeEnclosure(enclosure(), true);
            } else {
                setReadUnreadInternal(true);
            }
        }
    }

    public void syncPlayedWithRead() {
        Track localEnclosureTrack;
        if (enclosure() == null || (localEnclosureTrack = enclosure().getLocalEnclosureTrack()) == null) {
            return;
        }
        boolean isPlayed = localEnclosureTrack.isPlayed();
        if (isPlayed && !getRead()) {
            localEnclosureTrack.clearPlayed();
        }
        if (isPlayed || !getRead()) {
            return;
        }
        localEnclosureTrack.markPlayed();
    }

    public void syncDownloadedWithLocalTrack() {
        if (enclosure() == null) {
            return;
        }
        boolean isEnclosureInHistory = enclosure().isEnclosureInHistory();
        Track localEnclosureTrack = enclosure().getLocalEnclosureTrack();
        if (isEnclosureInHistory || localEnclosureTrack == null) {
            return;
        }
        EnclosureDownloadHistory.addEnclosure(enclosure(), true);
    }

    public void syncShowNotesWithLocalTrack() {
        Track localEnclosureTrack;
        if (enclosure() == null || (localEnclosureTrack = enclosure().getLocalEnclosureTrack()) == null || localEnclosureTrack.hasShowNotes()) {
            return;
        }
        localEnclosureTrack.setShowNotes(getShowNotes());
    }

    public RssFeed parentFeed() {
        return this._ParentFeed;
    }

    public void setInGoogleReadingList() {
        this._InGoogleReadingList = true;
    }

    public boolean inGoogleReadingList() {
        return this._InGoogleReadingList != null && this._InGoogleReadingList.booleanValue();
    }

    public String selectedItemImageUrl() {
        return this._SelectedItemImageUrl;
    }

    public void setSelectedItemImageUrl(String str) {
        this._SelectedItemImageUrl = str;
    }

    public void setSelectedItemImageUrlToUseParentFeedImage() {
        this._SelectedItemImageUrl = "#" + originatingFeedID().toString();
    }

    public boolean isItemImageUsingParentFeedImage() {
        return this._SelectedItemImageUrl != null && this._SelectedItemImageUrl.startsWith("#");
    }

    public ArrayList<String> itemImageUrls() {
        if (this._ItemImageUrls != null) {
            return this._ItemImageUrls;
        }
        this._ItemImageUrls = new ArrayList<>();
        if (this.Image != null) {
            ImageParser.checkAndAddImageUrl(this._ItemImageUrls, this.Image.Url);
        }
        if (this._Enclosures.size() > 0) {
            RssEnclosure rssEnclosure = this._Enclosures.get(0);
            if (MediaFile.isImageFileType(MediaFile.getFileTypeForMimeType(rssEnclosure.Type))) {
                ImageParser.checkAndAddImageUrl(this._ItemImageUrls, rssEnclosure.Url);
            }
        }
        this._ItemImageUrls.addAll(ImageParser.parseImagesFromStringWithRegEx(this.Description));
        if (this._ItemImageUrls.size() == 0) {
            setSelectedItemImageUrlToUseParentFeedImage();
        }
        return this._ItemImageUrls;
    }

    public static RssFeedItem buildMockRssItem(String str, String str2, String str3, String str4, Date date, String str5, String str6, String str7, Long l) {
        if (StringUtils.isNullOrEmpty(str)) {
            return null;
        }
        Feed feedByUrl = FeedRepository.getFeedByUrl(str);
        RssFeed rssFeed = new RssFeed();
        rssFeed.FeedID = feedByUrl == null ? UUID.randomUUID() : feedByUrl.id();
        rssFeed.Link = str;
        RssFeedItem rssFeedItem = new RssFeedItem(rssFeed);
        rssFeedItem._IsMockItem = true;
        rssFeedItem._PubDate = date;
        rssFeedItem.Title = str3;
        rssFeedItem.Link = str4;
        rssFeedItem.Description = str5;
        if (rssFeedItem.Description == null) {
            rssFeedItem.Description = "";
        }
        rssFeedItem._ItemId = str2;
        rssFeedItem._OriginatingFeedID = rssFeed.FeedID;
        if (!StringUtils.isNullOrEmpty(str6)) {
            RssEnclosure rssEnclosure = new RssEnclosure(feedByUrl == null ? "" : feedByUrl.getFeedPath(), feedByUrl != null && feedByUrl.getForceUniqueTrackNames());
            rssEnclosure.Url = str6;
            rssEnclosure.Type = str7;
            rssEnclosure.setEnclosureFileLength(l);
            rssEnclosure.Parent = rssFeedItem;
            rssFeedItem._Enclosures.add(rssEnclosure);
        }
        return rssFeedItem;
    }

    public static RssFeedItem buildMockRssItem(Feed feed, RssFeed rssFeed, Track track) {
        if (track == null) {
            return null;
        }
        RssFeedItem rssFeedItem = new RssFeedItem(rssFeed);
        rssFeedItem._IsMockItem = true;
        rssFeedItem._PubDate = track.getLastModifiedDate();
        rssFeedItem.Title = track.displayName();
        rssFeedItem.Link = track.trackPostUrl();
        rssFeedItem.Description = track.trackDescription();
        if (rssFeedItem.Description == null) {
            rssFeedItem.Description = "";
        }
        rssFeedItem._ItemId = track.rssItemID();
        rssFeedItem._OriginatingFeedID = rssFeed.FeedID;
        RssEnclosure rssEnclosure = new RssEnclosure(track.getUrl(), feed.getFeedPath(), Path.getFileName(track.trackPath()), track.contentMimeType(), track.rssItemID(), track.getDownloadSize(), track.getLastModifiedDate(), null);
        rssEnclosure.Parent = rssFeedItem;
        rssFeedItem._Enclosures.add(rssEnclosure);
        return rssFeedItem;
    }

    public void rebuildItemId() {
        this._ItemId = null;
        itemID();
        if (enclosure() != null) {
            enclosure().resetParentItemId();
        }
    }
}
