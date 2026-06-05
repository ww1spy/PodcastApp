.class public final Lmobi/beyondpod/ui/views/onboarding/startup/SampleFeedsFragment;
.super Landroid/support/v4/app/Fragment;
.source "SampleFeedsFragment.java"


# static fields
.field private static final KEY_CONTENT:Ljava/lang/String; = "TestFragment:Content"

.field public static TAG:Ljava/lang/String; = "SampleFeedsFragment"


# instance fields
.field _Adapter:Lmobi/beyondpod/ui/views/onboarding/startup/SampleContentAdapter;

.field _CategoryGrid:Landroid/widget/GridView;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lmobi/beyondpod/ui/views/onboarding/startup/SampleFeedsFragment;)Ljava/lang/String;
    .locals 0

    .line 14
    invoke-direct {p0}, Lmobi/beyondpod/ui/views/onboarding/startup/SampleFeedsFragment;->getSelectedCategories()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getSelectedCategories()Ljava/lang/String;
    .locals 4

    .line 70
    iget-object v0, p0, Lmobi/beyondpod/ui/views/onboarding/startup/SampleFeedsFragment;->_Adapter:Lmobi/beyondpod/ui/views/onboarding/startup/SampleContentAdapter;

    invoke-virtual {v0}, Lmobi/beyondpod/ui/views/onboarding/startup/SampleContentAdapter;->getCheckedItemsCount()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 73
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lmobi/beyondpod/BeyondPodApplication;->getInstance()Lmobi/beyondpod/BeyondPodApplication;

    move-result-object v1

    invoke-virtual {v1}, Lmobi/beyondpod/BeyondPodApplication;->getLocale()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 74
    iget-object v1, p0, Lmobi/beyondpod/ui/views/onboarding/startup/SampleFeedsFragment;->_Adapter:Lmobi/beyondpod/ui/views/onboarding/startup/SampleContentAdapter;

    invoke-virtual {v1}, Lmobi/beyondpod/ui/views/onboarding/startup/SampleContentAdapter;->getCheckedItems()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmobi/beyondpod/ui/views/onboarding/startup/SampleContentAdapter$SampleContent;

    .line 75
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "|"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v2, Lmobi/beyondpod/ui/views/onboarding/startup/SampleContentAdapter$SampleContent;->categoryId:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static newInstance(Ljava/lang/String;)Lmobi/beyondpod/ui/views/onboarding/startup/SampleFeedsFragment;
    .locals 1

    .line 24
    sget-object v0, Lmobi/beyondpod/ui/views/onboarding/startup/SampleFeedsFragment;->TAG:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 27
    :cond_0
    new-instance p0, Lmobi/beyondpod/ui/views/onboarding/startup/SampleFeedsFragment;

    invoke-direct {p0}, Lmobi/beyondpod/ui/views/onboarding/startup/SampleFeedsFragment;-><init>()V

    return-object p0
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3

    .line 83
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 85
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/onboarding/startup/SampleFeedsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0700b4

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    .line 86
    iget-object v0, p0, Lmobi/beyondpod/ui/views/onboarding/startup/SampleFeedsFragment;->_CategoryGrid:Landroid/widget/GridView;

    iget-object v1, p0, Lmobi/beyondpod/ui/views/onboarding/startup/SampleFeedsFragment;->_CategoryGrid:Landroid/widget/GridView;

    invoke-virtual {v1}, Landroid/widget/GridView;->getPaddingTop()I

    move-result v1

    iget-object v2, p0, Lmobi/beyondpod/ui/views/onboarding/startup/SampleFeedsFragment;->_CategoryGrid:Landroid/widget/GridView;

    invoke-virtual {v2}, Landroid/widget/GridView;->getPaddingBottom()I

    move-result v2

    invoke-virtual {v0, p1, v1, p1, v2}, Landroid/widget/GridView;->setPadding(IIII)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 33
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    if-eqz p1, :cond_0

    const-string v0, "TestFragment:Content"

    .line 35
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "TestFragment:Content"

    .line 37
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    const p2, 0x7f0c006b

    const/4 p3, 0x0

    .line 44
    invoke-virtual {p1, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f090072

    .line 46
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/GridView;

    iput-object p2, p0, Lmobi/beyondpod/ui/views/onboarding/startup/SampleFeedsFragment;->_CategoryGrid:Landroid/widget/GridView;

    .line 48
    new-instance p2, Lmobi/beyondpod/ui/views/onboarding/startup/SampleContentAdapter;

    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/onboarding/startup/SampleFeedsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p3

    invoke-direct {p2, p3}, Lmobi/beyondpod/ui/views/onboarding/startup/SampleContentAdapter;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lmobi/beyondpod/ui/views/onboarding/startup/SampleFeedsFragment;->_Adapter:Lmobi/beyondpod/ui/views/onboarding/startup/SampleContentAdapter;

    .line 49
    iget-object p2, p0, Lmobi/beyondpod/ui/views/onboarding/startup/SampleFeedsFragment;->_CategoryGrid:Landroid/widget/GridView;

    iget-object p3, p0, Lmobi/beyondpod/ui/views/onboarding/startup/SampleFeedsFragment;->_Adapter:Lmobi/beyondpod/ui/views/onboarding/startup/SampleContentAdapter;

    invoke-virtual {p2, p3}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 50
    iget-object p2, p0, Lmobi/beyondpod/ui/views/onboarding/startup/SampleFeedsFragment;->_CategoryGrid:Landroid/widget/GridView;

    const/4 p3, 0x2

    invoke-virtual {p2, p3}, Landroid/widget/GridView;->setStretchMode(I)V

    .line 52
    iget-object p2, p0, Lmobi/beyondpod/ui/views/onboarding/startup/SampleFeedsFragment;->_CategoryGrid:Landroid/widget/GridView;

    new-instance p3, Lmobi/beyondpod/ui/views/onboarding/startup/SampleFeedsFragment$1;

    invoke-direct {p3, p0}, Lmobi/beyondpod/ui/views/onboarding/startup/SampleFeedsFragment$1;-><init>(Lmobi/beyondpod/ui/views/onboarding/startup/SampleFeedsFragment;)V

    invoke-virtual {p2, p3}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-object p1
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 92
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "TestFragment:Content"

    const/4 v1, 0x0

    .line 93
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
