package mobi.beyondpod.sync;

import mobi.beyondpod.rsscore.Configuration;
import mobi.beyondpod.rsscore.Feed;
import mobi.beyondpod.rsscore.categories.CategoryManager;
import mobi.beyondpod.rsscore.categories.FeedCategory;
import mobi.beyondpod.rsscore.helpers.StringUtils;
import mobi.beyondpod.rsscore.repository.FeedRepository;

/* loaded from: classes.dex */
public class TrackedChangeFeed extends TrackedChangeBase {
    private static final int BLOB_CAT_1 = 2;
    private static final int BLOB_CAT_2 = 3;
    private static final int BLOB_CLEANUP_DAYS = 9;
    private static final int BLOB_CLEANUP_NUM_EPISODES = 8;
    private static final int BLOB_ENCLOSURE_ACTION = 6;
    private static final int BLOB_ENCLOSURE_INDEX = 10;
    private static final int BLOB_EPISODES_TO_GET = 7;
    private static final int BLOB_EPISODE_SORT_ORDER = 11;
    private static final int BLOB_FEED_NAME = 1;
    private static final int BLOB_FEED_TYPE = 4;
    private static final int BLOB_FEED_URL = 0;
    private static final int BLOB_ITEM_SORT_ORDER = 12;
    private static final int BLOB_NUM_READER_ITEMS = 5;
    private static final String TAG = "TrackedChangeFeed";
    private String _Category1;
    private String _Category2;
    private int _EnclosureAction;
    private int _EnclosureIndex;
    private int _EpisodeSortOrder;
    private String _FeedName;
    private int _FeedType;
    private String _FeedUrl;
    private int _ItemSortOrder;
    private int _NumDaysToKeep;
    private int _NumEpisodesToGet;
    private int _NumEpisodesToKeep;
    private int _NumReaderItems;

    public TrackedChangeFeed(Long l, long j, int i, int i2, String str) {
        super(l, j, i, i2, str);
        String[] parseBlob = parseBlob();
        for (int i3 = 0; i3 != parseBlob.length; i3++) {
            loadFromBlob(i3, parseBlob[i3]);
        }
    }

    public TrackedChangeFeed(int i, Feed feed) {
        super(i);
        this._FeedUrl = feed.getFeedUrl();
        this._FeedName = feed.getName();
        this._Category1 = feed.getCategories().getPrimary().value();
        this._Category2 = feed.getCategories().getSecondary().value();
        this._FeedType = feed.getType();
        this._NumReaderItems = feed.getMaxNumGReaderItemsToGet();
        this._EnclosureAction = feed.getPodcastDownloadAction();
        this._NumEpisodesToGet = feed.getMaxNumberPodcastToDownload();
        this._NumEpisodesToKeep = feed.getKeepAtMostPodcasts();
        this._NumDaysToKeep = (int) feed.getMaximumPodcastAge().getTotalDays();
        this._EpisodeSortOrder = feed.getTrackSortOrder();
        this._EnclosureIndex = feed.getPreferredEnclosureIndex();
        this._ItemSortOrder = feed.getForceFeedItemSort();
    }

    @Override // mobi.beyondpod.sync.TrackedChangeBase
    public String messageId() {
        if (this._MessageId == null) {
            this._MessageId = this._FeedUrl;
        }
        return this._MessageId;
    }

    @Override // mobi.beyondpod.sync.TrackedChangeBase
    public String friendlyName() {
        return this._FeedName + " (" + this._Category1 + ", " + this._Category2 + ")";
    }

    public String feedUrl() {
        return this._FeedUrl;
    }

    public String category1() {
        return this._Category1;
    }

    public String category2() {
        return this._Category2;
    }

    public String feedName() {
        return this._FeedName;
    }

    @Override // mobi.beyondpod.sync.TrackedChangeBase
    public void updateTo(TrackedChangeBase trackedChangeBase) {
        if (!(trackedChangeBase instanceof TrackedChangeFeed)) {
            throw new ClassCastException("Trying to update TrackedChangeFeed from " + trackedChangeBase.getClass().getSimpleName());
        }
        TrackedChangeFeed trackedChangeFeed = (TrackedChangeFeed) trackedChangeBase;
        super.updateTo(trackedChangeBase);
        this._FeedUrl = trackedChangeFeed.feedUrl();
        this._Category1 = trackedChangeFeed.category1();
        this._Category2 = trackedChangeFeed.category2();
        this._FeedName = trackedChangeFeed.feedName();
        this._FeedType = trackedChangeFeed._FeedType;
        this._NumReaderItems = trackedChangeFeed._NumReaderItems;
        this._EnclosureAction = trackedChangeFeed._EnclosureAction;
        this._NumEpisodesToGet = trackedChangeFeed._NumEpisodesToGet;
        this._NumEpisodesToKeep = trackedChangeFeed._NumEpisodesToKeep;
        this._NumDaysToKeep = trackedChangeFeed._NumDaysToKeep;
        this._EpisodeSortOrder = trackedChangeFeed._EpisodeSortOrder;
        this._EnclosureIndex = trackedChangeFeed._EnclosureIndex;
        this._ItemSortOrder = trackedChangeFeed._ItemSortOrder;
    }

