package mobi.beyondpod.ui.views.contentview;

import android.app.Activity;
import android.app.PendingIntent;
import android.content.ClipData;
import android.content.ClipboardManager;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.res.TypedArray;
import android.graphics.BitmapFactory;
import android.media.AudioManager;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.provider.Browser;
import android.support.v4.app.FragmentManager;
import android.support.v4.content.ContextCompat;
import android.support.v4.view.MenuItemCompat;
import android.support.v4.view.ViewPager;
import android.support.v7.app.ActionBar;
import android.support.v7.app.AppCompatActivity;
import android.support.v7.app.MediaRouteActionProvider;
import android.view.ContextMenu;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuItem;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.webkit.WebView;
import android.widget.TextView;
import android.widget.Toast;
import io.fabric.sdk.android.services.settings.SettingsJsonConstants;
import mobi.beyondpod.BeyondPodApplication;
import mobi.beyondpod.R;
import mobi.beyondpod.evo.BeyondPodApplicationEvo;
import mobi.beyondpod.rsscore.Configuration;
import mobi.beyondpod.rsscore.Feed;
import mobi.beyondpod.rsscore.Track;
import mobi.beyondpod.rsscore.TrackList;
import mobi.beyondpod.rsscore.helpers.AnalyticsTracker;
import mobi.beyondpod.rsscore.helpers.CoreHelper;
import mobi.beyondpod.rsscore.helpers.StringUtils;
import mobi.beyondpod.rsscore.repository.FeedRepository;
import mobi.beyondpod.rsscore.repository.RepositoryEvents;
import mobi.beyondpod.rsscore.rss.entities.RssFeedItem;
import mobi.beyondpod.services.player.impl.ChromecastDevice;
import mobi.beyondpod.ui.commands.CommandManager;
import mobi.beyondpod.ui.commands.CommandManagerBase;
import mobi.beyondpod.ui.core.customtabs.CustomTabActivityHelper;
import mobi.beyondpod.ui.core.customtabs.CustomTabsIntent;
import mobi.beyondpod.ui.core.customtabs.CustomTabsSession;
import mobi.beyondpod.ui.core.customtabs.ShareBroadcastReceiver;
import mobi.beyondpod.ui.core.mediarouter.BPMediaRouteDialogFactory;
import mobi.beyondpod.ui.core.mediarouter.MediaRouteDiscoveryFragment;
import mobi.beyondpod.ui.dialogs.DeletePodcastDialog;
import mobi.beyondpod.ui.dialogs.FontBackgroundSettingsPopUp;
import mobi.beyondpod.ui.views.FeedContentDataSource;
import mobi.beyondpod.ui.views.HtmlViewActivity;
import mobi.beyondpod.ui.views.base.IWebViewOwner;
import mobi.beyondpod.ui.views.base.UnderlinePageIndicator;

