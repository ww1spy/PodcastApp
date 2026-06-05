.class public Lmobi/beyondpod/ui/views/onboarding/startup/FirstRunPagerAdapter;
.super Landroid/support/v4/app/FragmentPagerAdapter;
.source "FirstRunPagerAdapter.java"


# instance fields
.field _AssetFolder:Ljava/lang/String;

.field _Pages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V
    .locals 0

    .line 19
    invoke-direct {p0, p1}, Landroid/support/v4/app/FragmentPagerAdapter;-><init>(Landroid/support/v4/app/FragmentManager;)V

    .line 14
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lmobi/beyondpod/ui/views/onboarding/startup/FirstRunPagerAdapter;->_Pages:Ljava/util/List;

    .line 21
    iput-object p2, p0, Lmobi/beyondpod/ui/views/onboarding/startup/FirstRunPagerAdapter;->_AssetFolder:Ljava/lang/String;

    .line 22
    new-instance p1, Lmobi/beyondpod/ui/views/onboarding/core/AssetHelper;

    iget-object p2, p0, Lmobi/beyondpod/ui/views/onboarding/startup/FirstRunPagerAdapter;->_AssetFolder:Ljava/lang/String;

    invoke-direct {p1, p2}, Lmobi/beyondpod/ui/views/onboarding/core/AssetHelper;-><init>(Ljava/lang/String;)V

    .line 23
    invoke-virtual {p1}, Lmobi/beyondpod/ui/views/onboarding/core/AssetHelper;->loadPages()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lmobi/beyondpod/ui/views/onboarding/startup/FirstRunPagerAdapter;->_Pages:Ljava/util/List;

    .line 25
    iget-object p1, p0, Lmobi/beyondpod/ui/views/onboarding/startup/FirstRunPagerAdapter;->_Pages:Ljava/util/List;

    sget-object p2, Lmobi/beyondpod/ui/views/onboarding/startup/SampleFeedsFragment;->TAG:Ljava/lang/String;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 26
    iget-object p1, p0, Lmobi/beyondpod/ui/views/onboarding/startup/FirstRunPagerAdapter;->_Pages:Ljava/util/List;

    sget-object p2, Lmobi/beyondpod/ui/views/onboarding/startup/ConfigureAutomaticUpdatesFragment;->TAG:Ljava/lang/String;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 52
    iget-object v0, p0, Lmobi/beyondpod/ui/views/onboarding/startup/FirstRunPagerAdapter;->_Pages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Landroid/support/v4/app/Fragment;
    .locals 1

    .line 32
    iget-object v0, p0, Lmobi/beyondpod/ui/views/onboarding/startup/FirstRunPagerAdapter;->_Pages:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 34
    invoke-static {p1}, Lmobi/beyondpod/ui/views/onboarding/startup/WebViewFragment;->newInstance(Ljava/lang/String;)Lmobi/beyondpod/ui/views/onboarding/startup/WebViewFragment;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 38
    :cond_0
    invoke-static {p1}, Lmobi/beyondpod/ui/views/onboarding/startup/SampleFeedsFragment;->newInstance(Ljava/lang/String;)Lmobi/beyondpod/ui/views/onboarding/startup/SampleFeedsFragment;

    move-result-object v0

    if-eqz v0, :cond_1

    return-object v0

    .line 42
    :cond_1
    invoke-static {p1}, Lmobi/beyondpod/ui/views/onboarding/startup/ConfigureAutomaticUpdatesFragment;->newInstance(Ljava/lang/String;)Lmobi/beyondpod/ui/views/onboarding/startup/ConfigureAutomaticUpdatesFragment;

    move-result-object p1

    if-eqz p1, :cond_2

    return-object p1

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method