    @Override // mobi.beyondpod.sync.TrackedChangeBase
    public void applyRemoteChange() {
        if (syncStatus() != 3) {
            return;
        }
        if (!isValid()) {
            updateSyncStatusTo(4);
            TrackedChangeBase.logSyncEvent(TAG, "   --- APPLY sync feed change was found for invalid feed and was ignored!", this);
            return;
        }
        Feed feedByUrl = FeedRepository.getFeedByUrl(this._FeedUrl);
        if (changeType() == 1) {
            handleFeedAdded(false);
            return;
        }
        if (changeType() == 2) {
            handleFeedDeleted();
            return;
        }
        if (changeType() == 3) {
            handleFeedModified(false);
        } else if (changeType() == 14) {
            if (feedByUrl == null) {
                handleFeedAdded(ChangeTracker.alwaysAcceptRemoteFeedPush());
            } else {
                handleFeedModified(ChangeTracker.alwaysAcceptRemoteFeedPush());
            }
        }
    }

    private void handleFeedDeleted() {
        Feed feedByUrl = FeedRepository.getFeedByUrl(this._FeedUrl);
        if (!ChangeTracker.allowRemoteFeedDeletions()) {
            TrackedChangeBase.logSyncEvent(TAG, "   --- APPLY sync FEED DELETED. Remote feed deletions are disabled! Ignoring... feed:" + feedUrl(), this);
        } else if (feedByUrl != null) {
            feedByUrl.changeTrackingEnabled = false;
            feedByUrl.tracks().disableChangeTracking();
            FeedRepository.deleteFeedAndRelatedFoldersSync(feedByUrl);
            TrackedChangeBase.logSyncEvent(TAG, "   --- APPLY sync FEED DELETED. feed:" + feedName(), this);
        } else {
            TrackedChangeBase.logSyncEvent(TAG, "   --- APPLY sync FEED DELETED. feed does not exist! Ignoring... feed:" + feedUrl(), this);
        }
        updateSyncStatusTo(4);
    }

    private void handleFeedAdded(boolean z) {
        if (ChangeTracker.allowRemoteFeedAdditions() || z) {
            if (FeedRepository.getFeedByUrl(feedUrl()) == null) {
                Feed createAndAddFeedWithDefaults = Feed.createAndAddFeedWithDefaults(this._FeedUrl, this._FeedName, null);
                if (this._FeedUrl.contains("google.com/reader/atom")) {
                    createAndAddFeedWithDefaults.setType(5);
                }
                FeedCategory findOrCreateCategory = findOrCreateCategory(category1());
                FeedCategory findOrCreateCategory2 = findOrCreateCategory(category2());
                if (findOrCreateCategory != CategoryManager.CategoryNull && createAndAddFeedWithDefaults.getCategories().getPrimary() != findOrCreateCategory) {
                    createAndAddFeedWithDefaults.getCategories().setPrimary(findOrCreateCategory);
                }
                if (findOrCreateCategory2 != CategoryManager.CategoryNull && createAndAddFeedWithDefaults.getCategories().getPrimary() != findOrCreateCategory2) {
                    createAndAddFeedWithDefaults.getCategories().setSecondary(findOrCreateCategory2);
                }
                createAndAddFeedWithDefaults.changeTrackingEnabled = false;
                FeedRepository.notifyFeedChanged(createAndAddFeedWithDefaults);
                ChangeTracker.onFeedImported(createAndAddFeedWithDefaults);
                TrackedChangeBase.logSyncEvent(TAG, "   --- APPLY sync FEED ADDED. feed:" + feedName() + " (" + findOrCreateCategory.name() + ", " + findOrCreateCategory2.name() + ")", this);
            } else {
                TrackedChangeBase.logSyncEvent(TAG, "   --- APPLY sync FEED ADDED. feed already exist! Ignoring... feed:" + feedUrl(), this);
            }
        } else {
            TrackedChangeBase.logSyncEvent(TAG, "   --- APPLY sync FEED ADDED. Remote feed additions are disabled! Ignoring... feed:" + feedUrl(), this);
        }
        updateSyncStatusTo(4);
    }

