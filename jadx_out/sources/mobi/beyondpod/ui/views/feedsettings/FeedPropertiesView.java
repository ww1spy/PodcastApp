package mobi.beyondpod.ui.views.feedsettings;

import android.app.AlertDialog;
import android.app.Dialog;
import android.app.ProgressDialog;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.res.Configuration;
import android.database.Cursor;
import android.os.AsyncTask;
import android.provider.MediaStore;
import android.support.v7.app.ActionBar;
import android.support.v7.app.AppCompatActivity;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ScrollView;
import android.widget.Toast;
import mobi.beyondpod.BeyondPodApplication;
import mobi.beyondpod.R;
import mobi.beyondpod.downloadengine.RssFeedCatcher;
import mobi.beyondpod.evo.ApplicationCmdEvents;
import mobi.beyondpod.rsscore.Feed;
import mobi.beyondpod.rsscore.FeedURLPatcher;
import mobi.beyondpod.rsscore.StartupContentBuilder;
import mobi.beyondpod.rsscore.categories.FeedCategory;
import mobi.beyondpod.rsscore.helpers.CoreHelper;
import mobi.beyondpod.rsscore.helpers.StringUtils;
import mobi.beyondpod.rsscore.repository.FeedRepository;
import mobi.beyondpod.rsscore.rss.EnclosureDownloadHistory;
import mobi.beyondpod.rsscore.rss.RssFeedCache;
import mobi.beyondpod.rsscore.rss.parsers.FeedParseData;
import mobi.beyondpod.sync.ChangeTracker;
import mobi.beyondpod.ui.commands.CommandManager;
import mobi.beyondpod.ui.commands.RefreshVirtualFeedTask;
import mobi.beyondpod.ui.core.FeedImageCache;

