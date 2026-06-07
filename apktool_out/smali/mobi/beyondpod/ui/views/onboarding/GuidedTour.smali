.class public Lmobi/beyondpod/ui/views/onboarding/GuidedTour;
.super Landroid/support/v4/app/FragmentActivity;
.source "GuidedTour.java"


# instance fields
.field mAdapter:Lmobi/beyondpod/ui/views/onboarding/GuidedTourPagerAdapter;

.field mCloseText:Landroid/widget/TextView;

.field mIndicator:Lmobi/beyondpod/ui/views/base/UnderlinePageIndicator;

.field mNextPage:Landroid/view/View;

.field mNextPageText:Landroid/widget/TextView;

.field mPager:Landroid/support/v4/view/ViewPager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lmobi/beyondpod/ui/views/onboarding/GuidedTour;I)V
    .locals 0

    .line 19
    invoke-direct {p0, p1}, Lmobi/beyondpod/ui/views/onboarding/GuidedTour;->closeTour(I)V

    return-void
.end method

.method private closeTour(I)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 p1, 0x2

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    :goto_0
    const/4 v0, 0x0

    .line 128
    invoke-static {p1, v0}, Lmobi/beyondpod/ui/views/notifications/UserNotificationManager;->setNotificationPreferenceFor(IZ)V

    .line 131
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/onboarding/GuidedTour;->finish()V

    return-void
.end method