/* loaded from: classes.dex */
public class FeedItemContentViewPagerBase extends AppCompatActivity implements IWebViewOwner, MediaRouteDiscoveryFragment.IDiscoveryFragmentOwner, CustomTabActivityHelper.ConnectionCallback {
    public static int ACTIVITY_REQUEST_ContentViewPager = 1906;
    private static final int FL_MENU_FIRST = 90;
    protected static final int FOCUS_NODE_HREF = 102;
    private static final int MENU_ADD_TO_MY_EPISODES = 102;
    private static final int MENU_ADD_TO_PLAYLIST = 98;
    private static final int MENU_DELETE_EPISODE = 103;
    private static final int MENU_DISPLAY_SETTINGS = 99;
    private static final int MENU_DOWNLOAD = 100;
    private static final int MENU_PLAY_POST_PODCAST = 97;
    private static final int MENU_SET_AS_FAVORITE = 101;
    private static final int MENU_SHARE_LINK = 92;
    private static final int MENU_TOGGLE_READ = 94;
    private static final int MENU_TOGGLE_STAR = 95;
    protected static final String TAG = FeedItemContentViewPager.class.getSimpleName();
    protected static int _InstanceCount;
    protected RssFeedItem _CurrentRssItem;
    protected IDataSource _DataSource;
    private int _DataSourceItemCount;
    private int _MinScroll;
    private int _MinSpeed;
    private FeedItemContentViewPagerAdapter _PagerAdapter;
    private UnderlinePageIndicator _UnderlinePageIndicator;
    private ViewPager _ViewPager;
    private CustomTabActivityHelper _customTabActivityHelper;
    private Menu _theMenu;
    protected Handler _Handler = new Handler() { // from class: mobi.beyondpod.ui.views.contentview.FeedItemContentViewPagerBase.1
        @Override // android.os.Handler
        public void handleMessage(Message message) {
            String str;
            if (message.what != 102 || (str = (String) message.getData().get("url")) == null || str.length() == 0) {
                return;
            }
            int i = message.arg1;
            if (i == R.id.copy_link_context_menu_id) {
                FeedItemContentViewPagerBase.this.copyToClipboard(str);
            } else if (i == R.id.open_in_browser_menu_id) {
                CommandManagerBase.cmdOpenExternalBrowser(str);
            } else {
                if (i != R.id.share_link_context_menu_id) {
                    return;
                }
                Browser.sendString(FeedItemContentViewPagerBase.this, str);
            }
        }
    };
    private MenuItem.OnMenuItemClickListener _ContextItemSelectedListener = new MenuItem.OnMenuItemClickListener() { // from class: mobi.beyondpod.ui.views.contentview.FeedItemContentViewPagerBase.2
        @Override // android.view.MenuItem.OnMenuItemClickListener
        public boolean onMenuItemClick(MenuItem menuItem) {
            Message obtainMessage = FeedItemContentViewPagerBase.this._Handler.obtainMessage(102, menuItem.getItemId(), 0);
            obtainMessage.obj = this;
            FeedItemContentViewPagerBase.this.currentWebView().requestFocusNodeHref(obtainMessage);
            Intent intent = menuItem.getIntent();
            if (intent == null) {
                return true;
            }
            FeedItemContentViewPagerBase.this.startIntent(intent);
            return true;
        }
    };
    protected boolean _IsPageSwitching = false;
    private boolean _AllowVibrate = true;
    private boolean _CustomTabConnected = false;
    private boolean _PrefetchOnConnect = false;
    ViewPager.OnPageChangeListener _CurrentItemChangedListener = new ViewPager.OnPageChangeListener() { // from class: mobi.beyondpod.ui.views.contentview.FeedItemContentViewPagerBase.3
        @Override // android.support.v4.view.ViewPager.OnPageChangeListener
        public void onPageSelected(int i) {
            if (i >= FeedItemContentViewPagerBase.this._DataSource.getCount()) {
                return;
            }
            FeedItemContentViewPagerBase.this._CurrentRssItem = FeedItemContentViewPagerBase.this._DataSource.getItemAtPosition(i);
            if (Configuration.markAsReadOnOpen() == 2 || (Configuration.markAsReadOnOpen() == 1 && FeedItemContentViewPagerBase.this._CurrentRssItem.enclosure() == null)) {
                FeedItemContentViewPagerBase.this.changeCurrentItemReadStatus(true);
            }
            ActionBar supportActionBar = FeedItemContentViewPagerBase.this.getSupportActionBar();
            if (supportActionBar != null && !supportActionBar.isShowing()) {
                supportActionBar.show();
            }
            FeedItemContentViewPagerBase.this.preFetchCurrentItemLink();
            FeedItemContentViewPagerBase.this.invalidateOptionsMenu();
        }

        @Override // android.support.v4.view.ViewPager.OnPageChangeListener
        public void onPageScrolled(int i, float f, int i2) {
            if (FeedItemContentViewPagerBase.this._AllowVibrate && FeedItemContentViewPagerBase.this._IsPageSwitching && f == 0.0f && i2 == 0) {
                CoreHelper.vibrate(CoreHelper.VIBRATE_SHORT);
                FeedItemContentViewPagerBase.this._AllowVibrate = false;
            }
        }

        @Override // android.support.v4.view.ViewPager.OnPageChangeListener
        public void onPageScrollStateChanged(int i) {
            FeedItemContentViewPagerBase.this._IsPageSwitching = i == 1;
        }
    };

    @Override // mobi.beyondpod.ui.core.mediarouter.MediaRouteDiscoveryFragment.IDiscoveryFragmentOwner
    public void onCastDeviceDetected() {
    }

