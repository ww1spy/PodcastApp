.class public Lmobi/beyondpod/ui/settings/SettingsView;
.super Landroid/support/v7/app/AppCompatActivity;
.source "SettingsView.java"

# interfaces
.implements Lmobi/beyondpod/rsscore/helpers/LogcatSnapshotHelper$ILogcatSnapshot;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmobi/beyondpod/ui/settings/SettingsView$PrefsFragment;
    }
.end annotation


# static fields
.field public static final ADVANCED_PREFERENCES_KEY:Ljava/lang/String; = "advanced"

.field private static final CLOSE:Ljava/lang/String;

.field private static final DEFAULT_KEEP_AT_MOST_PODCASTS:Ljava/lang/String; = "DefaultKeepAtMostPodcasts"

.field private static final DEFAULT_MAX_PODCAST_AGE:Ljava/lang/String; = "DefaultMaximumPodcastAge"

.field private static final DEFAULT_NUM_PODCASTS_TO_DOWNLOAD:Ljava/lang/String; = "DefaultNumberPodcastsToDownload"

.field private static final DEFAULT_PODCAST_DOWNLOAD_ACTION:Ljava/lang/String; = "DefaultPodcastDownloadAction"

.field public static final DEVELOPER_PREFERENCES_KEY:Ljava/lang/String; = "developer"

.field private static final ENABLE_ANALYTHICS:Ljava/lang/String; = "GatherAnalyticsData"

.field private static final ENVIRONMENT_INFO:Ljava/lang/String;

.field private static final E_MAIL_SUPPORT:Ljava/lang/String;

.field private static final HEADSET_BUTTON_KEY:Ljava/lang/String; = "EnableHeadsetButton"

.field private static final LOCK_TO_CURRENT_ROOT:Ljava/lang/String; = "PreferLastSDCardRoot"

.field private static final MENU_ADVANCED_SETTINGS:I = 0x7

.field private static final MENU_CLEAR_CACHE:I = 0x8

.field private static final MENU_ENVIRONMENT_INFO:I = 0x9

.field private static final MENU_EXIT:I = 0xc

.field private static final MENU_OPEN_WELCOME_LITE_PAGE:I = 0x3

.field private static final MENU_OPEN_WELCOME_PRO_PAGE:I = 0x4

.field private static final MENU_OPEN_WHAT_IS_NEW_PAGE:I = 0x5

.field private static final MENU_RESET_NOTIFICATIONS:I = 0x1

.field private static final MENU_VIEW_LOGCAT_FILE:I = 0xd

.field private static final MENU_VIEW_LOG_FILE:I = 0xa

.field private static final MENU_VIEW_SYNC_LOG_FILE:I = 0xe

.field private static final MENU_VIEW_UPDATE_LOG:I = 0xb

.field private static final ORIENTATION_LOCK:Ljava/lang/String; = "OrientationLock"

.field private static final PREVENT_KEYGUARD_CHANGED:Ljava/lang/String; = "PreventKeyguard"

.field private static final REBUILD_SMARTPLAY:Ljava/lang/String; = "AutoSyncSmartPlay"

.field private static final REBUILD_SMARTPLAY_KEEP_CURRENT:Ljava/lang/String; = "KeepCurrentEpisodeForDefferAutoSyncSmartPlay"

.field public static final SCREEN_FEED_DEFAULTS:I = 0x0

.field private static final SHARE_PODCASTS_KEY:Ljava/lang/String; = "SharePodcasts"

.field private static final SHOW_CDS_SETTINGS:Ljava/lang/String; = "showCDSSettings"

.field public static final START_SCREEN_PREFERENCES_KEY:Ljava/lang/String; = "StartScreen"

.field private static final SUPPORTED_EXTENSIONS:Ljava/lang/String; = "PlayerSupportedFileExtensions"

.field private static final TAG:Ljava/lang/String; = "SettingsView"

.field private static final WELCOME_TO_BEYOND_POD:Ljava/lang/String;

.field private static final WHAT_IS_NEW:Ljava/lang/String;

.field private static final WIDGET_BACKGROUND:Ljava/lang/String; = "widgetBackgroundColor"

