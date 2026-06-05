package mobi.beyondpod.sync;

import java.util.Date;
import java.util.UUID;
import mobi.beyondpod.BeyondPodApplication;
import mobi.beyondpod.rsscore.Feed;
import mobi.beyondpod.rsscore.helpers.StringUtils;
import mobi.beyondpod.rsscore.repository.FeedRepository;
import mobi.beyondpod.rsscore.repository.RepositoryEvents;
import mobi.beyondpod.rsscore.rss.ItemStateHistory;
import mobi.beyondpod.rsscore.rss.entities.RssFeedItem;
import mobi.beyondpod.services.auto.MediaIdHelper;

/* loaded from: classes.dex */
public class TrackedChangePost extends TrackedChangeBase {
    protected static final int BLOB_ItemId = 0;
    protected static final int BLOB_OriginatingFeedUrl = 1;
    private static final String TAG = "TrackedChangePost";
    protected RssFeedItem _RssFeedItem;

    public TrackedChangePost(int i, RssFeedItem rssFeedItem) {
        super(i);
        Feed feedById = FeedRepository.getFeedById(rssFeedItem.parentFeed().FeedID);
        if (feedById == null || StringUtils.isNullOrEmpty(feedById.getFeedUrl())) {
            return;
        }
        this._RssFeedItem = RssFeedItem.buildMockRssItem(feedById.getFeedUrl(), rssFeedItem.itemID(), rssFeedItem.Title.toString(), rssFeedItem.Link, rssFeedItem.pubDate(), rssFeedItem.taglessDescription().toString(), null, null, null);
    }

    public TrackedChangePost(Long l, long j, int i, int i2, String str) {
        super(l, j, i, i2, str);
        loadFromBlob();
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

    @Override // mobi.beyondpod.sync.TrackedChangeBase
    public String friendlyName() {
        if (!isValid()) {
            return "!!! Invalid Post (or feed does not exist) !!!";
        }
        return ((Object) this._RssFeedItem.Title) + " (FP: " + this._RssFeedItem.itemID() + ")";
    }

    @Override // mobi.beyondpod.sync.TrackedChangeBase
    public void applyRemoteChange() {
        if (syncStatus() != 3) {
            return;
        }
        if (!isValid()) {
            updateSyncStatusTo(4);
            TrackedChangeBase.logSyncEvent(TAG, "   --- APPLY sync Post change was found for a non existing feed and was ignored!", this);
            return;
        }
        switch (changeType()) {
            case 10:
                TrackedChangeBase.logSyncEvent(TAG, "   --- APPLY sync POST STARRED. Item:" + ((Object) this._RssFeedItem.Title), this);
                ItemStateHistory.setItemAsStarred(this._RssFeedItem);
                break;
            case 11:
                TrackedChangeBase.logSyncEvent(TAG, "   --- APPLY sync POST UNSTARRED. Item:" + ((Object) this._RssFeedItem.Title), this);
                ItemStateHistory.clearItemStarredStatus(this._RssFeedItem);
                break;
            case 12:
                TrackedChangeBase.logSyncEvent(TAG, "   --- APPLY sync POST READ. Item:" + ((Object) this._RssFeedItem.Title), this);
                ItemStateHistory.setItemAsRead(this._RssFeedItem);
                break;
            case 13:
                TrackedChangeBase.logSyncEvent(TAG, "   --- APPLY sync POST UNREAD. Item:" + ((Object) this._RssFeedItem.Title), this);
                ItemStateHistory.clearItemReadStatus(this._RssFeedItem);
                break;
        }
        updateSyncStatusTo(4);
        BeyondPodApplication.messageBus.publishEventAsync(new RepositoryEvents.RepositoryEvent(15));
    }

    protected void loadFromBlob() {
        String[] parseBlob = parseBlob();
        String str = null;
        String str2 = null;
        for (int i = 0; i != parseBlob.length; i++) {
            switch (i) {
                case 0:
                    str2 = parseBlob[i];
                    break;
                case 1:
                    str = parseBlob[i];
                    break;
            }
        }
        this._RssFeedItem = RssFeedItem.buildMockRssItem(str, str2, "", "", new Date(), "", null, null, null);
    }

    @Override // mobi.beyondpod.sync.TrackedChangeBase
    public void prepareForSave() {
        saveToBlob(this._RssFeedItem.itemID(), this._RssFeedItem.parentFeed().Link);
    }

    @Override // mobi.beyondpod.sync.TrackedChangeBase
    public boolean isValid() {
        return (this._RssFeedItem == null || FeedRepository.getFeedByUrl(this._RssFeedItem.parentFeed().Link) == null || StringUtils.isNullOrEmpty(this._RssFeedItem.itemID())) ? false : true;
    }
}
