.class public Lmobi/beyondpod/services/player/ChromecastUtils;
.super Ljava/lang/Object;
.source "ChromecastUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static buildCastingToTitle(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .line 13
    invoke-static {}, Lmobi/beyondpod/services/player/impl/ChromecastDevice;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 18
    :try_start_0
    invoke-static {}, Lmobi/beyondpod/BeyondPodApplication;->getInstance()Lmobi/beyondpod/BeyondPodApplication;

    move-result-object v0

    .line 19
    invoke-virtual {v0}, Lmobi/beyondpod/BeyondPodApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lmobi/beyondpod/R$string;->cc_casting_to:I

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    .line 21
    invoke-static {}, Lmobi/beyondpod/BeyondPodApplication;->getInstance()Lmobi/beyondpod/BeyondPodApplication;

    move-result-object v4

    invoke-virtual {v4}, Lmobi/beyondpod/BeyondPodApplication;->chromecastDevice()Lmobi/beyondpod/services/player/impl/ChromecastDevice;

    move-result-object v4

    invoke-virtual {v4}, Lmobi/beyondpod/services/player/impl/ChromecastDevice;->connectedDeviceName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    .line 20
    invoke-virtual {v0, v1, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 23
    invoke-static {p0}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "%s \u2022 %s"

    const/4 v3, 0x2

    .line 24
    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v5

    aput-object p0, v3, v2

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :cond_0
    return-object v0

    :catch_0
    return-object p0

    :cond_1
    return-object p0
.end method
