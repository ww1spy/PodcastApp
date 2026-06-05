package mobi.beyondpod.ui.views;

import android.annotation.TargetApi;
import android.app.Activity;
import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.res.Resources;
import android.net.Uri;
import android.os.AsyncTask;
import android.os.Bundle;
import android.os.Handler;
import android.support.design.widget.AppBarLayout;
import android.support.v4.app.ActivityCompat;
import android.support.v4.app.FragmentActivity;
import android.support.v4.app.FragmentManager;
import android.support.v4.view.GravityCompat;
import android.support.v7.app.ActionBarDrawerToggle;
import android.support.v7.app.AppCompatActivity;
import android.support.v7.view.ActionMode;
import android.support.v7.widget.Toolbar;
import android.view.KeyEvent;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.widget.Toast;
import com.google.android.gms.actions.SearchIntents;
import java.util.UUID;
import mobi.beyondpod.BeyondPodApplication;
import mobi.beyondpod.Constants;
import mobi.beyondpod.R;
import mobi.beyondpod.downloadengine.DownloadEngineNotificationManager;
import mobi.beyondpod.downloadengine.UpdateAndDownloadManager;
import mobi.beyondpod.evo.ApplicationCmdEvents;
import mobi.beyondpod.evo.GcmRegistrar;
import mobi.beyondpod.rsscore.Configuration;
import mobi.beyondpod.rsscore.ConfigurationHD;
import mobi.beyondpod.rsscore.Feed;
import mobi.beyondpod.rsscore.Track;
import mobi.beyondpod.rsscore.categories.CategoryManager;
import mobi.beyondpod.rsscore.categories.FeedCategory;
import mobi.beyondpod.rsscore.events.ApplicationEvents;
import mobi.beyondpod.rsscore.helpers.AnalyticsTracker;
import mobi.beyondpod.rsscore.helpers.CoreHelper;
import mobi.beyondpod.rsscore.helpers.StringUtils;
import mobi.beyondpod.rsscore.repository.FeedRepository;
import mobi.beyondpod.rsscore.repository.RepositoryEvents;
import mobi.beyondpod.rsscore.rss.ItemStateHistory;
import mobi.beyondpod.rsscore.rss.PolicyManager;
import mobi.beyondpod.schedulercore.ScheduledTasksManager;
import mobi.beyondpod.services.player.MediaButtonIntentReceiver;
import mobi.beyondpod.services.player.PlayList;
import mobi.beyondpod.services.player.PlayListEvents;
import mobi.beyondpod.services.player.impl.ChromecastDevice;
import mobi.beyondpod.services.player.smartplay.PlayFromQuery;
import mobi.beyondpod.services.scheduler.CommandReceiver;
import mobi.beyondpod.sync.ChangeTracker;
import mobi.beyondpod.sync.TrackedChangeBase;
import mobi.beyondpod.sync.trackers.bp.BPTracker;
import mobi.beyondpod.ui.commands.CommandManager;
import mobi.beyondpod.ui.core.ThemeManager;
import mobi.beyondpod.ui.core.mediarouter.BPMediaRouteControllerDialog;
import mobi.beyondpod.ui.core.mediarouter.MediaRouteDiscoveryFragment;
import mobi.beyondpod.ui.core.volley.ImageLoader;
import mobi.beyondpod.ui.core.volley.ImageLoaderTrack;
import mobi.beyondpod.ui.dialogs.ApplicationErrorMessageDialog;
import mobi.beyondpod.ui.evosearch.RepositorySearchProvider;
import mobi.beyondpod.ui.views.Workspace;
import mobi.beyondpod.ui.views.base.BPDrawerLayout;
import mobi.beyondpod.ui.views.base.TitleBar;
import mobi.beyondpod.ui.views.contentview.FeedItemContentViewPager;
import mobi.beyondpod.ui.views.feedsettings.FeedPropertiesView;
import mobi.beyondpod.ui.views.navigator.NavigatorFragment;
import mobi.beyondpod.ui.views.notifications.UserNotificationManager;
import mobi.beyondpod.ui.views.onboarding.startup.FirstRun;
import uk.co.chrisjenx.calligraphy.CalligraphyContextWrapper;

