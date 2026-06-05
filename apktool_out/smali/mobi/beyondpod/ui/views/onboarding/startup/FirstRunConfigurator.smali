.class public Lmobi/beyondpod/ui/views/onboarding/startup/FirstRunConfigurator;
.super Ljava/lang/Object;
.source "FirstRunConfigurator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmobi/beyondpod/ui/views/onboarding/startup/FirstRunConfigurator$SearchSuccessListener;
    }
.end annotation


# static fields
.field public static final MAX_RESULTS:I = 0x5

.field public static TAG:Ljava/lang/String; = "FirstRunConfigurator"


# instance fields
.field _AutomaticDownloadsEnabled:Z

.field _DownloadOnWiFiOnly:Z

.field _EnablaeAnalytics:Z

.field _ImageLoader:Lmobi/beyondpod/ui/core/volley/ImageLoader;

.field _LocalCategoryColors:[Ljava/lang/String;

.field _LocalCategoryIds:[Ljava/lang/String;

.field _LocalCategoryNames:[Ljava/lang/String;

.field _OwnerActivity:Landroid/support/v4/app/FragmentActivity;

.field private _Progress:Landroid/view/View;

.field _SelectedCategories:Ljava/lang/String;

.field private _errorListener:Lcom/android/volley/Response$ErrorListener;

.field private _successListener:Lmobi/beyondpod/ui/views/onboarding/startup/FirstRunConfigurator$SearchSuccessListener;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/support/v4/app/FragmentActivity;Landroid/view/View;)V
    .locals 1

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Lmobi/beyondpod/ui/views/onboarding/startup/FirstRunConfigurator$1;

    invoke-direct {v0, p0}, Lmobi/beyondpod/ui/views/onboarding/startup/FirstRunConfigurator$1;-><init>(Lmobi/beyondpod/ui/views/onboarding/startup/FirstRunConfigurator;)V

    iput-object v0, p0, Lmobi/beyondpod/ui/views/onboarding/startup/FirstRunConfigurator;->_errorListener:Lcom/android/volley/Response$ErrorListener;

    const/4 v0, 0x1

    .line 76
    iput-boolean v0, p0, Lmobi/beyondpod/ui/views/onboarding/startup/FirstRunConfigurator;->_AutomaticDownloadsEnabled:Z

    iput-boolean v0, p0, Lmobi/beyondpod/ui/views/onboarding/startup/FirstRunConfigurator;->_DownloadOnWiFiOnly:Z

    iput-boolean v0, p0, Lmobi/beyondpod/ui/views/onboarding/startup/FirstRunConfigurator;->_EnablaeAnalytics:Z

    .line 77
    new-instance v0, Lmobi/beyondpod/ui/views/onboarding/startup/FirstRunConfigurator$SearchSuccessListener;

    invoke-direct {v0, p0}, Lmobi/beyondpod/ui/views/onboarding/startup/FirstRunConfigurator$SearchSuccessListener;-><init>(Lmobi/beyondpod/ui/views/onboarding/startup/FirstRunConfigurator;)V

    iput-object v0, p0, Lmobi/beyondpod/ui/views/onboarding/startup/FirstRunConfigurator;->_successListener:Lmobi/beyondpod/ui/views/onboarding/startup/FirstRunConfigurator$SearchSuccessListener;

    .line 82
    iput-object p1, p0, Lmobi/beyondpod/ui/views/onboarding/startup/FirstRunConfigurator;->_OwnerActivity:Landroid/support/v4/app/FragmentActivity;

    .line 84
    new-instance v0, Lmobi/beyondpod/ui/core/volley/ImageLoaderFeedSearch;

    invoke-direct {v0, p1}, Lmobi/beyondpod/ui/core/volley/ImageLoaderFeedSearch;-><init>(Landroid/support/v4/app/FragmentActivity;)V

    iput-object v0, p0, Lmobi/beyondpod/ui/views/onboarding/startup/FirstRunConfigurator;->_ImageLoader:Lmobi/beyondpod/ui/core/volley/ImageLoader;

    .line 86
    iput-object p2, p0, Lmobi/beyondpod/ui/views/onboarding/startup/FirstRunConfigurator;->_Progress:Landroid/view/View;

    .line 88
    invoke-virtual {p1}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f030013

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lmobi/beyondpod/ui/views/onboarding/startup/FirstRunConfigurator;->_LocalCategoryColors:[Ljava/lang/String;

    .line 89
    invoke-virtual {p1}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f030015

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lmobi/beyondpod/ui/views/onboarding/startup/FirstRunConfigurator;->_LocalCategoryNames:[Ljava/lang/String;

    .line 90
    invoke-virtual {p1}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f030014

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lmobi/beyondpod/ui/views/onboarding/startup/FirstRunConfigurator;->_LocalCategoryIds:[Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lmobi/beyondpod/ui/views/onboarding/startup/FirstRunConfigurator;Z)V
    .locals 0

    .line 43
    invoke-direct {p0, p1}, Lmobi/beyondpod/ui/views/onboarding/startup/FirstRunConfigurator;->toggleProgressFooter(Z)V

    return-void
.end method

.method private toggleProgressFooter(Z)V
    .locals 1

    .line 151
    iget-object v0, p0, Lmobi/beyondpod/ui/views/onboarding/startup/FirstRunConfigurator;->_Progress:Landroid/view/View;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method public analyticsOptionsChanged(Z)V
    .locals 0

    .line 167
    iput-boolean p1, p0, Lmobi/beyondpod/ui/views/onboarding/startup/FirstRunConfigurator;->_EnablaeAnalytics:Z

    return-void
.end method

.method buildSampleContent()V
    .locals 6

    .line 133
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->beyondPodPublicAPIRoot()Ljava/lang/String;

    move-result-object v0

    .line 134
    new-instance v1, Lmobi/beyondpod/ui/views/impexp/FeedSearchService;

    iget-object v2, p0, Lmobi/beyondpod/ui/views/onboarding/startup/FirstRunConfigurator;->_ImageLoader:Lmobi/beyondpod/ui/core/volley/ImageLoader;

    invoke-virtual {v2}, Lmobi/beyondpod/ui/core/volley/ImageLoader;->getRequestQueue()Lcom/android/volley/RequestQueue;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lmobi/beyondpod/ui/views/impexp/FeedSearchService;-><init>(Ljava/lang/String;Lcom/android/volley/RequestQueue;)V

    const/4 v0, 0x1

    .line 135
    invoke-direct {p0, v0}, Lmobi/beyondpod/ui/views/onboarding/startup/FirstRunConfigurator;->toggleProgressFooter(Z)V

    .line 139
    :try_start_0
    iget-object v2, p0, Lmobi/beyondpod/ui/views/onboarding/startup/FirstRunConfigurator;->_SelectedCategories:Ljava/lang/String;

    const/4 v3, 0x5

    iget-object v4, p0, Lmobi/beyondpod/ui/views/onboarding/startup/FirstRunConfigurator;->_successListener:Lmobi/beyondpod/ui/views/onboarding/startup/FirstRunConfigurator$SearchSuccessListener;

    iget-object v5, p0, Lmobi/beyondpod/ui/views/onboarding/startup/FirstRunConfigurator;->_errorListener:Lcom/android/volley/Response$ErrorListener;

    invoke-virtual {v1, v2, v3, v4, v5}, Lmobi/beyondpod/ui/views/impexp/FeedSearchService;->getSampleContent(Ljava/lang/String;ILcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 143
    iget-object v2, p0, Lmobi/beyondpod/ui/views/onboarding/startup/FirstRunConfigurator;->_OwnerActivity:Landroid/support/v4/app/FragmentActivity;

    const v3, 0x7f10030c

    invoke-static {v2, v3, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 144
    sget-object v0, Lmobi/beyondpod/ui/views/onboarding/startup/FirstRunConfigurator;->TAG:Ljava/lang/String;

    iget-object v2, p0, Lmobi/beyondpod/ui/views/onboarding/startup/FirstRunConfigurator;->_OwnerActivity:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->logException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    .line 145
    invoke-direct {p0, v0}, Lmobi/beyondpod/ui/views/onboarding/startup/FirstRunConfigurator;->toggleProgressFooter(Z)V

    :goto_0
    return-void
.end method

.method public canBuildContent()Z
    .locals 1

    .line 156
    iget-object v0, p0, Lmobi/beyondpod/ui/views/onboarding/startup/FirstRunConfigurator;->_SelectedCategories:Ljava/lang/String;

    invoke-static {v0}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public downloadOptionsChanged(ZZ)V
    .locals 0

    .line 161
    iput-boolean p1, p0, Lmobi/beyondpod/ui/views/onboarding/startup/FirstRunConfigurator;->_AutomaticDownloadsEnabled:Z

    .line 162
    iput-boolean p2, p0, Lmobi/beyondpod/ui/views/onboarding/startup/FirstRunConfigurator;->_DownloadOnWiFiOnly:Z

    return-void
.end method

.method getLocaleCategoryColorFor(I)Ljava/lang/String;
    .locals 2

    .line 119
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    .line 121
    :goto_0
    iget-object v1, p0, Lmobi/beyondpod/ui/views/onboarding/startup/FirstRunConfigurator;->_LocalCategoryIds:[Ljava/lang/String;

    array-length v1, v1

    if-eq v0, v1, :cond_1

    .line 123
    iget-object v1, p0, Lmobi/beyondpod/ui/views/onboarding/startup/FirstRunConfigurator;->_LocalCategoryIds:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 124
    iget-object p1, p0, Lmobi/beyondpod/ui/views/onboarding/startup/FirstRunConfigurator;->_LocalCategoryColors:[Ljava/lang/String;

    aget-object p1, p1, v0

    return-object p1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method getLocaleCategoryNameFor(I)Ljava/lang/String;
    .locals 2

    .line 106
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    .line 108
    :goto_0
    iget-object v1, p0, Lmobi/beyondpod/ui/views/onboarding/startup/FirstRunConfigurator;->_LocalCategoryIds:[Ljava/lang/String;

    array-length v1, v1

    if-eq v0, v1, :cond_1

    .line 110
    iget-object v1, p0, Lmobi/beyondpod/ui/views/onboarding/startup/FirstRunConfigurator;->_LocalCategoryIds:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 111
    iget-object p1, p0, Lmobi/beyondpod/ui/views/onboarding/startup/FirstRunConfigurator;->_LocalCategoryNames:[Ljava/lang/String;

    aget-object p1, p1, v0

    return-object p1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public release()V
    .locals 1

    .line 101
    iget-object v0, p0, Lmobi/beyondpod/ui/views/onboarding/startup/FirstRunConfigurator;->_ImageLoader:Lmobi/beyondpod/ui/core/volley/ImageLoader;

    invoke-virtual {v0}, Lmobi/beyondpod/ui/core/volley/ImageLoader;->release()V

    return-void
.end method

.method public setSelectedCategories(Ljava/lang/String;)V
    .locals 0

    .line 96
    iput-object p1, p0, Lmobi/beyondpod/ui/views/onboarding/startup/FirstRunConfigurator;->_SelectedCategories:Ljava/lang/String;

    return-void
.end method
