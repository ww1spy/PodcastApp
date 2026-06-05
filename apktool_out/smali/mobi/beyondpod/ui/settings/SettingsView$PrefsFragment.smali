.class public Lmobi/beyondpod/ui/settings/SettingsView$PrefsFragment;
.super Landroid/preference/PreferenceFragment;
.source "SettingsView.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobi/beyondpod/ui/settings/SettingsView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PrefsFragment"
.end annotation


# instance fields
.field _SpaceSaversListener:Landroid/preference/Preference$OnPreferenceChangeListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 339
    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    .line 341
    new-instance v0, Lmobi/beyondpod/ui/settings/SettingsView$PrefsFragment$1;

    invoke-direct {v0, p0}, Lmobi/beyondpod/ui/settings/SettingsView$PrefsFragment$1;-><init>(Lmobi/beyondpod/ui/settings/SettingsView$PrefsFragment;)V

    iput-object v0, p0, Lmobi/beyondpod/ui/settings/SettingsView$PrefsFragment;->_SpaceSaversListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    return-void
.end method

.method static synthetic access$000(Lmobi/beyondpod/ui/settings/SettingsView$PrefsFragment;Ljava/lang/String;)V
    .locals 0

    .line 339
    invoke-direct {p0, p1}, Lmobi/beyondpod/ui/settings/SettingsView$PrefsFragment;->applySettings(Ljava/lang/String;)V

    return-void
.end method