/* loaded from: classes.dex */
public class FeedPropertiesView extends AppCompatActivity {
    protected static final int ACTIVITY_SELECT_IMAGE = 0;
    private static final int MENU_CANCEL = 1;
    private static final int MENU_OK = 0;
    private static final String TAG = "FeedPropertiesView";
    public static final String URL_KEY = "URL_KEY";
    Feed _CurrentFeed;
    ProgressDialog _ProgressDialog;
    View _SettingsRoot;
    ScrollView _SettingsScroll;
    SettingsSectionBase _SettingsSection;
    private static final String CHECKING_FOR_ALTERNATIVES = CoreHelper.loadResourceString(R.string.checking_for_alternatives);
    private static final String PATCHED_FEED_MSG = CoreHelper.loadResourceString(R.string.feed_patched_msg);
    private static final String LOCATING_RSS_FEEDS = CoreHelper.loadResourceString(R.string.feed_settings_locating_rss_feeds);
    private static final String CONNECTING = CoreHelper.loadResourceString(R.string.feed_settings_connecting);
    private static final String RETRIEVING_FEED = CoreHelper.loadResourceString(R.string.feed_settings_retrieving_feed);
    private static final String CHECKING_FEED_INFORMATION = CoreHelper.loadResourceString(R.string.feed_settings_checking_feed_information);
    private static final String UPDATING_DOWNLOAD_HISTORY = CoreHelper.loadResourceString(R.string.feed_settings_updating_download_history);
    private static final String ADD_VIRTUAL_FEED = CoreHelper.loadResourceString(R.string.feed_settings_add_virtual_feed);
    private static final String ADD_FEED = CoreHelper.loadResourceString(R.string.feed_settings_add_feed);
    private static final String EDIT_FEED = CoreHelper.loadResourceString(R.string.feed_settings_edit_feed);
    private static final String EDIT_VIRTUAL_FEED = CoreHelper.loadResourceString(R.string.feed_settings_edit_virtual_feed);
    View.OnClickListener _ClearHistoryListener = new View.OnClickListener() { // from class: mobi.beyondpod.ui.views.feedsettings.FeedPropertiesView.1
        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (FeedPropertiesView.this._CurrentFeed != null) {
                new CmdAddRemoveAllEnclosuresToFeedHistory().execute(true);
            }
        }
    };
    View.OnClickListener _MarkDownloadedListener = new View.OnClickListener() { // from class: mobi.beyondpod.ui.views.feedsettings.FeedPropertiesView.2
        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (FeedPropertiesView.this._CurrentFeed != null) {
                new CmdAddRemoveAllEnclosuresToFeedHistory().execute(false);
            }
        }
    };
    View.OnClickListener _SelectCustomImageListener = new View.OnClickListener() { // from class: mobi.beyondpod.ui.views.feedsettings.FeedPropertiesView.3
        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (FeedPropertiesView.this._CurrentFeed != null) {
                try {
                    FeedPropertiesView.this.startActivityForResult(new Intent("android.intent.action.PICK", MediaStore.Images.Media.INTERNAL_CONTENT_URI), 0);
                } catch (Exception unused) {
                    Toast.makeText(FeedPropertiesView.this, "Unable to find any application (like Gallery, Photos etc.) that can allow selecting of images!", 1).show();
                }
            }
        }
    };
    View.OnClickListener _ClearCustomImageListener = new View.OnClickListener() { // from class: mobi.beyondpod.ui.views.feedsettings.FeedPropertiesView.4
        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (FeedPropertiesView.this._CurrentFeed != null) {
                FeedImageCache.deleteCustomImageForFeed(FeedPropertiesView.this._CurrentFeed);
                FeedPropertiesView.this.refreshActiveSection();
            }
        }
    };
    RssFeedCatcher _Catcher = new RssFeedCatcher();
    private boolean _CurrentFeedIsNew = false;
    private RssFeedCatcher.FeedUpdateListener _FeedUpdateListener = new RssFeedCatcher.FeedUpdateListener() { // from class: mobi.beyondpod.ui.views.feedsettings.FeedPropertiesView.5
        @Override // mobi.beyondpod.downloadengine.RssFeedCatcher.FeedUpdateListener
        public void onFeedUpdateCompleted(Feed feed) {
            FeedParseData lastFeedParseData = FeedPropertiesView.this._Catcher.lastFeedParseData();
            if (lastFeedParseData != null && !lastFeedParseData.hasParseFailed()) {
                if (FeedPropertiesView.this._CurrentFeed.isGReaderFeed()) {
                    FeedPropertiesView.this._CurrentFeed.setLastServerModifiedDate(null);
                }
                FeedPropertiesView.this._CurrentFeedIsNew = false;
                BeyondPodApplication.messageBus.publishEvent(new ApplicationCmdEvents.SelectFeedCategoryAndOpenFeedEvent(this, FeedPropertiesView.this._CurrentFeed));
                FeedPropertiesView.this.finish();
                return;
            }
            if (FeedPropertiesView.this._CurrentFeed != null) {
                analyzeURL(FeedPropertiesView.this._CurrentFeed.getFeedUrl());
            } else {
                FeedPropertiesView.this.showError(constructFeedErroressage(R.string.dlg_invalid_feed_URL_generic_message));
            }
        }

        private String constructFeedErroressage(int i) {
            return FeedPropertiesView.this.getString(R.string.dlg_invalid_feed_URL_message, new Object[]{FeedPropertiesView.this.getString(i)});
        }

        private void analyzeURL(String str) {
            boolean isNullOrEmpty = StringUtils.isNullOrEmpty(str);
            int i = R.string.dlg_invalid_feed_URL_generic_message;
            if (!isNullOrEmpty) {
                if (str.endsWith(".mp3")) {
                    i = R.string.dlg_invalid_feed_URL_mp3_message;
                }
                if (str.startsWith("http://") || str.startsWith("https://")) {
                    FeedPropertiesView.this.SetTitle(FeedPropertiesView.CHECKING_FOR_ALTERNATIVES);
                    FeedURLPatcher.PatchResult tryPatchFeedUrl = FeedURLPatcher.tryPatchFeedUrl(str);
                    if (tryPatchFeedUrl.isPatched()) {
                        FeedPropertiesView.this.showPatchFound(tryPatchFeedUrl.patchedURL());
                        return;
                    } else if (isItunesFeed(str)) {
                        i = R.string.dlg_invalid_feed_URL_itunes_message;
                    }
                }
            }
            FeedPropertiesView.this.showError(constructFeedErroressage(i));
        }

        boolean isItunesFeed(String str) {
            return !StringUtils.isNullOrEmpty(str) && (str.startsWith("http://phobos.apple.com") || str.startsWith("http://itunes.apple.com") || str.startsWith("https://phobos.apple.com") || str.startsWith("https://itunes.apple.com"));
        }

        @Override // mobi.beyondpod.downloadengine.RssFeedCatcher.FeedUpdateListener
        public void onFeedUpdateError(Feed feed, Exception exc) {
            String string = FeedPropertiesView.this.getString(R.string.dlg_invalid_cant_connect_tofeed_URL_message, new Object[]{exc.getMessage()});
            if (feed.isGReaderFeed()) {
                analyzeURL(feed.getFeedUrl());
            } else {
                FeedPropertiesView.this.showError(string);
            }
        }

        @Override // mobi.beyondpod.downloadengine.RssFeedCatcher.FeedUpdateListener
        public void onFeedUpdateProgress(Feed feed) {
            FeedPropertiesView.this.SetTitle(FeedPropertiesView.RETRIEVING_FEED + ": " + feed.updatePercent() + " %");
        }

        @Override // mobi.beyondpod.downloadengine.RssFeedCatcher.FeedUpdateListener
        public void onFeedUpdateStarted(Feed feed) {
            FeedPropertiesView.this.SetTitle(FeedPropertiesView.CONNECTING);
        }

        @Override // mobi.beyondpod.downloadengine.RssFeedCatcher.FeedUpdateListener
        public void onFeedUpdateTerminated(Feed feed) {
            if (FeedPropertiesView.this._ProgressDialog != null) {
                FeedPropertiesView.this._ProgressDialog.dismiss();
            }
        }
    };

    /* JADX WARN: Removed duplicated region for block: B:20:0x0099  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x00da  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x00be  */
    @Override // android.support.v7.app.AppCompatActivity, android.support.v4.app.FragmentActivity, android.support.v4.app.SupportActivity, android.app.Activity
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onCreate(android.os.Bundle r4) {
        /*
            Method dump skipped, instructions count: 279
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: mobi.beyondpod.ui.views.feedsettings.FeedPropertiesView.onCreate(android.os.Bundle):void");
    }

    public String getPassedFeedUrl() {
        return getIntent().getStringExtra(URL_KEY);
    }

    private void addOkCancelButtons() {
        View inflate = ((LayoutInflater) getSupportActionBar().getThemedContext().getSystemService("layout_inflater")).inflate(R.layout.action_bar_done_cancel, (ViewGroup) null);
        inflate.findViewById(R.id.actionbar_done).setOnClickListener(new View.OnClickListener() { // from class: mobi.beyondpod.ui.views.feedsettings.FeedPropertiesView.6
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                FeedPropertiesView.this.saveChanges();
            }
        });
        inflate.findViewById(R.id.actionbar_cancel).setOnClickListener(new View.OnClickListener() { // from class: mobi.beyondpod.ui.views.feedsettings.FeedPropertiesView.7
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                FeedPropertiesView.this.finish();
            }
        });
        ActionBar supportActionBar = getSupportActionBar();
        supportActionBar.setDisplayOptions(16, 26);
        supportActionBar.setCustomView(inflate, new ActionBar.LayoutParams(-1, -1));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.support.v7.app.AppCompatActivity, android.support.v4.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        if (this._CurrentFeed != null && this._CurrentFeedIsNew) {
            FeedRepository.deleteFeedAndRelatedFoldersAsync(this._CurrentFeed);
        }
        if (this._ProgressDialog != null) {
            this._ProgressDialog.dismiss();
        }
        super.onDestroy();
    }

    @Override // android.support.v7.app.AppCompatActivity, android.support.v4.app.FragmentActivity, android.app.Activity, android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) this._SettingsRoot.getLayoutParams();
        int dimension = (int) getResources().getDimension(R.dimen.generic_screen_h_margin);
        layoutParams.rightMargin = dimension;
        layoutParams.leftMargin = dimension;
        this._SettingsRoot.setLayoutParams(layoutParams);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void saveChanges() {
        if (this._SettingsSection.validateControls(this._CurrentFeed)) {
            if (this._CurrentFeed == null) {
                this._CurrentFeedIsNew = true;
                this._CurrentFeed = Feed.createAndAddFeedWithDefaults("", "", "");
            }
            int podcastDownloadAction = this._CurrentFeed.getPodcastDownloadAction();
            String name = this._CurrentFeed.getName();
            FeedCategory primary = this._CurrentFeed.getCategories().getPrimary();
            FeedCategory secondary = this._CurrentFeed.getCategories().getSecondary();
            this._SettingsSection.saveToFeed(this._CurrentFeed);
            this._CurrentFeed.ensureFeedPathIsUnique();
            if (podcastDownloadAction != this._CurrentFeed.getPodcastDownloadAction()) {
                if (this._CurrentFeed.getPodcastDownloadAction() == 5 || this._CurrentFeed.getPodcastDownloadAction() == 4) {
                    this._CurrentFeed.setForceFeedItemSort(2);
                    this._CurrentFeed.setTrackSortOrder(2);
                } else {
                    this._CurrentFeed.setForceFeedItemSort(-1);
                    this._CurrentFeed.setTrackSortOrder(-1);
                }
            }
            if ((!this._CurrentFeedIsNew && (!StringUtils.equals(name, this._CurrentFeed.getName()) || primary != this._CurrentFeed.getCategories().getPrimary())) || secondary != this._CurrentFeed.getCategories().getSecondary()) {
                ChangeTracker.addLocalFeedChange(3, this._CurrentFeed, 60);
            }
            FeedRepository.saveRepositoryAsync();
            StartupContentBuilder.backupRepositoriesAsync();
            if (this._SettingsSection.hasFeedAddressChanged()) {
                if (this._SettingsSection.isURLFeed()) {
                    checkIfFeedIsValid(this._CurrentFeed);
                    return;
                } else {
                    new RefreshVirtualFeedTask(new RefreshVirtualFeedTask.ITrackImageRefreshProgress() { // from class: mobi.beyondpod.ui.views.feedsettings.FeedPropertiesView.8
                        @Override // mobi.beyondpod.ui.commands.RefreshVirtualFeedTask.ITrackImageRefreshProgress
                        public void onRefreshCompleted() {
                            if (FeedPropertiesView.this._ProgressDialog != null) {
                                FeedPropertiesView.this._ProgressDialog.dismiss();
                            }
                            if (FeedPropertiesView.this._CurrentFeedIsNew) {
                                BeyondPodApplication.messageBus.publishEvent(new ApplicationCmdEvents.SelectFeedCategoryAndOpenFeedEvent(this, FeedPropertiesView.this._CurrentFeed));
                            }
                            FeedPropertiesView.this._CurrentFeedIsNew = false;
                            FeedPropertiesView.this.finish();
                        }

                        @Override // mobi.beyondpod.ui.commands.RefreshVirtualFeedTask.ITrackImageRefreshProgress
                        public void onRefreshStarted() {
                            FeedPropertiesView.this.showDialog(2);
                        }

                        @Override // mobi.beyondpod.ui.commands.RefreshVirtualFeedTask.ITrackImageRefreshProgress
                        public void onRefreshProgress(int i) {
                            FeedPropertiesView.this.SetTitle(FeedPropertiesView.RETRIEVING_FEED + " " + i + " %");
                        }
                    }).execute(this._CurrentFeed);
                    return;
                }
            }
            this._CurrentFeedIsNew = false;
            finish();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.support.v4.app.FragmentActivity, android.app.Activity
    public void onActivityResult(int i, int i2, Intent intent) {
        super.onActivityResult(i, i2, intent);
        if (i == 0 && i2 == -1) {
            String[] strArr = {"_data"};
            Cursor query = getContentResolver().query(intent.getData(), strArr, null, null, null);
            if (query != null) {
                query.moveToFirst();
            }
            String string = query.getString(query.getColumnIndex(strArr[0]));
            query.close();
            if (StringUtils.isNullOrEmpty(string)) {
                Toast.makeText(this, R.string.feed_properties_view_images_from_picasa_albums_cannot_be_used_as_a_feed_image, 1).show();
            }
            FeedImageCache.setCustomFeedImage(this._CurrentFeed, string);
            refreshActiveSection();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void refreshActiveSection() {
        this._SettingsSection.refresh(this._CurrentFeed);
    }

    @Override // android.app.Activity
    protected Dialog onCreateDialog(int i) {
        this._ProgressDialog = new ProgressDialog(this);
        this._ProgressDialog.setIndeterminate(true);
        this._ProgressDialog.setMessage(i == 0 ? UPDATING_DOWNLOAD_HISTORY : CHECKING_FEED_INFORMATION);
        this._ProgressDialog.setCancelable(i < 2);
        this._ProgressDialog.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: mobi.beyondpod.ui.views.feedsettings.FeedPropertiesView.9
            @Override // android.content.DialogInterface.OnDismissListener
            public void onDismiss(DialogInterface dialogInterface) {
                FeedPropertiesView.this._Catcher.stop();
            }
        });
        return this._ProgressDialog;
    }

    @Override // android.app.Activity
    protected void onPrepareDialog(int i, Dialog dialog) {
        if (this._ProgressDialog != null) {
            this._ProgressDialog.setIndeterminate(false);
            this._ProgressDialog.setIndeterminate(true);
        }
        super.onPrepareDialog(i, dialog);
    }

    protected void checkIfFeedIsValid(Feed feed) {
        if (this._Catcher.isUpdating()) {
            this._Catcher.stop();
            return;
        }
        this._Catcher.setFeedUpdateListener(this._FeedUpdateListener);
        this._Catcher.updateFeed(feed, true);
        showDialog(1);
    }

    public void SetTitle(final String str) {
        runOnUiThread(new Runnable() { // from class: mobi.beyondpod.ui.views.feedsettings.FeedPropertiesView.10
            @Override // java.lang.Runnable
            public void run() {
                if (FeedPropertiesView.this._ProgressDialog != null) {
                    FeedPropertiesView.this._ProgressDialog.setMessage(str);
                }
            }
        });
    }

    void showError(final String str) {
        runOnUiThread(new Runnable() { // from class: mobi.beyondpod.ui.views.feedsettings.FeedPropertiesView.11
            @Override // java.lang.Runnable
            public void run() {
                if (FeedPropertiesView.this._ProgressDialog != null) {
                    FeedPropertiesView.this._ProgressDialog.dismiss();
                }
                AlertDialog.Builder builder = new AlertDialog.Builder(FeedPropertiesView.this);
                builder.setMessage(str);
                builder.setTitle(R.string.dlg_invalid_feed_URL_title);
                builder.setPositiveButton(R.string.alert_dialog_cancel, (DialogInterface.OnClickListener) null);
                builder.setNeutralButton(R.string.alert_dialog_ignore, new DialogInterface.OnClickListener() { // from class: mobi.beyondpod.ui.views.feedsettings.FeedPropertiesView.11.1
                    @Override // android.content.DialogInterface.OnClickListener
                    public void onClick(DialogInterface dialogInterface, int i) {
                        FeedPropertiesView.this._CurrentFeedIsNew = false;
                        FeedPropertiesView.this.finish();
                    }
                });
                builder.setNegativeButton(R.string.alert_dialog_feed_help, new DialogInterface.OnClickListener() { // from class: mobi.beyondpod.ui.views.feedsettings.FeedPropertiesView.11.2
                    @Override // android.content.DialogInterface.OnClickListener
                    public void onClick(DialogInterface dialogInterface, int i) {
                        CommandManager.cmdStartHtmlViewActivity(mobi.beyondpod.rsscore.Configuration.feedURLErrorHelpURL(FeedPropertiesView.this._CurrentFeed.getFeedUrl()), FeedPropertiesView.LOCATING_RSS_FEEDS, false);
                    }
                }).show();
            }
        });
    }

    void showPatchFound(final String str) {
        runOnUiThread(new Runnable() { // from class: mobi.beyondpod.ui.views.feedsettings.FeedPropertiesView.12
            @Override // java.lang.Runnable
            public void run() {
                if (FeedPropertiesView.this._ProgressDialog != null) {
                    FeedPropertiesView.this._ProgressDialog.dismiss();
                }
                AlertDialog.Builder builder = new AlertDialog.Builder(FeedPropertiesView.this);
                builder.setMessage(String.format(FeedPropertiesView.PATCHED_FEED_MSG, str));
                builder.setTitle(R.string.dlg_invalid_feed_URL_title);
                builder.setNegativeButton(R.string.alert_dialog_no, (DialogInterface.OnClickListener) null);
                builder.setPositiveButton(R.string.alert_dialog_yes, new DialogInterface.OnClickListener() { // from class: mobi.beyondpod.ui.views.feedsettings.FeedPropertiesView.12.1
                    @Override // android.content.DialogInterface.OnClickListener
                    public void onClick(DialogInterface dialogInterface, int i) {
                        FeedPropertiesView.this._SettingsSection.patchFeedUrl(str);
                        FeedPropertiesView.this.saveChanges();
                    }
                });
                builder.show();
            }
        });
    }

    @Override // android.app.Activity
    public boolean onCreateOptionsMenu(Menu menu) {
        if (getResources().getInteger(R.integer.screen_size) < 600) {
            return false;
        }
        menu.add(0, 0, 2, R.string.alert_dialog_save).setIcon(R.drawable.ic_action_tick).setShowAsAction(6);
        menu.add(0, 1, 1, R.string.alert_dialog_cancel).setIcon(R.drawable.ic_action_cancel).setShowAsAction(6);
        return true;
    }

    @Override // android.app.Activity
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        int itemId = menuItem.getItemId();
        if (itemId == 16908332) {
            finish();
            return true;
        }
        switch (itemId) {
            case 0:
                saveChanges();
                return true;
            case 1:
                finish();
                return true;
            default:
                return super.onOptionsItemSelected(menuItem);
        }
    }

    /* loaded from: classes.dex */
    private class CmdAddRemoveAllEnclosuresToFeedHistory extends AsyncTask<Boolean, Void, Void> {
        private CmdAddRemoveAllEnclosuresToFeedHistory() {
        }

        @Override // android.os.AsyncTask
        public Void doInBackground(Boolean... boolArr) {
            if (boolArr == null) {
                return null;
            }
            try {
                FeedParseData feedParseData = new FeedParseData(0);
                RssFeedCache.loadFromCache(FeedPropertiesView.this._CurrentFeed, feedParseData);
                if (feedParseData.RssFeed == null || feedParseData.RssFeed.Items.size() <= 0) {
                    return null;
                }
                if (boolArr[0].booleanValue()) {
                    feedParseData.RssFeed.ClearAllItemsReadStatus();
                } else {
                    feedParseData.RssFeed.SetAllItemsAsRead();
                }
                EnclosureDownloadHistory.saveHistorySync();
                return null;
            } catch (Exception unused) {
                return null;
            }
        }

        @Override // android.os.AsyncTask
        protected void onPreExecute() {
            FeedPropertiesView.this.showDialog(0);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        public void onPostExecute(Void r1) {
            if (FeedPropertiesView.this._ProgressDialog != null) {
                FeedPropertiesView.this._ProgressDialog.dismiss();
            }
        }
    }
}