# virtual methods
.method protected attachBaseContext(Landroid/content/Context;)V
    .locals 0

    .line 123
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->attachBaseContext(Landroid/content/Context;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 30
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c0073

    .line 31
    invoke-virtual {p0, p1}, Lmobi/beyondpod/ui/views/onboarding/GuidedTour;->setContentView(I)V

    .line 33
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/onboarding/GuidedTour;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "TourType"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 35
    new-instance v0, Lmobi/beyondpod/ui/views/onboarding/GuidedTourPagerAdapter;

    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/onboarding/GuidedTour;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    if-nez p1, :cond_0

    const-string v3, "welcome"

    goto :goto_0

    :cond_0
    const-string v3, "whatsnew"

    :goto_0
    invoke-direct {v0, v2, v3}, Lmobi/beyondpod/ui/views/onboarding/GuidedTourPagerAdapter;-><init>(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    iput-object v0, p0, Lmobi/beyondpod/ui/views/onboarding/GuidedTour;->mAdapter:Lmobi/beyondpod/ui/views/onboarding/GuidedTourPagerAdapter;

    const v0, 0x7f0901b7

    .line 37
    invoke-virtual {p0, v0}, Lmobi/beyondpod/ui/views/onboarding/GuidedTour;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    iput-object v0, p0, Lmobi/beyondpod/ui/views/onboarding/GuidedTour;->mPager:Landroid/support/v4/view/ViewPager;

    .line 38
    iget-object v0, p0, Lmobi/beyondpod/ui/views/onboarding/GuidedTour;->mPager:Landroid/support/v4/view/ViewPager;

    iget-object v2, p0, Lmobi/beyondpod/ui/views/onboarding/GuidedTour;->mAdapter:Lmobi/beyondpod/ui/views/onboarding/GuidedTourPagerAdapter;

    invoke-virtual {v0, v2}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    const v0, 0x7f0902b4

    .line 40
    invoke-virtual {p0, v0}, Lmobi/beyondpod/ui/views/onboarding/GuidedTour;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v2, Lmobi/beyondpod/ui/views/onboarding/GuidedTour$1;

    invoke-direct {v2, p0, p1}, Lmobi/beyondpod/ui/views/onboarding/GuidedTour$1;-><init>(Lmobi/beyondpod/ui/views/onboarding/GuidedTour;I)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0902b6

    .line 49
    invoke-virtual {p0, v0}, Lmobi/beyondpod/ui/views/onboarding/GuidedTour;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lmobi/beyondpod/ui/views/onboarding/GuidedTour;->mNextPage:Landroid/view/View;

    .line 50
    iget-object v0, p0, Lmobi/beyondpod/ui/views/onboarding/GuidedTour;->mNextPage:Landroid/view/View;

    new-instance v2, Lmobi/beyondpod/ui/views/onboarding/GuidedTour$2;

    invoke-direct {v2, p0, p1}, Lmobi/beyondpod/ui/views/onboarding/GuidedTour$2;-><init>(Lmobi/beyondpod/ui/views/onboarding/GuidedTour;I)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f0902b7

    .line 76
    invoke-virtual {p0, p1}, Lmobi/beyondpod/ui/views/onboarding/GuidedTour;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lmobi/beyondpod/ui/views/onboarding/GuidedTour;->mNextPageText:Landroid/widget/TextView;

    const p1, 0x7f0902b5

    .line 77
    invoke-virtual {p0, p1}, Lmobi/beyondpod/ui/views/onboarding/GuidedTour;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lmobi/beyondpod/ui/views/onboarding/GuidedTour;->mCloseText:Landroid/widget/TextView;

    const p1, 0x7f090157

    .line 79
    invoke-virtual {p0, p1}, Lmobi/beyondpod/ui/views/onboarding/GuidedTour;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lmobi/beyondpod/ui/views/base/UnderlinePageIndicator;

    iput-object p1, p0, Lmobi/beyondpod/ui/views/onboarding/GuidedTour;->mIndicator:Lmobi/beyondpod/ui/views/base/UnderlinePageIndicator;

    .line 80
    iget-object p1, p0, Lmobi/beyondpod/ui/views/onboarding/GuidedTour;->mIndicator:Lmobi/beyondpod/ui/views/base/UnderlinePageIndicator;

    iget-object v0, p0, Lmobi/beyondpod/ui/views/onboarding/GuidedTour;->mPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {p1, v0}, Lmobi/beyondpod/ui/views/base/UnderlinePageIndicator;->setViewPager(Landroid/support/v4/view/ViewPager;)V

    .line 82
    iget-object p1, p0, Lmobi/beyondpod/ui/views/onboarding/GuidedTour;->mIndicator:Lmobi/beyondpod/ui/views/base/UnderlinePageIndicator;

    new-instance v0, Lmobi/beyondpod/ui/views/onboarding/GuidedTour$3;

    invoke-direct {v0, p0}, Lmobi/beyondpod/ui/views/onboarding/GuidedTour$3;-><init>(Lmobi/beyondpod/ui/views/onboarding/GuidedTour;)V

    invoke-virtual {p1, v0}, Lmobi/beyondpod/ui/views/base/UnderlinePageIndicator;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 107
    iget-object p1, p0, Lmobi/beyondpod/ui/views/onboarding/GuidedTour;->mAdapter:Lmobi/beyondpod/ui/views/onboarding/GuidedTourPagerAdapter;

    invoke-virtual {p1}, Lmobi/beyondpod/ui/views/onboarding/GuidedTourPagerAdapter;->getCount()I

    move-result p1

    const/4 v0, 0x1

    if-le p1, v0, :cond_1

    .line 109
    iget-object p1, p0, Lmobi/beyondpod/ui/views/onboarding/GuidedTour;->mIndicator:Lmobi/beyondpod/ui/views/base/UnderlinePageIndicator;

    invoke-virtual {p1, v1}, Lmobi/beyondpod/ui/views/base/UnderlinePageIndicator;->setVisibility(I)V

    .line 110
    iget-object p1, p0, Lmobi/beyondpod/ui/views/onboarding/GuidedTour;->mCloseText:Landroid/widget/TextView;

    const v0, 0x7f100236

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 114
    :cond_1
    iget-object p1, p0, Lmobi/beyondpod/ui/views/onboarding/GuidedTour;->mIndicator:Lmobi/beyondpod/ui/views/base/UnderlinePageIndicator;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lmobi/beyondpod/ui/views/base/UnderlinePageIndicator;->setVisibility(I)V

    .line 115
    iget-object p1, p0, Lmobi/beyondpod/ui/views/onboarding/GuidedTour;->mCloseText:Landroid/widget/TextView;

    const v0, 0x7f100255

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 116
    iget-object p1, p0, Lmobi/beyondpod/ui/views/onboarding/GuidedTour;->mNextPageText:Landroid/widget/TextView;

    const v0, 0x7f10023c

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    :goto_1
    return-void
.end method
