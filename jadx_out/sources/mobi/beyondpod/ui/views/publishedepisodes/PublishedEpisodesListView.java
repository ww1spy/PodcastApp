package mobi.beyondpod.ui.views.publishedepisodes;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.support.v4.app.FragmentActivity;
import android.support.v4.view.ViewCompat;
import android.util.AttributeSet;
import android.view.ActionMode;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Checkable;
import android.widget.ListAdapter;
import android.widget.PopupMenu;
import android.widget.TextView;
import android.widget.Toast;
import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import mobi.beyondpod.BeyondPodApplication;
import mobi.beyondpod.R;
import mobi.beyondpod.aggregators.AggregatorLoginHelper;
import mobi.beyondpod.downloadengine.EnclosureDownloadManager;
import mobi.beyondpod.downloadengine.RssFeedCatcher;
import mobi.beyondpod.downloadengine.UpdateAndDownloadEvents;
import mobi.beyondpod.downloadengine.VersionCheckManager;
import mobi.beyondpod.rsscore.Configuration;
import mobi.beyondpod.rsscore.Feed;
import mobi.beyondpod.rsscore.Track;
import mobi.beyondpod.rsscore.TrackList;
import mobi.beyondpod.rsscore.categories.FeedCategory;
import mobi.beyondpod.rsscore.helpers.CoreHelper;
import mobi.beyondpod.rsscore.helpers.StringUtils;
import mobi.beyondpod.rsscore.helpers.TimeSpan;
import mobi.beyondpod.rsscore.repository.FeedRepository;
import mobi.beyondpod.rsscore.repository.RepositoryEvents;
import mobi.beyondpod.rsscore.rss.LicenseManager;
import mobi.beyondpod.rsscore.rss.RssFeedCache;
import mobi.beyondpod.rsscore.rss.entities.RssFeed;
import mobi.beyondpod.rsscore.rss.entities.RssFeedItem;
import mobi.beyondpod.schedulercore.ScheduledTasksManager;
import mobi.beyondpod.services.player.PlayListEvents;
import mobi.beyondpod.ui.commands.CommandManager;
import mobi.beyondpod.ui.commands.CommandManagerBase;
import mobi.beyondpod.ui.core.FeedImageCache;
import mobi.beyondpod.ui.core.FeedRssItemList;
import mobi.beyondpod.ui.core.MasterViewState;
import mobi.beyondpod.ui.core.volley.ImageLoader;
import mobi.beyondpod.ui.dialogs.ApplicationErrorMessageDialog;
import mobi.beyondpod.ui.views.FeedContentDataSource;
import mobi.beyondpod.ui.views.MasterView;
import mobi.beyondpod.ui.views.base.IView;
import mobi.beyondpod.ui.views.base.TitleBar;
import mobi.beyondpod.ui.views.base.columnlistview.SectionedListView;
import mobi.beyondpod.ui.views.base.columnlistview.SectionedListViewAdapter;
import mobi.beyondpod.ui.views.notifications.UserNotificationManager;

/* loaded from: classes.dex */
public class PublishedEpisodesListView extends SectionedListView implements IView, RepositoryEvents.RepositoryEventListener, UpdateAndDownloadEvents.UpdateAndDownloadEventListener, PlayListEvents.PlayListEventListener {
    private static final int MENU_ADD_TO_MY_EPISODES = 86;
    private static final int MENU_ADD_TO_PLAYLIST = 76;
    private static final int MENU_CARD_LAYOUT_GROUP = 80;
    private static final int MENU_DELETE_EPISODES = 78;
    private static final int MENU_DELETE_PLAYED = 83;
    private static final int MENU_DOWNLOAD_ITEMS = 82;
    private static final int MENU_EPISODE_INFO = 79;
    private static final int MENU_MARK_ALL_AS_PLAYED = 81;
    private static final int MENU_MARK_ALL_AS_READ = 70;
    private static final int MENU_PLAY_IN_EXTERNAL_PLAYER = 75;
    private static final int MENU_PODCAST_INFO = 85;
    private static final int MENU_REMOVE_FROM_PLAYLIST = 77;
    private static final int MENU_SHARE_PODCAST_URL = 74;
    private static final int MENU_SHARE_POST_URL = 73;
    private static final int MENU_SHOW_HIDE_READ = 71;
    private static final int MENU_TOGGLE_LOCK_PODCAST = 80;
    private static final int MENU_TOGGLE_PLAYLIST = 84;
    private static final int MENU_TOGGLE_READ = 72;
    private static final String TAG = "PublishedEpisodesListView";
    private static final int VIEW_MENU_GROUP = 70;
    ActionMode _ActionMode;
    private PublishedEpisodesListViewAdapter _Adapter;
    boolean _AllowProgressDisplay;
    private boolean _CanDownloadRemoteImages;
    RssFeedCatcher _Catcher;
    private Feed _CurrentFeed;
    private RssFeedCatcher.FeedUpdateListener _FeedUpdateListener;
    View _Footer;
    View _FooterGroup;
    TextView _FooterText1;
    TextView _FooterText2;
    IListViewHeader _Header;
    private boolean _IsInPreviewMode;
    FeedContentListViewOwner _Owner;
    private boolean _PauseRefresh;
    AggregatorLoginHelper.GSyncStatusResult _ReaderSyncListener;
    SectionedListViewAdapter.ItemLocation.IObjectMapper _ScrollLocationMapper;
    private String _ScrollState;
    List<RssFeedItem> _SelectedItems;
    boolean _ShouldRefreshOnActivate;
    private TitleBar.TitleInfo _Title;
    MultiChoiceModeListener _actionModeListener;
    private static final String BEYOND_POD_FAQ = CoreHelper.loadResourceString(R.string.feed_content_list_view_beyondpod_faq);
    private static final String FAILED_TO_ADD_READER_SUBSCRIPTION_FOR_FEED = CoreHelper.loadResourceString(R.string.feed_content_list_view_failed_to_add_reader_subscription_for_feed);
    private static final String OPERATION_FAILED = CoreHelper.loadResourceString(R.string.feed_content_list_view_operation_failed);
    private static final String EPISODE_FORMATS = CoreHelper.loadResourceString(R.string.feed_content_list_view_episode_formats);
    private static final String EPISODE_DETAILS = CoreHelper.loadResourceString(R.string.feed_content_list_view_episode_details);
    private static final String FEED_CONTENT = CoreHelper.loadResourceString(R.string.feed_content_list_view_feed_content);
    private static final String UPDATE_CANCELED = CoreHelper.loadResourceString(R.string.feed_content_list_view_update_canceled);
    private static final String INVALID_OR_EXPIRED_GOOGLE_READER_LOGIN = CoreHelper.loadResourceString(R.string.feed_content_list_view_invalid_or_expired_google_reader_login);
    private static final String UPDATE_FAILED = CoreHelper.loadResourceString(R.string.feed_content_list_view_update_failed);
    private static final String OF = CoreHelper.loadResourceString(R.string.feeds_status_of);
    private static final String EPISODES_SELECTED = CoreHelper.loadResourceString(R.string.multiselect_episodes_selected);

    /* loaded from: classes.dex */
    public interface FeedContentListViewOwner {
        void enableDisableActionBarScroll(boolean z);

        void enableDisablePullToRefresh(boolean z);

        FragmentActivity getActivity();

        Feed getDefaultFeed();

        void onFeedUpdateCompleted();

        void onFeedUpdateStarted();

        void onPlayPause(RssFeedItem rssFeedItem);

        void refreshActiveViewTitle();

        void subscribeToCurrentFeed(Feed feed);
    }

    /* loaded from: classes.dex */
    public interface IListViewHeader {
        void initialize(PublishedEpisodesListView publishedEpisodesListView, FragmentActivity fragmentActivity);

        void notifyCardSizeChanged();

        void refreshContent();

        void setCurrentFeed(Feed feed);

        void toggleProgressIndicator(boolean z);
    }

    /* loaded from: classes.dex */
    public interface MultiChoiceModeListener extends ActionMode.Callback {
        void onItemCheckedStateChanged(ActionMode actionMode, RssFeedItem rssFeedItem);
    }

    public boolean canDownloadRemoteImages() {
        return this._CanDownloadRemoteImages;
    }

    public void subscribeToCurrentFeed() {
        this._Owner.subscribeToCurrentFeed(this._CurrentFeed);
    }