    @Override // mobi.beyondpod.ui.core.mediarouter.MediaRouteDiscoveryFragment.IDiscoveryFragmentOwner
    public void onDisconnectFromDevice() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void preFetchCurrentItemLink() {
        if (!this._CustomTabConnected) {
            this._PrefetchOnConnect = true;
            return;
        }
        if (this._CurrentRssItem == null || StringUtils.isNullOrEmpty(this._CurrentRssItem.Link)) {
            return;
        }
        try {
            Uri parse = Uri.parse(this._CurrentRssItem.Link);
            if (parse != null) {
                this._customTabActivityHelper.mayLaunchUrl(parse, null, null);
                CoreHelper.writeTraceEntry(TAG, "Chrome custom tab is pre-fetching " + parse);
            }
        } catch (Exception unused) {
            CoreHelper.writeTraceEntry(TAG, "Unable to pre-fetching custom tab link! ");
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.support.v7.app.AppCompatActivity, android.support.v4.app.FragmentActivity, android.support.v4.app.SupportActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        TypedArray obtainStyledAttributes = getTheme().obtainStyledAttributes(new int[]{android.R.attr.actionBarSize});
        int dimension = (int) obtainStyledAttributes.getDimension(0, 0.0f);
        this._MinScroll = dimension / 2;
        this._MinSpeed = dimension / 5;
        obtainStyledAttributes.recycle();
        getWindow().setVolumeControlStream(3);
        this._customTabActivityHelper = new CustomTabActivityHelper();
        this._customTabActivityHelper.setConnectionCallback(this);
        FragmentManager supportFragmentManager = getSupportFragmentManager();
        if (supportFragmentManager.findFragmentByTag(MediaRouteDiscoveryFragment.DISCOVERY_FRAGMENT_TAG) == null) {
            MediaRouteDiscoveryFragment mediaRouteDiscoveryFragment = new MediaRouteDiscoveryFragment();
            mediaRouteDiscoveryFragment.setOwner(this);
            mediaRouteDiscoveryFragment.setRouteSelector(BeyondPodApplication.getInstance().chromecastDevice().getRouteSelector());
            supportFragmentManager.beginTransaction().add(mediaRouteDiscoveryFragment, MediaRouteDiscoveryFragment.DISCOVERY_FRAGMENT_TAG).commit();
        }
    }

    public static void doOpenOriginalSource(Activity activity, boolean z, String str, CharSequence charSequence) {
        if (StringUtils.isNullOrEmpty(str)) {
            return;
        }
        try {
            if (z) {
                CommandManagerBase.cmdOpenExternalBrowser(str);
            } else if (Configuration.useExternalBrowser()) {
                CommandManagerBase.cmdOpenExternalBrowser(str);
            } else {
                startHtmlViewActivity(activity, Uri.parse(str), charSequence, null);
            }
        } catch (Exception unused) {
        }
    }

    private static boolean startHtmlViewActivity(Activity activity, Uri uri, CharSequence charSequence, CustomTabsSession customTabsSession) {
        try {
            if (startChromeCustomTabActivity(activity, uri, charSequence, customTabsSession)) {
                return true;
            }
            return startHtmlViewActivityInternal(activity, uri, charSequence);
        } catch (Exception unused) {
            return false;
        }
    }

    private static boolean startChromeCustomTabActivity(final Activity activity, Uri uri, final CharSequence charSequence, CustomTabsSession customTabsSession) {
        if (!Configuration.DBGUseChromeTabs()) {
            return false;
        }
        CustomTabsIntent.Builder builder = new CustomTabsIntent.Builder(customTabsSession);
        builder.setToolbarColor(ContextCompat.getColor(activity, R.color.bp_primary));
        builder.setShowTitle(true);
        builder.addMenuItem(activity.getString(R.string.MENU_browser_share_link), PendingIntent.getBroadcast(activity.getApplicationContext(), 0, new Intent(activity.getApplicationContext(), (Class<?>) ShareBroadcastReceiver.class), 0));
        builder.setCloseButtonIcon(BitmapFactory.decodeResource(activity.getResources(), R.drawable.ic_arrow_back));
        CustomTabActivityHelper.openCustomTab(activity, builder.build(), uri, new CustomTabActivityHelper.CustomTabFallback() { // from class: mobi.beyondpod.ui.views.contentview.FeedItemContentViewPagerBase.4
            @Override // mobi.beyondpod.ui.core.customtabs.CustomTabActivityHelper.CustomTabFallback
            public void openUri(Context context, Uri uri2) {
                FeedItemContentViewPagerBase.startHtmlViewActivityInternal(activity, uri2, charSequence);
            }
        });
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean startHtmlViewActivityInternal(Context context, Uri uri, CharSequence charSequence) {
        try {
            Intent intent = new Intent(context, (Class<?>) HtmlViewActivity.class);
            intent.setData(uri);
            intent.putExtra(SettingsJsonConstants.PROMPT_TITLE_KEY, charSequence);
            intent.putExtra("IsFeedContentLink", true);
            context.startActivity(intent);
            return true;
        } catch (IllegalArgumentException unused) {
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public IDataSource getDataSource() {
        return this._DataSource;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int getDataSourceCount() {
        return this._DataSourceItemCount;
    }

    private void playEpisode() {
        Track prepareEnclosureForPlayback = CommandManager.prepareEnclosureForPlayback(this, this._CurrentRssItem, false, true);
        if (prepareEnclosureForPlayback != null && CommandManager.cmdPlayPauseTrack(this, prepareEnclosureForPlayback, this._DataSource.generatePlaylistStartingFrom(prepareEnclosureForPlayback))) {
            openFullScreenPlayerandFinish();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void openFullScreenPlayerandFinish() {
        setResult(-1);
        finish();
    }

    private boolean openNextPrevItem(int i) {
        RssFeedItem nextPrevItem = this._DataSource.getNextPrevItem(i, this._CurrentRssItem);
        if (nextPrevItem == null) {
            return false;
        }
        this._ViewPager.setCurrentItem(this._DataSource.getIndexOf(nextPrevItem));
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void changeCurrentItemReadStatus(boolean z) {
        if (this._CurrentRssItem != null) {
            this._CurrentRssItem.setRead(z);
            BeyondPodApplication.messageBus.publishEventAsync(new RepositoryEvents.RepositoryEvent(15));
            invalidateOptionsMenu();
        }
    }

    private void changeCurrentStarredStatus(boolean z) {
        if (this._CurrentRssItem != null) {
            this._CurrentRssItem.setStarred(z);
            BeyondPodApplication.messageBus.publishEventAsync(new RepositoryEvents.RepositoryEvent(15));
            invalidateOptionsMenu();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public WebView currentWebView() {
        if (this._ViewPager == null) {
            return null;
        }
        return (WebView) this._ViewPager.findViewWithTag(this._CurrentRssItem);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void copyToClipboard(CharSequence charSequence) {
        ClipboardManager clipboardManager = (ClipboardManager) getSystemService("clipboard");
        ClipData newPlainText = ClipData.newPlainText("", charSequence);
        if (clipboardManager != null) {
            clipboardManager.setPrimaryClip(newPlainText);
        }
    }

    @Override // android.support.v7.app.AppCompatActivity, android.app.Activity, android.view.Window.Callback
    public boolean dispatchKeyEvent(KeyEvent keyEvent) {
        AudioManager audioManager = (AudioManager) getSystemService("audio");
        int keyCode = keyEvent.getKeyCode();
        int action = keyEvent.getAction();
        if (Configuration.volumeControlsNavigationType() == 1 || (((audioManager != null && audioManager.isMusicActive()) || ChromecastDevice.isConnected()) && Configuration.volumeControlsNavigationType() == 0)) {
            switch (keyCode) {
                case 24:
                    if (action == 0) {
                        BeyondPodApplication.getInstance().chromecastDevice().adjustVolume(1);
                        return false;
                    }
                    break;
                case 25:
                    if (action == 0) {
                        BeyondPodApplication.getInstance().chromecastDevice().adjustVolume(-1);
                        return false;
                    }
                    break;
                default:
                    return super.dispatchKeyEvent(keyEvent);
            }
        }
        int rotation = ((WindowManager) getSystemService("window")).getDefaultDisplay().getRotation();
        if (keyCode != 24) {
            if (keyCode != 25) {
                return super.dispatchKeyEvent(keyEvent);
            }
            if (action == 0) {
                if (!openNextPrevItem((rotation == 0 || rotation == 1) ? 1 : -1)) {
                    indicateEnd();
                }
            }
            return true;
        }
        if (action == 0) {
            if (rotation != 0 && rotation != 1) {
                r4 = 1;
            }
            if (!openNextPrevItem(r4)) {
                indicateEnd();
            }
        }
        return true;
    }

    private void indicateEnd() {
        CoreHelper.vibrate(CoreHelper.VIBRATE_SHORT);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void wireViewPager(RssFeedItem rssFeedItem, Bundle bundle) {
        this._ViewPager = (ViewPager) findViewById(R.id.webViewPager);
        this._PagerAdapter = new FeedItemContentViewPagerAdapter(this, bundle);
        this._DataSourceItemCount = this._DataSource.getCount();
        this._ViewPager.setAdapter(this._PagerAdapter);
        this._UnderlinePageIndicator = (UnderlinePageIndicator) findViewById(R.id.underlineIndicator);
        this._UnderlinePageIndicator.setViewPager(this._ViewPager);
        this._UnderlinePageIndicator.setVisibility(this._PagerAdapter.getCount() > 1 ? 0 : 8);
        this._UnderlinePageIndicator.setOnPageChangeListener(this._CurrentItemChangedListener);
        int indexOf = this._DataSource.getIndexOf(rssFeedItem);
        this._DataSource.setCollectionChangedListener(new FeedContentDataSource.CollectionChangedListener() { // from class: mobi.beyondpod.ui.views.contentview.FeedItemContentViewPagerBase.5
            @Override // mobi.beyondpod.ui.views.FeedContentDataSource.CollectionChangedListener
            public void onCollectionChanged() {
                CoreHelper.writeTraceEntry(FeedItemContentViewPagerBase.TAG, "Underlying feed has changed! Refreshing...");
                FeedItemContentViewPagerBase.this._DataSourceItemCount = FeedItemContentViewPagerBase.this._DataSource.getCount();
                FeedItemContentViewPagerBase.this._PagerAdapter.notifyDataSetChanged();
            }
        });
        if (indexOf > 0) {
            this._ViewPager.setCurrentItem(indexOf);
        } else {
            this._CurrentItemChangedListener.onPageSelected(0);
        }
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
        if (motionEvent.getAction() == 1) {
            this._AllowVibrate = true;
        }
        return super.dispatchTouchEvent(motionEvent);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.support.v4.app.FragmentActivity, android.app.Activity
    public void onPause() {
        pausePlugins();
        super.onPause();
    }

    private void pausePlugins() {
        if (this._ViewPager != null) {
            for (int i = 0; i != this._ViewPager.getChildCount(); i++) {
                View childAt = this._ViewPager.getChildAt(i);
                if (childAt instanceof WebView) {
                    CoreHelper.writeTraceEntry(TAG, "Pausing webviews...");
                    ((WebView) childAt).onPause();
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.support.v4.app.FragmentActivity, android.app.Activity
    public void onResume() {
        if (this._ViewPager != null) {
            for (int i = 0; i != this._ViewPager.getChildCount(); i++) {
                View childAt = this._ViewPager.getChildAt(i);
                if (childAt instanceof WebView) {
                    ((WebView) childAt).onResume();
                }
            }
        }
        invalidateOptionsMenu();
        super.onResume();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.support.v7.app.AppCompatActivity, android.support.v4.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        this._customTabActivityHelper.setConnectionCallback(null);
        if (this._DataSource != null) {
            this._DataSource.setCollectionChangedListener(null);
        }
        if (this._ViewPager != null) {
            while (this._ViewPager.getChildCount() > 0) {
                View childAt = this._ViewPager.getChildAt(0);
                if (childAt instanceof WebView) {
                    ((WebView) childAt).destroy();
                }
            }
        }
    }

    @Override // android.app.Activity
    public boolean onCreateOptionsMenu(Menu menu) {
        this._theMenu = menu;
        MenuItem add = menu.add(R.string.MENU_media_route);
        MediaRouteActionProvider mediaRouteActionProvider = new MediaRouteActionProvider(this);
        mediaRouteActionProvider.setRouteSelector(BeyondPodApplication.getInstance().chromecastDevice().getRouteSelector());
        mediaRouteActionProvider.setDialogFactory(new BPMediaRouteDialogFactory());
        MenuItemCompat.setActionProvider(add, mediaRouteActionProvider);
        add.setShowAsAction(2);
        menu.add(0, 97, 0, R.string.MENU_episode).setIcon(R.drawable.ic_action_play).setShowAsAction(2);
        menu.add(0, 94, 1, R.string.MENU_mark_played).setShowAsAction(2);
        menu.add(0, 100, 2, R.string.published_list_download_episode).setIcon(R.drawable.ic_action_download).setShowAsAction(2);
        menu.add(0, 98, 3, R.string.MENU_add_to_playlist).setIcon(R.drawable.ic_action_playlist_add).setShowAsAction(2);
        menu.add(0, 95, 4, R.string.MENU_lock_episode).setShowAsAction(2);
        menu.add(0, 92, 5, R.string.MENU_browser_share_link).setIcon(R.drawable.ic_action_share).setShowAsAction(0);
        menu.add(0, 101, 6, R.string.MENU_lock_episode).setShowAsAction(0);
        menu.add(0, 102, 7, R.string.published_list_add_to_my_episodes).setShowAsAction(0);
        menu.add(0, 99, 8, R.string.MENU_display_settings).setShowAsAction(0);
        menu.add(0, 103, 9, R.string.MENU_delete_podcast_episodes).setShowAsAction(0);
        return true;
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x0091  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x009d  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x00bb  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x00d1  */
    /* JADX WARN: Removed duplicated region for block: B:52:0x00e9  */
    /* JADX WARN: Removed duplicated region for block: B:55:0x0103  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x010f  */
    /* JADX WARN: Removed duplicated region for block: B:70:0x012d  */
    /* JADX WARN: Removed duplicated region for block: B:75:0x0107  */
    /* JADX WARN: Removed duplicated region for block: B:76:0x00ed  */
    @Override // android.app.Activity
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean onPrepareOptionsMenu(android.view.Menu r18) {
        /*
            Method dump skipped, instructions count: 314
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: mobi.beyondpod.ui.views.contentview.FeedItemContentViewPagerBase.onPrepareOptionsMenu(android.view.Menu):boolean");
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to find 'out' block for switch in B:7:0x0013. Please report as an issue. */
    @Override // android.app.Activity
    public boolean onOptionsItemSelected(final MenuItem menuItem) {
        Track prepareEnclosureForPlayback;
        Track prepareEnclosureForPlayback2;
        int itemId = menuItem.getItemId();
        if (itemId == 92) {
            if (this._CurrentRssItem != null) {
                Track trackByPathOrUrl = this._CurrentRssItem.enclosure() != null ? FeedRepository.getTrackByPathOrUrl(this._CurrentRssItem.enclosure().fileName(), this._CurrentRssItem.enclosure().Url) : null;
                if (trackByPathOrUrl != null) {
                    CommandManager.cmdSharePodcast(this, trackByPathOrUrl);
                } else {
                    Feed feedById = FeedRepository.getFeedById(this._CurrentRssItem.originatingFeedID());
                    if (feedById != null) {
                        CommandManager.cmdSharePost(this, feedById, this._CurrentRssItem);
                    }
                }
            }
            return true;
        }
        if (itemId == 16908332) {
            finish();
            return true;
        }
        switch (itemId) {
            case 94:
                if (this._CurrentRssItem != null) {
                    changeCurrentItemReadStatus(!this._CurrentRssItem.getRead());
                }
                return true;
            case 95:
                if (this._CurrentRssItem != null) {
                    changeCurrentStarredStatus(!this._CurrentRssItem.getStarred());
                }
                return true;
            default:
                switch (itemId) {
                    case 97:
                        playEpisode();
                        return true;
                    case 98:
                        CommandManager.cmdAddRemoveToPlaylist(this, CommandManager.prepareEnclosureForPlayback(this, this._CurrentRssItem, false, false));
                        return true;
                    case 99:
                        new FontBackgroundSettingsPopUp(this, new FontBackgroundSettingsPopUp.FontBackgroundSettingsChangedListener() { // from class: mobi.beyondpod.ui.views.contentview.FeedItemContentViewPagerBase.6
                            @Override // mobi.beyondpod.ui.views.player.charms.CharmPopUpBase.CharmListener
                            public void onCharmPopupDismissed() {
                            }

                            @Override // mobi.beyondpod.ui.views.player.charms.CharmPopUpBase.CharmListener
                            public void onCharmPopupShown() {
                            }

                            @Override // mobi.beyondpod.ui.dialogs.FontBackgroundSettingsPopUp.FontBackgroundSettingsChangedListener
                            public void onFontSizeBackgroundColorChanged(String str, String str2) {
                                Configuration.setContentTheme(str2);
                                Configuration.setDefaultDocFontSize(str);
                                FeedItemContentViewPagerBase.this.refreshPages();
                            }
                        }).show(findViewById(android.R.id.content));
                        return true;
                    case 100:
                        Feed feedById2 = FeedRepository.getFeedById(this._CurrentRssItem.originatingFeedID());
                        if (feedById2 != null) {
                            CommandManager.cmdDownloadEnclosure(this, this._CurrentRssItem, feedById2, false);
                        }
                        return true;
                    case 101:
                        if (this._CurrentRssItem != null && this._CurrentRssItem.enclosure() != null && (prepareEnclosureForPlayback = CommandManager.prepareEnclosureForPlayback(this, this._CurrentRssItem, true, false)) != null) {
                            prepareEnclosureForPlayback.setLocked(!prepareEnclosureForPlayback.locked());
                        }
                        return true;
                    case 102:
                        CommandManager.prepareEnclosureForPlayback(this, this._CurrentRssItem, true, false);
                        return false;
                    case 103:
                        if (this._CurrentRssItem != null && this._CurrentRssItem.enclosure() != null && (prepareEnclosureForPlayback2 = CommandManager.prepareEnclosureForPlayback(this, this._CurrentRssItem, true, false)) != null) {
                            BeyondPodApplicationEvo.getInstance().playList().removeTrack(prepareEnclosureForPlayback2);
                            TrackList trackList = new TrackList();
                            trackList.add(prepareEnclosureForPlayback2);
                            AnalyticsTracker.onCommand("CmdDeleteEpisodes", null);
                            DeletePodcastDialog.showDialog(this, trackList, new DialogInterface.OnDismissListener() { // from class: mobi.beyondpod.ui.views.contentview.FeedItemContentViewPagerBase.7
                                @Override // android.content.DialogInterface.OnDismissListener
                                public void onDismiss(DialogInterface dialogInterface) {
                                    menuItem.setVisible(false);
                                    FeedItemContentViewPagerBase.this.finish();
                                }
                            });
                        }
                        return false;
                    default:
                        return false;
                }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void refreshPages() {
        if (this._ViewPager != null) {
            for (int i = 0; i != this._ViewPager.getChildCount(); i++) {
                View childAt = this._ViewPager.getChildAt(i);
                if (childAt instanceof WebView) {
                    this._PagerAdapter.reloadContent((WebView) childAt);
                }
            }
        }
    }

    @Override // mobi.beyondpod.ui.views.base.IWebViewOwner
    public void onVerticalScroll(int i, int i2) {
        if (Math.abs(i2) < this._MinSpeed) {
            return;
        }
        if (i < this._MinScroll || i2 <= 0) {
            toggleActionBar(true);
        } else if (i2 > 0) {
            toggleActionBar(false);
        }
    }

    private void toggleActionBar(boolean z) {
        if (z && !getSupportActionBar().isShowing()) {
            getSupportActionBar().show();
        }
        if (z || !getSupportActionBar().isShowing()) {
            return;
        }
        getSupportActionBar().hide();
    }

    @Override // mobi.beyondpod.ui.views.base.IWebViewOwner
    public void onDoubleTap(float f, float f2, int i) {
        if (i == 5) {
            getSupportActionBar().setDisplayUseLogoEnabled(false);
            currentWebView().postDelayed(new Runnable() { // from class: mobi.beyondpod.ui.views.contentview.FeedItemContentViewPagerBase.8
                @Override // java.lang.Runnable
                public void run() {
                    FeedItemContentViewPagerBase.this.finish();
                }
            }, 300L);
            currentWebView().postDelayed(new Runnable() { // from class: mobi.beyondpod.ui.views.contentview.FeedItemContentViewPagerBase.9
                @Override // java.lang.Runnable
                public void run() {
                    FeedItemContentViewPagerBase.this.getSupportActionBar().setDisplayUseLogoEnabled(true);
                }
            }, 200L);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void onWebPageProgress(WebView webView, int i) {
        if (webView == currentWebView()) {
            getWindow().setFeatureInt(2, i * 100);
        }
    }

    protected void finalize() throws Throwable {
        if (CoreHelper.isDebugBuild()) {
            _InstanceCount--;
            CoreHelper.writeTraceEntryInDebug(TAG, "######### FeedItemContentViewPager FINALIZED! Remaining instances: " + _InstanceCount);
        }
        super.finalize();
    }

    @Override // android.app.Activity, android.view.View.OnCreateContextMenuListener
    public void onCreateContextMenu(ContextMenu contextMenu, View view, ContextMenu.ContextMenuInfo contextMenuInfo) {
        WebView.HitTestResult hitTestResult = ((WebView) view).getHitTestResult();
        if (hitTestResult == null) {
            return;
        }
        int type = hitTestResult.getType();
        if (type == 0) {
            CoreHelper.writeTraceEntry(TAG, "We should not show context menu when nothing is touched");
            return;
        }
        if (type == 9) {
            return;
        }
        getMenuInflater().inflate(R.menu.browsercontext, contextMenu);
        String extra = hitTestResult.getExtra();
        contextMenu.setGroupVisible(R.id.PHONE_MENU, type == 2);
        contextMenu.setGroupVisible(R.id.EMAIL_MENU, type == 4);
        contextMenu.setGroupVisible(R.id.GEO_MENU, type == 3);
        contextMenu.setGroupVisible(R.id.IMAGE_MENU, type == 5 || type == 8);
        contextMenu.setGroupVisible(R.id.ANCHOR_MENU, type == 7 || type == 8);
        switch (type) {
            case 2:
                contextMenu.setHeaderTitle(Uri.decode(extra));
                contextMenu.findItem(R.id.dial_context_menu_id).setIntent(new Intent("android.intent.action.VIEW", Uri.parse("tel:" + extra))).setOnMenuItemClickListener(this._ContextItemSelectedListener);
                Intent intent = new Intent("android.intent.action.INSERT_OR_EDIT");
                intent.putExtra("phone", Uri.decode(extra));
                intent.setType("vnd.android.cursor.item/contact");
                contextMenu.findItem(R.id.add_contact_context_menu_id).setIntent(intent).setOnMenuItemClickListener(this._ContextItemSelectedListener);
                contextMenu.findItem(R.id.copy_phone_context_menu_id).setOnMenuItemClickListener(new CopyListener(extra));
                return;
            case 3:
                contextMenu.setHeaderTitle(extra);
                String safeEncodeUrl = CoreHelper.safeEncodeUrl(extra);
                contextMenu.findItem(R.id.map_context_menu_id).setIntent(new Intent("android.intent.action.VIEW", Uri.parse("geo:0,0?q=" + safeEncodeUrl))).setOnMenuItemClickListener(this._ContextItemSelectedListener);
                contextMenu.findItem(R.id.copy_geo_context_menu_id).setOnMenuItemClickListener(new CopyListener(extra));
                return;
            case 4:
                contextMenu.setHeaderTitle(extra);
                contextMenu.findItem(R.id.email_context_menu_id).setIntent(new Intent("android.intent.action.VIEW", Uri.parse("mailto:" + extra))).setOnMenuItemClickListener(this._ContextItemSelectedListener);
                contextMenu.findItem(R.id.copy_mail_context_menu_id).setOnMenuItemClickListener(new CopyListener(extra));
                return;
            case 5:
                break;
            case 6:
            default:
                CoreHelper.writeLogEntry(TAG, "We should not get here.");
                return;
            case 7:
            case 8:
                TextView textView = (TextView) LayoutInflater.from(this).inflate(android.R.layout.browser_link_context_header, (ViewGroup) null);
                textView.setText(extra);
                contextMenu.setHeaderView(textView);
                contextMenu.findItem(R.id.open_in_browser_menu_id).setOnMenuItemClickListener(this._ContextItemSelectedListener);
                contextMenu.findItem(R.id.copy_link_context_menu_id).setOnMenuItemClickListener(this._ContextItemSelectedListener);
                PackageManager packageManager = getPackageManager();
                Intent intent2 = new Intent("android.intent.action.SEND");
                intent2.setType("text/plain");
                contextMenu.findItem(R.id.share_link_context_menu_id).setVisible(packageManager.resolveActivity(intent2, 65536) != null).setOnMenuItemClickListener(this._ContextItemSelectedListener);
                if (type == 7) {
                    return;
                }
                break;
        }
        if (type == 5) {
            contextMenu.setHeaderTitle(extra);
        }
        contextMenu.findItem(R.id.view_image_context_menu_id).setIntent(new Intent("android.intent.action.VIEW", Uri.parse(extra))).setOnMenuItemClickListener(this._ContextItemSelectedListener);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void startIntent(Intent intent) {
        try {
            startActivity(intent);
        } catch (Exception e) {
            Toast.makeText(BeyondPodApplication.getInstance(), "Unable to open URL!\n\n" + e.getMessage(), 1).show();
        }
    }

    @Override // mobi.beyondpod.ui.core.customtabs.CustomTabActivityHelper.ConnectionCallback
    public void onCustomTabsConnected() {
        CoreHelper.writeTraceEntry(TAG, "Chrome custom tab service connected");
        this._CustomTabConnected = true;
        if (this._PrefetchOnConnect) {
            this._PrefetchOnConnect = false;
            preFetchCurrentItemLink();
        }
    }

    @Override // mobi.beyondpod.ui.core.customtabs.CustomTabActivityHelper.ConnectionCallback
    public void onCustomTabsDisconnected() {
        CoreHelper.writeTraceEntry(TAG, "Chrome custom tab service disconnected");
        this._CustomTabConnected = false;
    }

    public boolean openItemContentLink(Uri uri) {
        return startHtmlViewActivity(this, uri, "Loading...", this._customTabActivityHelper.getSession());
    }

    /* loaded from: classes.dex */
    protected class CopyListener implements MenuItem.OnMenuItemClickListener {
        private CharSequence mText;

        public CopyListener(CharSequence charSequence) {
            this.mText = charSequence;
        }

        @Override // android.view.MenuItem.OnMenuItemClickListener
        public boolean onMenuItemClick(MenuItem menuItem) {
            FeedItemContentViewPagerBase.this.copyToClipboard(this.mText);
            return true;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.support.v7.app.AppCompatActivity, android.support.v4.app.FragmentActivity, android.app.Activity
    public void onStart() {
        super.onStart();
        if (Configuration.DBGUseChromeTabs()) {
            this._customTabActivityHelper.bindCustomTabsService(this);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.support.v7.app.AppCompatActivity, android.support.v4.app.FragmentActivity, android.app.Activity
    public void onStop() {
        super.onStop();
        if (Configuration.DBGUseChromeTabs()) {
            this._customTabActivityHelper.unbindCustomTabsService(this);
        }
    }

    @Override // mobi.beyondpod.ui.core.mediarouter.MediaRouteDiscoveryFragment.IDiscoveryFragmentOwner
    public void onConnectedToDevice(String str) {
        Toast.makeText(this, getResources().getString(R.string.player_view_playback_cast_connected, str), 1).show();
    }

    @Override // mobi.beyondpod.ui.core.mediarouter.MediaRouteDiscoveryFragment.IDiscoveryFragmentOwner
    public void onConnectionRefused() {
        Toast.makeText(this, R.string.remote_playback_not_available_in_lite_version, 1).show();
    }

    @Override // mobi.beyondpod.ui.core.mediarouter.MediaRouteDiscoveryFragment.IDiscoveryFragmentOwner
    public void onIncompatiblePlayServices() {
        ChromecastDevice.checkGooglePlayServices(this, true);
    }
}
