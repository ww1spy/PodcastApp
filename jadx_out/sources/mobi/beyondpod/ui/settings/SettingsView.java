package mobi.beyondpod.ui.settings;

import android.app.AlertDialog;
import android.app.Fragment;
import android.content.ComponentName;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.SharedPreferences;
import android.graphics.drawable.ColorDrawable;
import android.os.Build;
import android.os.Bundle;
import android.preference.Preference;
import android.preference.PreferenceFragment;
import android.preference.PreferenceGroup;
import android.support.v7.app.ActionBar;
import android.support.v7.app.AppCompatActivity;
import android.view.Menu;
import android.view.MenuItem;
import android.view.SubMenu;
import android.widget.Toast;
import com.google.android.gms.analytics.GoogleAnalytics;
import java.io.File;
import java.util.Date;
import java.util.Iterator;
import mobi.beyondpod.BeyondPodApplication;
import mobi.beyondpod.R;
import mobi.beyondpod.aggregators.AggregatorLoginHelper;
import mobi.beyondpod.rsscore.AggregatorPreference;
import mobi.beyondpod.rsscore.BackupRestore;
import mobi.beyondpod.rsscore.Configuration;
import mobi.beyondpod.rsscore.DownloadFolderPreference;
import mobi.beyondpod.rsscore.ExcludeFromOptimizationsPreference;
import mobi.beyondpod.rsscore.Feed;
import mobi.beyondpod.rsscore.ScheduledUpdatesPreference;
import mobi.beyondpod.rsscore.StartupContentBuilder;
import mobi.beyondpod.rsscore.Track;
import mobi.beyondpod.rsscore.helpers.CoreHelper;
import mobi.beyondpod.rsscore.helpers.DateTime;
import mobi.beyondpod.rsscore.helpers.LogcatSnapshotHelper;
import mobi.beyondpod.rsscore.helpers.StringUtils;
import mobi.beyondpod.rsscore.helpers.TimeSpan;
import mobi.beyondpod.rsscore.repository.FeedRepository;
import mobi.beyondpod.services.player.MediaButtonIntentReceiver;
import mobi.beyondpod.services.player.PlayListEvents;
import mobi.beyondpod.services.player.smartplay.SmartPlaylistManager;
import mobi.beyondpod.sync.ChangeTracker;
import mobi.beyondpod.ui.commands.CommandManager;
import mobi.beyondpod.ui.dialogs.MoveFilesDialog;
import mobi.beyondpod.ui.views.notifications.UserNotificationManager;

