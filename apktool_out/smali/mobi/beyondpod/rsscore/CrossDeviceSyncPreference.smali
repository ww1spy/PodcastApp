.class public Lmobi/beyondpod/rsscore/CrossDeviceSyncPreference;
.super Landroid/preference/Preference;
.source "CrossDeviceSyncPreference.java"


# static fields
.field public static final PREFERENCE_KEY:Ljava/lang/CharSequence;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "CrossDeviceSync"

    .line 39
    sput-object v0, Lmobi/beyondpod/rsscore/CrossDeviceSyncPreference;->PREFERENCE_KEY:Ljava/lang/CharSequence;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 43
    invoke-direct {p0, p1, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 44
    invoke-direct {p0}, Lmobi/beyondpod/rsscore/CrossDeviceSyncPreference;->refreshLastSync()V

    return-void
.end method

.method private refreshLastSync()V
    .locals 7

    .line 54
    invoke-static {}, Lmobi/beyondpod/sync/ChangeTracker;->isTrackingEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 55
    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/CrossDeviceSyncPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f100347

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmobi/beyondpod/rsscore/CrossDeviceSyncPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 58
    :cond_0
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->lastSyncTimeStamp()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_1

    .line 59
    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/CrossDeviceSyncPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f1000f9

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    new-instance v4, Ljava/util/Date;

    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->lastSyncTimeStamp()J

    move-result-wide v5

    invoke-direct {v4, v5, v6}, Ljava/util/Date;-><init>(J)V

    invoke-static {v4}, Lmobi/beyondpod/rsscore/helpers/DateTime;->formatDateTime(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmobi/beyondpod/rsscore/CrossDeviceSyncPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    const-string v0, ""

    .line 61
    invoke-virtual {p0, v0}, Lmobi/beyondpod/rsscore/CrossDeviceSyncPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 64
    :goto_0
    invoke-static {}, Lmobi/beyondpod/sync/ChangeTracker;->isSyncLicenseValid()Z

    move-result v0

    invoke-virtual {p0, v0}, Lmobi/beyondpod/rsscore/CrossDeviceSyncPreference;->setEnabled(Z)V

    return-void
.end method


# virtual methods
.method protected onBindView(Landroid/view/View;)V
    .locals 0

    .line 74
    invoke-direct {p0}, Lmobi/beyondpod/rsscore/CrossDeviceSyncPreference;->refreshLastSync()V

    .line 76
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    return-void
.end method

.method public refresh()V
    .locals 0

    .line 49
    invoke-direct {p0}, Lmobi/beyondpod/rsscore/CrossDeviceSyncPreference;->refreshLastSync()V

    return-void
.end method
