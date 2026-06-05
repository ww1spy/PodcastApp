.class public Lmobi/beyondpod/ui/views/onboarding/core/AssetHelper;
.super Ljava/lang/Object;
.source "AssetHelper.java"


# instance fields
.field private _AssetFolder:Ljava/lang/String;

.field private _Locale:Ljava/util/Locale;

.field private _ScreenSizeCorrection:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lmobi/beyondpod/ui/views/onboarding/core/AssetHelper;->_AssetFolder:Ljava/lang/String;

    .line 30
    invoke-static {}, Lmobi/beyondpod/BeyondPodApplication;->getInstance()Lmobi/beyondpod/BeyondPodApplication;

    move-result-object p1

    invoke-virtual {p1}, Lmobi/beyondpod/BeyondPodApplication;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 31
    invoke-static {}, Lmobi/beyondpod/BeyondPodApplication;->getInstance()Lmobi/beyondpod/BeyondPodApplication;

    move-result-object v0

    invoke-virtual {v0}, Lmobi/beyondpod/BeyondPodApplication;->getLocale()Ljava/util/Locale;

    move-result-object v0

    iput-object v0, p0, Lmobi/beyondpod/ui/views/onboarding/core/AssetHelper;->_Locale:Ljava/util/Locale;

    const-string v0, "hdpi"

    .line 32
    iput-object v0, p0, Lmobi/beyondpod/ui/views/onboarding/core/AssetHelper;->_ScreenSizeCorrection:Ljava/lang/String;

    .line 34
    invoke-static {}, Lmobi/beyondpod/BeyondPodApplication;->getInstance()Lmobi/beyondpod/BeyondPodApplication;

    move-result-object v0

    invoke-virtual {v0}, Lmobi/beyondpod/BeyondPodApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0030

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    const/16 v1, 0x12c

    if-le v0, v1, :cond_0

    const-string p1, "large"

    .line 35
    iput-object p1, p0, Lmobi/beyondpod/ui/views/onboarding/core/AssetHelper;->_ScreenSizeCorrection:Ljava/lang/String;

    goto :goto_0

    .line 36
    :cond_0
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float p1, p1, v0

    if-gtz p1, :cond_1

    const-string p1, "mdpi"

    .line 37
    iput-object p1, p0, Lmobi/beyondpod/ui/views/onboarding/core/AssetHelper;->_ScreenSizeCorrection:Ljava/lang/String;

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public loadPages()Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 46
    :try_start_0
    invoke-static {}, Lmobi/beyondpod/BeyondPodApplication;->getInstance()Lmobi/beyondpod/BeyondPodApplication;

    move-result-object v1

    invoke-virtual {v1}, Lmobi/beyondpod/BeyondPodApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    iget-object v2, p0, Lmobi/beyondpod/ui/views/onboarding/core/AssetHelper;->_AssetFolder:Ljava/lang/String;

    .line 47
    invoke-virtual {v1, v2}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    const/4 v2, 0x0

    .line 56
    array-length v3, v1

    move v4, v2

    :goto_1
    if-ge v4, v3, :cond_1

    aget-object v5, v1, v4

    const-string v6, "page"

    .line 58
    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    const-string v6, "html"

    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    const-string v6, "file:///android_asset/%s/%s?screen=%s&hl=%s"

    const/4 v7, 0x4

    .line 60
    new-array v7, v7, [Ljava/lang/Object;

    iget-object v8, p0, Lmobi/beyondpod/ui/views/onboarding/core/AssetHelper;->_AssetFolder:Ljava/lang/String;

    aput-object v8, v7, v2

    const/4 v8, 0x1

    aput-object v5, v7, v8

    const/4 v5, 0x2

    iget-object v8, p0, Lmobi/beyondpod/ui/views/onboarding/core/AssetHelper;->_ScreenSizeCorrection:Ljava/lang/String;

    aput-object v8, v7, v5

    const/4 v5, 0x3

    iget-object v8, p0, Lmobi/beyondpod/ui/views/onboarding/core/AssetHelper;->_Locale:Ljava/util/Locale;

    invoke-virtual {v8}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v5

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 61
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 66
    :cond_1
    new-instance v1, Lmobi/beyondpod/ui/views/onboarding/core/AssetHelper$1;

    invoke-direct {v1, p0}, Lmobi/beyondpod/ui/views/onboarding/core/AssetHelper$1;-><init>(Lmobi/beyondpod/ui/views/onboarding/core/AssetHelper;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-object v0
.end method