/* loaded from: classes.dex */
public class MasterView extends AppCompatActivity implements Workspace.IWorkspaceOwner, MediaRouteDiscoveryFragment.IDiscoveryFragmentOwner, ImageLoader.ImageLoaderProvider, NavigatorFragment.INavigatorFragmentOwner, BPDrawerLayout.IDrawerOwner, BPMediaRouteControllerDialog.IRouteControllerDialogOwner {
    private static final int ID_HOME = 16908332;
    private static final String TAG = "MasterView";
    private static int _InstanceCount;
    private static Uri _LastAddFeedUri;
    public Workspace Workspace;
    private AppBarLayout _AppBar;
    private BPDrawerLayout _DrawerLayout;
    private ActionBarDrawerToggle _DrawerToggle;
    private Handler _Handler;
    private ImageLoader _ImageLoader;
    private View _LoadingProgress;
    private AsyncTask<Void, Void, Void> _RegisterTask;
    private TitleBar _Title;
    private CommandReceiver _externalCommandReceiver;
    private static final String THIS_FEED_ALREADY_EXISTS_IN_CATEGORY = CoreHelper.loadResourceString(R.string.feed_settings_feed_already_exists_in_category);
    private static final String WELCOME_TO_BEYOND_POD = CoreHelper.loadResourceString(R.string.master_view_welcome_to_beyondpod);
    private static final String BEYOND_POD_WILL_NOW_EXIT = CoreHelper.loadResourceString(R.string.master_view_beyondpod_will_now_exit);
    private static final String BEYOND_POD_FAILED_TO_START = CoreHelper.loadResourceString(R.string.master_view_beyondpod_failed_to_start);
    private static final String LOADING_EPISODES = CoreHelper.loadResourceString(R.string.master_view_loaded_s_feeds);
    private static final String LOADING_FEEDS = CoreHelper.loadResourceString(R.string.master_view_loading_feeds);
    private final RepositoryEvents.RepositoryEventListener _RepositoryListener = new RepositoryEvents.RepositoryEventListener() { // from class: mobi.beyondpod.ui.views.MasterView.1
        @Override // mobi.beyondpod.rsscore.repository.RepositoryEvents.RepositoryEventListener
        public void onRepositoryEvent(final RepositoryEvents.RepositoryEvent repositoryEvent) {
            MasterView.this.runOnUiThread(new Runnable() { // from class: mobi.beyondpod.ui.views.MasterView.1.1
                @Override // java.lang.Runnable
                public void run() {
                    TitleBar.TitleInfo titleInfo = new TitleBar.TitleInfo();
                    if (repositoryEvent.Type == 0) {
                        titleInfo.primaryTitle = MasterView.LOADING_FEEDS;
                        MasterView.this.setMasterViewTitle(titleInfo);
                        MasterView.this.toggleTitleIndeterminateProgress(true);
                    } else if (repositoryEvent.Type == 1) {
                        titleInfo.primaryTitle = MasterView.LOADING_EPISODES;
                        MasterView.this.setMasterViewTitle(titleInfo);
                        MasterView.this.toggleTitleIndeterminateProgress(true);
                    } else if (repositoryEvent.Type == 2) {
                        titleInfo.primaryTitle = MasterView.WELCOME_TO_BEYOND_POD;
                        MasterView.this.finishInitialization();
                        MasterView.this.toggleTitleIndeterminateProgress(false);
                        MasterView.this.refreshActionBarTitle();
                    }
                }
            });
        }
    };
    private final PlayListEvents.PlayListEventListener _PlaylistListener = new PlayListEvents.PlayListEventListener() { // from class: mobi.beyondpod.ui.views.MasterView.2
        @Override // mobi.beyondpod.services.player.PlayListEvents.PlayListEventListener
        public void onPlayListEvent(PlayListEvents.PlayListEvent playListEvent) {
            MasterView.this.refreshActionBarTitle();
            if (playListEvent.Type == 0 && UserNotificationManager.shouldPeekPlaylist() && MasterView.this._DrawerLayout != null) {
                MasterView.this._DrawerLayout.peekDrawer(GravityCompat.END);
            }
        }
    };
    private final ApplicationCmdEvents.CloseMasterViewEventListener _CmdCloseListener = new ApplicationCmdEvents.CloseMasterViewEventListener() { // from class: mobi.beyondpod.ui.views.MasterView.3
        @Override // mobi.beyondpod.evo.ApplicationCmdEvents.CloseMasterViewEventListener
        public void onCloseMasterViewEvent(ApplicationCmdEvents.CloseMasterViewEvent closeMasterViewEvent) {
            MasterView.this.finish();
        }
    };
    private final ApplicationCmdEvents.LockMasterOrientationEventListener _LockScreenOrientationListener = new ApplicationCmdEvents.LockMasterOrientationEventListener() { // from class: mobi.beyondpod.ui.views.MasterView.4
        @Override // mobi.beyondpod.evo.ApplicationCmdEvents.LockMasterOrientationEventListener
        public void onCloseMasterViewEvent(ApplicationCmdEvents.LockMasterOrientationEvent lockMasterOrientationEvent) {
            if (lockMasterOrientationEvent.Lock) {
                MasterView.this.lockCurrentScreenOrientation();
            } else {
                MasterView.this.restoreCurrentScreenOrientation();
            }
        }
    };
    private final ApplicationCmdEvents.SelectFeedCategoryAndOpenFeedEventListener _CmdSelectCategoryListener = new ApplicationCmdEvents.SelectFeedCategoryAndOpenFeedEventListener() { // from class: mobi.beyondpod.ui.views.MasterView.5
        @Override // mobi.beyondpod.evo.ApplicationCmdEvents.SelectFeedCategoryAndOpenFeedEventListener
        public void onSelectFeedCategoryAndOpenFeedEvent(final ApplicationCmdEvents.SelectFeedCategoryAndOpenFeedEvent selectFeedCategoryAndOpenFeedEvent) {
            if (selectFeedCategoryAndOpenFeedEvent.Feed == null) {
                return;
            }
            MasterView.this._Handler.postDelayed(new Runnable() { // from class: mobi.beyondpod.ui.views.MasterView.5.1
                @Override // java.lang.Runnable
                public void run() {
                    FeedCategory primary = selectFeedCategoryAndOpenFeedEvent.Feed.getCategories().getPrimary();
                    if (CategoryManager.Unassigned.equals(primary)) {
                        primary = selectFeedCategoryAndOpenFeedEvent.Feed.getCategories().getSecondary();
                    }
                    if (CategoryManager.Unassigned.equals(primary)) {
                        return;
                    }
                    MasterView.this.selectCategory(primary);
                    MasterView.this.openFeed(selectFeedCategoryAndOpenFeedEvent.Feed, false, false);
                    FeedRepository.notifyCategoryEvent(14);
                }
            }, 1000L);
        }
    };
    private ApplicationEvents.ApplicationErrorEventListener _ApplicationEventListener = new ApplicationEvents.ApplicationErrorEventListener() { // from class: mobi.beyondpod.ui.views.MasterView.6
        @Override // mobi.beyondpod.rsscore.events.ApplicationEvents.ApplicationErrorEventListener
        public void onApplicationErrorEvent(ApplicationEvents.ApplicationErrorEvent applicationErrorEvent) {
            Resources resources = MasterView.this.getResources();
            Intent intent = new Intent(MasterView.this.getApplicationContext(), (Class<?>) ApplicationErrorMessageDialog.class);
            switch (applicationErrorEvent.type) {
                case 0:
                    CharSequence text = resources.getText(R.string.application_error_storage_card_corrupted);
                    if (!ApplicationErrorMessageDialog.requestPermissionsIfNeeded(MasterView.this.getApplicationContext(), resources.getText(R.string.application_error_storage_card_read_needs_write_permission), null, null)) {
                        if (!CoreHelper.isFolderReallyWritable(Configuration.beyondPodPublicStorageRootPath())) {
                            text = resources.getText(R.string.application_error_storage_card_read_only_kitkat);
                        }
                        intent.putExtra(ApplicationErrorMessageDialog.ERROR_MESSAGE, text);
                        break;
                    } else {
                        return;
                    }
                case 1:
                    intent.putExtra(ApplicationErrorMessageDialog.ERROR_MESSAGE, resources.getText(R.string.application_error_invalid_reader_login));
                    intent.putExtra(ApplicationErrorMessageDialog.BUTTON_TEXT, resources.getText(R.string.application_error_invalid_reader_login_button_text));
                    intent.putExtra(ApplicationErrorMessageDialog.ERROR_TYPE, 1);
                    break;
                case 3:
                case 4:
                    Exception exc = (Exception) applicationErrorEvent.getSource();
                    if (exc != null) {
                        Toast.makeText(MasterView.this.getApplicationContext(), exc.getMessage(), 1).show();
                        return;
                    }
                    return;
                case 5:
                    Toast.makeText(MasterView.this, R.string.generic_download_error_text, 1).show();
                    return;
                case 6:
                    return;
            }
            intent.setFlags(268435456);
            MasterView.this.startActivity(intent);
        }
    };
    private int _LastActiveTheme = 0;

