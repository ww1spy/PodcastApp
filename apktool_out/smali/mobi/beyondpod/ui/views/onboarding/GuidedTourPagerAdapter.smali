.class public Lmobi/beyondpod/ui/views/onboarding/GuidedTourPagerAdapter;
.super Landroid/support/v4/app/FragmentPagerAdapter;
.source "GuidedTourPagerAdapter.java"


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
    .locals 1

    .line 20
    invoke-direct {p0, p1}, Landroid/support/v4/app/FragmentPagerAdapter;-><init>(Landroid/support/v4/app/FragmentManager;)V

    .line 15
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lmobi/beyondpod/ui/views/onboarding/GuidedTourPagerAdapter;->_Pages:Ljava/util/List;

    .line 21
    iput-object p2, p0, Lmobi/beyondpod/ui/views/onboarding/GuidedTourPagerAdapter;->_AssetFolder:Ljava/lang/String;

    .line 22
    new-instance p1, Lmobi/beyondpod/ui/views/onboarding/core/AssetHelper;

    iget-object p2, p0, Lmobi/beyondpod/ui/views/onboarding/GuidedTourPagerAdapter;->_AssetFolder:Ljava/lang/String;

    invoke-direct {p1, p2}, Lmobi/beyondpod/ui/views/onboarding/core/AssetHelper;-><init>(Ljava/lang/String;)V

    .line 23
    invoke-virtual {p1}, Lmobi/beyondpod/ui/views/onboarding/core/AssetHelper;->loadPages()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lmobi/beyondpod/ui/views/onboarding/GuidedTourPagerAdapter;->_Pages:Ljava/util/List;

    .line 26
    iget-object p1, p0, Lmobi/beyondpod/ui/views/onboarding/GuidedTourPagerAdapter;->_Pages:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 p2, 0x1

    if-le p1, p2, :cond_0

    invoke-static {}, Lmobi/beyondpod/rsscore/rss/PolicyManager;->isUnlocked()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 27
    iget-object p1, p0, Lmobi/beyondpod/ui/views/onboarding/GuidedTourPagerAdapter;->_Pages:Ljava/util/List;

    iget-object v0, p0, Lmobi/beyondpod/ui/views/onboarding/GuidedTourPagerAdapter;->_Pages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, p2

    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_0
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 39
    iget-object v0, p0, Lmobi/beyondpod/ui/views/onboarding/GuidedTourPagerAdapter;->_Pages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Landroid/support/v4/app/Fragment;
    .locals 1

    .line 33
    iget-object v0, p0, Lmobi/beyondpod/ui/views/onboarding/GuidedTourPagerAdapter;->_Pages:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Lmobi/beyondpod/ui/views/onboarding/GuideViewFragment;->newInstance(Ljava/lang/String;)Lmobi/beyondpod/ui/views/onboarding/GuideViewFragment;

    move-result-object p1

    return-object p1
.end method
