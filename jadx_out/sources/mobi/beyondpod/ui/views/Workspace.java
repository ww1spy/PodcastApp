package mobi.beyondpod.ui.views;

import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.res.Resources;
import android.graphics.Color;
import android.os.Build;
import android.os.Bundle;
import android.support.v4.app.FragmentActivity;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentTransaction;
import android.support.v4.view.MenuItemCompat;
import android.support.v7.app.MediaRouteActionProvider;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.android.volley.DefaultRetryPolicy;
import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import mobi.beyondpod.BeyondPodApplication;
import mobi.beyondpod.R;
import mobi.beyondpod.downloadengine.IHttpClient;
import mobi.beyondpod.downloadengine.UpdateAndDownloadEvents;
import mobi.beyondpod.downloadengine.UpdateAndDownloadManager;
import mobi.beyondpod.rsscore.Configuration;
import mobi.beyondpod.rsscore.ConfigurationHD;
import mobi.beyondpod.rsscore.Feed;
import mobi.beyondpod.rsscore.Track;
import mobi.beyondpod.rsscore.TrackList;
import mobi.beyondpod.rsscore.categories.CategoryManager;
import mobi.beyondpod.rsscore.categories.FeedCategory;
import mobi.beyondpod.rsscore.helpers.AnalyticsTracker;
import mobi.beyondpod.rsscore.helpers.CoreHelper;
import mobi.beyondpod.rsscore.helpers.DateTime;
import mobi.beyondpod.rsscore.helpers.TimeSpan;
import mobi.beyondpod.rsscore.repository.FeedRepository;
import mobi.beyondpod.schedulercore.ScheduledTasksManager;
import mobi.beyondpod.services.player.PlayList;
import mobi.beyondpod.sync.ChangeTracker;
import mobi.beyondpod.sync.TrackedChangeBase;
import mobi.beyondpod.ui.commands.CommandManager;
import mobi.beyondpod.ui.commands.CommandManagerBase;
import mobi.beyondpod.ui.core.MasterViewState;
import mobi.beyondpod.ui.core.mediarouter.BPMediaRouteDialogFactory;
import mobi.beyondpod.ui.core.volley.ImageLoader;
import mobi.beyondpod.ui.core.volley.ImageLoaderTrack;
import mobi.beyondpod.ui.views.base.IView;
import mobi.beyondpod.ui.views.base.TitleBar;
import mobi.beyondpod.ui.views.base.UIUtils;
import mobi.beyondpod.ui.views.base.slidinguppanel.SlidingUpPanelLayout;
import mobi.beyondpod.ui.views.myepisodesview.MyEpisodesFragment;
import mobi.beyondpod.ui.views.myepisodesview.MyEpisodesHolder;
import mobi.beyondpod.ui.views.navigator.FeedsListView;
import mobi.beyondpod.ui.views.navigator.NavigatorFragment;
import mobi.beyondpod.ui.views.player.PlayerPanel;
import mobi.beyondpod.ui.views.player.PlaylistFragment;
import mobi.beyondpod.ui.views.publishedepisodes.PublishedEpisodesFragment;
import mobi.beyondpod.ui.views.publishedepisodes.PublishedEpisodesListView;

/* loaded from: classes.dex */
public class Workspace extends SlidingUpPanelLayout implements UpdateAndDownloadEvents.UpdateAndDownloadEventListener, PlayerPanel.IPlayerPanelOwner {
    public static final int ALL_PUBLISHED_VIEW = 2;
    private static final int MENU_DELETE_FEED = 25;
    private static final int MENU_EDIT_FEED = 26;
    private static final int MENU_EPISODE_SYNC = 7;
    private static final int MENU_OPEN_SEARCH = 1;
    private static final int MENU_PLAY_VIDEO_AS_AUDIO = 12;
    private static final int MENU_SEND_TO_OTHER_DEVICES = 28;
    private static final int MENU_SETTINGS = 30;
    private static final int MENU_SHARE_FEED_URL = 27;
    private static final int MENU_SHARE_PODCAST_URL = 29;
    private static final int MENU_TOGGLE_PLAYLIST = 16;
    private static final int MENU_UPDATE_CATEGORY = 18;
    public static final int MY_EPISODES_VIEW = 3;
    private static final String TAG = "Workspace";
    private static final int WORKSPACE_MENU_GROUP = 1;
    public PublishedEpisodesListView AllPublished;
    public boolean DataIsLoadedInWorkspaceViews;
    public FeedsListView Feeds;
    public String LastExternalPlayerTrackPath;
    public long LastExternalPlayerTrackTime;
    public MyEpisodesHolder MyEpisodes;
    IView _ActiveView;
    MasterViewState _InitialState;
    IWorkspaceOwner _Owner;
    private PlayerPanel _Player;
    private View _PlaylistActionButton;
    Bundle _SavedInstanceState;
    SlidingUpPanelLayout.PanelSlideListener _SlidingPanelListener;
    MenuItem _UpdateAndDownload;
    View _UpdateAndDownloadIndicator;
    private boolean _WorkspaceViewsActivated;

    /* loaded from: classes.dex */
    public interface IWorkspaceOwner {
        FragmentActivity getActivity();