/* loaded from: classes.dex */
public class SettingsView extends AppCompatActivity implements LogcatSnapshotHelper.ILogcatSnapshot {
    public static final String ADVANCED_PREFERENCES_KEY = "advanced";
    private static final String DEFAULT_KEEP_AT_MOST_PODCASTS = "DefaultKeepAtMostPodcasts";
    private static final String DEFAULT_MAX_PODCAST_AGE = "DefaultMaximumPodcastAge";
    private static final String DEFAULT_NUM_PODCASTS_TO_DOWNLOAD = "DefaultNumberPodcastsToDownload";
    private static final String DEFAULT_PODCAST_DOWNLOAD_ACTION = "DefaultPodcastDownloadAction";
    public static final String DEVELOPER_PREFERENCES_KEY = "developer";
    private static final String ENABLE_ANALYTHICS = "GatherAnalyticsData";
    private static final String HEADSET_BUTTON_KEY = "EnableHeadsetButton";
    private static final String LOCK_TO_CURRENT_ROOT = "PreferLastSDCardRoot";
    private static final int MENU_ADVANCED_SETTINGS = 7;
    private static final int MENU_CLEAR_CACHE = 8;
    private static final int MENU_ENVIRONMENT_INFO = 9;
    private static final int MENU_EXIT = 12;
    private static final int MENU_OPEN_WELCOME_LITE_PAGE = 3;
    private static final int MENU_OPEN_WELCOME_PRO_PAGE = 4;
    private static final int MENU_OPEN_WHAT_IS_NEW_PAGE = 5;
    private static final int MENU_RESET_NOTIFICATIONS = 1;
    private static final int MENU_VIEW_LOGCAT_FILE = 13;
    private static final int MENU_VIEW_LOG_FILE = 10;
    private static final int MENU_VIEW_SYNC_LOG_FILE = 14;
    private static final int MENU_VIEW_UPDATE_LOG = 11;
    private static final String ORIENTATION_LOCK = "OrientationLock";
    private static final String PREVENT_KEYGUARD_CHANGED = "PreventKeyguard";
    private static final String REBUILD_SMARTPLAY = "AutoSyncSmartPlay";
    private static final String REBUILD_SMARTPLAY_KEEP_CURRENT = "KeepCurrentEpisodeForDefferAutoSyncSmartPlay";
    public static final int SCREEN_FEED_DEFAULTS = 0;
    private static final String SHARE_PODCASTS_KEY = "SharePodcasts";
    private static final String SHOW_CDS_SETTINGS = "showCDSSettings";
    public static final String START_SCREEN_PREFERENCES_KEY = "StartScreen";
    private static final String SUPPORTED_EXTENSIONS = "PlayerSupportedFileExtensions";
    private static final String TAG = "SettingsView";
    private static final String WIDGET_BACKGROUND = "widgetBackgroundColor";
    private static final String WIDGET_BUTTON_ACTION = "WidgetSecondaryButtonAction";
    private static final String WHAT_IS_NEW = CoreHelper.loadResourceString(R.string.master_view_what_is_new);
    private static final String WELCOME_TO_BEYOND_POD = CoreHelper.loadResourceString(R.string.master_view_welcome_to_beyondpod);
    private static final String E_MAIL_SUPPORT = CoreHelper.loadResourceString(R.string.about_dialog_e_mail_support);
    private static final String CLOSE = CoreHelper.loadResourceString(R.string.about_dialog_close);
    private static final String ENVIRONMENT_INFO = CoreHelper.loadResourceString(R.string.about_dialog_environment_info);

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.support.v7.app.AppCompatActivity, android.support.v4.app.FragmentActivity, android.support.v4.app.SupportActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.settings_view);
        ActionBar supportActionBar = getSupportActionBar();
        if (supportActionBar != null) {
            supportActionBar.setDisplayOptions(4, 4);
            supportActionBar.setBackgroundDrawable(new ColorDrawable(-12303292));
        }
        if (!FeedRepository.isRepositoryAvailable()) {
            CoreHelper.writeTraceEntry(TAG, "Closing view because the repository is not Loaded");
            finish();
        } else if (bundle == null) {
            buildPreferenceFragment();
        }
    }

    private void buildPreferenceFragment() {
        String action = getIntent().getAction();
        if ("AboutBeyondPod".equals(action)) {
            getFragmentManager().beginTransaction().add(R.id.container, new AboutPreferenceFragment()).commit();
            return;
        }
        if ("CrossDeviceSync".equals(action)) {
            getFragmentManager().beginTransaction().add(R.id.container, new CrossDeviceSyncSetupFragment()).commit();
            return;
        }
        if (BackupRestore.PREFERENCE_KEY.equals(action)) {
            getFragmentManager().beginTransaction().add(R.id.container, new BackupRestoreFragment()).commit();
            return;
        }
        if (getIntent() != null && getIntent().getIntExtra(START_SCREEN_PREFERENCES_KEY, -1) == 0) {
            action = "FeedDfaultsPreference";
        }
        PrefsFragment prefsFragment = new PrefsFragment();
        Bundle bundle = new Bundle();
        if (StringUtils.isNullOrEmpty(action)) {
            if (getIntent() != null && (ADVANCED_PREFERENCES_KEY.equals(getIntent().getType()) || DEVELOPER_PREFERENCES_KEY.equals(getIntent().getType()))) {
                bundle.putCharSequence("PreferenceScreen", "AdvancedPreference");
            } else {
                bundle.putCharSequence("PreferenceScreen", "PublicHeaders");
            }
        } else {
            bundle.putCharSequence("PreferenceScreen", action);
        }
        prefsFragment.setArguments(bundle);
        getFragmentManager().beginTransaction().add(R.id.container, prefsFragment, "prefContent").commit();
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public SharedPreferences getSharedPreferences(String str, int i) {
        return Configuration._preferences;
    }

    @Override // android.app.Activity
    public boolean onPrepareOptionsMenu(Menu menu) {
        menu.clear();
        Fragment findFragmentByTag = getFragmentManager().findFragmentByTag("prefContent");
        if (findFragmentByTag instanceof PrefsFragment ? getResources().getString(R.string.settings_view_title).equals(((PrefsFragment) findFragmentByTag).getPreferenceScreen().getTitle()) : false) {
            menu.add(0, 7, 1, R.string.feed_properties_advanced_section);
            menu.add(0, 8, 2, R.string.MENU_clear_cache);
            SubMenu addSubMenu = menu.addSubMenu(0, 0, 3, R.string.MENU_view_logs);
            addSubMenu.add(0, 9, 1, R.string.MENU_dump_environment);
            addSubMenu.add(0, 11, 2, R.string.MENU_view_update_log);
            addSubMenu.add(0, 10, 3, R.string.MENU_view_log_file);
            addSubMenu.add(0, 13, 4, R.string.MENU_view_logcat_file);
            if (ChangeTracker.isSyncLicenseValid()) {
                addSubMenu.add(0, 14, 5, R.string.cds_menu_sync_show_log);
            }
            menu.add(0, 1, 4, R.string.MENU_reset_tips);
        }
        return true;
    }

    @Override // android.app.Activity
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        int itemId = menuItem.getItemId();
        if (itemId == 1) {
            UserNotificationManager.resetDefaultPrefs();
            Toast.makeText(this, R.string.reset_tips_complete, 1).show();
            return true;
        }
        if (itemId == 16908332) {
            finish();
            return true;
        }
        switch (itemId) {
            case 3:
                CommandManager.cmdOpenWelcomePage(Configuration.welcomeLiteFileURI(), WELCOME_TO_BEYOND_POD);
                return false;
            case 4:
                CommandManager.cmdOpenWelcomePage(Configuration.welcomeProFileURI(), WELCOME_TO_BEYOND_POD);
                return false;
            case 5:
                CommandManager.cmdOpenWelcomePage(Configuration.whatIsNewFileURI(), WHAT_IS_NEW);
                return false;
            default:
                switch (itemId) {
                    case 7:
                        CommandManager.cmdShowAdvancedSettings();
                        return true;
                    case 8:
                        CommandManager.cmdClearCaches(this);
                        return true;
                    case 9:
                        final String dumpEnvironment = CoreHelper.dumpEnvironment();
                        new AlertDialog.Builder(this).setTitle(ENVIRONMENT_INFO).setMessage(dumpEnvironment).setNegativeButton(CLOSE, (DialogInterface.OnClickListener) null).setPositiveButton(E_MAIL_SUPPORT, new DialogInterface.OnClickListener() { // from class: mobi.beyondpod.ui.settings.SettingsView.1
                            @Override // android.content.DialogInterface.OnClickListener
                            public void onClick(DialogInterface dialogInterface, int i) {
                                CommandManager.cmdSendEMail(SettingsView.this, "support@beyondpod.mobi", "BeyondPod environment", dumpEnvironment, null, true);
                            }
                        }).create().show();
                        return true;
                    case 10:
                        CommandManager.cmdViewFileContent(Configuration.logFilePath(), true);
                        return true;
                    case 11:
                        CommandManager.cmdShowUpdateLog(this);
                        return true;
                    case 12:
                        CommandManager.cmdExit();
                        return true;
                    case 13:
                        new LogcatSnapshotHelper(this, 1000, Configuration.logcatFilePath(), this).execute(true);
                        return true;
                    case 14:
                        CommandManager.cmdViewFileContent(Configuration.syncLogFilePath(), true);
                        return true;
                    default:
                        return false;
                }
        }
    }

    @Override // mobi.beyondpod.rsscore.helpers.LogcatSnapshotHelper.ILogcatSnapshot
    public void snapshotPrepared() {
        CommandManager.cmdViewFileContent(Configuration.logcatFilePath(), true);
    }

    @Override // mobi.beyondpod.rsscore.helpers.LogcatSnapshotHelper.ILogcatSnapshot
    public void snapshotFailed(String str) {
        String str2;
        StringBuilder sb = new StringBuilder();
        sb.append("Unable to read Android Log file!");
        if (StringUtils.isNullOrEmpty(str)) {
            str2 = "";
        } else {
            str2 = "\n\n" + str;
        }
        sb.append(str2);
        Toast.makeText(this, sb.toString(), 0).show();
    }

    /* loaded from: classes.dex */
    public static class PrefsFragment extends PreferenceFragment implements SharedPreferences.OnSharedPreferenceChangeListener {
        Preference.OnPreferenceChangeListener _SpaceSaversListener = new Preference.OnPreferenceChangeListener() { // from class: mobi.beyondpod.ui.settings.SettingsView.PrefsFragment.1
            @Override // android.preference.Preference.OnPreferenceChangeListener
            public boolean onPreferenceChange(Preference preference, Object obj) {
                int globalDefaultNumberPodcastsToDownload = Configuration.getGlobalDefaultNumberPodcastsToDownload();
                int globalDefaultKeepAtMostPodcasts = Configuration.getGlobalDefaultKeepAtMostPodcasts();
                if (SettingsView.DEFAULT_NUM_PODCASTS_TO_DOWNLOAD.equals(preference.getKey())) {
                    globalDefaultNumberPodcastsToDownload = StringUtils.tryParseIntFromString((String) obj, Integer.valueOf(Configuration.getGlobalDefaultNumberPodcastsToDownload())).intValue();
                }
                if (SettingsView.DEFAULT_KEEP_AT_MOST_PODCASTS.equals(preference.getKey())) {
                    globalDefaultKeepAtMostPodcasts = StringUtils.tryParseIntFromString((String) obj, Integer.valueOf(Configuration.getGlobalDefaultKeepAtMostPodcasts())).intValue();
                }
                if (globalDefaultNumberPodcastsToDownload <= globalDefaultKeepAtMostPodcasts) {
                    return true;
                }
                Toast.makeText(PrefsFragment.this.getActivity(), R.string.feed_properties_vld_podcast_num_download_is_less_than_keep_at_most, 1).show();
                return false;
            }
        };

        @Override // android.preference.PreferenceFragment, android.app.Fragment
        public void onCreate(Bundle bundle) {
            super.onCreate(bundle);
            loadPreferenceScreen();
            Preference findPreference = getPreferenceScreen().findPreference(SettingsView.DEFAULT_NUM_PODCASTS_TO_DOWNLOAD);
            if (findPreference != null) {
                findPreference.setOnPreferenceChangeListener(this._SpaceSaversListener);
            }
            Preference findPreference2 = getPreferenceScreen().findPreference(SettingsView.DEFAULT_KEEP_AT_MOST_PODCASTS);
            if (findPreference2 != null) {
                findPreference2.setOnPreferenceChangeListener(this._SpaceSaversListener);
            }
        }

        void loadPreferenceScreen() {
            String string = getArguments() != null ? getArguments().getString("PreferenceScreen") : "NormalHeaders";
            if ("UpdatePreference".equals(string)) {
                addPreferencesFromResource(R.xml.preferences_update);
            } else if ("FeedDfaultsPreference".equals(string)) {
                addPreferencesFromResource(R.xml.preferences_feed_defaults);
            } else if ("GeneralPreference".equals(string)) {
                addPreferencesFromResource(R.xml.preferences_general);
            } else if ("PlayerPreference".equals(string)) {
                addPreferencesFromResource(R.xml.preferences_player);
            } else if ("PlaylistPreference".equals(string)) {
                addPreferencesFromResource(R.xml.preferences_playlist);
            } else if ("AdvancedPreference".equals(string)) {
                addPreferencesFromResource(R.xml.advanced_preferences);
            } else if ("HeadsetButtonPreference".equals(string)) {
                addPreferencesFromResource(R.xml.preferences_headset_button_config);
            } else if ("PauseResumePreference".equals(string)) {
                addPreferencesFromResource(R.xml.preferences_player_pause_resume);
            } else if ("PublicHeaders".equals(string)) {
                addPreferencesFromResource(R.xml.preference_headers);
            }
            patchPreferenceHeaders();
            getActivity().setTitle(getPreferenceScreen().getTitle());
        }

        private void patchPreferenceHeaders() {
            ComponentName componentName = new ComponentName(getActivity().getPackageName(), SettingsView.class.getName());
            for (int i = 0; i != getPreferenceScreen().getPreferenceCount(); i++) {
                Preference preference = getPreferenceScreen().getPreference(i);
                if (preference.getIntent() != null) {
                    preference.getIntent().setComponent(componentName);
                }
            }
        }

        @Override // android.app.Fragment
        public void onResume() {
            Preference findPreference;
            Preference findPreference2;
            super.onResume();
            updatePreferenceHeaders();
            getPreferenceScreen().getSharedPreferences().registerOnSharedPreferenceChangeListener(this);
            if (!AggregatorLoginHelper.isLoggedIn() && AggregatorLoginHelper.getAllAggregatorFeeds().size() == 0 && (findPreference2 = getPreferenceScreen().findPreference(AggregatorPreference.KEY)) != null) {
                getPreferenceScreen().removePreference(findPreference2);
            }
            Preference findPreference3 = getPreferenceScreen().findPreference(ExcludeFromOptimizationsPreference.KEY);
            if (findPreference3 != null) {
                if (Build.VERSION.SDK_INT < 23) {
                    findPreference3.setEnabled(false);
                } else {
                    ((ExcludeFromOptimizationsPreference) findPreference3).refresh();
                }
            }
            Preference findPreference4 = getPreferenceScreen().findPreference(DownloadFolderPreference.PREFERENCE_KEY);
            if (findPreference4 != null) {
                ((DownloadFolderPreference) findPreference4).refresh();
            }
            Preference findPreference5 = getPreferenceScreen().findPreference(SettingsView.LOCK_TO_CURRENT_ROOT);
            if (findPreference5 != null) {
                findPreference5.setSummary(getResources().getString(R.string.settings_prefer_last_sd_card_root_summary) + " " + CoreHelper.externalStorageDirectory());
            }
            Preference findPreference6 = getPreferenceScreen().findPreference(ScheduledUpdatesPreference.PREFERENCE_KEY);
            if (findPreference6 != null) {
                ((ScheduledUpdatesPreference) findPreference6).refresh();
            }
            if (MoveFilesDialog._isRunning) {
                CommandManager.startActivity(new Intent(BeyondPodApplication.getInstance(), (Class<?>) MoveFilesDialog.class));
            }
            if (SmartPlaylistManager.isConfigured() || (findPreference = getPreferenceScreen().findPreference("playlist_preferences_category")) == null || !(findPreference instanceof PreferenceGroup)) {
                return;
            }
            PreferenceGroup preferenceGroup = (PreferenceGroup) findPreference;
            Preference findPreference7 = preferenceGroup.findPreference(SettingsView.REBUILD_SMARTPLAY);
            if (findPreference7 != null) {
                preferenceGroup.removePreference(findPreference7);
            }
            Preference findPreference8 = preferenceGroup.findPreference(SettingsView.REBUILD_SMARTPLAY_KEEP_CURRENT);
            if (findPreference8 != null) {
                preferenceGroup.removePreference(findPreference8);
            }
        }

        @Override // android.app.Fragment
        public void onPause() {
            super.onPause();
            getPreferenceScreen().getSharedPreferences().unregisterOnSharedPreferenceChangeListener(this);
        }

        @Override // android.content.SharedPreferences.OnSharedPreferenceChangeListener
        public void onSharedPreferenceChanged(SharedPreferences sharedPreferences, String str) {
            if (str.equals(SettingsView.HEADSET_BUTTON_KEY) && BeyondPodApplication.getInstance().playList().playlistSize() > 0) {
                MediaButtonIntentReceiver.stopListeningForMediaButton();
                MediaButtonIntentReceiver.startListeningForMediaButton();
            }
            if (str.equals(SettingsView.SHARE_PODCASTS_KEY)) {
                boolean z = sharedPreferences.getBoolean(str, false);
                StartupContentBuilder.addRemoveNoMediaFile(z);
                if (!z) {
                    new AlertDialog.Builder(getActivity()).setTitle(R.string.dlg_user_warning_title).setMessage(R.string.settings_disable_sharing_warning).setNegativeButton(R.string.alert_dialog_ok, (DialogInterface.OnClickListener) null).show();
                }
            }
            if (str.equals(SettingsView.PREVENT_KEYGUARD_CHANGED)) {
                Toast.makeText(getActivity(), R.string.settings_requires_restart_warning, 1).show();
            }
            if (str.equals(SettingsView.ORIENTATION_LOCK)) {
                Toast.makeText(getActivity(), R.string.settings_requires_restart_back_only_warning, 1).show();
            }
            if (str.equals(SettingsView.DEFAULT_NUM_PODCASTS_TO_DOWNLOAD) || str.equals(SettingsView.DEFAULT_KEEP_AT_MOST_PODCASTS) || str.equals(SettingsView.DEFAULT_MAX_PODCAST_AGE) || str.equals(SettingsView.DEFAULT_PODCAST_DOWNLOAD_ACTION)) {
                askToApplySettings(str);
            }
            if (str.equals(SettingsView.WIDGET_BACKGROUND) || str.equals(SettingsView.WIDGET_BUTTON_ACTION)) {
                BeyondPodApplication.messageBus.publishEvent(new PlayListEvents.PlayListEvent(BeyondPodApplication.getInstance().playList(), 0));
            }
            if (str.equals(SettingsView.SUPPORTED_EXTENSIONS)) {
                Track.reloadSupportedFileTypes();
            }
            if (str.equals(SettingsView.SHOW_CDS_SETTINGS) && sharedPreferences.getBoolean(str, false)) {
                new AlertDialog.Builder(getActivity()).setTitle(R.string.adv_settings_enable_cds_settings_dlg_title).setMessage(R.string.adv_settings_enable_cds_settings_dlg_msg).setNegativeButton(R.string.alert_dialog_continue, (DialogInterface.OnClickListener) null).setCancelable(true).show();
            }
            if (str.equals(SettingsView.ENABLE_ANALYTHICS)) {
                GoogleAnalytics.getInstance(BeyondPodApplication.getInstance()).setAppOptOut(!Configuration.gatherAnalyticsData());
            }
        }

        private void askToApplySettings(final String str) {
            new AlertDialog.Builder(getActivity()).setTitle(R.string.settings_push_globals_dlg_title).setMessage(str.equals(SettingsView.DEFAULT_PODCAST_DOWNLOAD_ACTION) ? R.string.settings_push_globals_all_dlg_msg : R.string.settings_push_globals_download_or_stream_dlg_msg).setPositiveButton(R.string.settings_push_globals_btn_yes, new DialogInterface.OnClickListener() { // from class: mobi.beyondpod.ui.settings.SettingsView.PrefsFragment.2
                @Override // android.content.DialogInterface.OnClickListener
                public void onClick(DialogInterface dialogInterface, int i) {
                    PrefsFragment.this.applySettings(str);
                }
            }).setNegativeButton(R.string.settings_push_globals_btn_no, (DialogInterface.OnClickListener) null).setCancelable(true).create().show();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void applySettings(String str) {
            int i;
            if (str.equals(SettingsView.DEFAULT_PODCAST_DOWNLOAD_ACTION)) {
                Iterator<Feed> it = FeedRepository.getRootFeed().subFeeds().iterator();
                i = 0;
                while (it.hasNext()) {
                    it.next().setPodcastDownloadAction(Configuration.getGlobalDefaultPodcastDownloadAction());
                    i++;
                }
            } else {
                int i2 = 0;
                for (Feed feed : FeedRepository.getRootFeed().subFeeds()) {
                    if (feed.getType() != 1 && feed.getPodcastDownloadAction() != 0 && feed.getPodcastDownloadAction() != 3) {
                        int keepAtMostPodcasts = feed.getKeepAtMostPodcasts();
                        int maxNumberPodcastToDownload = feed.getMaxNumberPodcastToDownload();
                        TimeSpan maximumPodcastAge = feed.getMaximumPodcastAge();
                        if (str.equals(SettingsView.DEFAULT_KEEP_AT_MOST_PODCASTS)) {
                            keepAtMostPodcasts = Configuration.getGlobalDefaultKeepAtMostPodcasts();
                        } else if (str.equals(SettingsView.DEFAULT_NUM_PODCASTS_TO_DOWNLOAD)) {
                            maxNumberPodcastToDownload = Configuration.getGlobalDefaultNumberPodcastsToDownload();
                        } else if (str.equals(SettingsView.DEFAULT_MAX_PODCAST_AGE)) {
                            maximumPodcastAge = Configuration.getGlobalDefaultMaximumPodcastAge();
                        }
                        if (keepAtMostPodcasts >= maxNumberPodcastToDownload && FeedRepository.getOldTracksForFeed(feed, keepAtMostPodcasts, maximumPodcastAge, false).size() <= 0) {
                            if (feed.getKeepAtMostPodcasts() != keepAtMostPodcasts) {
                                feed.setKeepAtMostPodcasts(keepAtMostPodcasts);
                                i2++;
                            }
                            if (feed.getMaxNumberPodcastToDownload() != maxNumberPodcastToDownload) {
                                feed.setMaxNumberPodcastsToDownload(maxNumberPodcastToDownload);
                                i2++;
                            }
                            if (feed.getMaximumPodcastAge().compareTo(maximumPodcastAge) != 0) {
                                feed.setMaximumPodcastAge(maximumPodcastAge);
                                i2++;
                            }
                        }
                    }
                }
                i = i2;
            }
            FeedRepository.saveRepositoryAsync();
            Toast.makeText(getActivity(), getResources().getString(R.string.settings_global_apply, Integer.valueOf(i)), 0).show();
        }

        private void updatePreferenceHeaders() {
            Preference findPreference = getPreferenceScreen().findPreference("HeaderCDS");
            if (findPreference != null) {
                if (!ChangeTracker.isTrackingEnabled()) {
                    findPreference.setSummary(R.string.settings_cds_summary);
                } else if (Configuration.lastSyncTimeStamp() > 0) {
                    findPreference.setSummary(getString(R.string.cds_last_sync, new Object[]{DateTime.formatDateTime(new Date(Configuration.lastSyncTimeStamp()))}));
                } else {
                    findPreference.setSummary("");
                }
                if (!ChangeTracker.isSyncLicenseValid()) {
                    findPreference.setIntent(null);
                    findPreference.setSummary(R.string.cds_not_available_in_lite_version);
                }
            }
            Preference findPreference2 = getPreferenceScreen().findPreference("HeaderAbout");
            if (findPreference2 != null) {
                findPreference2.setSummary(Configuration.productVersionAsString(getActivity()));
            }
            Preference findPreference3 = getPreferenceScreen().findPreference("HeaderBackup");
            if (findPreference3 != null) {
                File[] enumerateRestoreZipFiles = BackupRestore.enumerateRestoreZipFiles();
                if (enumerateRestoreZipFiles == null || enumerateRestoreZipFiles.length == 0) {
                    findPreference3.setSummary("");
                } else {
                    findPreference3.setSummary(getString(R.string.br_last_backup, new Object[]{enumerateRestoreZipFiles[0].getName()}));
                }
            }
        }
    }
}