    public PublishedEpisodesListView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this._CanDownloadRemoteImages = false;
        this._PauseRefresh = false;
        this._actionModeListener = new MultiChoiceModeListener() { // from class: mobi.beyondpod.ui.views.publishedepisodes.PublishedEpisodesListView.1
            @Override // android.view.ActionMode.Callback
            public boolean onPrepareActionMode(ActionMode actionMode, Menu menu) {
                refreshActionModeTitle(actionMode);
                menu.clear();
                PublishedEpisodesListView.this.prepareActionModeOptionsMenu(menu);
                return true;
            }

            @Override // android.view.ActionMode.Callback
            public void onDestroyActionMode(ActionMode actionMode) {
                PublishedEpisodesListView.this._ActionMode = null;
                PublishedEpisodesListView.this._SelectedItems.clear();
                PublishedEpisodesListView.this.setLongClickable(true);
                PublishedEpisodesListView.this._Owner.enableDisablePullToRefresh(true);
                PublishedEpisodesListView.this._Adapter.notifyDataSetChanged();
            }

            @Override // android.view.ActionMode.Callback
            public boolean onCreateActionMode(ActionMode actionMode, Menu menu) {
                PublishedEpisodesListView.this._ActionMode = actionMode;
                PublishedEpisodesListView.this.setLongClickable(false);
                PublishedEpisodesListView.this._Owner.enableDisablePullToRefresh(false);
                PublishedEpisodesListView.this._SelectedItems.clear();
                return true;
            }

            @Override // android.view.ActionMode.Callback
            public boolean onActionItemClicked(ActionMode actionMode, MenuItem menuItem) {
                if (!PublishedEpisodesListView.this.handleActionModeOptionsMenu(menuItem)) {
                    return true;
                }
                actionMode.finish();
                return true;
            }

            private void refreshActionModeTitle(ActionMode actionMode) {
                if (PublishedEpisodesListView.this._SelectedItems.size() > 0) {
                    actionMode.setTitle(String.format("%s %s %s %s", Integer.valueOf(PublishedEpisodesListView.this._SelectedItems.size()), PublishedEpisodesListView.OF, Integer.valueOf(PublishedEpisodesListView.this._Adapter.getAllSectionItemsCount()), PublishedEpisodesListView.EPISODES_SELECTED));
                } else {
                    actionMode.setTitle("");
                }
                actionMode.setSubtitle("");
            }

            @Override // mobi.beyondpod.ui.views.publishedepisodes.PublishedEpisodesListView.MultiChoiceModeListener
            public void onItemCheckedStateChanged(ActionMode actionMode, RssFeedItem rssFeedItem) {
                actionMode.invalidate();
                refreshActionModeTitle(actionMode);
            }
        };
        this._SelectedItems = new ArrayList();
        this._AllowProgressDisplay = false;
        this._ShouldRefreshOnActivate = false;
        this._Catcher = new RssFeedCatcher();
        this._Title = new TitleBar.TitleInfo();
        this._FeedUpdateListener = new RssFeedCatcher.FeedUpdateListener() { // from class: mobi.beyondpod.ui.views.publishedepisodes.PublishedEpisodesListView.2
            @Override // mobi.beyondpod.downloadengine.RssFeedCatcher.FeedUpdateListener
            public void onFeedUpdateProgress(Feed feed) {
            }

            @Override // mobi.beyondpod.downloadengine.RssFeedCatcher.FeedUpdateListener
            public void onFeedUpdateCompleted(final Feed feed) {
                if (LicenseManager.ifInRestrictedMode()) {
                    VersionCheckManager.checkForNewVersionIfNeeded();
                }
                PublishedEpisodesListView.this.toggleProgressIndicator(false);
                PublishedEpisodesListView.this.runOnUiThread(new Runnable() { // from class: mobi.beyondpod.ui.views.publishedepisodes.PublishedEpisodesListView.2.1
                    @Override // java.lang.Runnable
                    public void run() {
                        if (feed.getType() == 4) {
                            return;
                        }
                        Date cachedFileDate = RssFeedCache.getCachedFileDate(PublishedEpisodesListView.this._CurrentFeed.getFeedUri());
                        if (PublishedEpisodesListView.this.currentRssFeed() != null && PublishedEpisodesListView.this.currentRssFeed().LastRetrievalDate != null && cachedFileDate != null && PublishedEpisodesListView.this.currentRssFeed().LastRetrievalDate.getTime() < cachedFileDate.getTime()) {
                            PublishedEpisodesListView.this.currentRssFeed().LastRetrievalDate = cachedFileDate;
                        }
                        PublishedEpisodesListView.this.reloadCurrentFeed(false, false);
                        PublishedEpisodesListView.this.refreshFeedInfoHeader();
                        PublishedEpisodesListView.this.updateFooter();
                    }
                });
                ScheduledTasksManager.scheduleSyncTaskIfSyncIsEnabled(0, TimeSpan.fromSeconds(1.0d), true);
            }

            @Override // mobi.beyondpod.downloadengine.RssFeedCatcher.FeedUpdateListener
            public void onFeedUpdateError(Feed feed, final Exception exc) {
                PublishedEpisodesListView.this.runOnUiThread(new Runnable() { // from class: mobi.beyondpod.ui.views.publishedepisodes.PublishedEpisodesListView.2.2
                    @Override // java.lang.Runnable
                    public void run() {
                        if (PublishedEpisodesListView.this._IsInPreviewMode) {
                            PublishedEpisodesListView.this.toggleProgressIndicator(false);
                        }
                        PublishedEpisodesListView.this._Owner.onFeedUpdateCompleted();
                        if (PublishedEpisodesListView.this._Catcher.statistics() != null && PublishedEpisodesListView.this._Catcher.statistics().indicatesSDCardCorruption()) {
                            CharSequence text = PublishedEpisodesListView.this.getResources().getText(R.string.application_error_storage_card_corrupted);
                            if (ApplicationErrorMessageDialog.requestPermissionsIfNeeded(PublishedEpisodesListView.this.getContext(), PublishedEpisodesListView.this.getContext().getText(R.string.application_error_storage_card_read_needs_write_permission), null, null)) {
                                return;
                            }
                            if (!CoreHelper.isFolderReallyWritable(Configuration.beyondPodPublicStorageRootPath())) {
                                text = PublishedEpisodesListView.this.getResources().getText(R.string.application_error_storage_card_read_only_kitkat);
                            }
                            Toast.makeText(PublishedEpisodesListView.this.getContext(), PublishedEpisodesListView.UPDATE_FAILED + "\n\n" + ((Object) text), 1).show();
                        } else {
                            String extractExceptionMessages = CoreHelper.extractExceptionMessages(exc);
                            if (exc instanceof AggregatorLoginHelper.AuthenticationException) {
                                if (!AggregatorLoginHelper.isLoggedIn()) {
                                    extractExceptionMessages = PublishedEpisodesListView.INVALID_OR_EXPIRED_GOOGLE_READER_LOGIN;
                                } else {
                                    AggregatorLoginHelper.clearAccountToken();
                                    extractExceptionMessages = PublishedEpisodesListView.this.getResources().getString(R.string.failed_to_connect_to_google_reader_account_mgr);
                                }
                            }
                            Context context2 = PublishedEpisodesListView.this.getContext();
                            StringBuilder sb = new StringBuilder();
                            sb.append(PublishedEpisodesListView.UPDATE_FAILED);
                            sb.append("\n\n");
                            if (StringUtils.isNullOrEmpty(extractExceptionMessages)) {
                                extractExceptionMessages = exc.getClass().getSimpleName();
                            }
                            sb.append(extractExceptionMessages);
                            Toast.makeText(context2, sb.toString(), 1).show();
                        }
                        if (RssFeedCache.hasCachedFileFor(PublishedEpisodesListView.this._CurrentFeed)) {
                            PublishedEpisodesListView.this.reloadCurrentFeed(false, false);
                        } else {
                            PublishedEpisodesListView.this.refreshFeedInfoHeader();
                            PublishedEpisodesListView.this.refreshContent();
                        }
                    }
                });
            }

            @Override // mobi.beyondpod.downloadengine.RssFeedCatcher.FeedUpdateListener
            public void onFeedUpdateStarted(Feed feed) {
                PublishedEpisodesListView.this._Owner.onFeedUpdateStarted();
                if (PublishedEpisodesListView.this._IsInPreviewMode) {
                    PublishedEpisodesListView.this.toggleProgressIndicator(true);
                }
                if (PublishedEpisodesListView.this._Adapter.currentFeed() != PublishedEpisodesListView.this._CurrentFeed) {
                    PublishedEpisodesListView.this.runOnUiThread(new Runnable() { // from class: mobi.beyondpod.ui.views.publishedepisodes.PublishedEpisodesListView.2.3
                        @Override // java.lang.Runnable
                        public void run() {
                            PublishedEpisodesListView.this._Adapter.clearItems();
                        }
                    });
                }
                PublishedEpisodesListView.this._AllowProgressDisplay = false;
                PublishedEpisodesListView.this.refreshFeedInfoHeader();
                PublishedEpisodesListView.this.updateFooter();
            }

            @Override // mobi.beyondpod.downloadengine.RssFeedCatcher.FeedUpdateListener
            public void onFeedUpdateTerminated(Feed feed) {
                if (PublishedEpisodesListView.this._IsInPreviewMode) {
                    PublishedEpisodesListView.this.toggleProgressIndicator(false);
                }
                PublishedEpisodesListView.this._Owner.onFeedUpdateCompleted();
                PublishedEpisodesListView.this.runOnUiThread(new Runnable() { // from class: mobi.beyondpod.ui.views.publishedepisodes.PublishedEpisodesListView.2.4
                    @Override // java.lang.Runnable
                    public void run() {
                        Toast.makeText(PublishedEpisodesListView.this.getContext(), PublishedEpisodesListView.UPDATE_CANCELED, 0).show();
                    }
                });
                PublishedEpisodesListView.this.refreshFeedInfoHeader();
                PublishedEpisodesListView.this.updateFooter();
                PublishedEpisodesListView.this.refreshContent();
            }
        };
        this._ReaderSyncListener = new AggregatorLoginHelper.GSyncStatusResult() { // from class: mobi.beyondpod.ui.views.publishedepisodes.PublishedEpisodesListView.3
            @Override // mobi.beyondpod.aggregators.AggregatorLoginHelper.GSyncStatusResult
            public void syncCompleted(boolean z, int i, int i2) {
                PublishedEpisodesListView.this._Owner.refreshActiveViewTitle();
                PublishedEpisodesListView.this._Catcher.updateFeed(PublishedEpisodesListView.this._CurrentFeed, true);
            }
        };
        this._IsInPreviewMode = false;
        this._ScrollLocationMapper = new SectionedListViewAdapter.ItemLocation.IObjectMapper() { // from class: mobi.beyondpod.ui.views.publishedepisodes.PublishedEpisodesListView.11
            @Override // mobi.beyondpod.ui.views.base.columnlistview.SectionedListViewAdapter.ItemLocation.IObjectMapper
            public String mapToString(Object obj) {
                if (obj instanceof RssFeedItem) {
                    return ((RssFeedItem) obj).itemID();
                }
                return null;
            }

            @Override // mobi.beyondpod.ui.views.base.columnlistview.SectionedListViewAdapter.ItemLocation.IObjectMapper
            public Object mapFromString(String str) {
                return FeedContentDataSource.getItemById(str);
            }
        };
    }

    public PublishedEpisodesListView(Context context) {
        super(context);
        this._CanDownloadRemoteImages = false;
        this._PauseRefresh = false;
        this._actionModeListener = new MultiChoiceModeListener() { // from class: mobi.beyondpod.ui.views.publishedepisodes.PublishedEpisodesListView.1
            @Override // android.view.ActionMode.Callback
            public boolean onPrepareActionMode(ActionMode actionMode, Menu menu) {
                refreshActionModeTitle(actionMode);
                menu.clear();
                PublishedEpisodesListView.this.prepareActionModeOptionsMenu(menu);
                return true;
            }

            @Override // android.view.ActionMode.Callback
            public void onDestroyActionMode(ActionMode actionMode) {
                PublishedEpisodesListView.this._ActionMode = null;
                PublishedEpisodesListView.this._SelectedItems.clear();
                PublishedEpisodesListView.this.setLongClickable(true);
                PublishedEpisodesListView.this._Owner.enableDisablePullToRefresh(true);
                PublishedEpisodesListView.this._Adapter.notifyDataSetChanged();
            }

            @Override // android.view.ActionMode.Callback
            public boolean onCreateActionMode(ActionMode actionMode, Menu menu) {
                PublishedEpisodesListView.this._ActionMode = actionMode;
                PublishedEpisodesListView.this.setLongClickable(false);
                PublishedEpisodesListView.this._Owner.enableDisablePullToRefresh(false);
                PublishedEpisodesListView.this._SelectedItems.clear();
                return true;
            }

            @Override // android.view.ActionMode.Callback
            public boolean onActionItemClicked(ActionMode actionMode, MenuItem menuItem) {
                if (!PublishedEpisodesListView.this.handleActionModeOptionsMenu(menuItem)) {
                    return true;
                }
                actionMode.finish();
                return true;
            }

            private void refreshActionModeTitle(ActionMode actionMode) {
                if (PublishedEpisodesListView.this._SelectedItems.size() > 0) {
                    actionMode.setTitle(String.format("%s %s %s %s", Integer.valueOf(PublishedEpisodesListView.this._SelectedItems.size()), PublishedEpisodesListView.OF, Integer.valueOf(PublishedEpisodesListView.this._Adapter.getAllSectionItemsCount()), PublishedEpisodesListView.EPISODES_SELECTED));
                } else {
                    actionMode.setTitle("");
                }
                actionMode.setSubtitle("");
            }

            @Override // mobi.beyondpod.ui.views.publishedepisodes.PublishedEpisodesListView.MultiChoiceModeListener
            public void onItemCheckedStateChanged(ActionMode actionMode, RssFeedItem rssFeedItem) {
                actionMode.invalidate();
                refreshActionModeTitle(actionMode);
            }
        };
        this._SelectedItems = new ArrayList();
        this._AllowProgressDisplay = false;
        this._ShouldRefreshOnActivate = false;
        this._Catcher = new RssFeedCatcher();
        this._Title = new TitleBar.TitleInfo();
        this._FeedUpdateListener = new RssFeedCatcher.FeedUpdateListener() { // from class: mobi.beyondpod.ui.views.publishedepisodes.PublishedEpisodesListView.2
            @Override // mobi.beyondpod.downloadengine.RssFeedCatcher.FeedUpdateListener
            public void onFeedUpdateProgress(Feed feed) {
            }

            @Override // mobi.beyondpod.downloadengine.RssFeedCatcher.FeedUpdateListener
            public void onFeedUpdateCompleted(final Feed feed) {
                if (LicenseManager.ifInRestrictedMode()) {
                    VersionCheckManager.checkForNewVersionIfNeeded();
                }
                PublishedEpisodesListView.this.toggleProgressIndicator(false);
                PublishedEpisodesListView.this.runOnUiThread(new Runnable() { // from class: mobi.beyondpod.ui.views.publishedepisodes.PublishedEpisodesListView.2.1
                    @Override // java.lang.Runnable
                    public void run() {
                        if (feed.getType() == 4) {
                            return;
                        }
                        Date cachedFileDate = RssFeedCache.getCachedFileDate(PublishedEpisodesListView.this._CurrentFeed.getFeedUri());
                        if (PublishedEpisodesListView.this.currentRssFeed() != null && PublishedEpisodesListView.this.currentRssFeed().LastRetrievalDate != null && cachedFileDate != null && PublishedEpisodesListView.this.currentRssFeed().LastRetrievalDate.getTime() < cachedFileDate.getTime()) {
                            PublishedEpisodesListView.this.currentRssFeed().LastRetrievalDate = cachedFileDate;
                        }
                        PublishedEpisodesListView.this.reloadCurrentFeed(false, false);
                        PublishedEpisodesListView.this.refreshFeedInfoHeader();
                        PublishedEpisodesListView.this.updateFooter();
                    }
                });
                ScheduledTasksManager.scheduleSyncTaskIfSyncIsEnabled(0, TimeSpan.fromSeconds(1.0d), true);
            }

            @Override // mobi.beyondpod.downloadengine.RssFeedCatcher.FeedUpdateListener
            public void onFeedUpdateError(Feed feed, final Exception exc) {
                PublishedEpisodesListView.this.runOnUiThread(new Runnable() { // from class: mobi.beyondpod.ui.views.publishedepisodes.PublishedEpisodesListView.2.2
                    @Override // java.lang.Runnable
                    public void run() {
                        if (PublishedEpisodesListView.this._IsInPreviewMode) {
                            PublishedEpisodesListView.this.toggleProgressIndicator(false);
                        }
                        PublishedEpisodesListView.this._Owner.onFeedUpdateCompleted();
                        if (PublishedEpisodesListView.this._Catcher.statistics() != null && PublishedEpisodesListView.this._Catcher.statistics().indicatesSDCardCorruption()) {
                            CharSequence text = PublishedEpisodesListView.this.getResources().getText(R.string.application_error_storage_card_corrupted);
                            if (ApplicationErrorMessageDialog.requestPermissionsIfNeeded(PublishedEpisodesListView.this.getContext(), PublishedEpisodesListView.this.getContext().getText(R.string.application_error_storage_card_read_needs_write_permission), null, null)) {
                                return;
                            }
                            if (!CoreHelper.isFolderReallyWritable(Configuration.beyondPodPublicStorageRootPath())) {
                                text = PublishedEpisodesListView.this.getResources().getText(R.string.application_error_storage_card_read_only_kitkat);
                            }
                            Toast.makeText(PublishedEpisodesListView.this.getContext(), PublishedEpisodesListView.UPDATE_FAILED + "\n\n" + ((Object) text), 1).show();
                        } else {
                            String extractExceptionMessages = CoreHelper.extractExceptionMessages(exc);
                            if (exc instanceof AggregatorLoginHelper.AuthenticationException) {
                                if (!AggregatorLoginHelper.isLoggedIn()) {
                                    extractExceptionMessages = PublishedEpisodesListView.INVALID_OR_EXPIRED_GOOGLE_READER_LOGIN;
                                } else {
                                    AggregatorLoginHelper.clearAccountToken();
                                    extractExceptionMessages = PublishedEpisodesListView.this.getResources().getString(R.string.failed_to_connect_to_google_reader_account_mgr);
                                }
                            }
                            Context context2 = PublishedEpisodesListView.this.getContext();
                            StringBuilder sb = new StringBuilder();
                            sb.append(PublishedEpisodesListView.UPDATE_FAILED);
                            sb.append("\n\n");
                            if (StringUtils.isNullOrEmpty(extractExceptionMessages)) {
                                extractExceptionMessages = exc.getClass().getSimpleName();
                            }
                            sb.append(extractExceptionMessages);
                            Toast.makeText(context2, sb.toString(), 1).show();
                        }
                        if (RssFeedCache.hasCachedFileFor(PublishedEpisodesListView.this._CurrentFeed)) {
                            PublishedEpisodesListView.this.reloadCurrentFeed(false, false);
                        } else {
                            PublishedEpisodesListView.this.refreshFeedInfoHeader();
                            PublishedEpisodesListView.this.refreshContent();
                        }
                    }
                });
            }

            @Override // mobi.beyondpod.downloadengine.RssFeedCatcher.FeedUpdateListener
            public void onFeedUpdateStarted(Feed feed) {
                PublishedEpisodesListView.this._Owner.onFeedUpdateStarted();
                if (PublishedEpisodesListView.this._IsInPreviewMode) {
                    PublishedEpisodesListView.this.toggleProgressIndicator(true);
                }
                if (PublishedEpisodesListView.this._Adapter.currentFeed() != PublishedEpisodesListView.this._CurrentFeed) {
                    PublishedEpisodesListView.this.runOnUiThread(new Runnable() { // from class: mobi.beyondpod.ui.views.publishedepisodes.PublishedEpisodesListView.2.3
                        @Override // java.lang.Runnable
                        public void run() {
                            PublishedEpisodesListView.this._Adapter.clearItems();
                        }
                    });
                }
                PublishedEpisodesListView.this._AllowProgressDisplay = false;
                PublishedEpisodesListView.this.refreshFeedInfoHeader();
                PublishedEpisodesListView.this.updateFooter();
            }

            @Override // mobi.beyondpod.downloadengine.RssFeedCatcher.FeedUpdateListener
            public void onFeedUpdateTerminated(Feed feed) {
                if (PublishedEpisodesListView.this._IsInPreviewMode) {
                    PublishedEpisodesListView.this.toggleProgressIndicator(false);
                }
                PublishedEpisodesListView.this._Owner.onFeedUpdateCompleted();
                PublishedEpisodesListView.this.runOnUiThread(new Runnable() { // from class: mobi.beyondpod.ui.views.publishedepisodes.PublishedEpisodesListView.2.4
                    @Override // java.lang.Runnable
                    public void run() {
                        Toast.makeText(PublishedEpisodesListView.this.getContext(), PublishedEpisodesListView.UPDATE_CANCELED, 0).show();
                    }
                });
                PublishedEpisodesListView.this.refreshFeedInfoHeader();
                PublishedEpisodesListView.this.updateFooter();
                PublishedEpisodesListView.this.refreshContent();
            }
        };
        this._ReaderSyncListener = new AggregatorLoginHelper.GSyncStatusResult() { // from class: mobi.beyondpod.ui.views.publishedepisodes.PublishedEpisodesListView.3
            @Override // mobi.beyondpod.aggregators.AggregatorLoginHelper.GSyncStatusResult
            public void syncCompleted(boolean z, int i, int i2) {
                PublishedEpisodesListView.this._Owner.refreshActiveViewTitle();
                PublishedEpisodesListView.this._Catcher.updateFeed(PublishedEpisodesListView.this._CurrentFeed, true);
            }
        };
        this._IsInPreviewMode = false;
        this._ScrollLocationMapper = new SectionedListViewAdapter.ItemLocation.IObjectMapper() { // from class: mobi.beyondpod.ui.views.publishedepisodes.PublishedEpisodesListView.11
            @Override // mobi.beyondpod.ui.views.base.columnlistview.SectionedListViewAdapter.ItemLocation.IObjectMapper
            public String mapToString(Object obj) {
                if (obj instanceof RssFeedItem) {
                    return ((RssFeedItem) obj).itemID();
                }
                return null;
            }

            @Override // mobi.beyondpod.ui.views.base.columnlistview.SectionedListViewAdapter.ItemLocation.IObjectMapper
            public Object mapFromString(String str) {
                return FeedContentDataSource.getItemById(str);
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void refreshFeedInfoHeader() {
        runOnUiThread(new Runnable() { // from class: mobi.beyondpod.ui.views.publishedepisodes.PublishedEpisodesListView.4
            @Override // java.lang.Runnable
            public void run() {
                PublishedEpisodesListView.this._Header.refreshContent();
            }
        });
    }

    public void initialize(FeedContentListViewOwner feedContentListViewOwner) {
        this._Owner = feedContentListViewOwner;
        setHeaderDividersEnabled(false);
        setFooterDividersEnabled(false);
        setScrollBarStyle(33554432);
        if (MasterView.appBarScrollAllowed()) {
            ViewCompat.setNestedScrollingEnabled(this, true);
        }
        this._Catcher.setFeedUpdateListener(this._FeedUpdateListener);
        this._Adapter = new PublishedEpisodesListViewAdapter(getContext(), this, this._IsInPreviewMode);
        LayoutInflater from = LayoutInflater.from(getContext());
        if (!this._IsInPreviewMode) {
            this._Header = (IListViewHeader) from.inflate(R.layout.section_divider_all_published, (ViewGroup) null);
        } else {
            this._Header = (IListViewHeader) from.inflate(R.layout.section_divider_feed_preview, (ViewGroup) null);
        }
        this._Header.initialize(this, this._Owner.getActivity());
        this._Footer = from.inflate(R.layout.episode_footer_more, (ViewGroup) null);
        this._FooterText1 = (TextView) this._Footer.findViewById(R.id.footer_text1);
        this._FooterText2 = (TextView) this._Footer.findViewById(R.id.footer_text2);
        this._FooterGroup = this._Footer.findViewById(R.id.footer_group);
        if (!Configuration.allowHidingRead()) {
            Configuration.setItemFilter(0);
        }
        refreshFeedInfoHeader();
        updateFooter();
        addHeaderView((View) this._Header, null, false);
        addFooterView(this._Footer, null, false);
        setAdapter((ListAdapter) this._Adapter);
    }

    private boolean isScrollable() {
        int childCount = getChildCount() - 1;
        if (getChildCount() == 0) {
            return false;
        }
        return getChildAt(childCount).getBottom() > getHeight() || getChildAt(0).getTop() < 0 || getChildCount() != getCount();
    }

    public boolean refreshCurrentFeed(boolean z, boolean z2) {
        if (isUpdating()) {
            if (z2) {
                stopUpdate();
            }
            return false;
        }
        if (z) {
            FeedImageCache.deleteImageCacheFor(this._CurrentFeed);
            RssFeedCache.deleteFeedCacheFor(this._CurrentFeed);
        }
        reloadCurrentFeed(true, false);
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateFooter() {
        runOnUiThread(new Runnable() { // from class: mobi.beyondpod.ui.views.publishedepisodes.PublishedEpisodesListView.5
            @Override // java.lang.Runnable
            public void run() {
                PublishedEpisodesListView.this.updateFooterInternal();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:13:0x008c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void updateFooterInternal() {
        /*
            Method dump skipped, instructions count: 257
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: mobi.beyondpod.ui.views.publishedepisodes.PublishedEpisodesListView.updateFooterInternal():void");
    }

    private boolean checkIfRemoteImageDownloadsAreEnabled() {
        if (!Configuration.showContentListPostImages()) {
            return false;
        }
        CoreHelper.DeviceNetworkConnection deviceNetworkConnection = CoreHelper.getDeviceNetworkConnection();
        if (deviceNetworkConnection.isConnectedToNetwork()) {
            return !deviceNetworkConnection.isConnectionCellular() || Configuration.isCellularConnectionAllowed();
        }
        return false;
    }

    public void loadFeed(Feed feed) {
        if (feed == null || !feed.hasUri()) {
            return;
        }
        setCurrentFeed(feed);
        if (this._CurrentFeed == null) {
            this._CurrentFeed = this._Owner.getDefaultFeed();
            if (this._CurrentFeed == null) {
                return;
            }
        }
        this._CurrentFeed.setItemFilter(Configuration.getItemFilter());
        this._Owner.refreshActiveViewTitle();
        reloadCurrentFeed(Configuration.getUpdateOnFeedOpen(), true);
    }

    public Feed currentFeed() {
        return this._CurrentFeed;
    }

    public void setCurrentFeed(Feed feed) {
        this._CurrentFeed = feed;
        this._Header.setCurrentFeed(this._CurrentFeed);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void reloadCurrentFeed(boolean z, boolean z2) {
        if (this._CurrentFeed == null) {
            return;
        }
        if (isMultiSelecting()) {
            this._ActionMode.finish();
        }
        CoreHelper.writeTraceEntry(TAG, "Reloading feed " + this._CurrentFeed.getName() + " in the feed Content list View!...");
        if (RssFeedCache.hasCachedFileFor(this._CurrentFeed) && !z) {
            this._AllowProgressDisplay = true;
            this._Owner.refreshActiveViewTitle();
            this._Adapter.loadItems(this._CurrentFeed, z2);
            return;
        }
        updateCurrentFeed();
    }

    private void updateCurrentFeed() {
        stopUpdate();
        Configuration.setUnableToEstablishWiFiConnectionInThisSession(false);
        this._CurrentFeed.setItemFilter(Configuration.getItemFilter());
        if (this._CurrentFeed != this._Adapter.currentFeed()) {
            this._Adapter.clearItems();
        }
        if (this._CurrentFeed.isGReaderFeed()) {
            try {
                AggregatorLoginHelper.syncItemStatus(this._ReaderSyncListener);
                return;
            } catch (Exception e) {
                CoreHelper.logException(TAG, "failed to start Google Sync", e);
                return;
            }
        }
        this._Catcher.updateFeed(this._CurrentFeed, true);
    }

    private void stopUpdate() {
        if (AggregatorLoginHelper.isSyncing()) {
            AggregatorLoginHelper.stopSyncing();
        }
        if (this._Catcher.isUpdating()) {
            this._Catcher.stop();
        }
    }

    @Override // mobi.beyondpod.ui.views.base.IView
    public void onAfterActivate() {
        BeyondPodApplication.messageBus.subscribe(this, PlayListEvents.PlayListEvent.class);
        BeyondPodApplication.messageBus.subscribe(this, UpdateAndDownloadEvents.UpdateAndDownloadEvent.class);
        BeyondPodApplication.messageBus.subscribe(this, RepositoryEvents.RepositoryEvent.class);
        this._Owner.refreshActiveViewTitle();
        this._Adapter.onAfterActivate();
        updateFooter();
        refreshFeedInfoHeader();
        if (this._Catcher.isUpdating()) {
            return;
        }
        toggleProgressIndicator(false);
        this._Owner.onFeedUpdateCompleted();
        if (FeedContentDataSource.currentFeed() != null && currentFeed() == FeedContentDataSource.currentFeed() && (FeedContentDataSource.isDataLoaded() || FeedContentDataSource.isLoadingData())) {
            refreshContent();
        } else {
            reloadCurrentFeed(false, true);
        }
    }

    @Override // mobi.beyondpod.ui.views.base.IView
    public void onAfterDeactivate() {
        this._Adapter.onAfterDeactivate();
        BeyondPodApplication.messageBus.unsubscribe(this, PlayListEvents.PlayListEvent.class);
        BeyondPodApplication.messageBus.unsubscribe(this, UpdateAndDownloadEvents.UpdateAndDownloadEvent.class);
        BeyondPodApplication.messageBus.unsubscribe(this, RepositoryEvents.RepositoryEvent.class);
        if (isMultiSelecting()) {
            this._ActionMode.finish();
        }
    }

    @Override // mobi.beyondpod.ui.views.base.IView
    public void onBeforeActivate() {
        if (this._CurrentFeed == null) {
            CoreHelper.writeTraceEntry(TAG, "Activating FeedContentView with null currentFeed!!!");
        }
        if (this._CurrentFeed != null && this._ShouldRefreshOnActivate && !this._Catcher.isUpdating()) {
            this._Adapter.restoreItemsAfterConfigurationChange();
        }
        this._ShouldRefreshOnActivate = false;
    }

    public void onActivityDestroy() {
        if (this._Adapter != null) {
            this._Adapter.onActivityDestroy();
        }
    }

    @Override // mobi.beyondpod.ui.views.base.IView
    public TitleBar.TitleInfo getViewTitle() {
        this._Title.primaryTitle = this._CurrentFeed == null ? FEED_CONTENT : this._CurrentFeed.getName();
        int allSectionItemsCount = this._Adapter.getAllSectionItemsCount();
        TitleBar.TitleInfo titleInfo = this._Title;
        String str = null;
        if (this._IsInPreviewMode && allSectionItemsCount != 0) {
            str = Integer.toString(allSectionItemsCount);
        }
        titleInfo.subTitle = str;
        this._Title.selectorType = 1;
        return this._Title;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void prepareActionModeOptionsMenu(Menu menu) {
        if (FeedContentDataSource.isEmpty()) {
            return;
        }
        FeedRssItemList checkedItems = getCheckedItems();
        boolean hasItemsWithEnclosures = checkedItems.hasItemsWithEnclosures();
        if (checkedItems.hasNotFullyDownloaded()) {
            menu.add(70, 82, 1, R.string.MENU_start_download).setIcon(R.drawable.ic_action_download).setShowAsAction(2);
        }
        if (checkedItems.hasItemsThatCanBeDeleted()) {
            menu.add(70, 78, 2, R.string.MENU_delete_podcast_episodes).setIcon(R.drawable.ic_action_trash).setShowAsAction(2);
        }
        if (checkedItems.hasNonMockOrNonReaderLockedItems()) {
            if (checkedItems.hasUnreadItems()) {
                menu.add(70, 72, 3, hasItemsWithEnclosures ? R.string.MENU_mark_played : R.string.MENU_mark_read).setShowAsAction(5);
            } else {
                menu.add(70, 72, 3, hasItemsWithEnclosures ? R.string.MENU_mark_unplayed : R.string.MENU_mark_unread).setShowAsAction(5);
            }
        }
        if (checkedItems.hasItemsThatCanBeRemovedFromPlaylist()) {
            menu.add(70, 77, 4, R.string.MENU_remove_from_playlist).setShowAsAction(4);
        } else {
            menu.add(70, 76, 4, R.string.MENU_add_to_playlist).setShowAsAction(4);
        }
        if (checkedItems.hasNotInMyEpisodes()) {
            menu.add(70, 86, 5, R.string.published_list_add_to_my_episodes).setShowAsAction(0);
        }
        if (checkedItems.size() != 1 || checkedItems.get(0).enclosure() == null) {
            return;
        }
        if (Configuration.playerIntegrationType() != 3) {
            menu.add(70, 75, 7, R.string.MENU_play_in_external_player).setShowAsAction(0);
        }
        if (Configuration.enableLoggingInProduction()) {
            menu.add(0, 79, 6, R.string.feed_content_list_view_episode_details).setShowAsAction(0);
        }
    }

    @Override // mobi.beyondpod.ui.views.base.IView
    public boolean prepareOptionsMenu(Menu menu) {
        if (currentRssFeed() == null || this._CurrentFeed == null || getVisibility() != 0) {
            return false;
        }
        FeedRssItemList feedRssItemList = new FeedRssItemList(this._CurrentFeed);
        try {
            feedRssItemList.addAll(currentRssFeed().Items);
            if (feedRssItemList.hasItemsWithEnclosures()) {
                boolean hasUnPlayed = getMyEpisodesFor(feedRssItemList).hasUnPlayed();
                if (this._Adapter.hasUnReadItems() || hasUnPlayed) {
                    menu.add(70, 81, 2, R.string.MENU_mark_all_as_played);
                }
                if (Configuration.allowHidingRead()) {
                    menu.add(70, 71, 3, this._Adapter.hasReadItems() ? R.string.MENU_hide_played : R.string.MENU_show_played).setEnabled(this._Adapter.hasHiddenItems() || this._Adapter.hasReadItems());
                }
                if (this._Adapter.hasPlayedMyEpisodes()) {
                    menu.add(70, 83, 22, R.string.MENU_delete_all_played_podcasts);
                }
            } else {
                if (this._Adapter.hasUnReadItems()) {
                    menu.add(70, 70, 2, R.string.MENU_mark_all_as_read);
                }
                if (Configuration.allowHidingRead()) {
                    menu.add(70, 71, 3, this._Adapter.hasReadItems() ? R.string.MENU_hide_read : R.string.MENU_show_read).setEnabled(this._Adapter.hasHiddenItems() || this._Adapter.hasReadItems());
                }
            }
            menu.add(0, 80, 25, R.string.MENU_card_size_small).setCheckable(true).setChecked(Configuration.publishedEpisodeCardSize() == 3).setShowAsAction(0);
            return true;
        } catch (Exception unused) {
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean handleActionModeOptionsMenu(MenuItem menuItem) {
        return handleMenuSelection(menuItem, getCheckedItems());
    }

    private boolean handleMenuSelection(MenuItem menuItem, FeedRssItemList feedRssItemList) {
        Feed feedById;
        Track prepareEnclosureForPlayback;
        switch (menuItem.getItemId()) {
            case 72:
                if (currentRssFeed() == null) {
                    return true;
                }
                currentRssFeed().SetItemsAsReadUnread(feedRssItemList, feedRssItemList.hasUnreadItems());
                this._Owner.refreshActiveViewTitle();
                ScheduledTasksManager.scheduleGoogleSynUpdateIfNeeded();
                refreshContent();
                return true;
            case 73:
                if (feedRssItemList.size() > 0) {
                    CommandManager.cmdSharePost(getContext(), this._CurrentFeed, feedRssItemList.get(0));
                }
                return true;
            case 74:
                if (feedRssItemList.size() > 0) {
                    Track trackByNameOrUrl = currentFeed().tracks().getTrackByNameOrUrl(feedRssItemList.get(0).enclosure().fileName(), feedRssItemList.get(0).enclosure().Url);
                    if (trackByNameOrUrl != null) {
                        CommandManager.cmdSharePodcast(getContext(), trackByNameOrUrl);
                    } else {
                        CommandManager.cmdSharePost(getContext(), this._CurrentFeed, feedRssItemList.get(0));
                    }
                }
                return true;
            case 75:
                if (feedRssItemList.size() > 0) {
                    Track trackByNameOrUrl2 = currentFeed().tracks().getTrackByNameOrUrl(feedRssItemList.get(0).enclosure().fileName(), feedRssItemList.get(0).enclosure().Url);
                    if (trackByNameOrUrl2 == null && (feedById = FeedRepository.getFeedById(feedRssItemList.get(0).enclosure().Parent.originatingFeedID())) != null) {
                        trackByNameOrUrl2 = RssFeedCache.createStreamableTrackFromEnclosure(feedById, feedRssItemList.get(0).enclosure(), true);
                    }
                    if (trackByNameOrUrl2 != null) {
                        CommandManager.cmdOpenExternalPlayer(getContext(), trackByNameOrUrl2);
                    }
                }
                return true;
            case 76:
                TrackList trackList = new TrackList();
                Iterator<RssFeedItem> it = feedRssItemList.iterator();
                while (it.hasNext()) {
                    RssFeedItem next = it.next();
                    if (next.enclosure() != null && (prepareEnclosureForPlayback = CommandManager.prepareEnclosureForPlayback(null, next, true, false)) != null) {
                        trackList.add(prepareEnclosureForPlayback);
                    }
                }
                if (trackList.size() > 0) {
                    CommandManager.cmdAddToPlaylist(trackList);
                }
                return true;
            case 77:
                TrackList myEpisodesFor = getMyEpisodesFor(feedRssItemList);
                if (myEpisodesFor.size() > 0) {
                    CommandManager.cmdRemoveFromPlaylist(myEpisodesFor);
                }
                return true;
            case 78:
                TrackList myEpisodesFor2 = getMyEpisodesFor(feedRssItemList);
                if (myEpisodesFor2.size() > 0) {
                    CommandManager.cmdDeletePodcasts(getContext(), myEpisodesFor2);
                }
                if (currentRssFeed() != null) {
                    currentRssFeed().SyncOwnerFeedReadStatus();
                }
                return true;
            case 79:
                if (feedRssItemList.size() == 0) {
                    return true;
                }
                RssFeedItem rssFeedItem = feedRssItemList.get(0);
                if (rssFeedItem.itemEnclosures().size() == 1) {
                    new AlertDialog.Builder(getContext()).setTitle(EPISODE_DETAILS).setMessage(rssFeedItem.dumpItemDetails()).create().show();
                } else {
                    new AlertDialog.Builder(getContext()).setTitle(EPISODE_FORMATS).setSingleChoiceItems(rssFeedItem.dumpEnclosures(), rssFeedItem.itemEnclosures().indexOf(rssFeedItem.enclosure()), new DialogInterface.OnClickListener() { // from class: mobi.beyondpod.ui.views.publishedepisodes.PublishedEpisodesListView.7
                        @Override // android.content.DialogInterface.OnClickListener
                        public void onClick(DialogInterface dialogInterface, int i) {
                            PublishedEpisodesListView.this._CurrentFeed.setPreferredEnclosureIndex(i);
                            PublishedEpisodesListView.this._CurrentFeed.setHasNewContent(true);
                            dialogInterface.dismiss();
                            PublishedEpisodesListView.this.reloadCurrentFeed(false, false);
                        }
                    }).create().show();
                }
                return true;
            case 80:
                TrackList myEpisodesFor3 = getMyEpisodesFor(feedRssItemList);
                if (myEpisodesFor3.size() > 0) {
                    if (myEpisodesFor3.hasUnLocked()) {
                        CommandManager.cmdLockTracks(getContext(), myEpisodesFor3);
                    } else {
                        CommandManager.cmdUnlockTracks(getContext(), myEpisodesFor3);
                    }
                }
                return true;
            case 81:
            case 83:
            default:
                return false;
            case 82:
                CommandManager.cmdDownloadFeedItemsManually(getContext(), feedRssItemList);
                return true;
            case 84:
                if (feedRssItemList.size() > 0) {
                    onAddRemovePlaylist(feedRssItemList.get(0));
                }
                return true;
            case 85:
                if (feedRssItemList.size() > 0) {
                    CommandManager.cmdOpenItemContentDialog(this._Owner.getActivity(), feedRssItemList.get(0), null);
                }
                return true;
            case 86:
                Iterator<RssFeedItem> it2 = feedRssItemList.iterator();
                while (it2.hasNext()) {
                    RssFeedItem next2 = it2.next();
                    if (next2.enclosure() != null) {
                        CommandManager.prepareEnclosureForPlayback(null, next2, true, false);
                    }
                }
                return true;
        }
    }

    @Override // mobi.beyondpod.ui.views.base.IView
    public boolean handleOptionsMenu(int i, MenuItem menuItem) {
        int itemId = menuItem.getItemId();
        if (itemId == 81) {
            markAllAsReadOrPlayed(false);
            return true;
        }
        if (itemId != 83) {
            switch (itemId) {
                case 70:
                    markAllAsReadOrPlayed(true);
                    return true;
                case 71:
                    if (this._Adapter.hasReadItems()) {
                        hideRead();
                    } else if (this._Adapter.hasHiddenItems()) {
                        showRead();
                    }
                    return true;
                default:
                    if (menuItem.getItemId() != 80) {
                        return false;
                    }
                    Configuration.setPublishedEpisodeCardSize(Configuration.publishedEpisodeCardSize() == 3 ? 1 : 3);
                    notifyCardSizeChanged();
                    return true;
            }
        }
        CommandManager.cmdDeletePodcasts(getContext(), this._Adapter.getAllPlayedMyEpisodes());
        return true;
    }

    private void markAllAsReadOrPlayed(boolean z) {
        UserNotificationManager.warnAboutMarkingAllAsReadOrPlayed(getContext(), new UserNotificationManager.OnContinueListener() { // from class: mobi.beyondpod.ui.views.publishedepisodes.PublishedEpisodesListView.8
            @Override // mobi.beyondpod.ui.views.notifications.UserNotificationManager.OnContinueListener
            public void onContinue() {
                if (PublishedEpisodesListView.this.currentRssFeed() != null) {
                    PublishedEpisodesListView.this.currentRssFeed().SetAllItemsAsRead();
                    ScheduledTasksManager.scheduleGoogleSynUpdateIfNeeded();
                    PublishedEpisodesListView.this.refreshContent();
                }
            }
        }, z);
    }

    private void hideRead() {
        applyFilter(1);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void showRead() {
        applyFilter(0);
    }

    private void notifyCardSizeChanged() {
        SectionedListViewAdapter.ItemLocation itemIdForPosition = this._Adapter.getItemIdForPosition(getFirstVisiblePosition());
        this._Adapter.refreshSections();
        this._Header.notifyCardSizeChanged();
        setAdapter((ListAdapter) this._Adapter);
        scrollToLocation(itemIdForPosition);
    }

    private void applyFilter(int i) {
        if (currentRssFeed() == null) {
            return;
        }
        Configuration.setItemFilter(i);
        this._CurrentFeed.setItemFilter(i);
        this._Adapter.filterItems(i);
        this._Owner.refreshActiveViewTitle();
        updateFooter();
        if (isMultiSelecting()) {
            this._ActionMode.invalidate();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public RssFeed currentRssFeed() {
        if (this._Adapter != null) {
            return this._Adapter.currentRssFeed();
        }
        return null;
    }

    public void refreshOnNextActivate() {
        this._ShouldRefreshOnActivate = true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void refreshContent() {
        if (this._PauseRefresh) {
            return;
        }
        runOnUiThread(new Runnable() { // from class: mobi.beyondpod.ui.views.publishedepisodes.PublishedEpisodesListView.9
            @Override // java.lang.Runnable
            public void run() {
                try {
                    PublishedEpisodesListView.this._Adapter.refreshItems();
                    PublishedEpisodesListView.this.updateFooter();
                    PublishedEpisodesListView.this.refreshFeedInfoHeader();
                } catch (Exception e) {
                    CoreHelper.logException(PublishedEpisodesListView.TAG, "Exception thrown during feed content refresh!", e);
                }
            }
        });
    }

    @Override // mobi.beyondpod.rsscore.repository.RepositoryEvents.RepositoryEventListener
    public void onRepositoryEvent(RepositoryEvents.RepositoryEvent repositoryEvent) {
        if (this._CurrentFeed == null) {
            return;
        }
        if (repositoryEvent.Type == 7 && repositoryEvent.Feed == this._CurrentFeed) {
            Feed defaultFeed = this._Owner.getDefaultFeed();
            if (defaultFeed != null) {
                loadFeed(defaultFeed);
                return;
            }
            setCurrentFeed(null);
            this._Adapter.clearItems();
            updateFooter();
            refreshFeedInfoHeader();
            return;
        }
        if (currentRssFeed() == null) {
            return;
        }
        if (repositoryEvent.Type == 10 || repositoryEvent.Type == 15 || repositoryEvent.Type == 8 || repositoryEvent.Type == 11 || repositoryEvent.Type == 14) {
            refreshContent();
        }
    }

    @Override // mobi.beyondpod.downloadengine.UpdateAndDownloadEvents.UpdateAndDownloadEventListener
    public void onUpdateAndDownloadEvent(UpdateAndDownloadEvents.UpdateAndDownloadEvent updateAndDownloadEvent) {
        if (currentRssFeed() == null || this._CurrentFeed == null) {
            return;
        }
        if (updateAndDownloadEvent.Type == UpdateAndDownloadEvents.UpdateAndDownloadEvent.ENCLOSURE_DOWNLOAD_STARTED || updateAndDownloadEvent.Type == UpdateAndDownloadEvents.UpdateAndDownloadEvent.ENCLOSURE_DOWNLOAD_COMPLETED || updateAndDownloadEvent.Type == UpdateAndDownloadEvents.UpdateAndDownloadEvent.ENCLOSURE_DOWNLOAD_QUEUE_CHANGED) {
            refreshContent();
        } else if (updateAndDownloadEvent.Type == UpdateAndDownloadEvents.UpdateAndDownloadEvent.UPDATE_AND_DOWNLOAD_COMPLETED) {
            runOnUiThread(new Runnable() { // from class: mobi.beyondpod.ui.views.publishedepisodes.PublishedEpisodesListView.10
                @Override // java.lang.Runnable
                public void run() {
                    PublishedEpisodesListView.this.reloadCurrentFeed(false, false);
                }
            });
        }
    }

    public List<Track> generatePlaylist(Track track) {
        return this._Adapter.generatePlaylist(track);
    }

    public void saveState(MasterViewState masterViewState) {
        SectionedListViewAdapter.ItemLocation itemIdForPosition = this._Adapter.getItemIdForPosition(getFirstVisiblePosition() - getHeaderViewsCount());
        masterViewState.feedContentFirstVisibleItem = itemIdForPosition.serialize(this._ScrollLocationMapper);
        this._Adapter.saveCurrentState(masterViewState);
        StringBuilder sb = new StringBuilder();
        sb.append("Saving AP=> ");
        sb.append((Object) (itemIdForPosition.item == null ? null : ((RssFeedItem) itemIdForPosition.item).Title));
        sb.append(", Pos:");
        sb.append(getFirstVisiblePosition());
        CoreHelper.writeTraceEntry("QQQQ", sb.toString());
    }

    public void restoreState(MasterViewState masterViewState) {
        this._ScrollState = masterViewState.feedContentFirstVisibleItem;
        setCurrentFeed(masterViewState.contentViewFeed);
        this._Adapter.restoreCurrentState(masterViewState);
        if (masterViewState.currentView == 2) {
            this._Adapter.restoreItemsAfterConfigurationChange();
            refreshFeedInfoHeader();
        } else {
            refreshOnNextActivate();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void onAdapterDataLoadCompleted(boolean z) {
        int indexOf;
        this._Owner.refreshActiveViewTitle();
        toggleProgressIndicator(false);
        this._Owner.onFeedUpdateCompleted();
        refreshFeedInfoHeader();
        if (this._CurrentFeed == null) {
            return;
        }
        if (!z) {
            notifyFeedFailedToLoad();
            return;
        }
        updateFooter();
        if (!StringUtils.isNullOrEmpty(currentFeed().transientEpisodeUrl)) {
            Iterator<RssFeedItem> it = FeedContentDataSource.items().iterator();
            while (it.hasNext()) {
                RssFeedItem next = it.next();
                if (next.enclosure() != null && StringUtils.equals(next.enclosure().Url, currentFeed().transientEpisodeUrl) && (indexOf = FeedContentDataSource.items().indexOf(next)) >= 0) {
                    setSelectionFromTop(indexOf + getHeaderViewsCount(), 0);
                }
            }
            return;
        }
        if (this._ScrollState != null) {
            scrollToLocation(SectionedListViewAdapter.ItemLocation.deserialize(this._ScrollState, this._ScrollLocationMapper));
            this._ScrollState = null;
        }
    }

    private void scrollToLocation(SectionedListViewAdapter.ItemLocation itemLocation) {
        setSelectionFromTop(itemLocation.item != null ? this._Adapter.getPositionForItemID(itemLocation) + getHeaderViewsCount() : 0, 0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void toggleProgressIndicator(final boolean z) {
        runOnUiThread(new Runnable() { // from class: mobi.beyondpod.ui.views.publishedepisodes.PublishedEpisodesListView.12
            @Override // java.lang.Runnable
            public void run() {
                PublishedEpisodesListView.this._Header.toggleProgressIndicator(z);
            }
        });
    }

    private void notifyGoogleReadMayHaveMoreItems(int i) {
        this._FooterText1.setText(getContext().getString(R.string.feed_item_list_footer_reader_more_items_l1, Integer.valueOf(i)));
        this._FooterText2.setText(R.string.feed_item_list_footer_reader_more_items_l2);
        this._FooterGroup.setOnClickListener(new View.OnClickListener() { // from class: mobi.beyondpod.ui.views.publishedepisodes.PublishedEpisodesListView.13
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                CommandManager.cmdEditFeed(PublishedEpisodesListView.this._CurrentFeed, R.id.fp_num_greader_items_to_get);
            }
        });
    }

    private void notifyNotSubscribedInReader() {
        this._FooterText1.setText(R.string.feed_item_list_header_reader_not_subscribed_l1);
        this._FooterText2.setText(R.string.feed_item_list_header_reader_not_subscribed_l2);
        this._FooterGroup.setOnClickListener(new View.OnClickListener() { // from class: mobi.beyondpod.ui.views.publishedepisodes.PublishedEpisodesListView.14
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                try {
                    PublishedEpisodesListView.this.toggleProgressIndicator(true);
                    AggregatorLoginHelper.addSubscription(PublishedEpisodesListView.this._CurrentFeed, new AggregatorLoginHelper.GSimpleResult() { // from class: mobi.beyondpod.ui.views.publishedepisodes.PublishedEpisodesListView.14.1
                        @Override // mobi.beyondpod.aggregators.AggregatorLoginHelper.GSimpleResult
                        public void failed(Exception exc) {
                            Toast.makeText(PublishedEpisodesListView.this.getContext(), PublishedEpisodesListView.OPERATION_FAILED + "\n" + exc.getMessage(), 1).show();
                            PublishedEpisodesListView.this.toggleProgressIndicator(false);
                        }

                        @Override // mobi.beyondpod.aggregators.AggregatorLoginHelper.GSimpleResult
                        public void success() {
                            PublishedEpisodesListView.this.toggleProgressIndicator(false);
                            PublishedEpisodesListView.this.reloadCurrentFeed(true, false);
                        }
                    });
                } catch (Exception e) {
                    CoreHelper.logException(PublishedEpisodesListView.TAG, PublishedEpisodesListView.FAILED_TO_ADD_READER_SUBSCRIPTION_FOR_FEED + ": " + PublishedEpisodesListView.this._CurrentFeed.getFeedPath(), e);
                    PublishedEpisodesListView.this.toggleProgressIndicator(false);
                    Toast.makeText(PublishedEpisodesListView.this.getContext(), PublishedEpisodesListView.OPERATION_FAILED + "\n" + e.getMessage(), 1).show();
                }
            }
        });
    }

    private void notifyHasHiddenItems() {
        this._FooterText1.setText(R.string.feed_item_list_footer_has_hidden_items_l1);
        this._FooterText2.setText(R.string.feed_item_list_footer_has_hidden_items_l2);
        this._FooterGroup.setOnClickListener(new View.OnClickListener() { // from class: mobi.beyondpod.ui.views.publishedepisodes.PublishedEpisodesListView.15
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                PublishedEpisodesListView.this.showRead();
            }
        });
    }

    private void notifyFeedFailedToLoad() {
        boolean z = (this._CurrentFeed.getFeedUri() == null || this._CurrentFeed.getFeedUri().getQuery() == null || !this._CurrentFeed.getFeedUri().getQuery().contains("auth=")) ? false : true;
        AlertDialog create = new AlertDialog.Builder(getContext()).setTitle(R.string.feed_item_list_invalid_feed_dlg_title).setMessage(z ? R.string.feed_item_list_invalid_feed_auth_dlg_msg : R.string.feed_item_list_invalid_feed_dlg_msg).setNegativeButton(R.string.feed_item_list_invalid_feed_help_text, new DialogInterface.OnClickListener() { // from class: mobi.beyondpod.ui.views.publishedepisodes.PublishedEpisodesListView.16
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
                CommandManager.cmdStartHtmlViewActivity(Configuration.faqFileURL(), PublishedEpisodesListView.BEYOND_POD_FAQ, false);
            }
        }).create();
        if (z) {
            create.setButton(-1, getResources().getText(R.string.feed_item_list_invalid_feed_go_to_web_site_text), new DialogInterface.OnClickListener() { // from class: mobi.beyondpod.ui.views.publishedepisodes.PublishedEpisodesListView.17
                @Override // android.content.DialogInterface.OnClickListener
                public void onClick(DialogInterface dialogInterface, int i) {
                    CommandManagerBase.cmdOpenExternalBrowser("http://" + PublishedEpisodesListView.this._CurrentFeed.getFeedUri().getHost());
                }
            });
        } else {
            create.setButton(-1, getResources().getText(R.string.alert_dialog_close), (DialogInterface.OnClickListener) null);
        }
        create.show();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void onAdapterDataLoadStarted() {
        toggleProgressIndicator(true);
    }

    @Override // mobi.beyondpod.services.player.PlayListEvents.PlayListEventListener
    public void onPlayListEvent(PlayListEvents.PlayListEvent playListEvent) {
        if (playListEvent.Type == 0) {
            runOnUiThread(new Runnable() { // from class: mobi.beyondpod.ui.views.publishedepisodes.PublishedEpisodesListView.18
                @Override // java.lang.Runnable
                public void run() {
                    PublishedEpisodesListView.this._Adapter.refreshItems();
                }
            });
        }
    }

    public boolean isUpdating() {
        return this._Catcher.isUpdating() || AggregatorLoginHelper.isSyncing();
    }

    public void setPreviewMode() {
        this._IsInPreviewMode = true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public ImageLoader getImageLoader() {
        return ((ImageLoader.ImageLoaderProvider) this._Owner.getActivity()).getImageLoaderInstance();
    }

    public FeedRssItemList getCheckedItems() {
        FeedRssItemList feedRssItemList = new FeedRssItemList(currentFeed());
        feedRssItemList.addAll(this._SelectedItems);
        return feedRssItemList;
    }

    private void addAsSelectedItem(RssFeedItem rssFeedItem) {
        if (this._SelectedItems.contains(rssFeedItem)) {
            return;
        }
        this._SelectedItems.add(rssFeedItem);
    }

    private void removeAsSelectedItem(RssFeedItem rssFeedItem) {
        if (this._SelectedItems.contains(rssFeedItem)) {
            this._SelectedItems.remove(rssFeedItem);
        }
    }

    public boolean isItemSelected(RssFeedItem rssFeedItem) {
        return this._SelectedItems.contains(rssFeedItem);
    }

    private TrackList getMyEpisodesFor(FeedRssItemList feedRssItemList) {
        Track trackByNameOrUrl;
        TrackList trackList = new TrackList();
        Iterator<RssFeedItem> it = feedRssItemList.iterator();
        while (it.hasNext()) {
            RssFeedItem next = it.next();
            if (next.enclosure() != null && (trackByNameOrUrl = currentFeed().tracks().getTrackByNameOrUrl(next.enclosure().fileName(), next.enclosure().Url)) != null) {
                trackList.add(trackByNameOrUrl);
            }
        }
        return trackList;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void onItemSelected(View view, RssFeedItem rssFeedItem) {
        if (isMultiSelecting()) {
            boolean z = false;
            if (isItemSelected(rssFeedItem)) {
                removeAsSelectedItem(rssFeedItem);
            } else {
                addAsSelectedItem(rssFeedItem);
                z = true;
            }
            if (this._SelectedItems.size() == 0) {
                this._ActionMode.finish();
                return;
            }
            if (view instanceof Checkable) {
                ((Checkable) view).setChecked(z);
            }
            this._actionModeListener.onItemCheckedStateChanged(this._ActionMode, rssFeedItem);
            return;
        }
        if (currentFeed().isTransient && rssFeedItem.enclosure() != null) {
            onPlayPause(rssFeedItem);
        } else {
            CommandManager.cmdOpenItemContentDialog(this._Owner.getActivity(), rssFeedItem, view);
        }
    }

    public void onItemLongPressed(RssFeedItem rssFeedItem) {
        if (!this._IsInPreviewMode && this._ActionMode == null) {
            startActionMode(this._actionModeListener);
            addAsSelectedItem(rssFeedItem);
            this._actionModeListener.onItemCheckedStateChanged(this._ActionMode, rssFeedItem);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void onPlayPause(RssFeedItem rssFeedItem) {
        this._Owner.onPlayPause(rssFeedItem);
    }

    public void onDownload(final RssFeedItem rssFeedItem) {
        if (EnclosureDownloadManager.isDownloading()) {
            doDownload(getContext(), rssFeedItem, this._CurrentFeed);
        } else {
            UserNotificationManager.warnAboutStartEpisodeDownload(getContext(), new UserNotificationManager.OnContinueListener() { // from class: mobi.beyondpod.ui.views.publishedepisodes.PublishedEpisodesListView.19
                @Override // mobi.beyondpod.ui.views.notifications.UserNotificationManager.OnContinueListener
                public void onContinue() {
                    PublishedEpisodesListView.this.doDownload(PublishedEpisodesListView.this.getContext(), rssFeedItem, PublishedEpisodesListView.this._CurrentFeed);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void doDownload(Context context, RssFeedItem rssFeedItem, Feed feed) {
        CommandManager.prepareEnclosureForPlayback(null, rssFeedItem, true, true);
        CommandManager.cmdDownloadEnclosure(context, rssFeedItem, feed, true);
    }

    public void onAddRemovePlaylist(RssFeedItem rssFeedItem) {
        CommandManager.cmdAddRemoveToPlaylist(getContext(), CommandManager.prepareEnclosureForPlayback(getContext(), rssFeedItem, false, false));
    }

    public void showCardMenu(View view, final RssFeedItem rssFeedItem) {
        PopupMenu popupMenu = new PopupMenu(getContext(), view);
        buildCardMenu(popupMenu.getMenu(), rssFeedItem);
        popupMenu.setOnMenuItemClickListener(new PopupMenu.OnMenuItemClickListener() { // from class: mobi.beyondpod.ui.views.publishedepisodes.PublishedEpisodesListView.20
            @Override // android.widget.PopupMenu.OnMenuItemClickListener
            public boolean onMenuItemClick(MenuItem menuItem) {
                PublishedEpisodesListView.this.handleCardMenu(menuItem, rssFeedItem);
                return true;
            }
        });
        popupMenu.setOnDismissListener(new PopupMenu.OnDismissListener() { // from class: mobi.beyondpod.ui.views.publishedepisodes.PublishedEpisodesListView.21
            @Override // android.widget.PopupMenu.OnDismissListener
            public void onDismiss(PopupMenu popupMenu2) {
                PublishedEpisodesListView.this._PauseRefresh = false;
                PublishedEpisodesListView.this.refreshContent();
            }
        });
        if (!((Activity) getContext()).isFinishing()) {
            popupMenu.show();
        }
        this._PauseRefresh = true;
    }

    private void buildCardMenu(Menu menu, RssFeedItem rssFeedItem) {
        if (rssFeedItem == null || rssFeedItem.enclosure() == null) {
            return;
        }
        Track localEnclosureTrack = rssFeedItem.enclosure().getLocalEnclosureTrack();
        int i = R.string.MENU_mark_played;
        if (localEnclosureTrack != null) {
            menu.add(70, 78, 1, R.string.MENU_delete_podcast_episodes);
            menu.add(70, 80, 4, localEnclosureTrack.allowAutoDelete() ? R.string.MENU_lock_episode : R.string.MENU_unlock_episode);
            if (localEnclosureTrack.isPlayed()) {
                i = R.string.MENU_mark_unplayed;
            }
            menu.add(70, 72, 5, i);
            menu.add(70, 74, 6, R.string.MENU_browser_share_podcast);
        } else {
            if (rssFeedItem.getRead()) {
                i = R.string.MENU_mark_unplayed;
            }
            menu.add(70, 72, 1, i);
            menu.add(70, 86, 6, R.string.published_list_add_to_my_episodes);
        }
        if (Configuration.publishedEpisodeCardSize() == 3 || localEnclosureTrack == null) {
            menu.add(70, 84, 2, (localEnclosureTrack == null || !BeyondPodApplication.getInstance().playList().hasTrack(localEnclosureTrack)) ? R.string.MENU_add_to_playlist : R.string.MENU_remove_from_playlist);
        }
        if (Configuration.publishedEpisodeCardSize() == 3) {
            menu.add(0, 85, 3, R.string.MENU_podcast_info);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleCardMenu(MenuItem menuItem, RssFeedItem rssFeedItem) {
        FeedRssItemList feedRssItemList = new FeedRssItemList(currentFeed());
        feedRssItemList.add(rssFeedItem);
        handleMenuSelection(menuItem, feedRssItemList);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void runOnUiThread(Runnable runnable) {
        if (this._Owner == null || this._Owner.getActivity() == null) {
            return;
        }
        this._Owner.getActivity().runOnUiThread(runnable);
    }

    public void setCategorySchedule(FeedCategory feedCategory) {
        CommandManager.cmdSetUpdateSchedule(feedCategory, this._Owner.getActivity(), true);
    }

    public boolean isMultiSelecting() {
        return this._ActionMode != null;
    }
}