.field private static final WIDGET_BUTTON_ACTION:Ljava/lang/String; = "WidgetSecondaryButtonAction"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const v0, 0x7f100265

    .line 83
    invoke-static {v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->loadResourceString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmobi/beyondpod/ui/settings/SettingsView;->WHAT_IS_NEW:Ljava/lang/String;

    const v0, 0x7f100264

    .line 85
    invoke-static {v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->loadResourceString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmobi/beyondpod/ui/settings/SettingsView;->WELCOME_TO_BEYOND_POD:Ljava/lang/String;

    const v0, 0x7f100067

    .line 116
    invoke-static {v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->loadResourceString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmobi/beyondpod/ui/settings/SettingsView;->E_MAIL_SUPPORT:Ljava/lang/String;

    const v0, 0x7f100066

    .line 117
    invoke-static {v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->loadResourceString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmobi/beyondpod/ui/settings/SettingsView;->CLOSE:Ljava/lang/String;

    const v0, 0x7f100068

    .line 119
    invoke-static {v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->loadResourceString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmobi/beyondpod/ui/settings/SettingsView;->ENVIRONMENT_INFO:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 75
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method private buildPreferenceFragment()V
    .locals 5

    .line 150
    invoke-virtual {p0}, Lmobi/beyondpod/ui/settings/SettingsView;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AboutBeyondPod"

    .line 151
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const v2, 0x7f09009d

    if-eqz v1, :cond_0

    .line 153
    invoke-virtual {p0}, Lmobi/beyondpod/ui/settings/SettingsView;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    new-instance v1, Lmobi/beyondpod/ui/settings/AboutPreferenceFragment;

    invoke-direct {v1}, Lmobi/beyondpod/ui/settings/AboutPreferenceFragment;-><init>()V

    .line 154
    invoke-virtual {v0, v2, v1}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 155
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    return-void

    :cond_0
    const-string v1, "CrossDeviceSync"

    .line 159
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 161
    invoke-virtual {p0}, Lmobi/beyondpod/ui/settings/SettingsView;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    new-instance v1, Lmobi/beyondpod/ui/settings/CrossDeviceSyncSetupFragment;

    invoke-direct {v1}, Lmobi/beyondpod/ui/settings/CrossDeviceSyncSetupFragment;-><init>()V

    .line 162
    invoke-virtual {v0, v2, v1}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 163
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    return-void

    :cond_1
    const-string v1, "BackupRestore"

    .line 167
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 169
    invoke-virtual {p0}, Lmobi/beyondpod/ui/settings/SettingsView;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    new-instance v1, Lmobi/beyondpod/ui/settings/BackupRestoreFragment;

    invoke-direct {v1}, Lmobi/beyondpod/ui/settings/BackupRestoreFragment;-><init>()V

    .line 170
    invoke-virtual {v0, v2, v1}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 171
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    return-void

    .line 176
    :cond_2
    invoke-virtual {p0}, Lmobi/beyondpod/ui/settings/SettingsView;->getIntent()Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 178
    invoke-virtual {p0}, Lmobi/beyondpod/ui/settings/SettingsView;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v3, "StartScreen"

    const/4 v4, -0x1

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_3

    const-string v0, "FeedDfaultsPreference"

    .line 183
    :cond_3
    new-instance v1, Lmobi/beyondpod/ui/settings/SettingsView$PrefsFragment;

    invoke-direct {v1}, Lmobi/beyondpod/ui/settings/SettingsView$PrefsFragment;-><init>()V

    .line 184
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 186
    invoke-static {v0}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 188
    invoke-virtual {p0}, Lmobi/beyondpod/ui/settings/SettingsView;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_5

    const-string v0, "advanced"

    .line 189
    invoke-virtual {p0}, Lmobi/beyondpod/ui/settings/SettingsView;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "developer"

    .line 190
    invoke-virtual {p0}, Lmobi/beyondpod/ui/settings/SettingsView;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_4
    const-string v0, "PreferenceScreen"

    const-string v4, "AdvancedPreference"

    .line 191
    invoke-virtual {v3, v0, v4}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_5
    const-string v0, "PreferenceScreen"

    const-string v4, "PublicHeaders"

    .line 193
    invoke-virtual {v3, v0, v4}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_6
    const-string v4, "PreferenceScreen"

    .line 197
    invoke-virtual {v3, v4, v0}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 200
    :goto_0
    invoke-virtual {v1, v3}, Lmobi/beyondpod/ui/settings/SettingsView$PrefsFragment;->setArguments(Landroid/os/Bundle;)V

    .line 202
    invoke-virtual {p0}, Lmobi/beyondpod/ui/settings/SettingsView;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    const-string v3, "prefContent"

    .line 203
    invoke-virtual {v0, v2, v1, v3}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 204
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    return-void
.end method


# virtual methods
.method public getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;
    .locals 0

    .line 210
    sget-object p1, Lmobi/beyondpod/rsscore/Configuration;->_preferences:Landroid/content/SharedPreferences;

    return-object p1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 126
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f0c00c6

    .line 127
    invoke-virtual {p0, v0}, Lmobi/beyondpod/ui/settings/SettingsView;->setContentView(I)V

    .line 129
    invoke-virtual {p0}, Lmobi/beyondpod/ui/settings/SettingsView;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x4

    .line 131
    invoke-virtual {v0, v1, v1}, Landroid/support/v7/app/ActionBar;->setDisplayOptions(II)V

    .line 132
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const v2, -0xbbbbbc

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 135
    :cond_0
    invoke-static {}, Lmobi/beyondpod/rsscore/repository/FeedRepository;->isRepositoryAvailable()Z

    move-result v0

    if-nez v0, :cond_1

    .line 137
    sget-object p1, Lmobi/beyondpod/ui/settings/SettingsView;->TAG:Ljava/lang/String;

    const-string v0, "Closing view because the repository is not Loaded"

    invoke-static {p1, v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    invoke-virtual {p0}, Lmobi/beyondpod/ui/settings/SettingsView;->finish()V

    return-void

    :cond_1
    if-nez p1, :cond_2

    .line 144
    invoke-direct {p0}, Lmobi/beyondpod/ui/settings/SettingsView;->buildPreferenceFragment()V

    :cond_2
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4

    .line 250
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const v1, 0x102002c

    if-eq p1, v1, :cond_0

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    goto/16 :goto_0

    .line 285
    :pswitch_0
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->syncLogFilePath()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v0}, Lmobi/beyondpod/ui/commands/CommandManager;->cmdViewFileContent(Ljava/lang/String;Z)V

    return v0

    .line 289
    :pswitch_1
    new-instance p1, Lmobi/beyondpod/rsscore/helpers/LogcatSnapshotHelper;

    const/16 v2, 0x3e8

    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->logcatFilePath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p1, p0, v2, v3, p0}, Lmobi/beyondpod/rsscore/helpers/LogcatSnapshotHelper;-><init>(Landroid/content/Context;ILjava/lang/String;Lmobi/beyondpod/rsscore/helpers/LogcatSnapshotHelper$ILogcatSnapshot;)V

    .line 290
    new-array v2, v0, [Ljava/lang/Boolean;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v1

    invoke-virtual {p1, v2}, Lmobi/beyondpod/rsscore/helpers/LogcatSnapshotHelper;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return v0

    .line 315
    :pswitch_2
    invoke-static {}, Lmobi/beyondpod/ui/commands/CommandManager;->cmdExit()V

    return v0

    .line 277
    :pswitch_3
    invoke-static {p0}, Lmobi/beyondpod/ui/commands/CommandManager;->cmdShowUpdateLog(Landroid/content/Context;)V

    return v0

    .line 281
    :pswitch_4
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->logFilePath()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v0}, Lmobi/beyondpod/ui/commands/CommandManager;->cmdViewFileContent(Ljava/lang/String;Z)V

    return v0

    .line 261
    :pswitch_5
    invoke-static {}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->dumpEnvironment()Ljava/lang/String;

    move-result-object p1

    .line 262
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget-object v2, Lmobi/beyondpod/ui/settings/SettingsView;->ENVIRONMENT_INFO:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    sget-object v2, Lmobi/beyondpod/ui/settings/SettingsView;->CLOSE:Ljava/lang/String;

    const/4 v3, 0x0

    .line 263
    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    sget-object v2, Lmobi/beyondpod/ui/settings/SettingsView;->E_MAIL_SUPPORT:Ljava/lang/String;

    new-instance v3, Lmobi/beyondpod/ui/settings/SettingsView$1;

    invoke-direct {v3, p0, p1}, Lmobi/beyondpod/ui/settings/SettingsView$1;-><init>(Lmobi/beyondpod/ui/settings/SettingsView;Ljava/lang/String;)V

    .line 264
    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 273
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    return v0

    .line 257
    :pswitch_6
    invoke-static {p0}, Lmobi/beyondpod/ui/commands/CommandManager;->cmdClearCaches(Landroid/content/Context;)V

    return v0

    .line 294
    :pswitch_7
    invoke-static {}, Lmobi/beyondpod/ui/commands/CommandManager;->cmdShowAdvancedSettings()V

    return v0

    .line 311
    :pswitch_8
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->whatIsNewFileURI()Landroid/net/Uri;

    move-result-object p1

    sget-object v0, Lmobi/beyondpod/ui/settings/SettingsView;->WHAT_IS_NEW:Ljava/lang/String;

    invoke-static {p1, v0}, Lmobi/beyondpod/ui/commands/CommandManager;->cmdOpenWelcomePage(Landroid/net/Uri;Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 307
    :pswitch_9
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->welcomeProFileURI()Landroid/net/Uri;

    move-result-object p1

    sget-object v0, Lmobi/beyondpod/ui/settings/SettingsView;->WELCOME_TO_BEYOND_POD:Ljava/lang/String;

    invoke-static {p1, v0}, Lmobi/beyondpod/ui/commands/CommandManager;->cmdOpenWelcomePage(Landroid/net/Uri;Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 303
    :pswitch_a
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->welcomeLiteFileURI()Landroid/net/Uri;

    move-result-object p1

    sget-object v0, Lmobi/beyondpod/ui/settings/SettingsView;->WELCOME_TO_BEYOND_POD:Ljava/lang/String;

    invoke-static {p1, v0}, Lmobi/beyondpod/ui/commands/CommandManager;->cmdOpenWelcomePage(Landroid/net/Uri;Ljava/lang/CharSequence;)V

    :goto_0
    return v1

    .line 253
    :cond_0
    invoke-virtual {p0}, Lmobi/beyondpod/ui/settings/SettingsView;->finish()V

    return v0

    .line 298
    :cond_1
    invoke-static {}, Lmobi/beyondpod/ui/views/notifications/UserNotificationManager;->resetDefaultPrefs()V

    const p1, 0x7f1002ff

    .line 299
    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_a
        :pswitch_9
        :pswitch_8
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x7
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 7

    .line 216
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 219
    invoke-virtual {p0}, Lmobi/beyondpod/ui/settings/SettingsView;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const-string v1, "prefContent"

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    .line 220
    instance-of v1, v0, Lmobi/beyondpod/ui/settings/SettingsView$PrefsFragment;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 222
    invoke-virtual {p0}, Lmobi/beyondpod/ui/settings/SettingsView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f1003ce

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    check-cast v0, Lmobi/beyondpod/ui/settings/SettingsView$PrefsFragment;

    .line 223
    invoke-virtual {v0}, Lmobi/beyondpod/ui/settings/SettingsView$PrefsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    .line 222
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    const/4 v1, 0x1

    if-eqz v0, :cond_2

    const/4 v0, 0x7

    const v3, 0x7f1001ce

    .line 228
    invoke-interface {p1, v2, v0, v1, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    const/16 v0, 0x8

    const v3, 0x7f10000c

    const/4 v4, 0x2

    .line 229
    invoke-interface {p1, v2, v0, v4, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    const v0, 0x7f100044

    const/4 v3, 0x3

    .line 231
    invoke-interface {p1, v2, v2, v3, v0}, Landroid/view/Menu;->addSubMenu(IIII)Landroid/view/SubMenu;

    move-result-object v0

    const/16 v5, 0x9

    const v6, 0x7f100015

    .line 232
    invoke-interface {v0, v2, v5, v1, v6}, Landroid/view/SubMenu;->add(IIII)Landroid/view/MenuItem;

    const/16 v5, 0xb

    const v6, 0x7f100045

    .line 233
    invoke-interface {v0, v2, v5, v4, v6}, Landroid/view/SubMenu;->add(IIII)Landroid/view/MenuItem;

    const/16 v4, 0xa

    const v5, 0x7f100042

    .line 234
    invoke-interface {v0, v2, v4, v3, v5}, Landroid/view/SubMenu;->add(IIII)Landroid/view/MenuItem;

    const/16 v3, 0xd

    const v4, 0x7f100043

    const/4 v5, 0x4

    .line 235
    invoke-interface {v0, v2, v3, v5, v4}, Landroid/view/SubMenu;->add(IIII)Landroid/view/MenuItem;

    .line 237
    invoke-static {}, Lmobi/beyondpod/sync/ChangeTracker;->isSyncLicenseValid()Z

    move-result v3

    if-eqz v3, :cond_1

    const/16 v3, 0xe

    const/4 v4, 0x5

    const v6, 0x7f1000ff

    .line 238
    invoke-interface {v0, v2, v3, v4, v6}, Landroid/view/SubMenu;->add(IIII)Landroid/view/MenuItem;

    :cond_1
    const v0, 0x7f100032

    .line 240
    invoke-interface {p1, v2, v1, v5, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    :cond_2
    return v1
.end method

.method public snapshotFailed(Ljava/lang/String;)V
    .locals 3

    .line 331
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to read Android Log file!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 334
    invoke-static {p1}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string p1, ""

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\n\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    .line 331
    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 336
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public snapshotPrepared()V
    .locals 2

    .line 325
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->logcatFilePath()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lmobi/beyondpod/ui/commands/CommandManager;->cmdViewFileContent(Ljava/lang/String;Z)V

    return-void
.end method
