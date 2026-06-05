.class public Lmobi/beyondpod/ui/views/myepisodesview/cards/InfoCardManager;
.super Ljava/lang/Object;
.source "InfoCardManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmobi/beyondpod/ui/views/myepisodesview/cards/InfoCardManager$IInfoCardAdapterOwner;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static generateInfoCardIfNeeded(Landroid/content/Context;Lmobi/beyondpod/ui/views/myepisodesview/cards/InfoCardManager$IInfoCardAdapterOwner;)Lmobi/beyondpod/ui/views/base/columnlistview/SectionedListViewAdapter$ISectionedAdapter;
    .locals 2

    const/4 v0, 0x1

    .line 40
    invoke-static {v0}, Lmobi/beyondpod/ui/views/notifications/UserNotificationManager;->isNotificationEnabledFor(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 41
    new-instance v0, Lmobi/beyondpod/ui/views/myepisodesview/cards/InfoCardGuidedTour;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, p1}, Lmobi/beyondpod/ui/views/myepisodesview/cards/InfoCardGuidedTour;-><init>(Landroid/content/Context;ILmobi/beyondpod/ui/views/myepisodesview/cards/InfoCardManager$IInfoCardAdapterOwner;)V

    return-object v0

    :cond_0
    const/4 v1, 0x2

    .line 44
    invoke-static {v1}, Lmobi/beyondpod/ui/views/notifications/UserNotificationManager;->isNotificationEnabledFor(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 45
    new-instance v1, Lmobi/beyondpod/ui/views/myepisodesview/cards/InfoCardGuidedTour;

    invoke-direct {v1, p0, v0, p1}, Lmobi/beyondpod/ui/views/myepisodesview/cards/InfoCardGuidedTour;-><init>(Landroid/content/Context;ILmobi/beyondpod/ui/views/myepisodesview/cards/InfoCardManager$IInfoCardAdapterOwner;)V

    return-object v1

    .line 50
    :cond_1
    invoke-static {p0, p1}, Lmobi/beyondpod/ui/views/myepisodesview/cards/InfoCardManager;->getBroadcastNotification(Landroid/content/Context;Lmobi/beyondpod/ui/views/myepisodesview/cards/InfoCardManager$IInfoCardAdapterOwner;)Lmobi/beyondpod/ui/views/base/columnlistview/SectionedListViewAdapter$ISectionedAdapter;

    move-result-object v0

    if-eqz v0, :cond_2

    return-object v0

    .line 55
    :cond_2
    invoke-static {p0, p1}, Lmobi/beyondpod/ui/views/myepisodesview/cards/InfoCardManager;->getExpirationWarningCard(Landroid/content/Context;Lmobi/beyondpod/ui/views/myepisodesview/cards/InfoCardManager$IInfoCardAdapterOwner;)Lmobi/beyondpod/ui/views/base/columnlistview/SectionedListViewAdapter$ISectionedAdapter;

    move-result-object v0

    if-eqz v0, :cond_3

    return-object v0

    .line 60
    :cond_3
    invoke-static {p0, p1}, Lmobi/beyondpod/ui/views/myepisodesview/cards/InfoCardManager;->getInstalledOnSDCArd(Landroid/content/Context;Lmobi/beyondpod/ui/views/myepisodesview/cards/InfoCardManager$IInfoCardAdapterOwner;)Lmobi/beyondpod/ui/views/base/columnlistview/SectionedListViewAdapter$ISectionedAdapter;

    move-result-object v0

    if-eqz v0, :cond_4

    return-object v0

    .line 65
    :cond_4
    invoke-static {p0, p1}, Lmobi/beyondpod/ui/views/myepisodesview/cards/InfoCardManager;->getIntroChromecastCard(Landroid/content/Context;Lmobi/beyondpod/ui/views/myepisodesview/cards/InfoCardManager$IInfoCardAdapterOwner;)Lmobi/beyondpod/ui/views/base/columnlistview/SectionedListViewAdapter$ISectionedAdapter;

    move-result-object v0

    if-eqz v0, :cond_5

    return-object v0

    .line 70
    :cond_5
    invoke-static {p0, p1}, Lmobi/beyondpod/ui/views/myepisodesview/cards/InfoCardManager;->getIntroCompactCards(Landroid/content/Context;Lmobi/beyondpod/ui/views/myepisodesview/cards/InfoCardManager$IInfoCardAdapterOwner;)Lmobi/beyondpod/ui/views/base/columnlistview/SectionedListViewAdapter$ISectionedAdapter;

    move-result-object v0

    if-eqz v0, :cond_6

    return-object v0

    .line 75
    :cond_6
    invoke-static {p0, p1}, Lmobi/beyondpod/ui/views/myepisodesview/cards/InfoCardManager;->getIntroMultiSelectCard(Landroid/content/Context;Lmobi/beyondpod/ui/views/myepisodesview/cards/InfoCardManager$IInfoCardAdapterOwner;)Lmobi/beyondpod/ui/views/base/columnlistview/SectionedListViewAdapter$ISectionedAdapter;

    move-result-object v0

    if-eqz v0, :cond_7

    return-object v0

    .line 80
    :cond_7
    invoke-static {p0, p1}, Lmobi/beyondpod/ui/views/myepisodesview/cards/InfoCardManager;->getIntroSmartPlay(Landroid/content/Context;Lmobi/beyondpod/ui/views/myepisodesview/cards/InfoCardManager$IInfoCardAdapterOwner;)Lmobi/beyondpod/ui/views/base/columnlistview/SectionedListViewAdapter$ISectionedAdapter;

    move-result-object p0

    if-eqz p0, :cond_8

    return-object p0

    :cond_8
    const/4 p0, 0x0

    return-object p0
.end method

.method private static getBroadcastNotification(Landroid/content/Context;Lmobi/beyondpod/ui/views/myepisodesview/cards/InfoCardManager$IInfoCardAdapterOwner;)Lmobi/beyondpod/ui/views/base/columnlistview/SectionedListViewAdapter$ISectionedAdapter;
    .locals 8

    .line 134
    sget-object v0, Lmobi/beyondpod/downloadengine/VersionCheckManager;->VersionInfo:Lmobi/beyondpod/downloadengine/VersionCheckManager$VersionInformation;

    invoke-virtual {v0}, Lmobi/beyondpod/downloadengine/VersionCheckManager$VersionInformation;->getCustomizedMessage()Lmobi/beyondpod/ui/views/notifications/Message;

    move-result-object v0

    .line 136
    invoke-virtual {v0}, Lmobi/beyondpod/ui/views/notifications/Message;->hasText()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->notifyForBetaReleases()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 137
    sget-object v0, Lmobi/beyondpod/downloadengine/VersionCheckManager;->VersionInfo:Lmobi/beyondpod/downloadengine/VersionCheckManager$VersionInformation;

    iget-object v0, v0, Lmobi/beyondpod/downloadengine/VersionCheckManager$VersionInformation;->BetaUsers:Lmobi/beyondpod/ui/views/notifications/Message;

    :cond_0
    move-object v3, v0

    .line 139
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->getNextNotificationTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Date;->compareTo(Ljava/util/Date;)I

    move-result v0

    if-lez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 143
    :goto_0
    invoke-virtual {v3}, Lmobi/beyondpod/ui/views/notifications/Message;->hasText()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v3}, Lmobi/beyondpod/ui/views/notifications/Message;->isExpired()Z

    move-result v1

    if-nez v1, :cond_2

    if-eqz v0, :cond_2

    .line 145
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0}, Ljava/util/GregorianCalendar;-><init>()V

    const/16 v1, 0xa

    .line 146
    iget v2, v3, Lmobi/beyondpod/ui/views/notifications/Message;->RepeatInterval:I

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->add(II)V

    .line 148
    new-instance v7, Lmobi/beyondpod/ui/views/myepisodesview/cards/InfoCardTip;

    new-instance v4, Lmobi/beyondpod/ui/views/myepisodesview/cards/InfoCardManager$1;

    invoke-direct {v4, v0}, Lmobi/beyondpod/ui/views/myepisodesview/cards/InfoCardManager$1;-><init>(Ljava/util/Calendar;)V

    const/4 v5, 0x3

    move-object v1, v7

    move-object v2, p0

    move-object v6, p1

    invoke-direct/range {v1 .. v6}, Lmobi/beyondpod/ui/views/myepisodesview/cards/InfoCardTip;-><init>(Landroid/content/Context;Lmobi/beyondpod/ui/views/notifications/Message;Lmobi/beyondpod/ui/views/myepisodesview/cards/InfoCardTip$IOnGotItAction;ILmobi/beyondpod/ui/views/myepisodesview/cards/InfoCardManager$IInfoCardAdapterOwner;)V

    return-object v7

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method private static getExpirationWarningCard(Landroid/content/Context;Lmobi/beyondpod/ui/views/myepisodesview/cards/InfoCardManager$IInfoCardAdapterOwner;)Lmobi/beyondpod/ui/views/base/columnlistview/SectionedListViewAdapter$ISectionedAdapter;
    .locals 3

    .line 105
    invoke-static {}, Lmobi/beyondpod/rsscore/rss/PolicyManager;->isUnlocked()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 108
    :cond_0
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 110
    invoke-static {}, Lmobi/beyondpod/rsscore/rss/LicenseManager;->trialExpirationWarningDate()Ljava/util/Date;

    .line 111
    invoke-static {}, Lmobi/beyondpod/rsscore/rss/LicenseManager;->trialExpirationDate()Ljava/util/Date;

    .line 112
    invoke-static {}, Lmobi/beyondpod/rsscore/rss/LicenseManager;->trialExpiresInDays()I

    .line 114
    invoke-static {}, Lmobi/beyondpod/rsscore/rss/LicenseManager;->trialExpirationWarningDate()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/Date;->compareTo(Ljava/util/Date;)I

    move-result v0

    if-lez v0, :cond_2

    .line 116
    invoke-static {}, Lmobi/beyondpod/rsscore/rss/LicenseManager;->ifInRestrictedMode()Z

    move-result v0

    if-nez v0, :cond_1

    .line 119
    invoke-static {}, Lmobi/beyondpod/rsscore/rss/LicenseManager;->trialExpiresInDays()I

    move-result v0

    if-lez v0, :cond_2

    .line 120
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->trialExpirationWarningDays()I

    move-result v2

    if-eq v2, v0, :cond_2

    .line 121
    new-instance v0, Lmobi/beyondpod/ui/views/myepisodesview/cards/InfoCardGuidedTour;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1, p1}, Lmobi/beyondpod/ui/views/myepisodesview/cards/InfoCardGuidedTour;-><init>(Landroid/content/Context;ILmobi/beyondpod/ui/views/myepisodesview/cards/InfoCardManager$IInfoCardAdapterOwner;)V

    return-object v0

    :cond_1
    const/16 v0, 0xe

    .line 123
    invoke-static {v0}, Lmobi/beyondpod/ui/views/notifications/UserNotificationManager;->isNotificationEnabledFor(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 125
    new-instance v0, Lmobi/beyondpod/ui/views/myepisodesview/cards/InfoCardGuidedTour;

    const/4 v1, 0x3

    invoke-direct {v0, p0, v1, p1}, Lmobi/beyondpod/ui/views/myepisodesview/cards/InfoCardGuidedTour;-><init>(Landroid/content/Context;ILmobi/beyondpod/ui/views/myepisodesview/cards/InfoCardManager$IInfoCardAdapterOwner;)V

    return-object v0

    :cond_2
    return-object v1
.end method

.method private static getInstalledOnSDCArd(Landroid/content/Context;Lmobi/beyondpod/ui/views/myepisodesview/cards/InfoCardManager$IInfoCardAdapterOwner;)Lmobi/beyondpod/ui/views/base/columnlistview/SectionedListViewAdapter$ISectionedAdapter;
    .locals 7

    .line 89
    invoke-static {}, Lmobi/beyondpod/schedulercore/ScheduledTasksManager;->activeTaskCount()I

    move-result v0

    if-lez v0, :cond_0

    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->isInstalledOnSDCard()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    const/4 v0, 0x3

    .line 93
    invoke-static {v0}, Lmobi/beyondpod/ui/views/notifications/UserNotificationManager;->isNotificationEnabledFor(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 95
    new-instance v3, Lmobi/beyondpod/ui/views/notifications/Message;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f100170

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Lmobi/beyondpod/ui/views/notifications/Message;-><init>(Ljava/lang/String;)V

    .line 96
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f10017b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lmobi/beyondpod/ui/views/notifications/Message;->MessageTitle:Ljava/lang/String;

    .line 97
    new-instance v0, Lmobi/beyondpod/ui/views/myepisodesview/cards/InfoCardTip;

    const/4 v4, 0x3

    const/4 v5, 0x1

    move-object v1, v0

    move-object v2, p0

    move-object v6, p1

    invoke-direct/range {v1 .. v6}, Lmobi/beyondpod/ui/views/myepisodesview/cards/InfoCardTip;-><init>(Landroid/content/Context;Lmobi/beyondpod/ui/views/notifications/Message;IILmobi/beyondpod/ui/views/myepisodesview/cards/InfoCardManager$IInfoCardAdapterOwner;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private static getIntroChromecastCard(Landroid/content/Context;Lmobi/beyondpod/ui/views/myepisodesview/cards/InfoCardManager$IInfoCardAdapterOwner;)Lmobi/beyondpod/ui/views/base/columnlistview/SectionedListViewAdapter$ISectionedAdapter;
    .locals 8

    .line 163
    invoke-static {}, Lmobi/beyondpod/rsscore/repository/FeedRepository;->getTrackCount()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-static {}, Lmobi/beyondpod/downloadengine/UpdateAndDownloadManager;->isWorking()Z

    move-result v0

    if-nez v0, :cond_2

    .line 164
    invoke-static {}, Lmobi/beyondpod/services/player/impl/ChromecastDevice;->hasAvailableDevices()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    .line 165
    invoke-static {v0}, Lmobi/beyondpod/ui/views/notifications/UserNotificationManager;->isNotificationEnabledFor(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/16 v0, 0xf

    .line 168
    invoke-static {v0}, Lmobi/beyondpod/ui/views/notifications/UserNotificationManager;->isNotificationEnabledFor(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 170
    new-instance v4, Lmobi/beyondpod/ui/views/notifications/Message;

    invoke-direct {v4}, Lmobi/beyondpod/ui/views/notifications/Message;-><init>()V

    .line 171
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1003eb

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v4, Lmobi/beyondpod/ui/views/notifications/Message;->MessageText:Ljava/lang/String;

    .line 172
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1003ec

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v4, Lmobi/beyondpod/ui/views/notifications/Message;->MessageTitle:Ljava/lang/String;

    const v0, 0x7f0800fc

    .line 173
    iput v0, v4, Lmobi/beyondpod/ui/views/notifications/Message;->ImageResourceId:I

    .line 174
    new-instance v0, Lmobi/beyondpod/ui/views/myepisodesview/cards/InfoCardTip;

    const/16 v5, 0xf

    const/4 v6, 0x2

    move-object v2, v0

    move-object v3, p0

    move-object v7, p1

    invoke-direct/range {v2 .. v7}, Lmobi/beyondpod/ui/views/myepisodesview/cards/InfoCardTip;-><init>(Landroid/content/Context;Lmobi/beyondpod/ui/views/notifications/Message;IILmobi/beyondpod/ui/views/myepisodesview/cards/InfoCardManager$IInfoCardAdapterOwner;)V

    return-object v0

    :cond_1
    return-object v1

    :cond_2
    :goto_0
    return-object v1
.end method

.method private static getIntroCompactCards(Landroid/content/Context;Lmobi/beyondpod/ui/views/myepisodesview/cards/InfoCardManager$IInfoCardAdapterOwner;)Lmobi/beyondpod/ui/views/base/columnlistview/SectionedListViewAdapter$ISectionedAdapter;
    .locals 10

    .line 182
    invoke-static {}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->isDebugBuild()Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/32 v0, 0xea60

    goto :goto_0

    :cond_0
    const-wide/32 v0, 0xa4cb800

    .line 184
    :goto_0
    invoke-static {}, Lmobi/beyondpod/rsscore/repository/FeedRepository;->getTrackCount()I

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_3

    invoke-static {}, Lmobi/beyondpod/downloadengine/UpdateAndDownloadManager;->isWorking()Z

    move-result v2

    if-nez v2, :cond_3

    .line 185
    invoke-static {v0, v1}, Lmobi/beyondpod/ui/views/notifications/UserNotificationManager;->hasEnoughTimePassedSinceLastTip(J)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 186
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->episodeCardSize()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->publishedEpisodeCardSize()I

    move-result v0

    if-ne v0, v1, :cond_3

    sget-object v0, Lmobi/beyondpod/rsscore/categories/CategoryManager;->CategoryHome:Lmobi/beyondpod/rsscore/categories/FeedCategory;

    .line 187
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->getActiveFeedCategory()Lmobi/beyondpod/rsscore/categories/FeedCategory;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmobi/beyondpod/rsscore/categories/FeedCategory;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 188
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->getActiveFeedFilter()Lmobi/beyondpod/rsscore/Feed;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    const/16 v0, 0x11

    .line 191
    invoke-static {v0}, Lmobi/beyondpod/ui/views/notifications/UserNotificationManager;->isNotificationEnabledFor(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 193
    new-instance v6, Lmobi/beyondpod/ui/views/notifications/Message;

    invoke-direct {v6}, Lmobi/beyondpod/ui/views/notifications/Message;-><init>()V

    .line 194
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1003ed

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lmobi/beyondpod/ui/views/notifications/Message;->MessageText:Ljava/lang/String;

    .line 195
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1003f0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lmobi/beyondpod/ui/views/notifications/Message;->MessageTitle:Ljava/lang/String;

    .line 196
    new-instance v0, Lmobi/beyondpod/ui/views/myepisodesview/cards/InfoCardTip;

    const/16 v7, 0x11

    const/4 v8, 0x2

    move-object v4, v0

    move-object v5, p0

    move-object v9, p1

    invoke-direct/range {v4 .. v9}, Lmobi/beyondpod/ui/views/myepisodesview/cards/InfoCardTip;-><init>(Landroid/content/Context;Lmobi/beyondpod/ui/views/notifications/Message;IILmobi/beyondpod/ui/views/myepisodesview/cards/InfoCardManager$IInfoCardAdapterOwner;)V

    return-object v0

    :cond_2
    return-object v3

    :cond_3
    :goto_1
    return-object v3
.end method

.method private static getIntroMultiSelectCard(Landroid/content/Context;Lmobi/beyondpod/ui/views/myepisodesview/cards/InfoCardManager$IInfoCardAdapterOwner;)Lmobi/beyondpod/ui/views/base/columnlistview/SectionedListViewAdapter$ISectionedAdapter;
    .locals 10

    .line 224
    invoke-static {}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->isDebugBuild()Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/32 v0, 0xea60

    goto :goto_0

    :cond_0
    const-wide/32 v0, 0x14997000

    .line 226
    :goto_0
    invoke-static {}, Lmobi/beyondpod/rsscore/repository/FeedRepository;->getTrackCount()I

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_3

    invoke-static {}, Lmobi/beyondpod/downloadengine/UpdateAndDownloadManager;->isWorking()Z

    move-result v2

    if-nez v2, :cond_3

    .line 227
    invoke-static {v0, v1}, Lmobi/beyondpod/ui/views/notifications/UserNotificationManager;->hasEnoughTimePassedSinceLastTip(J)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    const/16 v0, 0x12

    .line 230
    invoke-static {v0}, Lmobi/beyondpod/ui/views/notifications/UserNotificationManager;->isNotificationEnabledFor(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 232
    new-instance v6, Lmobi/beyondpod/ui/views/notifications/Message;

    invoke-direct {v6}, Lmobi/beyondpod/ui/views/notifications/Message;-><init>()V

    .line 233
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1003ee

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lmobi/beyondpod/ui/views/notifications/Message;->MessageText:Ljava/lang/String;

    .line 234
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1003f0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lmobi/beyondpod/ui/views/notifications/Message;->MessageTitle:Ljava/lang/String;

    .line 235
    new-instance v0, Lmobi/beyondpod/ui/views/myepisodesview/cards/InfoCardTip;

    const/16 v7, 0x12

    const/4 v8, 0x2

    move-object v4, v0

    move-object v5, p0

    move-object v9, p1

    invoke-direct/range {v4 .. v9}, Lmobi/beyondpod/ui/views/myepisodesview/cards/InfoCardTip;-><init>(Landroid/content/Context;Lmobi/beyondpod/ui/views/notifications/Message;IILmobi/beyondpod/ui/views/myepisodesview/cards/InfoCardManager$IInfoCardAdapterOwner;)V

    return-object v0

    :cond_2
    return-object v3

    :cond_3
    :goto_1
    return-object v3
.end method

.method private static getIntroSmartPlay(Landroid/content/Context;Lmobi/beyondpod/ui/views/myepisodesview/cards/InfoCardManager$IInfoCardAdapterOwner;)Lmobi/beyondpod/ui/views/base/columnlistview/SectionedListViewAdapter$ISectionedAdapter;
    .locals 10

    .line 204
    invoke-static {}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->isDebugBuild()Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/32 v0, 0xea60

    goto :goto_0

    :cond_0
    const-wide/32 v0, 0x337f9800

    .line 206
    :goto_0
    invoke-static {}, Lmobi/beyondpod/rsscore/repository/FeedRepository;->getTrackCount()I

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_3

    invoke-static {}, Lmobi/beyondpod/downloadengine/UpdateAndDownloadManager;->isWorking()Z

    move-result v2

    if-nez v2, :cond_3

    .line 207
    invoke-static {v0, v1}, Lmobi/beyondpod/ui/views/notifications/UserNotificationManager;->hasEnoughTimePassedSinceLastTip(J)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lmobi/beyondpod/services/player/smartplay/SmartPlaylistManager;->isConfigured()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    const/16 v0, 0x13

    .line 210
    invoke-static {v0}, Lmobi/beyondpod/ui/views/notifications/UserNotificationManager;->isNotificationEnabledFor(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 212
    new-instance v6, Lmobi/beyondpod/ui/views/notifications/Message;

    invoke-direct {v6}, Lmobi/beyondpod/ui/views/notifications/Message;-><init>()V

    .line 213
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1003ef

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lmobi/beyondpod/ui/views/notifications/Message;->MessageText:Ljava/lang/String;

    .line 214
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1003f0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lmobi/beyondpod/ui/views/notifications/Message;->MessageTitle:Ljava/lang/String;

    .line 215
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->faqIntroSmartPlayURL()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lmobi/beyondpod/ui/views/notifications/Message;->URL:Ljava/lang/String;

    .line 216
    new-instance v0, Lmobi/beyondpod/ui/views/myepisodesview/cards/InfoCardTip;

    const/16 v7, 0x13

    const/4 v8, 0x2

    move-object v4, v0

    move-object v5, p0

    move-object v9, p1

    invoke-direct/range {v4 .. v9}, Lmobi/beyondpod/ui/views/myepisodesview/cards/InfoCardTip;-><init>(Landroid/content/Context;Lmobi/beyondpod/ui/views/notifications/Message;IILmobi/beyondpod/ui/views/myepisodesview/cards/InfoCardManager$IInfoCardAdapterOwner;)V

    return-object v0

    :cond_2
    return-object v3

    :cond_3
    :goto_1
    return-object v3
.end method