    @Override // mobi.beyondpod.ui.views.Workspace.IWorkspaceOwner
    public FragmentActivity getActivity() {
        return this;
    }

    @Override // mobi.beyondpod.ui.core.mediarouter.MediaRouteDiscoveryFragment.IDiscoveryFragmentOwner
    public void onConnectedToDevice(String str) {
    }

    @Override // mobi.beyondpod.ui.core.mediarouter.MediaRouteDiscoveryFragment.IDiscoveryFragmentOwner
    public void onDisconnectFromDevice() {
    }

    public static MasterView master() {
        Activity masterActivity = BeyondPodApplication.getInstance().masterActivity();
        if (masterActivity == null) {
            return null;
        }
        return (MasterView) masterActivity;
    }

    @TargetApi(26)
    private void registerCommands() {
        if (this._externalCommandReceiver == null && CoreHelper.isOreoCompatible()) {
            IntentFilter intentFilter = new IntentFilter();
            for (String str : CommandReceiver.ALL_COMMANDS) {
                intentFilter.addAction(str);
            }
            this._externalCommandReceiver = new CommandReceiver();
            registerReceiver(this._externalCommandReceiver, intentFilter);
        }
    }

    @TargetApi(26)
    private void unRegisterCommands() {
        if (this._externalCommandReceiver == null || !CoreHelper.isOreoCompatible()) {
            return;
        }
        unregisterReceiver(this._externalCommandReceiver);
    }