.method private applySettings(Ljava/lang/String;)V
    .locals 9

    const-string v0, "DefaultPodcastDownloadAction"

    .line 602
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 605
    invoke-static {}, Lmobi/beyondpod/rsscore/repository/FeedRepository;->getRootFeed()Lmobi/beyondpod/rsscore/Feed;

    move-result-object p1

    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/Feed;->subFeeds()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    move v0, v1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmobi/beyondpod/rsscore/Feed;

    .line 607
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->getGlobalDefaultPodcastDownloadAction()I

    move-result v4

    invoke-virtual {v3, v4}, Lmobi/beyondpod/rsscore/Feed;->setPodcastDownloadAction(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 614
    :cond_0
    invoke-static {}, Lmobi/beyondpod/rsscore/repository/FeedRepository;->getRootFeed()Lmobi/beyondpod/rsscore/Feed;

    move-result-object v0

    invoke-virtual {v0}, Lmobi/beyondpod/rsscore/Feed;->subFeeds()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move v3, v1

    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lmobi/beyondpod/rsscore/Feed;

    .line 616
    invoke-virtual {v4}, Lmobi/beyondpod/rsscore/Feed;->getType()I

    move-result v5

    if-eq v5, v2, :cond_1

    .line 617
    invoke-virtual {v4}, Lmobi/beyondpod/rsscore/Feed;->getPodcastDownloadAction()I

    move-result v5

    if-eqz v5, :cond_1

    .line 618
    invoke-virtual {v4}, Lmobi/beyondpod/rsscore/Feed;->getPodcastDownloadAction()I

    move-result v5

    const/4 v6, 0x3

    if-eq v5, v6, :cond_1

    .line 620
    invoke-virtual {v4}, Lmobi/beyondpod/rsscore/Feed;->getKeepAtMostPodcasts()I

    move-result v5

    .line 621
    invoke-virtual {v4}, Lmobi/beyondpod/rsscore/Feed;->getMaxNumberPodcastToDownload()I

    move-result v6

    .line 622
    invoke-virtual {v4}, Lmobi/beyondpod/rsscore/Feed;->getMaximumPodcastAge()Lmobi/beyondpod/rsscore/helpers/TimeSpan;

    move-result-object v7

    const-string v8, "DefaultKeepAtMostPodcasts"

    .line 624
    invoke-virtual {p1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 626
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->getGlobalDefaultKeepAtMostPodcasts()I

    move-result v5

    goto :goto_2

    :cond_2
    const-string v8, "DefaultNumberPodcastsToDownload"

    .line 628
    invoke-virtual {p1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 630
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->getGlobalDefaultNumberPodcastsToDownload()I

    move-result v6

    goto :goto_2

    :cond_3
    const-string v8, "DefaultMaximumPodcastAge"

    .line 632
    invoke-virtual {p1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 634
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->getGlobalDefaultMaximumPodcastAge()Lmobi/beyondpod/rsscore/helpers/TimeSpan;

    move-result-object v7

    :cond_4
    :goto_2
    if-ge v5, v6, :cond_5

    goto :goto_1

    .line 640
    :cond_5
    invoke-static {v4, v5, v7, v1}, Lmobi/beyondpod/rsscore/repository/FeedRepository;->getOldTracksForFeed(Lmobi/beyondpod/rsscore/Feed;ILmobi/beyondpod/rsscore/helpers/TimeSpan;Z)Lmobi/beyondpod/rsscore/TrackList;

    move-result-object v8

    invoke-virtual {v8}, Lmobi/beyondpod/rsscore/TrackList;->size()I

    move-result v8

    if-lez v8, :cond_6

    goto :goto_1

    .line 643
    :cond_6
    invoke-virtual {v4}, Lmobi/beyondpod/rsscore/Feed;->getKeepAtMostPodcasts()I

    move-result v8

    if-eq v8, v5, :cond_7

    .line 645
    invoke-virtual {v4, v5}, Lmobi/beyondpod/rsscore/Feed;->setKeepAtMostPodcasts(I)V

    add-int/lit8 v3, v3, 0x1

    .line 649
    :cond_7
    invoke-virtual {v4}, Lmobi/beyondpod/rsscore/Feed;->getMaxNumberPodcastToDownload()I

    move-result v5

    if-eq v5, v6, :cond_8

    .line 651
    invoke-virtual {v4, v6}, Lmobi/beyondpod/rsscore/Feed;->setMaxNumberPodcastsToDownload(I)V

    add-int/lit8 v3, v3, 0x1

    .line 655
    :cond_8
    invoke-virtual {v4}, Lmobi/beyondpod/rsscore/Feed;->getMaximumPodcastAge()Lmobi/beyondpod/rsscore/helpers/TimeSpan;

    move-result-object v5

    invoke-virtual {v5, v7}, Lmobi/beyondpod/rsscore/helpers/TimeSpan;->compareTo(Lmobi/beyondpod/rsscore/helpers/TimeSpan;)I

    move-result v5

    if-eqz v5, :cond_1

    .line 657
    invoke-virtual {v4, v7}, Lmobi/beyondpod/rsscore/Feed;->setMaximumPodcastAge(Lmobi/beyondpod/rsscore/helpers/TimeSpan;)V

    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1

    :cond_9
    move v0, v3

    .line 664
    :cond_a
    invoke-static {}, Lmobi/beyondpod/rsscore/repository/FeedRepository;->saveRepositoryAsync()V

    .line 665
    invoke-virtual {p0}, Lmobi/beyondpod/ui/settings/SettingsView$PrefsFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p0}, Lmobi/beyondpod/ui/settings/SettingsView$PrefsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f10036f

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    invoke-virtual {v3, v4, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 666
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method private askToApplySettings(Ljava/lang/String;)V
    .locals 3

    .line 584
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lmobi/beyondpod/ui/settings/SettingsView$PrefsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f1003a7

    .line 585
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "DefaultPodcastDownloadAction"

    .line 587
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x7f1003a4

    goto :goto_0

    :cond_0
    const v1, 0x7f1003a8

    .line 586
    :goto_0
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f1003a6

    new-instance v2, Lmobi/beyondpod/ui/settings/SettingsView$PrefsFragment$2;

    invoke-direct {v2, p0, p1}, Lmobi/beyondpod/ui/settings/SettingsView$PrefsFragment$2;-><init>(Lmobi/beyondpod/ui/settings/SettingsView$PrefsFragment;Ljava/lang/String;)V

    .line 590
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const v0, 0x7f1003a5

    const/4 v1, 0x0

    .line 596
    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private patchPreferenceHeaders()V
    .locals 4

    .line 418
    new-instance v0, Landroid/content/ComponentName;

    invoke-virtual {p0}, Lmobi/beyondpod/ui/settings/SettingsView$PrefsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lmobi/beyondpod/ui/settings/SettingsView;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 419
    :goto_0
    invoke-virtual {p0}, Lmobi/beyondpod/ui/settings/SettingsView$PrefsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v2}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v2

    if-eq v1, v2, :cond_1

    .line 421
    invoke-virtual {p0}, Lmobi/beyondpod/ui/settings/SettingsView$PrefsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v2

    .line 422
    invoke-virtual {v2}, Landroid/preference/Preference;->getIntent()Landroid/content/Intent;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 423
    invoke-virtual {v2}, Landroid/preference/Preference;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private updatePreferenceHeaders()V
    .locals 8

    .line 671
    invoke-virtual {p0}, Lmobi/beyondpod/ui/settings/SettingsView$PrefsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "HeaderCDS"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 674
    invoke-static {}, Lmobi/beyondpod/sync/ChangeTracker;->isTrackingEnabled()Z

    move-result v3

    if-nez v3, :cond_0

    const v3, 0x7f100347

    .line 675
    invoke-virtual {v0, v3}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_0

    .line 678
    :cond_0
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->lastSyncTimeStamp()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-lez v7, :cond_1

    const v3, 0x7f1000f9

    .line 679
    new-array v4, v1, [Ljava/lang/Object;

    new-instance v5, Ljava/util/Date;

    .line 680
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->lastSyncTimeStamp()J

    move-result-wide v6

    invoke-direct {v5, v6, v7}, Ljava/util/Date;-><init>(J)V

    invoke-static {v5}, Lmobi/beyondpod/rsscore/helpers/DateTime;->formatDateTime(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    .line 679
    invoke-virtual {p0, v3, v4}, Lmobi/beyondpod/ui/settings/SettingsView$PrefsFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    const-string v3, ""

    .line 682
    invoke-virtual {v0, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 685
    :goto_0
    invoke-static {}, Lmobi/beyondpod/sync/ChangeTracker;->isSyncLicenseValid()Z

    move-result v3

    if-nez v3, :cond_2

    const/4 v3, 0x0

    .line 687
    invoke-virtual {v0, v3}, Landroid/preference/Preference;->setIntent(Landroid/content/Intent;)V

    const v3, 0x7f100102

    .line 688
    invoke-virtual {v0, v3}, Landroid/preference/Preference;->setSummary(I)V

    .line 692
    :cond_2
    invoke-virtual {p0}, Lmobi/beyondpod/ui/settings/SettingsView$PrefsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v3, "HeaderAbout"

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 695
    invoke-virtual {p0}, Lmobi/beyondpod/ui/settings/SettingsView$PrefsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lmobi/beyondpod/rsscore/Configuration;->productVersionAsString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 698
    :cond_3
    invoke-virtual {p0}, Lmobi/beyondpod/ui/settings/SettingsView$PrefsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v3, "HeaderBackup"

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 701
    invoke-static {}, Lmobi/beyondpod/rsscore/BackupRestore;->enumerateRestoreZipFiles()[Ljava/io/File;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 702
    array-length v4, v3

    if-nez v4, :cond_4

    goto :goto_1

    :cond_4
    const v4, 0x7f1000b6

    .line 705
    new-array v1, v1, [Ljava/lang/Object;

    aget-object v3, v3, v2

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p0, v4, v1}, Lmobi/beyondpod/ui/settings/SettingsView$PrefsFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_5
    :goto_1
    const-string v1, ""

    .line 703
    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_6
    :goto_2
    return-void
.end method


# virtual methods
.method loadPreferenceScreen()V
    .locals 2

    const-string v0, "NormalHeaders"

    .line 389
    invoke-virtual {p0}, Lmobi/beyondpod/ui/settings/SettingsView$PrefsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 390
    invoke-virtual {p0}, Lmobi/beyondpod/ui/settings/SettingsView$PrefsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "PreferenceScreen"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    const-string v1, "UpdatePreference"

    .line 392
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const v0, 0x7f130012

    .line 393
    invoke-virtual {p0, v0}, Lmobi/beyondpod/ui/settings/SettingsView$PrefsFragment;->addPreferencesFromResource(I)V

    goto/16 :goto_0

    :cond_1
    const-string v1, "FeedDfaultsPreference"

    .line 394
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const v0, 0x7f13000c

    .line 395
    invoke-virtual {p0, v0}, Lmobi/beyondpod/ui/settings/SettingsView$PrefsFragment;->addPreferencesFromResource(I)V

    goto :goto_0

    :cond_2
    const-string v1, "GeneralPreference"

    .line 396
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const v0, 0x7f13000d

    .line 397
    invoke-virtual {p0, v0}, Lmobi/beyondpod/ui/settings/SettingsView$PrefsFragment;->addPreferencesFromResource(I)V

    goto :goto_0

    :cond_3
    const-string v1, "PlayerPreference"

    .line 398
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const v0, 0x7f13000f

    .line 399
    invoke-virtual {p0, v0}, Lmobi/beyondpod/ui/settings/SettingsView$PrefsFragment;->addPreferencesFromResource(I)V

    goto :goto_0

    :cond_4
    const-string v1, "PlaylistPreference"

    .line 400
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const v0, 0x7f130011

    .line 401
    invoke-virtual {p0, v0}, Lmobi/beyondpod/ui/settings/SettingsView$PrefsFragment;->addPreferencesFromResource(I)V

    goto :goto_0

    :cond_5
    const-string v1, "AdvancedPreference"

    .line 402
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    const/high16 v0, 0x7f130000

    .line 403
    invoke-virtual {p0, v0}, Lmobi/beyondpod/ui/settings/SettingsView$PrefsFragment;->addPreferencesFromResource(I)V

    goto :goto_0

    :cond_6
    const-string v1, "HeadsetButtonPreference"

    .line 404
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    const v0, 0x7f13000e

    .line 405
    invoke-virtual {p0, v0}, Lmobi/beyondpod/ui/settings/SettingsView$PrefsFragment;->addPreferencesFromResource(I)V

    goto :goto_0

    :cond_7
    const-string v1, "PauseResumePreference"

    .line 406
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    const v0, 0x7f130010

    .line 407
    invoke-virtual {p0, v0}, Lmobi/beyondpod/ui/settings/SettingsView$PrefsFragment;->addPreferencesFromResource(I)V

    goto :goto_0

    :cond_8
    const-string v1, "PublicHeaders"

    .line 408
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const v0, 0x7f13000b

    .line 409
    invoke-virtual {p0, v0}, Lmobi/beyondpod/ui/settings/SettingsView$PrefsFragment;->addPreferencesFromResource(I)V

    .line 411
    :cond_9
    :goto_0
    invoke-direct {p0}, Lmobi/beyondpod/ui/settings/SettingsView$PrefsFragment;->patchPreferenceHeaders()V

    .line 413
    invoke-virtual {p0}, Lmobi/beyondpod/ui/settings/SettingsView$PrefsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p0}, Lmobi/beyondpod/ui/settings/SettingsView$PrefsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1}, Landroid/preference/PreferenceScreen;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 372
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 374
    invoke-virtual {p0}, Lmobi/beyondpod/ui/settings/SettingsView$PrefsFragment;->loadPreferenceScreen()V

    .line 376
    invoke-virtual {p0}, Lmobi/beyondpod/ui/settings/SettingsView$PrefsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object p1

    const-string v0, "DefaultNumberPodcastsToDownload"

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 378
    iget-object v0, p0, Lmobi/beyondpod/ui/settings/SettingsView$PrefsFragment;->_SpaceSaversListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    invoke-virtual {p1, v0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 380
    :cond_0
    invoke-virtual {p0}, Lmobi/beyondpod/ui/settings/SettingsView$PrefsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object p1

    const-string v0, "DefaultKeepAtMostPodcasts"

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 382
    iget-object v0, p0, Lmobi/beyondpod/ui/settings/SettingsView$PrefsFragment;->_SpaceSaversListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    invoke-virtual {p1, v0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    :cond_1
    return-void
.end method

.method public onPause()V
    .locals 1

    .line 500
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onPause()V

    .line 503
    invoke-virtual {p0}, Lmobi/beyondpod/ui/settings/SettingsView$PrefsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    return-void
.end method

.method public onResume()V
    .locals 4

    .line 430
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onResume()V

    .line 432
    invoke-direct {p0}, Lmobi/beyondpod/ui/settings/SettingsView$PrefsFragment;->updatePreferenceHeaders()V

    .line 435
    invoke-virtual {p0}, Lmobi/beyondpod/ui/settings/SettingsView$PrefsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 436
    invoke-static {}, Lmobi/beyondpod/aggregators/AggregatorLoginHelper;->isLoggedIn()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lmobi/beyondpod/aggregators/AggregatorLoginHelper;->getAllAggregatorFeeds()Lmobi/beyondpod/rsscore/FeedList;

    move-result-object v0

    invoke-virtual {v0}, Lmobi/beyondpod/rsscore/FeedList;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 438
    invoke-virtual {p0}, Lmobi/beyondpod/ui/settings/SettingsView$PrefsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "DisconnectAggregatorFeeds"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 441
    invoke-virtual {p0}, Lmobi/beyondpod/ui/settings/SettingsView$PrefsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 445
    :cond_0
    invoke-virtual {p0}, Lmobi/beyondpod/ui/settings/SettingsView$PrefsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    sget-object v1, Lmobi/beyondpod/rsscore/ExcludeFromOptimizationsPreference;->KEY:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 448
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-ge v1, v2, :cond_1

    const/4 v1, 0x0

    .line 449
    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_0

    .line 451
    :cond_1
    check-cast v0, Lmobi/beyondpod/rsscore/ExcludeFromOptimizationsPreference;

    invoke-virtual {v0}, Lmobi/beyondpod/rsscore/ExcludeFromOptimizationsPreference;->refresh()V

    .line 454
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lmobi/beyondpod/ui/settings/SettingsView$PrefsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "customSDCardLocation"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 457
    check-cast v0, Lmobi/beyondpod/rsscore/DownloadFolderPreference;

    invoke-virtual {v0}, Lmobi/beyondpod/rsscore/DownloadFolderPreference;->refresh()V

    .line 460
    :cond_3
    invoke-virtual {p0}, Lmobi/beyondpod/ui/settings/SettingsView$PrefsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "PreferLastSDCardRoot"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 463
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lmobi/beyondpod/ui/settings/SettingsView$PrefsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f1003a2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 464
    invoke-static {}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->externalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 463
    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 467
    :cond_4
    invoke-virtual {p0}, Lmobi/beyondpod/ui/settings/SettingsView$PrefsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "ScheduledUpdatesPreference"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 470
    check-cast v0, Lmobi/beyondpod/rsscore/ScheduledUpdatesPreference;

    invoke-virtual {v0}, Lmobi/beyondpod/rsscore/ScheduledUpdatesPreference;->refresh()V

    .line 473
    :cond_5
    sget-boolean v0, Lmobi/beyondpod/ui/dialogs/MoveFilesDialog;->_isRunning:Z

    if-eqz v0, :cond_6

    .line 475
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lmobi/beyondpod/BeyondPodApplication;->getInstance()Lmobi/beyondpod/BeyondPodApplication;

    move-result-object v1

    const-class v2, Lmobi/beyondpod/ui/dialogs/MoveFilesDialog;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 476
    invoke-static {v0}, Lmobi/beyondpod/ui/commands/CommandManager;->startActivity(Landroid/content/Intent;)V

    .line 479
    :cond_6
    invoke-static {}, Lmobi/beyondpod/services/player/smartplay/SmartPlaylistManager;->isConfigured()Z

    move-result v0

    if-nez v0, :cond_8

    .line 481
    invoke-virtual {p0}, Lmobi/beyondpod/ui/settings/SettingsView$PrefsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "playlist_preferences_category"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 482
    instance-of v1, v0, Landroid/preference/PreferenceGroup;

    if-eqz v1, :cond_8

    .line 484
    check-cast v0, Landroid/preference/PreferenceGroup;

    const-string v1, "AutoSyncSmartPlay"

    .line 486
    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 488
    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    :cond_7
    const-string v1, "KeepCurrentEpisodeForDefferAutoSyncSmartPlay"

    .line 490
    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    if-eqz v1, :cond_8

    .line 492
    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    :cond_8
    return-void
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 6

    const-string v0, "EnableHeadsetButton"

    .line 508
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 514
    invoke-static {}, Lmobi/beyondpod/BeyondPodApplication;->getInstance()Lmobi/beyondpod/BeyondPodApplication;

    move-result-object v0

    invoke-virtual {v0}, Lmobi/beyondpod/BeyondPodApplication;->playList()Lmobi/beyondpod/services/player/PlayList;

    move-result-object v0

    invoke-virtual {v0}, Lmobi/beyondpod/services/player/PlayList;->playlistSize()I

    move-result v0

    if-lez v0, :cond_0

    .line 517
    invoke-static {}, Lmobi/beyondpod/services/player/MediaButtonIntentReceiver;->stopListeningForMediaButton()V

    .line 518
    invoke-static {}, Lmobi/beyondpod/services/player/MediaButtonIntentReceiver;->startListeningForMediaButton()V

    :cond_0
    const-string v0, "SharePodcasts"

    .line 522
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 524
    invoke-interface {p1, p2, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 525
    invoke-static {v0}, Lmobi/beyondpod/rsscore/StartupContentBuilder;->addRemoveNoMediaFile(Z)V

    if-nez v0, :cond_1

    .line 529
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lmobi/beyondpod/ui/settings/SettingsView$PrefsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f10017b

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v3, 0x7f100350

    .line 530
    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v3, 0x7f100092

    .line 531
    invoke-virtual {v0, v3, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    :cond_1
    const-string v0, "PreventKeyguard"

    .line 535
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v3, 0x1

    if-eqz v0, :cond_2

    .line 537
    invoke-virtual {p0}, Lmobi/beyondpod/ui/settings/SettingsView$PrefsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v4, 0x7f1003ac

    invoke-static {v0, v4, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_2
    const-string v0, "OrientationLock"

    .line 540
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 542
    invoke-virtual {p0}, Lmobi/beyondpod/ui/settings/SettingsView$PrefsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v4, 0x7f1003ab

    invoke-static {v0, v4, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 543
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_3
    const-string v0, "DefaultNumberPodcastsToDownload"

    .line 546
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "DefaultKeepAtMostPodcasts"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "DefaultMaximumPodcastAge"

    .line 547
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "DefaultPodcastDownloadAction"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 549
    :cond_4
    invoke-direct {p0, p2}, Lmobi/beyondpod/ui/settings/SettingsView$PrefsFragment;->askToApplySettings(Ljava/lang/String;)V

    :cond_5
    const-string v0, "widgetBackgroundColor"

    .line 552
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "WidgetSecondaryButtonAction"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 553
    :cond_6
    sget-object v0, Lmobi/beyondpod/BeyondPodApplication;->messageBus:Lmobi/beyondpod/rsscore/helpers/SimpleMessageBus;

    new-instance v4, Lmobi/beyondpod/services/player/PlayListEvents$PlayListEvent;

    invoke-static {}, Lmobi/beyondpod/BeyondPodApplication;->getInstance()Lmobi/beyondpod/BeyondPodApplication;

    move-result-object v5

    .line 554
    invoke-virtual {v5}, Lmobi/beyondpod/BeyondPodApplication;->playList()Lmobi/beyondpod/services/player/PlayList;

    move-result-object v5

    invoke-direct {v4, v5, v2}, Lmobi/beyondpod/services/player/PlayListEvents$PlayListEvent;-><init>(Lmobi/beyondpod/services/player/PlayList;I)V

    .line 553
    invoke-virtual {v0, v4}, Lmobi/beyondpod/rsscore/helpers/SimpleMessageBus;->publishEvent(Ljava/util/EventObject;)V

    :cond_7
    const-string v0, "PlayerSupportedFileExtensions"

    .line 558
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 559
    invoke-static {}, Lmobi/beyondpod/rsscore/Track;->reloadSupportedFileTypes()V

    :cond_8
    const-string v0, "showCDSSettings"

    .line 564
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 566
    invoke-interface {p1, p2, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 569
    new-instance p1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lmobi/beyondpod/ui/settings/SettingsView$PrefsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v0, 0x7f10007d

    .line 570
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const v0, 0x7f10007c

    .line 571
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const v0, 0x7f10008c

    .line 572
    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    :cond_9
    const-string p1, "GatherAnalyticsData"

    .line 576
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a

    .line 578
    invoke-static {}, Lmobi/beyondpod/BeyondPodApplication;->getInstance()Lmobi/beyondpod/BeyondPodApplication;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/analytics/GoogleAnalytics;->getInstance(Landroid/content/Context;)Lcom/google/android/gms/analytics/GoogleAnalytics;

    move-result-object p1

    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->gatherAnalyticsData()Z

    move-result p2

    xor-int/2addr p2, v3

    invoke-virtual {p1, p2}, Lcom/google/android/gms/analytics/GoogleAnalytics;->setAppOptOut(Z)V

    :cond_a
    return-void
.end method