        ImageLoader getImageLoaderInstance();

        FragmentManager getSupportFragmentManager();

        void invalidateOptionsMenu();

        boolean isNavigatorDrawerOpen();

        boolean isOwnerDestroyed();

        boolean isPlaylistDrawerOpen();

        boolean onSearchRequested();

        void openFeed(Feed feed, boolean z, boolean z2);

        void openNavigator();

        void refreshActionBarTitle();

        void runOnUiThread(Runnable runnable);

        void setLoadingProgressVisibility(boolean z);

        void togglePlaylistDrawer();
    }

    public Workspace(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.DataIsLoadedInWorkspaceViews = false;
        this._SlidingPanelListener = new SlidingUpPanelLayout.PanelSlideListener() { // from class: mobi.beyondpod.ui.views.Workspace.1
            @Override // mobi.beyondpod.ui.views.base.slidinguppanel.SlidingUpPanelLayout.PanelSlideListener
            public void onPanelAnchored(View view) {
            }

            @Override // mobi.beyondpod.ui.views.base.slidinguppanel.SlidingUpPanelLayout.PanelSlideListener
            public void onPanelSlide(View view, float f) {
                if (Build.VERSION.SDK_INT >= 21) {
                    int createStatusBarColorFromCategoryColor = UIUtils.createStatusBarColorFromCategoryColor(TitleBar.constructActionBarColor());
                    UIUtils.setStatusBarColor(Workspace.this._Owner.getActivity(), Color.argb((int) (255.0f * f), Color.red(createStatusBarColorFromCategoryColor), Color.green(createStatusBarColorFromCategoryColor), Color.blue(createStatusBarColorFromCategoryColor)));
                    double d = f;
                    if (d > 0.9d) {
                        UIUtils.setStatusBarColor(Workspace.this._Owner.getActivity(), createStatusBarColorFromCategoryColor);
                    } else if (d < 0.1d) {
                        UIUtils.setStatusBarColor(Workspace.this._Owner.getActivity(), TitleBar.PlayerStatusBarColor);
                    } else {
                        UIUtils.setStatusBarColor(Workspace.this._Owner.getActivity(), Color.rgb((int) (Color.red(createStatusBarColorFromCategoryColor) * f), (int) (Color.green(createStatusBarColorFromCategoryColor) * f), (int) (Color.blue(createStatusBarColorFromCategoryColor) * f)));
                    }
                }
                Workspace.this._Player.onPlayerSlide(f);
            }

            @Override // mobi.beyondpod.ui.views.base.slidinguppanel.SlidingUpPanelLayout.PanelSlideListener
            public void onPanelExpanded(View view) {
                Workspace.this._Player.onPlayerExpanded();
                Workspace.this.postDelayed(new Runnable() { // from class: mobi.beyondpod.ui.views.Workspace.1.1
                    @Override // java.lang.Runnable
                    public void run() {
                        Workspace.this._Owner.invalidateOptionsMenu();
                    }
                }, 100L);
                AnalyticsTracker.onViewDisplayed(7);
            }

            @Override // mobi.beyondpod.ui.views.base.slidinguppanel.SlidingUpPanelLayout.PanelSlideListener
            public void onPanelCollapsed(View view) {
                Workspace.this._Player.onPlayerCollapsed();
                Workspace.this.postDelayed(new Runnable() { // from class: mobi.beyondpod.ui.views.Workspace.1.2
                    @Override // java.lang.Runnable
                    public void run() {
                        Workspace.this._Owner.invalidateOptionsMenu();
                    }
                }, 100L);
            }
        };
        this._WorkspaceViewsActivated = false;
    }

