.class public Lmobi/beyondpod/ui/core/AdManager;
.super Ljava/lang/Object;
.source "AdManager.java"


# static fields
.field public static final Ad_Unit_ID_MyEpisodes:Ljava/lang/String; = "ca-app-pub-1319643115400669/9972134087"

.field public static final BP_BANNER:I = 0x1

.field public static final BP_FULL_BANNER:I = 0x4

.field public static final BP_LARGE_BANNER:I = 0x2

.field public static final BP_LEADERBOARD:I = 0x5

.field public static final BP_MEDIUM_RECTANGLE:I = 0x3

.field public static final BP_SMART_BANNER:I = 0x64

.field private static final TAG:Ljava/lang/String; = "AdManager"

.field public static final TestDeviceID:Ljava/lang/String; = "9CADD452C6D4299D1639631D3E39FE87"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static areAdsEnabled()Z
    .locals 2

    .line 70
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->DBGEnableAds()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 73
    :cond_0
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->DBGEnableAds()I

    move-result v0

    const/4 v1, 0x0

    if-gez v0, :cond_1

    return v1

    .line 76
    :cond_1
    invoke-static {}, Lmobi/beyondpod/ui/core/AdManager;->deviceAdSize()I

    move-result v0

    if-gez v0, :cond_2

    return v1

    .line 79
    :cond_2
    invoke-static {}, Lmobi/beyondpod/rsscore/rss/LicenseManager;->ifInRestrictedMode()Z

    move-result v0

    if-nez v0, :cond_3

    return v1

    .line 82
    :cond_3
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->isAdSupported()Z

    move-result v0

    return v0
.end method

.method public static deviceAdSize()I
    .locals 2

    .line 65
    invoke-static {}, Lmobi/beyondpod/BeyondPodApplication;->getInstance()Lmobi/beyondpod/BeyondPodApplication;

    move-result-object v0

    invoke-virtual {v0}, Lmobi/beyondpod/BeyondPodApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0010

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    return v0
.end method

.method public static getAdSizeForCurrentDevice()Lcom/google/android/gms/ads/AdSize;
    .locals 2

    .line 33
    invoke-static {}, Lmobi/beyondpod/BeyondPodApplication;->getInstance()Lmobi/beyondpod/BeyondPodApplication;

    move-result-object v0

    invoke-virtual {v0}, Lmobi/beyondpod/BeyondPodApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 38
    invoke-static {}, Lmobi/beyondpod/ui/core/AdManager;->deviceAdSize()I

    move-result v0

    const/16 v1, 0x64

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    goto :goto_0

    .line 56
    :pswitch_0
    sget-object v0, Lcom/google/android/gms/ads/AdSize;->LEADERBOARD:Lcom/google/android/gms/ads/AdSize;

    goto :goto_0

    .line 55
    :pswitch_1
    sget-object v0, Lcom/google/android/gms/ads/AdSize;->FULL_BANNER:Lcom/google/android/gms/ads/AdSize;

    goto :goto_0

    .line 54
    :pswitch_2
    sget-object v0, Lcom/google/android/gms/ads/AdSize;->MEDIUM_RECTANGLE:Lcom/google/android/gms/ads/AdSize;

    goto :goto_0

    .line 53
    :pswitch_3
    sget-object v0, Lcom/google/android/gms/ads/AdSize;->LARGE_BANNER:Lcom/google/android/gms/ads/AdSize;

    goto :goto_0

    .line 52
    :pswitch_4
    sget-object v0, Lcom/google/android/gms/ads/AdSize;->BANNER:Lcom/google/android/gms/ads/AdSize;

    goto :goto_0

    .line 57
    :cond_0
    sget-object v0, Lcom/google/android/gms/ads/AdSize;->SMART_BANNER:Lcom/google/android/gms/ads/AdSize;

    :goto_0
    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