    private FeedCategory findOrCreateCategory(String str) {
        if (StringUtils.isNullOrEmpty(str)) {
            return CategoryManager.Unassigned;
        }
        if (CategoryManager.getCategoryByValue(str) == CategoryManager.CategoryNull) {
            try {
                CategoryManager.addCategory(str);
            } catch (Exception unused) {
                return CategoryManager.Unassigned;
            }
        }
        return CategoryManager.getCategoryByValue(str);
    }

    private void handleFeedModified(boolean z) {
        Feed feedByUrl = FeedRepository.getFeedByUrl(this._FeedUrl);
        if (!ChangeTracker.allowRemoteFeedModifications() && !z) {
            TrackedChangeBase.logSyncEvent(TAG, "   --- APPLY sync FEED MODIFIED. Remote feed modifications are disabled! Ignoring... feed:" + feedUrl(), this);
        } else if (feedByUrl != null) {
            boolean z2 = false;
            if (!feedByUrl.getName().equals(feedName())) {
                feedByUrl.setName(feedName());
                z2 = true;
            }
            FeedCategory findOrCreateCategory = findOrCreateCategory(category1());
            FeedCategory findOrCreateCategory2 = findOrCreateCategory(category2());
            if (feedByUrl.getCategories().getPrimary() != findOrCreateCategory) {
                feedByUrl.getCategories().setPrimary(findOrCreateCategory);
                z2 = true;
            }
            if (feedByUrl.getCategories().getSecondary() != findOrCreateCategory2) {
                feedByUrl.getCategories().setSecondary(findOrCreateCategory2);
                z2 = true;
            }
            if (z2) {
                FeedRepository.notifyFeedChanged(feedByUrl);
                TrackedChangeBase.logSyncEvent(TAG, "   --- APPLY sync FEED MODIFIED. feed:" + feedName() + " (" + findOrCreateCategory.name() + ", " + findOrCreateCategory2.name() + ")", this);
            } else {
                TrackedChangeBase.logSyncEvent(TAG, "   --- APPLY sync FEED MODIFIED. feed is already up to date! feed:" + feedName(), this);
            }
        } else {
            TrackedChangeBase.logSyncEvent(TAG, "   --- APPLY sync FEED MODIFIED. feed does not exist! Ignoring... feed:" + feedUrl(), this);
        }
        updateSyncStatusTo(4);
    }

    protected void loadFromBlob(int i, String str) {
        switch (i) {
            case 0:
                this._FeedUrl = str;
                return;
            case 1:
                this._FeedName = str;
                return;
            case 2:
                this._Category1 = str;
                return;
            case 3:
                this._Category2 = str;
                return;
            case 4:
                this._FeedType = StringUtils.safeParseInt(str, 2);
                return;
            case 5:
                this._NumReaderItems = StringUtils.safeParseInt(str, 20);
                return;
            case 6:
                this._EnclosureAction = StringUtils.safeParseInt(str, 0);
                return;
            case 7:
                this._NumEpisodesToGet = StringUtils.safeParseInt(str, 3);
                return;
            case 8:
                this._NumEpisodesToKeep = StringUtils.safeParseInt(str, 3);
                return;
            case 9:
                this._NumDaysToKeep = StringUtils.safeParseInt(str, Configuration.DEFAULT_MAXIMUM_PODCAST_AGE_IN_DAYS);
                return;
            case 10:
                this._EnclosureIndex = StringUtils.safeParseInt(str, 0);
                return;
            case 11:
                this._EpisodeSortOrder = StringUtils.safeParseInt(str, -1);
                return;
            case 12:
                this._ItemSortOrder = StringUtils.safeParseInt(str, -1);
                return;
            default:
                return;
        }
    }

    @Override // mobi.beyondpod.sync.TrackedChangeBase
    public void prepareForSave() {
        saveToBlob(this._FeedUrl, this._FeedName, this._Category1, this._Category2, String.valueOf(this._FeedType), String.valueOf(this._NumReaderItems), String.valueOf(this._EnclosureAction), String.valueOf(this._NumEpisodesToGet), String.valueOf(this._NumEpisodesToKeep), String.valueOf(this._NumDaysToKeep), String.valueOf(this._EnclosureIndex), String.valueOf(this._EpisodeSortOrder), String.valueOf(this._ItemSortOrder));
    }

    @Override // mobi.beyondpod.sync.TrackedChangeBase
    public boolean isValid() {
        Feed feedByUrl = FeedRepository.getFeedByUrl(this._FeedUrl);
        if ((this._ChangeType == 2 || this._ChangeType == 3) && feedByUrl != null) {
            return true;
        }
        return (this._ChangeType == 1 && feedByUrl == null) || this._ChangeType == 14;
    }
}