    public Workspace(Context context) {
        super(context);
        this.DataIsLoadedInWorkspaceViews = false;
        this._SlidingPanelListener = new SlidingUpPanelLayout.PanelSlideListener() { // from class: mobi.beyondpod.ui.views.Workspace.1
            @Override // mobi.beyondpod.ui.views.base.slidinguppanel.SlidingUpPanelLayout.PanelSlideListener
            public void onPanelAnchored(View view) {
            }

            @Override // mobi.beyondpod.ui.views.base.slidinguppanel.SlidingUpPanelLayout.PanelSlideListener
            public void onPanelSlide(View view, float f) {
                if (Build.VERSION.SDK_INT >= 21) {
                    int createStatusBarColorFromCategoryColor = UIUtils.createStatusBarColorFromCategoryColor(TitleBar.constructActionBarColor());
                    UIUtils.setStatusBarColor(Workspace.this._Owner.getActivity(), Color.argb((int) (255.0f * f), Color.red(createStatusBarColorFromCategoryColor), Color.green(createStatusBarColorFromCategoryColor), Color.blue(createStatusBarColorFromCategoryColor)));
                    double d = f;
                    if (d > 0.9d) {
                        UIUtils.setStatusBarColor(Workspace.this._Owner.getActivity(), createStatusBarColorFromCategoryColor);
                    } else if (d < 0.1d) {
                        UIUtils.setStatusBarColor(Workspace.this._Owner.getActivity(), TitleBar.PlayerStatusBarColor);
                    } else {
                        UIUtils.setStatusBarColor(Workspace.this._Owner.getActivity(), Color.rgb((int) (Color.red(createStatusBarColorFromCategoryColor) * f), (int) (Color.green(createStatusBarColorFromCategoryColor) * f), (int) (Color.blue(createStatusBarColorFromCategoryColor) * f)));
                    }
                }
                Workspace.this._Player.onPlayerSlide(f);
            }

            @Override // mobi.beyondpod.ui.views.base.slidinguppanel.SlidingUpPanelLayout.PanelSlideListener
            public void onPanelExpanded(View view) {
                Workspace.this._Player.onPlayerExpanded();
                Workspace.this.postDelayed(new Runnable() { // from class: mobi.beyondpod.ui.views.Workspace.1.1
                    @Override // java.lang.Runnable
                    public void run() {
                        Workspace.this._Owner.invalidateOptionsMenu();
                    }
                }, 100L);
                AnalyticsTracker.onViewDisplayed(7);
            }

            @Override // mobi.beyondpod.ui.views.base.slidinguppanel.SlidingUpPanelLayout.PanelSlideListener
            public void onPanelCollapsed(View view) {
                Workspace.this._Player.onPlayerCollapsed();
                Workspace.this.postDelayed(new Runnable() { // from class: mobi.beyondpod.ui.views.Workspace.1.2
                    @Override // java.lang.Runnable
                    public void run() {
                        Workspace.this._Owner.invalidateOptionsMenu();
                    }
                }, 100L);
            }
        };
        this._WorkspaceViewsActivated = false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void Initialize(MasterViewState masterViewState, Bundle bundle, IWorkspaceOwner iWorkspaceOwner) {
        this._Owner = iWorkspaceOwner;
        this._InitialState = masterViewState;
        this._SavedInstanceState = bundle;
        this._UpdateAndDownloadIndicator = LayoutInflater.from(getContext()).inflate(R.layout.action_bar_progress, (ViewGroup) null);
        this._UpdateAndDownloadIndicator.setOnClickListener(new View.OnClickListener() { // from class: mobi.beyondpod.ui.views.Workspace.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                CommandManager.cmdShowDownloadQueue();
            }
        });
        this._PlaylistActionButton = LayoutInflater.from(getContext()).inflate(R.layout.action_bar_playlist_menu_item, (ViewGroup) null);
        this._PlaylistActionButton.setOnClickListener(new View.OnClickListener() { // from class: mobi.beyondpod.ui.views.Workspace.3
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                Workspace.this.togglePlaylistDrawer();
            }
        });
        setPanelSlideListener(this._SlidingPanelListener);
        this.DataIsLoadedInWorkspaceViews = false;
    }

    public void loadDataInWorkspaceViews() {
        MasterViewState masterViewState;
        long currentTimeMillis = System.currentTimeMillis();
        int i = 0;
        try {
            MasterViewState masterViewState2 = this._InitialState;
            if (masterViewState2 == null) {
                try {
                    masterViewState = MasterViewState.fromBundle(this._SavedInstanceState);
                } catch (Exception unused) {
                    masterViewState = null;
                }
                if (masterViewState == null) {
                    masterViewState = new MasterViewState();
                    Feed activeFeedFilter = Configuration.getActiveFeedFilter();
                    if (!Configuration.allowHidingRead()) {
                        Configuration.setItemFilter(0);
                    }
                    if (activeFeedFilter != null && activeFeedFilter.hasUri()) {
                        masterViewState.contentViewFeed = activeFeedFilter;
                        masterViewState.contentViewFeed.setItemFilter(Configuration.getItemFilter());
                    }
                    masterViewState.feedsViewRootFeed = FeedRepository.getRootFeed();
                    masterViewState.podcastCurrentScope = 1;
                    masterViewState.feedContentItemIds = null;
                    masterViewState.currentView = 3;
                    if (Configuration.getActiveFeedFilter() != null && Configuration.getActiveFeedFilter().hasUrl() && Configuration.getFeedSelectedAction() == 1) {
                        masterViewState.currentView = 2;
                    }
                    if (masterViewState.contentViewFeed != null && !masterViewState.contentViewFeed.hasPodcasts()) {
                        masterViewState.currentView = 2;
                    }
                    i = Configuration.userHomeScreen();
                }
            } else {
                masterViewState = masterViewState2;
            }
            BuildViews(masterViewState);
            this.LastExternalPlayerTrackPath = masterViewState.lastExternalPlayingTrackPath;
            this.LastExternalPlayerTrackTime = masterViewState.lastExternalPlayingTrackTime;
            this.DataIsLoadedInWorkspaceViews = true;
        } catch (Exception e) {
            CoreHelper.logException(TAG, "failed to Load Data into the Workspace", e);
        }
        activateViews(i);
        analyticsLogMyEpisodesView();
        CoreHelper.writeTraceEntry(TAG, "LoadData in Workspace Views Completed in: " + (System.currentTimeMillis() - currentTimeMillis) + " ms.");
    }

    private void BuildViews(MasterViewState masterViewState) {
        long currentTimeMillis = System.currentTimeMillis();
        FragmentManager supportFragmentManager = this._Owner.getSupportFragmentManager();
        long currentTimeMillis2 = System.currentTimeMillis();
        supportFragmentManager.executePendingTransactions();
        NavigatorFragment navigatorFragment = (NavigatorFragment) supportFragmentManager.findFragmentById(R.id.feedsListFragment);
        if (navigatorFragment != null) {
            navigatorFragment.restoreState(masterViewState);
            this.Feeds = navigatorFragment.FeedsList;
        }
        PlaylistFragment playlistFragment = (PlaylistFragment) supportFragmentManager.findFragmentById(R.id.playlistFragment);
        if (playlistFragment != null) {
            playlistFragment.restoreState(masterViewState);
        }
        PublishedEpisodesFragment publishedEpisodesFragment = (PublishedEpisodesFragment) supportFragmentManager.findFragmentById(R.id.feedContentFragment);
        if (publishedEpisodesFragment != null) {
            publishedEpisodesFragment.restoreState(masterViewState);
            this.AllPublished = publishedEpisodesFragment.FeedContent;
        }
        MyEpisodesFragment myEpisodesFragment = (MyEpisodesFragment) supportFragmentManager.findFragmentById(R.id.myEpisodesFragment);
        if (myEpisodesFragment != null) {
            myEpisodesFragment.restoreState(masterViewState);
            this.MyEpisodes = myEpisodesFragment.Podcasts;
        }
        if (masterViewState.currentView == 2) {
            this._ActiveView = this.AllPublished;
        } else {
            this._ActiveView = this.MyEpisodes;
        }
        long currentTimeMillis3 = System.currentTimeMillis();
        CoreHelper.writeTraceEntry(TAG, "Build workspace Views Completed in: " + (currentTimeMillis3 - currentTimeMillis) + " ms ( cat: " + (currentTimeMillis2 - currentTimeMillis) + ", feed: " + (currentTimeMillis3 - currentTimeMillis2));
    }

    @Override // mobi.beyondpod.ui.views.base.slidinguppanel.SlidingUpPanelLayout, android.view.View
    protected void onFinishInflate() {
        this._Player = (PlayerPanel) findViewById(R.id.playerPanel);
        this._Player.initialize(this);
        super.onFinishInflate();
    }

    public void ActivateView(final int i) {
        this._Owner.runOnUiThread(new Runnable() { // from class: mobi.beyondpod.ui.views.Workspace.4
            @Override // java.lang.Runnable
            public void run() {
                IView activeView = Workspace.this.activeView();
                IView iView = i == 3 ? Workspace.this.MyEpisodes : Workspace.this.AllPublished;
                if (iView != null) {
                    if (activeView == null || !activeView.equals(iView)) {
                        iView.onBeforeActivate();
                        Workspace.this.setActiveView(i);
                        Workspace.this._Owner.refreshActionBarTitle();
                        if (activeView != null) {
                            activeView.onAfterDeactivate();
                        }
                        iView.onAfterActivate();
                    }
                }
            }
        });
    }

    public IView activeView() {
        return this._ActiveView;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setActiveView(int i) {
        if (this._Owner == null || this._Owner.isOwnerDestroyed()) {
            return;
        }
        FragmentManager supportFragmentManager = this._Owner.getSupportFragmentManager();
        PublishedEpisodesFragment publishedEpisodesFragment = (PublishedEpisodesFragment) supportFragmentManager.findFragmentById(R.id.feedContentFragment);
        MyEpisodesFragment myEpisodesFragment = (MyEpisodesFragment) supportFragmentManager.findFragmentById(R.id.myEpisodesFragment);
        if (i == 2) {
            this.AllPublished.setVisibility(0);
            FragmentTransaction beginTransaction = supportFragmentManager.beginTransaction();
            beginTransaction.show(publishedEpisodesFragment);
            beginTransaction.hide(myEpisodesFragment);
            beginTransaction.commitAllowingStateLoss();
            this._ActiveView = this.AllPublished;
        } else if (i == 3) {
            this.MyEpisodes.setVisibility(0);
            FragmentTransaction beginTransaction2 = supportFragmentManager.beginTransaction();
            beginTransaction2.show(myEpisodesFragment);
            beginTransaction2.hide(publishedEpisodesFragment);
            beginTransaction2.commitAllowingStateLoss();
            this._ActiveView = this.MyEpisodes;
        }
        supportFragmentManager.executePendingTransactions();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void saveCurrentStateToBundle(Bundle bundle) {
        saveState().toBundle(bundle);
    }

    MasterViewState saveState() {
        MasterViewState masterViewState = new MasterViewState();
        if (this.DataIsLoadedInWorkspaceViews) {
            masterViewState.currentView = activeView() == this.AllPublished ? 2 : 3;
            masterViewState.feedsViewRootFeed = this.Feeds.rootFeed();
            if (this.MyEpisodes != null) {
                this.MyEpisodes.PodcastList.saveState(masterViewState);
            }
            if (this.AllPublished != null) {
                this.AllPublished.saveState(masterViewState);
            }
            masterViewState.lastExternalPlayingTrackPath = this.LastExternalPlayerTrackPath;
            masterViewState.lastExternalPlayingTrackTime = this.LastExternalPlayerTrackTime;
        }
        return masterViewState;
    }

    private void deactivateViews() {
        this._UpdateAndDownload = null;
        if (this._Player != null) {
            this._Player.onDeActivated();
        }
        if (this.AllPublished != null) {
            this.AllPublished.onAfterDeactivate();
        }
        if (this.MyEpisodes != null) {
            this.MyEpisodes.onAfterDeactivate();
        }
        BeyondPodApplication.messageBus.unsubscribe(this, UpdateAndDownloadEvents.UpdateAndDownloadEvent.class);
        toggleUpdateAnimation(false);
        this._WorkspaceViewsActivated = false;
    }

    public void activateViews(int i) {
        CoreHelper.writeTraceEntry(TAG, ">>>>>>> Activating Views... ");
        this._UpdateAndDownload = null;
        if (this._WorkspaceViewsActivated) {
            CoreHelper.writeTraceEntry(TAG, ">>>>>>> Views already active! Ignoring... ");
            return;
        }
        if (this.Feeds != null) {
            this.Feeds.setVisibility(0);
        }
        if (this._Player != null) {
            this._Player.onBeforeActivate();
            disableSliding();
            this._Player.hide();
            if (!ConfigurationHD.isPlayerDismissedByUser() && !PlayList.isEmpty()) {
                showPlayer(i == 2);
            }
            this._Player.onActivated();
        }
        if (this.AllPublished != null && activeView() == this.AllPublished) {
            this._ActiveView = null;
            ActivateView(2);
            if (this.AllPublished.currentFeed() == null) {
                openFeed(selectedFeed(), true, false);
            }
        }
        if (this.MyEpisodes != null && activeView() == this.MyEpisodes) {
            this._ActiveView = null;
            ActivateView(3);
        }
        this._WorkspaceViewsActivated = true;
        this._Owner.setLoadingProgressVisibility(false);
        BeyondPodApplication.messageBus.subscribe(this, UpdateAndDownloadEvents.UpdateAndDownloadEvent.class);
        if (i == 1) {
            postDelayed(new Runnable() { // from class: mobi.beyondpod.ui.views.Workspace.5
                @Override // java.lang.Runnable
                public void run() {
                    Workspace.this._Owner.openNavigator();
                }
            }, 500L);
        }
        CoreHelper.writeTraceEntry(TAG, ">>>>>>> Workspace Views activated!");
    }

    public Feed selectedFeed() {
        Feed activeFeedFilter = Configuration.getActiveFeedFilter();
        if (activeFeedFilter != null || this.Feeds == null || this.Feeds.feedCount() <= 0) {
            return activeFeedFilter;
        }
        Feed nextFeed = this.Feeds.nextFeed(null);
        Configuration.setActiveFeedFilter(nextFeed);
        return nextFeed;
    }

    public boolean handleOptionsMenu(int i, MenuItem menuItem) {
        String str;
        if (this.AllPublished.handleOptionsMenu(i, menuItem) || this.MyEpisodes.handleOptionsMenu(i, menuItem)) {
            return true;
        }
        if (menuItem.getGroupId() != 1) {
            return false;
        }
        Feed activeFeedFilter = Configuration.getActiveFeedFilter();
        int itemId = menuItem.getItemId();
        if (itemId == 1) {
            onSearchRequested();
            return true;
        }
        if (itemId != 7) {
            if (itemId == 12) {
                Configuration.setAllowVideosInPlaylist(!Configuration.allowVideosInPlaylist());
                CommandManager.cmdLoadCurrentTrack();
                return true;
            }
            if (itemId == 18) {
                if (updateActionUpdatesAllFeeds()) {
                    CommandManager.cmdUpdateFeedOrCategory(getContext(), null, CategoryManager.AllFeeds);
                } else {
                    CommandManager.cmdUpdateCurrentFeedOrCategory(getContext());
                }
                return true;
            }
            switch (itemId) {
                case 25:
                    if (activeFeedFilter != null) {
                        CommandManager.cmdDeleteFeed(getContext(), activeFeedFilter);
                    }
                    return true;
                case 26:
                    if (activeFeedFilter != null) {
                        CommandManager.cmdEditFeed(activeFeedFilter, -1);
                    }
                    return true;
                case 27:
                    if (activeFeedFilter != null) {
                        CommandManagerBase.cmdShareFeed(getContext(), activeFeedFilter);
                    }
                    return true;
                case 28:
                    if (activeFeedFilter != null) {
                        ChangeTracker.addLocalFeedChange(14, activeFeedFilter, 15);
                    }
                    return true;
                case 29:
                    CommandManager.cmdSharePodcast(getContext(), BeyondPodApplication.getInstance().playList().currentTrack());
                    return true;
                case 30:
                    CommandManager.cmdShowGlobalSettings();
                    return true;
                default:
                    return false;
            }
        }
        StringBuilder sb = new StringBuilder();
        ArrayList<TrackedChangeBase> pendingUploadChanges = ChangeTracker.pendingUploadChanges();
        if (pendingUploadChanges.size() > 0) {
            str = pendingUploadChanges.size() + " pending changes";
        } else {
            str = "No Pending Changes";
        }
        Iterator<TrackedChangeBase> it = pendingUploadChanges.iterator();
        while (it.hasNext()) {
            TrackedChangeBase next = it.next();
            sb.append(" • ");
            sb.append(DateTime.formatDateTime(new Date(next.timeStamp())));
            sb.append(" - ");
            sb.append(next.changeName());
            sb.append(" ");
            sb.append(next.friendlyName());
            sb.append("\n\n");
        }
        if (Configuration.lastRemoteChangeTimeStamp() > 0) {
            sb.append("\nLast remote change: ");
            sb.append(DateTime.formatDateTime(new Date(Configuration.lastRemoteChangeTimeStamp())));
        }
        if (Configuration.lastSyncTimeStamp() > 0) {
            sb.append("\nLast sync timestamp: ");
            sb.append(DateTime.formatDateTime(new Date(Configuration.lastSyncTimeStamp())));
        }
        View inflate = LayoutInflater.from(getContext()).inflate(R.layout.cds_pending_changes, (ViewGroup) null);
        ((TextView) inflate.findViewById(R.id.content1)).setText(sb.toString());
        new AlertDialog.Builder(getContext()).setTitle(str).setPositiveButton(R.string.cds_menu_sync_start, new DialogInterface.OnClickListener() { // from class: mobi.beyondpod.ui.views.Workspace.7
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i2) {
                ScheduledTasksManager.scheduleSyncTaskIfSyncIsEnabled(0, TimeSpan.fromSeconds(1.0d), true);
            }
        }).setNeutralButton(R.string.cds_menu_sync_show_log, new DialogInterface.OnClickListener() { // from class: mobi.beyondpod.ui.views.Workspace.6
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i2) {
                CommandManager.cmdViewFileContent(Configuration.syncLogFilePath(), true);
            }
        }).setView(inflate).create().show();
        return true;
    }

    public boolean prepareOptionsMenu(Menu menu) {
        String str;
        this._UpdateAndDownload = null;
        menu.clear();
        if (!this._Owner.isPlaylistDrawerOpen() && !this._Owner.isNavigatorDrawerOpen() && !isFullScreenPlayerVisible() && (UpdateAndDownloadManager.isWorking() || Configuration.getActiveFeedFilter() != null || CommandManager.hasUpdatableFeedsInCategory(Configuration.getActiveFeedCategory()) || updateActionUpdatesAllFeeds())) {
            Resources resources = getResources();
            Object[] objArr = new Object[1];
            if (!updateActionUpdatesAllFeeds()) {
                if (Configuration.getActiveFeedFilter() != null) {
                    str = getResources().getString(R.string.MENU_feed);
                } else {
                    str = "'" + Configuration.getActiveFeedCategory().name() + "'";
                }
            } else {
                str = "'" + CategoryManager.AllFeeds.name() + "'";
            }
            objArr[0] = str;
            this._UpdateAndDownload = menu.add(1, 18, 1, resources.getString(R.string.MENU_update_my_episodes, objArr));
            this._UpdateAndDownload.setIcon(R.drawable.ic_action_reload).setShowAsAction((UpdateAndDownloadManager.isWorking() || !Configuration.allowPullToRefresh()) ? 2 : 0);
            toggleUpdateAnimation(UpdateAndDownloadManager.isWorking());
        }
        MenuItem add = menu.add(R.string.MENU_media_route);
        MediaRouteActionProvider mediaRouteActionProvider = new MediaRouteActionProvider(getContext());
        mediaRouteActionProvider.setRouteSelector(BeyondPodApplication.getInstance().chromecastDevice().getRouteSelector());
        mediaRouteActionProvider.setDialogFactory(new BPMediaRouteDialogFactory());
        MenuItemCompat.setActionProvider(add, mediaRouteActionProvider);
        add.setShowAsAction(2);
        MenuItem add2 = menu.add(1, 16, 2, R.string.podcast_list_view_playlist);
        add2.setShowAsAction(2);
        add2.setActionView(this._PlaylistActionButton);
        ((TextView) this._PlaylistActionButton.findViewById(R.id.playlistCount)).setText(Integer.toString(BeyondPodApplication.getInstance().playList().playlistSize()));
        if (!this._Owner.isPlaylistDrawerOpen() && !this._Owner.isNavigatorDrawerOpen()) {
            if (isFullScreenPlayerVisible()) {
                menu.add(1, 29, 1, R.string.MENU_browser_share_podcast);
            } else {
                if (activeView() == this.MyEpisodes) {
                    this.MyEpisodes.prepareOptionsMenu(menu);
                } else if (activeView() == this.AllPublished) {
                    this.AllPublished.prepareOptionsMenu(menu);
                }
                Feed activeFeedFilter = Configuration.getActiveFeedFilter();
                if (Configuration.getActiveFeedFilter() != null) {
                    if (activeFeedFilter.hasUrl()) {
                        menu.add(1, 27, 13, R.string.MENU_browser_share_feed);
                    }
                    menu.add(1, 26, 14, R.string.MENU_edit_feed);
                    if (ChangeTracker.isTrackingEnabled() && activeFeedFilter.hasUrl()) {
                        menu.add(1, 28, 15, R.string.cds_menu_send_feed_to_devices);
                    }
                }
            }
        }
        if (ChangeTracker.isTrackingEnabled() && Configuration.CDSDebugEnabled()) {
            menu.add(1, 7, 20, R.string.cds_menu_sync);
        }
        if (!isFullScreenPlayerVisible()) {
            menu.add(1, 1, 21, R.string.MENU_open_search).setIcon(R.drawable.ic_action_search);
        }
        menu.add(1, 12, 30, R.string.MENU_video_as_audio).setCheckable(true).setChecked(!Configuration.allowVideosInPlaylist());
        if (Configuration.DBGShowSettings() > 0) {
            menu.add(1, 30, 31, R.string.MENU_Settings_Selector);
        }
        return true;
    }

    private boolean updateActionUpdatesAllFeeds() {
        return this._Owner.isNavigatorDrawerOpen() || (Configuration.getActiveFeedFilter() == null && CategoryManager.CategoryHome == Configuration.getActiveFeedCategory());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void toggleUpdateAnimation(boolean z) {
        if (this._UpdateAndDownload == null) {
            return;
        }
        if (z) {
            this._UpdateAndDownload.setActionView(this._UpdateAndDownloadIndicator);
        } else {
            this._UpdateAndDownload.setActionView((View) null);
        }
    }

    @Override // mobi.beyondpod.downloadengine.UpdateAndDownloadEvents.UpdateAndDownloadEventListener
    public void onUpdateAndDownloadEvent(final UpdateAndDownloadEvents.UpdateAndDownloadEvent updateAndDownloadEvent) {
        this._Owner.runOnUiThread(new Runnable() { // from class: mobi.beyondpod.ui.views.Workspace.8
            @Override // java.lang.Runnable
            public void run() {
                if (updateAndDownloadEvent.Type == UpdateAndDownloadEvents.UpdateAndDownloadEvent.UPDATE_AND_DOWNLOAD_COMPLETED) {
                    Workspace.this.toggleUpdateAnimation(false);
                } else {
                    Workspace.this.toggleUpdateAnimation(true);
                }
                Workspace.this._Owner.invalidateOptionsMenu();
            }
        });
    }

    public void notifyDrawerClosed() {
        NavigatorFragment navigatorFragment = (NavigatorFragment) this._Owner.getSupportFragmentManager().findFragmentById(R.id.feedsListFragment);
        if (navigatorFragment != null) {
            navigatorFragment.notifyDrawerClosed();
        }
        PlaylistFragment playlistFragment = (PlaylistFragment) this._Owner.getSupportFragmentManager().findFragmentById(R.id.playlistFragment);
        if (playlistFragment != null) {
            playlistFragment.notifyDrawerClosed();
        }
    }

    public void notifyDrawerOpened() {
        NavigatorFragment navigatorFragment = (NavigatorFragment) this._Owner.getSupportFragmentManager().findFragmentById(R.id.feedsListFragment);
        if (navigatorFragment != null) {
            navigatorFragment.notifyDrawerOpened();
        }
    }

    @Override // mobi.beyondpod.ui.views.player.PlayerPanel.IPlayerPanelOwner
    public void expandPlayer() {
        expandPane();
    }

    @Override // mobi.beyondpod.ui.views.player.PlayerPanel.IPlayerPanelOwner
    public void collapsePlayer() {
        if (isExpanded()) {
            collapsePane();
        }
    }

    @Override // mobi.beyondpod.ui.views.player.PlayerPanel.IPlayerPanelOwner
    public void dismissPlayer() {
        CommandManagerBase.cmdPauseAudioPlayback();
        disableSliding();
        this._Player.hide();
    }

    @Override // mobi.beyondpod.ui.views.player.PlayerPanel.IPlayerPanelOwner
    public void showPlayer(boolean z) {
        if (!this._Player.isPlayerVisible()) {
            this._Player.show();
        }
        if (z && !isExpanded()) {
            postDelayed(new Runnable() { // from class: mobi.beyondpod.ui.views.Workspace.9
                @Override // java.lang.Runnable
                public void run() {
                    Workspace.this.expandPane();
                }
            }, 400L);
        }
        enableSliding();
    }

    @Override // mobi.beyondpod.ui.views.player.PlayerPanel.IPlayerPanelOwner
    public void togglePlaylistDrawer() {
        this._Owner.togglePlaylistDrawer();
    }

    @Override // mobi.beyondpod.ui.views.player.PlayerPanel.IPlayerPanelOwner
    public void openTrackFeed(Track track) {
        if (track != null) {
            this._Owner.openFeed(track.getParentFeed(), false, false);
        }
    }

    public void onSearchRequested() {
        this._Owner.onSearchRequested();
    }

    @Override // mobi.beyondpod.ui.views.player.PlayerPanel.IPlayerPanelOwner
    public void driveViewVisibilityChanged(boolean z) {
        adjustFlingVelocity(z);
    }

    private void adjustFlingVelocity(boolean z) {
        updateFlingSensitivity(z ? DefaultRetryPolicy.DEFAULT_TIMEOUT_MS : IHttpClient.SC_INTERNAL_SERVER_ERROR);
    }

    @Override // mobi.beyondpod.ui.views.player.PlayerPanel.IPlayerPanelOwner
    public void runOnUiThread(Runnable runnable) {
        this._Owner.runOnUiThread(runnable);
    }

    @Override // mobi.beyondpod.ui.views.player.PlayerPanel.IPlayerPanelOwner
    public void openTrackPropertiesDialog(Track track, TrackList trackList) {
        CommandManager.cmdOpenEpisodeNotes(track, trackList, null, this._Owner.getActivity());
    }

    @Override // mobi.beyondpod.ui.views.player.PlayerPanel.IPlayerPanelOwner
    public ImageLoaderTrack getImageLoader() {
        return (ImageLoaderTrack) this._Owner.getImageLoaderInstance();
    }

    public void collapsePlayerIfNeeded() {
        if (isExpanded()) {
            collapsePlayer();
        }
    }

    public boolean isFullScreenPlayerVisible() {
        return isPlayerVisible() && isExpanded();
    }

    public boolean isPlayerVisible() {
        return this._Player.getVisibility() == 0;
    }

    public boolean isMiniPlayerVisible() {
        return isPlayerVisible() && !isExpanded();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void onActivityDestroy() {
        if (this._Player != null) {
            this._Player.onActivityDestroy();
        }
        if (this.AllPublished != null) {
            this.AllPublished.onActivityDestroy();
        }
        if (this.MyEpisodes != null) {
            this.MyEpisodes.onActivityDestroy();
        }
        if (this.Feeds != null) {
            this.Feeds.onActivityDestroy();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void onActivityResume() {
        if (this.DataIsLoadedInWorkspaceViews) {
            activateViews(0);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void onActivityPause() {
        deactivateViews();
    }

    public boolean closeSmartPlayListIfNeeded() {
        PlaylistFragment playlistFragment = (PlaylistFragment) this._Owner.getSupportFragmentManager().findFragmentById(R.id.playlistFragment);
        if (playlistFragment != null) {
            return playlistFragment.closeSmartPlayListIfNeeded();
        }
        return false;
    }

    public void autoExpandPlayerOnNextPlay() {
        if (this._Player != null) {
            this._Player.setAutoShowPlayerOnNextPlay();
        }
    }

    private void openOrRefreshMyEpisodes() {
        analyticsLogMyEpisodesView();
        if (activeView() != this.MyEpisodes) {
            ActivateView(3);
        } else {
            this.MyEpisodes.PodcastList.reloadContent();
        }
        collapsePlayer();
    }

    private void openOrRefreshAllPublished(Feed feed) {
        AnalyticsTracker.onViewDisplayed(3);
        if (this.AllPublished.currentFeed() != feed) {
            this.AllPublished.loadFeed(feed);
        } else {
            this.AllPublished.refreshOnNextActivate();
        }
        if (activeView() != this.AllPublished) {
            ActivateView(2);
        }
        collapsePlayer();
    }

    private void analyticsLogMyEpisodesView() {
        int i;
        Feed activeFeedFilter = Configuration.getActiveFeedFilter();
        FeedCategory activeFeedCategory = Configuration.getActiveFeedCategory();
        if (activeFeedFilter == null) {
            i = CategoryManager.CategoryHome.equals(activeFeedCategory) ? 2 : 1;
        } else {
            i = activeFeedFilter.hasUrl() ? 0 : 4;
        }
        AnalyticsTracker.onViewDisplayed(i);
    }

    public void selectCategory(FeedCategory feedCategory) {
        FeedCategory activeFeedCategory = Configuration.getActiveFeedCategory();
        Configuration.setActiveFeedCategory(feedCategory);
        if (!activeFeedCategory.equals(feedCategory) || Configuration.getActiveFeedFilter() != null) {
            Configuration.setActiveFeedFilter(null);
            openOrRefreshMyEpisodes();
            this.Feeds.setRootFeed(FeedRepository.getRootFeed());
            return;
        }
        collapsePlayer();
    }

    public void openFeed(Feed feed, boolean z, boolean z2) {
        if (feed == null) {
            return;
        }
        Configuration.setActiveFeedFilter(feed);
        Configuration.setActiveFeedCategory(feed.getCategories().getPrimary());
        if (!feed.hasUrl() || z2) {
            openOrRefreshMyEpisodes();
            return;
        }
        if (!feed.hasPodcasts() || z) {
            openOrRefreshAllPublished(feed);
        } else if (Configuration.getFeedSelectedAction() == 1) {
            openOrRefreshAllPublished(feed);
        } else {
            openOrRefreshMyEpisodes();
        }
    }

    public boolean turnOffPlaylistPagerIfNeeded() {
        if (this._Player == null) {
            return false;
        }
        return this._Player.turnOffPlaylistPagerIfNeeded();
    }

    public void onTrimMemory() {
        if (this.Feeds != null) {
            this.Feeds.onTrimMemory();
        }
    }
}
