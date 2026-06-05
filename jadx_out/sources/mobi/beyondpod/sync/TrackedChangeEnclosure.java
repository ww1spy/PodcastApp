package mobi.beyondpod.sync;

import java.util.Date;
import java.util.UUID;
import mobi.beyondpod.rsscore.Feed;
import mobi.beyondpod.rsscore.Track;
import mobi.beyondpod.rsscore.helpers.StringUtils;
import mobi.beyondpod.rsscore.repository.FeedRepository;
import mobi.beyondpod.rsscore.rss.EnclosureDownloadHistory;
import mobi.beyondpod.rsscore.rss.RssFeedCache;
import mobi.beyondpod.rsscore.rss.entities.RssEnclosure;
import mobi.beyondpod.rsscore.rss.entities.RssFeedItem;
import mobi.beyondpod.services.auto.MediaIdHelper;
import mobi.beyondpod.ui.views.notifications.NotificationPreferences;

/* loaded from: classes.dex */
public class TrackedChangeEnclosure extends TrackedChangeBase {
    protected static final int BLOB_Description = 7;
    protected static final int BLOB_EnclSize = 8;
    protected static final int BLOB_EnclType = 3;
    protected static final int BLOB_EnclUrl = 2;
    protected static final int BLOB_ItemId = 0;
    protected static final int BLOB_Link = 6;
    protected static final int BLOB_OriginatingFeedUrl = 1;
    protected static final int BLOB_PubDate = 4;
    protected static final int BLOB_Title = 5;
    public static final String REMOTE_CHANGE = "REMOTE_ADD";
    private static final String TAG = TrackedChangeEpisode.class.getSimpleName();
    protected RssFeedItem _RssFeedItem;

    public TrackedChangeEnclosure(int i, RssEnclosure rssEnclosure) {
        super(i);
        if (rssEnclosure == null) {
            return;
        }
        RssFeedItem rssFeedItem = rssEnclosure.Parent;
        Feed feedById = FeedRepository.getFeedById(rssFeedItem.parentFeed().FeedID);
        if (feedById == null || StringUtils.isNullOrEmpty(feedById.getFeedUrl()) || rssEnclosure == null) {
            return;
        }
        this._RssFeedItem = RssFeedItem.buildMockRssItem(feedById.getFeedUrl(), rssFeedItem.itemID(), rssFeedItem.Title.toString(), rssFeedItem.Link, rssFeedItem.pubDate(), rssFeedItem.taglessDescription().toString(), rssEnclosure.Url, rssEnclosure.Type, rssEnclosure.enclosureFileLength());
    }

    public TrackedChangeEnclosure(Long l, long j, int i, int i2, String str) {
        super(l, j, i, i2, str);
        loadFromBlob();
    }

    @Override // mobi.beyondpod.sync.TrackedChangeBase
    public String friendlyName() {
        String str;
        String str2;
        StringBuilder sb = new StringBuilder();
        if (isValid()) {
            str = ((Object) this._RssFeedItem.Title) + " (FP: " + this._RssFeedItem.itemID() + ")";
        } else {
            str = "!!! Invalid Episode (or feed does not exist) !!!";
        }
        sb.append(str);
        sb.append("->");
        if (isValid()) {
            str2 = this._RssFeedItem.enclosure().Url + " (type: " + this._RssFeedItem.enclosure().Type + ", Length: " + this._RssFeedItem.enclosure().enclosureFileLength() + ")";
        } else {
            str2 = "";
        }
        sb.append(str2);
        return sb.toString();
    }

    @Override // mobi.beyondpod.sync.TrackedChangeBase
    public void applyRemoteChange() {
        if (syncStatus() != 3) {
            return;
        }
        if (!isValid()) {
            updateSyncStatusTo(4);
            TrackedChangeBase.logSyncEvent(TAG, "   --- APPLY sync enclosure change was found for a invalid enclosure and was ignored!", this);
            return;
        }
        switch (changeType()) {
            case 4:
                handleStreamableTrackAdded();
                return;
            case 5:
                handleEpisodeMarkedAsDownloaded();
                return;
            case 6:
                handleEpisodeMarkedAsNotDownloaded();
                return;
            default:
                return;
        }
    }

    private void handleStreamableTrackAdded() {
        Track trackByUrl = FeedRepository.getTrackByUrl(this._RssFeedItem.enclosure().Url);
        Feed feedByUrl = FeedRepository.getFeedByUrl(this._RssFeedItem.parentFeed().Link);
        if (feedByUrl != null && ChangeTracker.allowRemoteEpisodeAdditions() && trackByUrl == null && feedByUrl.getPodcastDownloadAction() != 3) {
            Track createStreamableTrackFromEnclosure = RssFeedCache.createStreamableTrackFromEnclosure(feedByUrl, this._RssFeedItem.enclosure(), false);
            if (createStreamableTrackFromEnclosure != null) {
                createStreamableTrackFromEnclosure.changeTrackingEnabled = false;
                createStreamableTrackFromEnclosure.setProtocol(REMOTE_CHANGE);
                TrackedChangeBase.logSyncEvent(TAG, "   --- APPLY sync EPISODE ADDED. Episode:" + ((Object) this._RssFeedItem.Title), this);
            } else {
                TrackedChangeBase.logSyncEvent(TAG, "   --- APPLY sync EPISODE ADDED. Unable to create local track! Ignoring... Episode:" + ((Object) this._RssFeedItem.Title), this);
            }
        } else if (feedByUrl != null && feedByUrl.getPodcastDownloadAction() == 3) {
            TrackedChangeBase.logSyncEvent(TAG, "   --- APPLY sync EPISODE ADDED. Episode feed is set to ignore episodes! Ignoring... Episode:" + ((Object) this._RssFeedItem.Title), this);
        } else {
            TrackedChangeBase.logSyncEvent(TAG, "   --- APPLY sync EPISODE ADDED. Episode already exists! Ignoring... Episode:" + ((Object) this._RssFeedItem.Title), this);
        }
        updateSyncStatusTo(4);
    }