    @Override // android.support.v7.app.AppCompatActivity, android.support.v4.app.FragmentActivity, android.support.v4.app.SupportActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        try {
            _InstanceCount++;
            CoreHelper.writeTraceEntryInDebug(TAG, "###### MasterView Created! Current instances: " + _InstanceCount);
            if (_InstanceCount > 1) {
                CoreHelper.writeTraceErrorInDebug(TAG, "################## Possible MasterView Leak ############ " + _InstanceCount);
            }
            CoreHelper.writeTraceEntry(TAG, "master View Created");
            BeyondPodApplication.getInstance().setMasterActivity(this);
            this._LastActiveTheme = ThemeManager.activeThemeId();
            setTheme(this._LastActiveTheme);
            super.onCreate(bundle);
            getWindow().addFlags(128);
            if (!BeyondPodApplication.isInitialized()) {
                forwardToSplashScreenOnNoStorageCard();
                return;
            }
            if (Configuration.orientationLock() == 2) {
                setRequestedOrientation(0);
            } else if (Configuration.orientationLock() == 1) {
                setRequestedOrientation(1);
            }
            BeyondPodApplication.messageBus.subscribe(this._RepositoryListener, RepositoryEvents.RepositoryEvent.class);
            BeyondPodApplication.messageBus.subscribe(this._PlaylistListener, PlayListEvents.PlayListEvent.class);
            BeyondPodApplication.messageBus.subscribe(this._CmdCloseListener, ApplicationCmdEvents.CloseMasterViewEvent.class);
            BeyondPodApplication.messageBus.subscribe(this._CmdSelectCategoryListener, ApplicationCmdEvents.SelectFeedCategoryAndOpenFeedEvent.class);
            BeyondPodApplication.messageBus.subscribe(this._LockScreenOrientationListener, ApplicationCmdEvents.LockMasterOrientationEvent.class);
            BeyondPodApplication.messageBus.subscribe(this._ApplicationEventListener, ApplicationEvents.ApplicationErrorEvent.class);
            this._Handler = new Handler();
            this._ImageLoader = new ImageLoaderTrack(this);
            setContentView(R.layout.master_view);
            setSupportActionBar((Toolbar) findViewById(R.id.toolbar));
            this._AppBar = (AppBarLayout) findViewById(R.id.appbar);
            initializeDrawers();
            this._Title = new TitleBar(this);
            this._LoadingProgress = findViewById(R.id.loadingProgress);
            setLoadingProgressVisibility(false);
            this.Workspace = (Workspace) findViewById(R.id.worksapceView);
            this.Workspace.Initialize(null, bundle, this);
            enableAppBarAutoScroll(appBarScrollAllowed());
            if (FeedRepository.repositoryLoadState() == 2 || FeedRepository.repositoryLoadState() == 1) {
                finishInitialization();
            }
            FragmentManager supportFragmentManager = getSupportFragmentManager();
            if (supportFragmentManager.findFragmentByTag(MediaRouteDiscoveryFragment.DISCOVERY_FRAGMENT_TAG) == null) {
                MediaRouteDiscoveryFragment mediaRouteDiscoveryFragment = new MediaRouteDiscoveryFragment();
                mediaRouteDiscoveryFragment.setOwner(this);
                mediaRouteDiscoveryFragment.setRouteSelector(BeyondPodApplication.getInstance().chromecastDevice().getRouteSelector());
                supportFragmentManager.beginTransaction().add(mediaRouteDiscoveryFragment, MediaRouteDiscoveryFragment.DISCOVERY_FRAGMENT_TAG).commit();
            }
            updateGCMRegistration();
            registerCommands();
        } catch (Exception e) {
            CoreHelper.logException(TAG, "Exception loading the Workspace!", e);
            Toast.makeText(this, BEYOND_POD_FAILED_TO_START + "\n\n" + (BeyondPodApplication.lastApplicationException != null ? BeyondPodApplication.lastApplicationException : e.getMessage()) + "\n\n" + BEYOND_POD_WILL_NOW_EXIT, 1).show();
            finish();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.support.v7.app.AppCompatActivity, android.app.Activity
    public void onPostCreate(Bundle bundle) {
        super.onPostCreate(bundle);
        if (this._DrawerToggle != null) {
            this._DrawerToggle.syncState();
        }
        getWindow().addFlags(128);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.support.v4.app.FragmentActivity, android.app.Activity
    public void onNewIntent(Intent intent) {
        super.onNewIntent(intent);
        if (this.Workspace != null && this.Workspace.DataIsLoadedInWorkspaceViews) {
            navigateToViewBasedOnIntentSource(intent);
        } else {
            CoreHelper.writeTraceEntry(TAG, "onNewIntent received while workspace is not yet initialized! Ignoring...");
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.support.v4.app.FragmentActivity, android.app.Activity
    public void onActivityResult(int i, int i2, Intent intent) {
        super.onActivityResult(i, i2, intent);
        if (i == FirstRun.ACTIVITY_REQUEST_FirstRun && i2 == -1) {
            introduceNavigator(true);
        }
        if (i == FeedItemContentViewPager.ACTIVITY_REQUEST_ContentViewPager && i2 == -1) {
            onMediaItemSelected();
        }
    }

    @Override // mobi.beyondpod.ui.views.navigator.NavigatorFragment.INavigatorFragmentOwner
    public void autoExpandPlayerOnNextPlay() {
        if (this.Workspace != null) {
            this.Workspace.autoExpandPlayerOnNextPlay();
        }
    }

    @Override // mobi.beyondpod.ui.views.navigator.NavigatorFragment.INavigatorFragmentOwner
    public void startActionMode(ActionMode.Callback callback) {
        startSupportActionMode(callback);
    }

    private void forwardToSplashScreenOnNoStorageCard() {
        CoreHelper.writeTraceEntry(TAG, "master View started with no storage card. Exiting...");
        startActivity(new Intent(getApplicationContext(), (Class<?>) Splash.class));
        finish();
    }

    private void showStartupWarningsIfNeeded() {
        if (FeedRepository.RepositoryLoadKind == 0) {
            FeedRepository.RepositoryLoadKind = 1;
            this._Handler.postDelayed(new Runnable() { // from class: mobi.beyondpod.ui.views.MasterView.7
                @Override // java.lang.Runnable
                public void run() {
                    new AlertDialog.Builder(MasterView.this).setTitle(R.string.glg_restore_defaults_title).setMessage(R.string.glg_restore_defaults_msg).setPositiveButton(R.string.alert_dialog_ok, new DialogInterface.OnClickListener() { // from class: mobi.beyondpod.ui.views.MasterView.7.1
                        @Override // android.content.DialogInterface.OnClickListener
                        public void onClick(DialogInterface dialogInterface, int i) {
                            FeedRepository.deleteAllRepositoryFiles();
                            System.exit(0);
                        }
                    }).create().show();
                }
            }, 2000L);
        } else {
            if (FeedRepository.getRootFeed().subFeeds().size() != 0 || FirstRun.isActive()) {
                return;
            }
            startActivityForResult(new Intent(BeyondPodApplication.getInstance(), (Class<?>) FirstRun.class), FirstRun.ACTIVITY_REQUEST_FirstRun);
        }
    }

    @Override // android.app.Activity
    protected void onRestart() {
        CoreHelper.writeTraceEntry(TAG, "===> OnRestart");
        super.onRestart();
    }

    @Override // android.support.v7.app.AppCompatActivity, android.support.v4.app.FragmentActivity, android.app.Activity
    public void onStart() {
        CoreHelper.writeTraceEntry(TAG, "===> OnStart");
        try {
            super.onStart();
        } catch (Exception e) {
            CoreHelper.writeTraceEntry(TAG, "Possible Google Analytics crash: " + e.getMessage());
        }
        DownloadEngineNotificationManager.clearNotification();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.support.v4.app.FragmentActivity, android.app.Activity
    public void onResume() {
        super.onResume();
        CoreHelper.writeTraceEntry(TAG, "===> OnResume");
        if (this._LastActiveTheme != ThemeManager.activeThemeId()) {
            recreate();
            return;
        }
        BeyondPodApplication.getInstance().onMainWindowVisible();
        if (master() == null) {
            BeyondPodApplication.getInstance().setMasterActivity(this);
        }
        this.Workspace.onActivityResume();
        MediaButtonIntentReceiver.startListeningForMediaButton();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.support.v7.app.AppCompatActivity, android.support.v4.app.FragmentActivity, android.app.Activity
    public void onPostResume() {
        super.onPostResume();
        CoreHelper.writeTraceEntry(TAG, "===> OnPostResume");
        if (FeedRepository.isRepositoryAvailable()) {
            finishInitialization();
            return;
        }
        CoreHelper.writeTraceEntry(TAG, "******* OnPosResume found that repository is not loaded! (repo state is: " + FeedRepository.repositoryLoadState() + ") Loading repository...");
        FeedRepository.initializeAndLoadRepository();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.support.v4.app.FragmentActivity, android.app.Activity
    public void onPause() {
        CoreHelper.writeTraceEntry(TAG, "===> OnPause");
        BeyondPodApplication.getInstance().onMainWindowHidden();
        this.Workspace.onActivityPause();
        super.onPause();
    }

    @Override // android.support.v7.app.AppCompatActivity, android.support.v4.app.FragmentActivity, android.app.Activity
    public void onStop() {
        CoreHelper.writeTraceEntry(TAG, "===> OnStop");
        ItemStateHistory.saveHistoryAsync();
        super.onStop();
    }

    @Override // android.support.v7.app.AppCompatActivity, android.support.v4.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        CoreHelper.writeTraceEntry(TAG, "===> OnDestroy");
        if (this._Handler != null) {
            this._Handler.removeCallbacksAndMessages(null);
        }
        FeedRepository.saveRepositoryAsync();
        unRegisterCommands();
        BeyondPodApplication.messageBus.unsubscribe(this._RepositoryListener, RepositoryEvents.RepositoryEvent.class);
        BeyondPodApplication.messageBus.unsubscribe(this._PlaylistListener, PlayListEvents.PlayListEvent.class);
        BeyondPodApplication.messageBus.unsubscribe(this._CmdCloseListener, ApplicationCmdEvents.CloseMasterViewEvent.class);
        BeyondPodApplication.messageBus.unsubscribe(this._CmdSelectCategoryListener, ApplicationCmdEvents.SelectFeedCategoryAndOpenFeedEvent.class);
        BeyondPodApplication.messageBus.unsubscribe(this._LockScreenOrientationListener, ApplicationCmdEvents.LockMasterOrientationEvent.class);
        BeyondPodApplication.messageBus.unsubscribe(this._ApplicationEventListener, ApplicationEvents.ApplicationErrorEvent.class);
        if (this._ImageLoader != null) {
            this._ImageLoader.release();
        }
        if (this.Workspace != null) {
            this.Workspace.onActivityDestroy();
        }
        BeyondPodApplication.getInstance().setMasterActivity(null);
        if (this._RegisterTask != null) {
            this._RegisterTask.cancel(true);
        }
        super.onDestroy();
    }

    @Override // android.app.Activity, android.content.ComponentCallbacks2
    public void onTrimMemory(int i) {
        super.onTrimMemory(i);
        CoreHelper.writeTraceEntry(TAG, "onTrimMemory called! Level: " + i + ". Releasing image caches...");
        if (this._ImageLoader != null) {
            this._ImageLoader.evictAll();
        }
        if (this.Workspace != null) {
            this.Workspace.onTrimMemory();
        }
    }

    @Override // android.support.v7.app.AppCompatActivity, android.support.v4.app.FragmentActivity, android.support.v4.app.SupportActivity, android.app.Activity
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        CoreHelper.writeTraceEntry(TAG, "===> SaveInstanceState");
        this.Workspace.saveCurrentStateToBundle(bundle);
        if (getChangingConfigurations() == 0) {
            ItemStateHistory.saveHistoryAsync();
            FeedRepository.saveRepositoryAsync();
        }
    }

    @Override // android.app.Activity
    protected void onRestoreInstanceState(Bundle bundle) {
        super.onRestoreInstanceState(bundle);
        CoreHelper.writeTraceEntry(TAG, "===> RestoreInstanceState");
        refreshActionBarTitle();
    }

    @Override // android.app.Activity
    public boolean onPrepareOptionsMenu(Menu menu) {
        super.onPrepareOptionsMenu(menu);
        if (this.Workspace == null || !this.Workspace.DataIsLoadedInWorkspaceViews) {
            return false;
        }
        return this.Workspace.prepareOptionsMenu(menu);
    }

    @Override // android.app.Activity
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        if (menuItem != null && menuItem.getItemId() == 16908332 && this._DrawerToggle.isDrawerIndicatorEnabled() && isPlaylistDrawerOpen()) {
            togglePlaylistDrawer();
            return true;
        }
        if (this._DrawerToggle.onOptionsItemSelected(menuItem) || this.Workspace.handleOptionsMenu(0, menuItem)) {
            return true;
        }
        return super.onOptionsItemSelected(menuItem);
    }

    @Override // mobi.beyondpod.ui.views.Workspace.IWorkspaceOwner
    public void refreshActionBarTitle() {
        runOnUiThread(new Runnable() { // from class: mobi.beyondpod.ui.views.MasterView.8
            @Override // java.lang.Runnable
            public void run() {
                if (MasterView.this.Workspace == null || MasterView.this.Workspace.activeView() == null) {
                    return;
                }
                MasterView.this.setMasterViewTitle(MasterView.this.Workspace.activeView().getViewTitle());
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setMasterViewTitle(TitleBar.TitleInfo titleInfo) {
        if (this._Title != null) {
            this._Title.setTitle(titleInfo);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void toggleTitleIndeterminateProgress(boolean z) {
        setLoadingProgressVisibility(z);
    }

    @Override // android.support.v7.app.AppCompatActivity, android.support.v4.app.FragmentActivity, android.app.Activity, android.content.ComponentCallbacks
    public void onConfigurationChanged(android.content.res.Configuration configuration) {
        super.onConfigurationChanged(configuration);
        this._DrawerToggle.onConfigurationChanged(configuration);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void finishInitialization() {
        if (this.Workspace.DataIsLoadedInWorkspaceViews) {
            this.Workspace.activateViews(0);
            return;
        }
        this.Workspace.loadDataInWorkspaceViews();
        handleFirstRunOrUpgrade();
        if (PolicyManager.isUnlocked()) {
            AnalyticsTracker.onApplicationStartedUnlocked(PolicyManager.licenseType());
        } else {
            AnalyticsTracker.onApplicationStartedLocked();
        }
        AnalyticsTracker.onCaptureUIConfigs();
        showStartupWarningsIfNeeded();
        navigateToViewBasedOnIntentSource(getIntent());
    }

    private void handleFirstRunOrUpgrade() {
        if (Configuration.isFirstRun()) {
            UserNotificationManager.setNotificationPreferenceFor(1, true);
            Configuration.clearIsFirstRun();
            Configuration.writeLastInstalledVersionCode();
        } else if (Configuration.currentProductVersionCode() != Configuration.getLastInstalledVersionCode()) {
            CoreHelper.writeLogEntry(TAG, "BeyondPod upgraded from v" + Configuration.getLastInstalledVersionCode() + " to v" + Configuration.currentProductVersionCode());
            if (Configuration.getLastInstalledVersionCode() < 40009) {
                introduceNavigator(false);
            }
            BeyondPodApplication.getInstance().configureDefaultsForVersionUpgrade(Configuration.getLastInstalledVersionCode(), Configuration.currentProductVersionCode());
            UserNotificationManager.setNotificationPreferenceFor(2, true);
            Configuration.writeLastInstalledVersionCode();
            ScheduledTasksManager.rescheduleAllActiveTasks();
        } else if (!ScheduledTasksManager.areAllActiveTasksScheduled()) {
            CoreHelper.writeLogEntry(TAG, "Detected that Android has lost our update schedule, Restoring...");
            ScheduledTasksManager.rescheduleAllActiveTasks();
        } else {
            CoreHelper.writeTraceEntry(TAG, "Scheduled task check complete. No issues found.");
        }
        if (Configuration.androidBackupRestored() > 0) {
            CoreHelper.writeLogEntry(TAG, "Detected that Android backup was restored. Starting feed refresh...");
            Configuration.setAndroidBackupRestored(-1);
            UpdateAndDownloadManager.startQuickUpdate(FeedRepository.getFeedsInCategory(CategoryManager.AllFeeds));
        }
    }

    private void introduceNavigator(boolean z) {
        if (z && this.Workspace.Feeds != null) {
            this.Workspace.Feeds.expandFirstCategory();
        }
        this._Handler.postDelayed(new Runnable() { // from class: mobi.beyondpod.ui.views.MasterView.9
            @Override // java.lang.Runnable
            public void run() {
                MasterView.this._DrawerLayout.openDrawer(8388611);
            }
        }, 1500L);
    }

    private void initializeDrawers() {
        this._DrawerLayout = (BPDrawerLayout) findViewById(R.id.drawer_layout);
        this._DrawerLayout.setDrawerShadow(R.drawable.shadow_left, 8388611);
        this._DrawerLayout.setDrawerShadow(R.drawable.shadow_right, GravityCompat.END);
        this._DrawerLayout.initialize(this);
        this._DrawerToggle = new ActionBarDrawerToggle(this, this._DrawerLayout, R.string.drawer_open, R.string.drawer_close) { // from class: mobi.beyondpod.ui.views.MasterView.10
            @Override // android.support.v7.app.ActionBarDrawerToggle, android.support.v4.widget.DrawerLayout.DrawerListener
            public void onDrawerClosed(View view) {
                if (CoreHelper.apiLevel() >= 27) {
                    MasterView.this.invalidateOptionsMenu();
                } else {
                    ActivityCompat.invalidateOptionsMenu(MasterView.this);
                }
                MasterView.this.refreshActionBarTitle();
                MasterView.this.Workspace.notifyDrawerClosed();
                MasterView.this._DrawerLayout.updateFlingSensitivity();
            }

            @Override // android.support.v7.app.ActionBarDrawerToggle, android.support.v4.widget.DrawerLayout.DrawerListener
            public void onDrawerOpened(View view) {
                if (CoreHelper.apiLevel() >= 27) {
                    MasterView.this.invalidateOptionsMenu();
                } else {
                    ActivityCompat.invalidateOptionsMenu(MasterView.this);
                }
                MasterView.this.refreshActionBarTitle();
                MasterView.this.Workspace.notifyDrawerOpened();
                if (MasterView.this.isPlaylistDrawerOpen()) {
                    AnalyticsTracker.onViewDisplayed(6);
                }
                if (MasterView.this.isNavigatorDrawerOpen()) {
                    AnalyticsTracker.onViewDisplayed(5);
                }
                if (MasterView.this.isPlaylistDrawerOpen() && UserNotificationManager.isNotificationEnabledFor(7)) {
                    UserNotificationManager.setNotificationPreferenceFor(7, false);
                }
                MasterView.this._DrawerLayout.updateFlingSensitivity();
            }
        };
        if (CoreHelper.apiLevel() >= 24) {
            this._DrawerLayout.addDrawerListener(this._DrawerToggle);
        } else {
            this._DrawerLayout.setDrawerListener(this._DrawerToggle);
        }
    }

    private void navigateToViewBasedOnIntentSource(Intent intent) {
        if (Configuration.isFirstRun()) {
            return;
        }
        CoreHelper.writeTraceEntry(TAG, "BeyondPod Received intent: " + intent);
        if (intent != null && intent.getData() != null && Constants.INTENT_ACTION_OPEN_PLAYLIST.equals(intent.getData().getPath())) {
            this._DrawerLayout.openDrawer(GravityCompat.END);
            return;
        }
        if (intent != null && intent.getData() != null && Constants.INTENT_ACTION_WIDGET.equals(intent.getData().getPath())) {
            if (PlayList.isCurrentlyPlaying()) {
                this.Workspace.showPlayer(true);
                return;
            }
            return;
        }
        if (intent != null && intent.getData() != null && Constants.INTENT_ACTION_OPEN_PLAYER.equals(intent.getData().getPath())) {
            requestDrawersClose();
            this.Workspace.showPlayer(true);
            return;
        }
        if (intent != null && Constants.INTENT_ACTION_VIEW_LATEST.equals(intent.getAction())) {
            this.Workspace.selectCategory(CategoryManager.CategoryHome);
            return;
        }
        if (intent != null && SearchIntents.ACTION_SEARCH.equals(intent.getAction())) {
            String stringExtra = intent.getStringExtra(SearchIntents.EXTRA_QUERY);
            if (!StringUtils.isNullOrEmpty(stringExtra)) {
                startSearch(stringExtra, false, null, false);
                return;
            }
        }
        if (intent != null && "android.media.action.MEDIA_PLAY_FROM_SEARCH".equals(intent.getAction())) {
            String stringExtra2 = intent.getStringExtra(SearchIntents.EXTRA_QUERY);
            if (!StringUtils.isNullOrEmpty(stringExtra2)) {
                PlayFromQuery.cmdPlayFromVoiceSearch(stringExtra2);
                return;
            }
        }
        if (openSearchResult(intent)) {
            return;
        }
        openAddFeedActivityIfNeeded(intent);
    }

    private boolean openSearchResult(Intent intent) {
        Track trackByPath;
        if (intent != null) {
            if ("android.intent.action.SEARCH".equals(intent.getAction())) {
                CommandManager.cmdOpenFeedSearch(intent.getStringExtra(SearchIntents.EXTRA_QUERY));
                return true;
            }
            if (intent.getData() != null && intent.getData().getPath() != null) {
                String path = intent.getData().getPath();
                String str = RepositorySearchProvider.PATH + "/";
                if (path.startsWith(str)) {
                    String substring = path.substring(str.length());
                    if (!StringUtils.isNullOrEmpty(substring)) {
                        if (substring.startsWith("/") && (trackByPath = FeedRepository.getTrackByPath(substring)) != null) {
                            CommandManager.cmdOpenEpisodeNotes(trackByPath, null, null, this);
                            return true;
                        }
                        try {
                            Feed feedById = FeedRepository.getFeedById(UUID.fromString(substring));
                            if (feedById != null) {
                                openFeed(feedById, false, false);
                                return true;
                            }
                        } catch (Exception unused) {
                        }
                    }
                }
            }
        }
        return false;
    }

    private void openAddFeedActivityIfNeeded(Intent intent) {
        String str;
        if (intent == null || intent.getAction() == null) {
            return;
        }
        Uri uri = null;
        if ("android.intent.action.SEND".equals(intent.getAction())) {
            CharSequence charSequenceExtra = intent.getCharSequenceExtra("android.intent.extra.TEXT");
            if (charSequenceExtra != null) {
                uri = Uri.parse(charSequenceExtra.toString());
            }
        } else if (intent.getData() != null) {
            String encodedSchemeSpecificPart = intent.getData().getEncodedSchemeSpecificPart();
            if (StringUtils.isNullOrEmpty(encodedSchemeSpecificPart)) {
                return;
            }
            if (encodedSchemeSpecificPart.toLowerCase().startsWith("//subscribe/")) {
                encodedSchemeSpecificPart = "//" + encodedSchemeSpecificPart.substring(12);
            }
            if (encodedSchemeSpecificPart.toLowerCase().startsWith("//subscribeonandroid.com/")) {
                encodedSchemeSpecificPart = "//" + encodedSchemeSpecificPart.substring(25);
            }
            if (encodedSchemeSpecificPart.toLowerCase().startsWith("//www.subscribeonandroid.com/")) {
                encodedSchemeSpecificPart = "//" + encodedSchemeSpecificPart.substring(29);
            }
            if (encodedSchemeSpecificPart.toLowerCase().startsWith("//http")) {
                str = encodedSchemeSpecificPart.substring(2);
            } else if (encodedSchemeSpecificPart.startsWith("//")) {
                str = "http:" + encodedSchemeSpecificPart;
            } else {
                str = "http://" + encodedSchemeSpecificPart;
            }
            if (!StringUtils.isNullOrEmpty(str)) {
                uri = Uri.parse(CoreHelper.safeDecodeUrl(str.replaceAll("\\\\x", "%")));
            }
        }
        if (!CoreHelper.isPodcastOrFeedUrl(uri) || uri.equals(_LastAddFeedUri)) {
            return;
        }
        Feed feedByUrl = FeedRepository.getFeedByUrl(uri.toString());
        if (feedByUrl != null) {
            Toast.makeText(this, String.format(THIS_FEED_ALREADY_EXISTS_IN_CATEGORY, feedByUrl.getCategories().getPrimary().name()), 1).show();
            return;
        }
        _LastAddFeedUri = uri;
        toggleTitleIndeterminateProgress(true);
        this._Handler.postDelayed(new Runnable() { // from class: mobi.beyondpod.ui.views.MasterView.11
            @Override // java.lang.Runnable
            public void run() {
                Intent intent2 = new Intent(MasterView.this, (Class<?>) FeedPropertiesView.class);
                intent2.putExtra(FeedPropertiesView.URL_KEY, MasterView._LastAddFeedUri.toString());
                MasterView.this.startActivity(intent2);
                MasterView.this.toggleTitleIndeterminateProgress(false);
            }
        }, 1000L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void lockCurrentScreenOrientation() {
        int i = getResources().getConfiguration().orientation;
        int rotation = ((WindowManager) getSystemService("window")).getDefaultDisplay().getRotation();
        if (i == 2) {
            if (rotation == 0) {
                setRequestedOrientation(0);
                return;
            } else {
                setRequestedOrientation(8);
                return;
            }
        }
        if (i == 1) {
            if (rotation == 1) {
                setRequestedOrientation(9);
            } else {
                setRequestedOrientation(1);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void restoreCurrentScreenOrientation() {
        if (Configuration.orientationLock() == 2) {
            setRequestedOrientation(0);
        } else if (Configuration.orientationLock() == 1) {
            setRequestedOrientation(1);
        } else {
            setRequestedOrientation(-1);
        }
    }

    protected void finalize() throws Throwable {
        if (CoreHelper.isDebugBuild()) {
            _InstanceCount--;
            CoreHelper.writeTraceEntryInDebug(TAG, "###### MasterView FINALIZED! Remaining instances: " + _InstanceCount);
        }
        super.finalize();
    }

    @Override // android.support.v7.app.AppCompatActivity, android.app.Activity, android.view.Window.Callback
    public boolean dispatchKeyEvent(KeyEvent keyEvent) {
        int action = keyEvent.getAction();
        switch (keyEvent.getKeyCode()) {
            case 24:
                if (action != 0) {
                    return false;
                }
                BeyondPodApplication.getInstance().chromecastDevice().adjustVolume(1);
                return false;
            case 25:
                if (action != 0) {
                    return false;
                }
                BeyondPodApplication.getInstance().chromecastDevice().adjustVolume(-1);
                return false;
            default:
                return super.dispatchKeyEvent(keyEvent);
        }
    }

    private void updateGCMRegistration() {
        if (BeyondPodApplication.getInstance().isGCMSupportedOnDevice() && ChangeTracker.isTrackingEnabled()) {
            final String registrationId = GcmRegistrar.getRegistrationId();
            if (CoreHelper.isRunningOnARC() || StringUtils.isNullOrEmpty(registrationId)) {
                TrackedChangeBase.logSyncEvent(TAG, "--- Found that CDS is enabled but the device is not registered with the CDS server! Registering...", null);
                GcmRegistrar.register(getActivity());
            } else {
                if (GcmRegistrar.isRegisteredOnServer()) {
                    return;
                }
                this._RegisterTask = new AsyncTask<Void, Void, Void>() { // from class: mobi.beyondpod.ui.views.MasterView.12
                    /* JADX INFO: Access modifiers changed from: protected */
                    @Override // android.os.AsyncTask
                    public Void doInBackground(Void... voidArr) {
                        try {
                            BPTracker bPTracker = new BPTracker();
                            bPTracker.initialize();
                            if (!bPTracker.updateServerCDMRegistration(registrationId, true)) {
                                GcmRegistrar.unregister(MasterView.this.getActivity());
                            }
                        } catch (Exception e) {
                            TrackedChangeBase.logSyncEvent(MasterView.TAG, "--- failed to add CDS registration! reason: " + e.getMessage(), null);
                        }
                        return null;
                    }

                    /* JADX INFO: Access modifiers changed from: protected */
                    @Override // android.os.AsyncTask
                    public void onPostExecute(Void r2) {
                        MasterView.this._RegisterTask = null;
                    }
                };
                TrackedChangeBase.logSyncEvent(TAG, "--- Found local CDS registration, but not server one. Updating server...", null);
                this._RegisterTask.execute(null, null, null);
            }
        }
    }

    @Override // mobi.beyondpod.ui.core.mediarouter.MediaRouteDiscoveryFragment.IDiscoveryFragmentOwner
    public void onConnectionRefused() {
        Toast.makeText(this, R.string.remote_playback_not_available_in_lite_version, 1).show();
    }

    @Override // mobi.beyondpod.ui.core.mediarouter.MediaRouteDiscoveryFragment.IDiscoveryFragmentOwner
    public void onCastDeviceDetected() {
        if (CoreHelper.apiLevel() >= 27) {
            invalidateOptionsMenu();
        } else {
            ActivityCompat.invalidateOptionsMenu(this);
        }
    }

    @Override // mobi.beyondpod.ui.core.mediarouter.MediaRouteDiscoveryFragment.IDiscoveryFragmentOwner
    public void onIncompatiblePlayServices() {
        ChromecastDevice.checkGooglePlayServices(this, true);
    }

    @Override // mobi.beyondpod.ui.views.Workspace.IWorkspaceOwner, mobi.beyondpod.ui.core.volley.ImageLoader.ImageLoaderProvider
    public ImageLoader getImageLoaderInstance() {
        return this._ImageLoader;
    }

    @Override // mobi.beyondpod.ui.views.navigator.NavigatorFragment.INavigatorFragmentOwner
    public void requestDrawersClose() {
        this._DrawerLayout.closeDrawers();
    }

    @Override // mobi.beyondpod.ui.views.Workspace.IWorkspaceOwner
    public void togglePlaylistDrawer() {
        if (isPlaylistDrawerOpen()) {
            this._DrawerLayout.closeDrawers();
            return;
        }
        this._DrawerLayout.openDrawer(GravityCompat.END);
        if (isNavigatorDrawerOpen()) {
            this._DrawerLayout.closeDrawer(8388611);
        }
    }

    @Override // mobi.beyondpod.ui.views.Workspace.IWorkspaceOwner
    public void openNavigator() {
        this._DrawerLayout.openDrawer(8388611);
    }

    @Override // mobi.beyondpod.ui.views.Workspace.IWorkspaceOwner
    public boolean isPlaylistDrawerOpen() {
        return this._DrawerLayout.isDrawerOpen(GravityCompat.END);
    }

    @Override // mobi.beyondpod.ui.views.Workspace.IWorkspaceOwner
    public boolean isNavigatorDrawerOpen() {
        return this._DrawerLayout.isDrawerOpen(8388611);
    }

    @Override // mobi.beyondpod.ui.views.Workspace.IWorkspaceOwner
    public boolean isOwnerDestroyed() {
        return isDestroyed();
    }

    @Override // mobi.beyondpod.ui.views.base.BPDrawerLayout.IDrawerOwner
    public boolean onDrawerBackKeyPressed() {
        if (this.Workspace.closeSmartPlayListIfNeeded()) {
            return true;
        }
        if (isPlaylistDrawerOpen()) {
            this._DrawerLayout.closeDrawer(GravityCompat.END);
            return true;
        }
        if (Configuration.userHomeScreen() == 0) {
            if (isNavigatorDrawerOpen()) {
                this._DrawerLayout.closeDrawer(8388611);
                return true;
            }
            if (!this.Workspace.isFullScreenPlayerVisible()) {
                return false;
            }
            if (this.Workspace.turnOffPlaylistPagerIfNeeded()) {
                return true;
            }
            this.Workspace.collapsePlayer();
            return true;
        }
        if (Configuration.userHomeScreen() == 1) {
            if (isNavigatorDrawerOpen()) {
                finish();
                return true;
            }
            if (this.Workspace.isFullScreenPlayerVisible()) {
                if (this.Workspace.turnOffPlaylistPagerIfNeeded()) {
                    return true;
                }
                this.Workspace.collapsePlayer();
                return true;
            }
            if (!isNavigatorDrawerOpen()) {
                this._DrawerLayout.openDrawer(8388611);
                return true;
            }
        }
        if (Configuration.userHomeScreen() == 2) {
            if (isNavigatorDrawerOpen()) {
                this._DrawerLayout.closeDrawer(8388611);
                return true;
            }
            if (!PlayList.isEmpty() && !this.Workspace.isExpanded()) {
                ConfigurationHD.setPlayerDismissedByUser(false);
                this.Workspace.showPlayer(true);
                return true;
            }
            if (this.Workspace.isFullScreenPlayerVisible() && this.Workspace.turnOffPlaylistPagerIfNeeded()) {
                return true;
            }
            finish();
        }
        return true;
    }

    @Override // mobi.beyondpod.ui.views.Workspace.IWorkspaceOwner, mobi.beyondpod.ui.views.navigator.NavigatorFragment.INavigatorFragmentOwner
    public void openFeed(Feed feed, boolean z, boolean z2) {
        showAppBar();
        this.Workspace.openFeed(feed, z, z2);
    }

    @Override // mobi.beyondpod.ui.views.navigator.NavigatorFragment.INavigatorFragmentOwner
    public void selectCategory(FeedCategory feedCategory) {
        showAppBar();
        this.Workspace.selectCategory(feedCategory);
    }

    @Override // android.app.Activity, android.view.ContextThemeWrapper, android.content.ContextWrapper
    protected void attachBaseContext(Context context) {
        super.attachBaseContext(CalligraphyContextWrapper.wrap(context));
    }

    @Override // android.support.v4.app.FragmentActivity, android.app.Activity
    public void onBackPressed() {
        if (onDrawerBackKeyPressed()) {
            return;
        }
        try {
            super.onBackPressed();
        } catch (Exception unused) {
            CoreHelper.writeTraceEntry(TAG, "Exception during onBackPressed");
        }
    }

    @Override // mobi.beyondpod.ui.core.mediarouter.BPMediaRouteControllerDialog.IRouteControllerDialogOwner
    public void onMediaItemSelected() {
        if (!this.Workspace.isPlayerVisible()) {
            this.Workspace.showPlayer(false);
            autoExpandPlayerOnNextPlay();
        } else if (this.Workspace.isMiniPlayerVisible()) {
            this.Workspace.expandPlayer();
        }
    }

    private void showAppBar() {
        if (this._AppBar != null) {
            this._AppBar.setExpanded(true, false);
        }
    }

    public void enableAppBarAutoScroll(boolean z) {
        ViewGroup.LayoutParams layoutParams = ((Toolbar) findViewById(R.id.toolbar)).getLayoutParams();
        if (layoutParams instanceof AppBarLayout.LayoutParams) {
            AppBarLayout.LayoutParams layoutParams2 = (AppBarLayout.LayoutParams) layoutParams;
            int scrollFlags = layoutParams2.getScrollFlags();
            int i = z ? 21 : 0;
            if (scrollFlags != i) {
                if (i == 0) {
                    CoreHelper.writeTraceEntry(TAG, "Scroll disabled");
                    showAppBar();
                } else {
                    CoreHelper.writeTraceEntry(TAG, "Scroll enabled");
                }
                layoutParams2.setScrollFlags(i);
            }
        }
    }

    @Override // mobi.beyondpod.ui.views.Workspace.IWorkspaceOwner
    public void setLoadingProgressVisibility(boolean z) {
        this._LoadingProgress.setVisibility(z ? 0 : 8);
    }

    public static boolean appBarScrollAllowed() {
        if (CoreHelper.apiLevel() < 21) {
            return false;
        }
        return Configuration.DBGActionBarScroll() == 1 || !Configuration.allowPullToRefresh();
    }
}
