.class public Lmobi/beyondpod/rsscore/rss/PolicyManager;
.super Ljava/lang/Object;
.source "PolicyManager.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkAndNotifyIfInDownloadRestrictedMode()Z
    .locals 1

    .line 50
    invoke-static {}, Lmobi/beyondpod/rsscore/rss/PolicyManager;->ifMultipleDownloadRestricted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 52
    sget v0, Lmobi/beyondpod/R$string;->limited_mode_message:I

    invoke-static {v0}, Lmobi/beyondpod/rsscore/rss/PolicyManager;->toastNotify(I)V

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static checkAndNotifyIfInScheduleRestrictedMode()Z
    .locals 1

    .line 61
    invoke-static {}, Lmobi/beyondpod/rsscore/rss/PolicyManager;->ifSchedulingRestricted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 63
    sget v0, Lmobi/beyondpod/R$string;->limited_mode_message:I

    invoke-static {v0}, Lmobi/beyondpod/rsscore/rss/PolicyManager;->toastNotify(I)V

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static dump()Ljava/lang/String;
    .locals 4

    const-string v0, "ADS: %s,\nSCH: %s, DLN: %s,\nSPD: %s, CC: %s, AUT: %s, CDS: %s"

    const/4 v1, 0x7

    .line 115
    new-array v1, v1, [Ljava/lang/Object;

    .line 116
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->isAdSupported()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 117
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->freeScheduling()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    .line 118
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->freeMultiDownloads()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    .line 119
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->freeSpeed()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x3

    aput-object v2, v1, v3

    .line 120
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->freeChromecast()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x4

    aput-object v2, v1, v3

    .line 121
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->freeAuto()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x5

    aput-object v2, v1, v3

    .line 122
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->freeCDS()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x6

    aput-object v2, v1, v3

    .line 115
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static ifAutoRestricted()Z
    .locals 1

    .line 30
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->freeAuto()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lmobi/beyondpod/rsscore/rss/PolicyManager;->ifNotUnlocked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static ifCDSRestricted()Z
    .locals 1

    .line 45
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->freeCDS()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lmobi/beyondpod/rsscore/rss/PolicyManager;->ifNotUnlocked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static ifChromecastRestricted()Z
    .locals 1

    .line 40
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->freeChromecast()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lmobi/beyondpod/rsscore/rss/PolicyManager;->ifNotUnlocked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static ifMultipleDownloadRestricted()Z
    .locals 1

    .line 14
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->freeMultiDownloads()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lmobi/beyondpod/rsscore/rss/PolicyManager;->ifNotUnlocked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static ifNotUnlocked()Z
    .locals 1

    .line 110
    invoke-static {}, Lmobi/beyondpod/rsscore/rss/LicenseManager;->ifInRestrictedMode()Z

    move-result v0

    return v0
.end method

.method public static ifPlaybackSpeedRestricted()Z
    .locals 1

    .line 35
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->freeSpeed()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lmobi/beyondpod/rsscore/rss/PolicyManager;->ifNotUnlocked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static ifSchedulingRestricted()Z
    .locals 1

    .line 19
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->freeScheduling()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lmobi/beyondpod/rsscore/rss/PolicyManager;->ifNotUnlocked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static ifWearRestricted()Z
    .locals 1

    .line 25
    invoke-static {}, Lmobi/beyondpod/rsscore/rss/PolicyManager;->ifNotUnlocked()Z

    move-result v0

    return v0
.end method

.method public static isTagUnlocked()Z
    .locals 1

    .line 85
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->freeScheduling()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 86
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->freeMultiDownloads()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 87
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->freeSpeed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 88
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->freeChromecast()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 90
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->freeAuto()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 91
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->freeCDS()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isUnlocked()Z
    .locals 1

    .line 80
    invoke-static {}, Lmobi/beyondpod/rsscore/rss/LicenseManager;->isUnlocked()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lmobi/beyondpod/rsscore/rss/PolicyManager;->isTagUnlocked()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static licenseType()Ljava/lang/String;
    .locals 1

    .line 72
    invoke-static {}, Lmobi/beyondpod/rsscore/rss/PolicyManager;->isTagUnlocked()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "TAG"

    return-object v0

    :cond_0
    const/4 v0, 0x0

    .line 75
    invoke-static {v0}, Lmobi/beyondpod/rsscore/rss/LicenseManager;->getLicenseTypeString(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static toastNotify(I)V
    .locals 2

    .line 99
    :try_start_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 100
    invoke-static {}, Lmobi/beyondpod/BeyondPodApplication;->getInstance()Lmobi/beyondpod/BeyondPodApplication;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, p0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method