    private void handleEpisodeMarkedAsDownloaded() {
        if (!this._RssFeedItem.enclosure().isEnclosureInHistory()) {
            EnclosureDownloadHistory.addEnclosure(this._RssFeedItem.enclosure(), false);
        }
        TrackedChangeBase.logSyncEvent(TAG, "   --- APPLY sync EPISODE MARKED AS DOWNLOADED. Episode:" + ((Object) this._RssFeedItem.Title), this);
        updateSyncStatusTo(4);
    }

    private void handleEpisodeMarkedAsNotDownloaded() {
        if (this._RssFeedItem.enclosure().isEnclosureInHistory()) {
            EnclosureDownloadHistory.removeEnclosure(this._RssFeedItem.enclosure(), false);
        }
        TrackedChangeBase.logSyncEvent(TAG, "   --- APPLY sync EPISODE MARKED AS NOT DOWNLOADED. Episode:" + ((Object) this._RssFeedItem.Title), this);
        updateSyncStatusTo(4);
    }

    private void loadFromBlob() {
        int i;
        String[] parseBlob = parseBlob();
        int i2 = 0;
        String str = null;
        String str2 = null;
        String str3 = null;
        String str4 = null;
        Date date = null;
        String str5 = null;
        String str6 = null;
        String str7 = null;
        Long l = null;
        while (i2 != parseBlob.length) {
            switch (i2) {
                case 0:
                    i = i2;
                    str2 = parseBlob[i];
                    break;
                case 1:
                    i = i2;
                    str = parseBlob[i];
                    break;
                case 2:
                    i = i2;
                    str6 = parseBlob[i];
                    break;
                case 3:
                    i = i2;
                    str7 = parseBlob[i];
                    break;
                case 4:
                    i = i2;
                    long longValue = StringUtils.tryParseLongFromString(parseBlob[i], 0L).longValue();
                    if (longValue <= 0) {
                        date = null;
                        break;
                    } else {
                        date = new Date(longValue);
                        break;
                    }
                case 5:
                    i = i2;
                    str3 = parseBlob[i];
                    break;
                case 6:
                    i = i2;
                    str4 = parseBlob[i];
                    break;
                case 7:
                    i = i2;
                    str5 = parseBlob[i];
                    break;
                case 8:
                    i = i2;
                    long safeParseLong = StringUtils.safeParseLong(parseBlob[i2], -1L);
                    if (safeParseLong <= 0) {
                        break;
                    } else {
                        l = Long.valueOf(safeParseLong);
                        break;
                    }
                default:
                    i = i2;
                    break;
            }
            i2 = i + 1;
        }
        this._RssFeedItem = RssFeedItem.buildMockRssItem(str, str2, str3, str4, date, str5, str6, str7, l);
    }

    @Override // mobi.beyondpod.sync.TrackedChangeBase
    public void prepareForSave() {
        String[] strArr = new String[this._ChangeType == 4 ? 9 : 4];
        if (this._RssFeedItem == null || this._RssFeedItem.enclosure() == null) {
            strArr[0] = "";
            strArr[1] = "";
            strArr[2] = "";
            strArr[3] = "";
        } else {
            RssEnclosure enclosure = this._RssFeedItem.enclosure();
            strArr[0] = this._RssFeedItem.itemID();
            strArr[1] = this._RssFeedItem.parentFeed().Link;
            strArr[2] = enclosure.Url;
            strArr[3] = enclosure.Type;
            if (this._ChangeType == 4) {
                strArr[4] = this._RssFeedItem.pubDate() != null ? String.valueOf(this._RssFeedItem.pubDate().getTime()) : NotificationPreferences.NO;
                strArr[5] = this._RssFeedItem.Title.toString();
                strArr[6] = this._RssFeedItem.Link;
                strArr[7] = this._RssFeedItem.shortTaglessDescription();
                strArr[8] = enclosure.enclosureFileLength() != null ? String.valueOf(enclosure.enclosureFileLength()) : "";
            }
        }
        saveToBlob(strArr);
    }

    @Override // mobi.beyondpod.sync.TrackedChangeBase
    public boolean isValid() {
        return (this._RssFeedItem == null || FeedRepository.getFeedByUrl(this._RssFeedItem.parentFeed().Link) == null || StringUtils.isNullOrEmpty(this._RssFeedItem.itemID()) || this._RssFeedItem.enclosure() == null || StringUtils.isNullOrEmpty(this._RssFeedItem.enclosure().Url)) ? false : true;
    }

    @Override // mobi.beyondpod.sync.TrackedChangeBase
    public String messageId() {
        String str;
        if (this._MessageId == null) {
            if (this._RssFeedItem != null) {
                str = this._RssFeedItem.parentFeed().Link + MediaIdHelper.AUTO_MEDIA_ID_SEPERATOR + this._RssFeedItem.itemID();
            } else {
                str = "INVALID_MESSAGE_ID:" + UUID.randomUUID().toString();
            }
            this._MessageId = str;
        }
        return this._MessageId;
    }
}
