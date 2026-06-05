.class public Lmobi/beyondpod/ui/views/onboarding/startup/FirstRun;
.super Landroid/support/v4/app/FragmentActivity;
.source "FirstRun.java"


# static fields
.field public static ACTIVITY_REQUEST_FirstRun:I = 0x6f1

.field private static _IsActive:Z


# instance fields
.field _Configurator:Lmobi/beyondpod/ui/views/onboarding/startup/FirstRunConfigurator;

.field _Continue:Landroid/view/View;

.field _ContinueText:Landroid/widget/TextView;

.field _Exit:Landroid/view/View;

.field _Progress:Landroid/view/View;

.field mAdapter:Lmobi/beyondpod/ui/views/onboarding/startup/FirstRunPagerAdapter;

.field mPager:Landroid/support/v4/view/ViewPager;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lmobi/beyondpod/ui/views/onboarding/startup/FirstRun;)V
    .locals 0

    .line 13
    invoke-direct {p0}, Lmobi/beyondpod/ui/views/onboarding/startup/FirstRun;->updatePageButtons()V

    return-void
.end method

.method private enableContinue(Z)V
    .locals 1

    .line 126
    iget-object v0, p0, Lmobi/beyondpod/ui/views/onboarding/startup/FirstRun;->_Continue:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 127
    iget-object v0, p0, Lmobi/beyondpod/ui/views/onboarding/startup/FirstRun;->_ContinueText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    return-void
.end method

.method public static isActive()Z
    .locals 1

    .line 26
    sget-boolean v0, Lmobi/beyondpod/ui/views/onboarding/startup/FirstRun;->_IsActive:Z

    return v0
.end method

.method private updatePageButtons()V
    .locals 5

    .line 103
    iget-object v0, p0, Lmobi/beyondpod/ui/views/onboarding/startup/FirstRun;->mPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/16 v3, 0x8

    if-nez v0, :cond_0

    .line 107
    iget-object v4, p0, Lmobi/beyondpod/ui/views/onboarding/startup/FirstRun;->_Exit:Landroid/view/View;

    invoke-virtual {v4, v3}, Landroid/view/View;->setVisibility(I)V

    .line 108
    iget-object v3, p0, Lmobi/beyondpod/ui/views/onboarding/startup/FirstRun;->_ContinueText:Landroid/widget/TextView;

    const v4, 0x7f10023b

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :cond_0
    if-ne v0, v2, :cond_1

    .line 112
    iget-object v3, p0, Lmobi/beyondpod/ui/views/onboarding/startup/FirstRun;->_Exit:Landroid/view/View;

    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    .line 113
    iget-object v3, p0, Lmobi/beyondpod/ui/views/onboarding/startup/FirstRun;->_ContinueText:Landroid/widget/TextView;

    const v4, 0x7f100235

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 117
    :cond_1
    iget-object v4, p0, Lmobi/beyondpod/ui/views/onboarding/startup/FirstRun;->_Exit:Landroid/view/View;

    invoke-virtual {v4, v3}, Landroid/view/View;->setVisibility(I)V

    .line 118
    iget-object v3, p0, Lmobi/beyondpod/ui/views/onboarding/startup/FirstRun;->_ContinueText:Landroid/widget/TextView;

    const v4, 0x7f100238

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    :goto_0
    if-eqz v0, :cond_2

    .line 121
    iget-object v0, p0, Lmobi/beyondpod/ui/views/onboarding/startup/FirstRun;->_Configurator:Lmobi/beyondpod/ui/views/onboarding/startup/FirstRunConfigurator;

    invoke-virtual {v0}, Lmobi/beyondpod/ui/views/onboarding/startup/FirstRunConfigurator;->canBuildContent()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    move v1, v2

    :cond_3
    invoke-direct {p0, v1}, Lmobi/beyondpod/ui/views/onboarding/startup/FirstRun;->enableContinue(Z)V

    return-void
.end method


# virtual methods
.method protected attachBaseContext(Landroid/content/Context;)V
    .locals 0

    .line 154
    invoke-static {p1}, Luk/co/chrisjenx/calligraphy/CalligraphyContextWrapper;->wrap(Landroid/content/Context;)Landroid/content/ContextWrapper;

    move-result-object p1

    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->attachBaseContext(Landroid/content/Context;)V

    return-void
.end method

.method public categorySelectionChanged(Ljava/lang/String;)V
    .locals 1

    .line 140
    iget-object v0, p0, Lmobi/beyondpod/ui/views/onboarding/startup/FirstRun;->_Configurator:Lmobi/beyondpod/ui/views/onboarding/startup/FirstRunConfigurator;

    invoke-virtual {v0, p1}, Lmobi/beyondpod/ui/views/onboarding/startup/FirstRunConfigurator;->setSelectedCategories(Ljava/lang/String;)V

    .line 141
    invoke-direct {p0}, Lmobi/beyondpod/ui/views/onboarding/startup/FirstRun;->updatePageButtons()V

    return-void
.end method

.method public downloadOptionsChanged(ZZZ)V
    .locals 1

    .line 146
    iget-object v0, p0, Lmobi/beyondpod/ui/views/onboarding/startup/FirstRun;->_Configurator:Lmobi/beyondpod/ui/views/onboarding/startup/FirstRunConfigurator;

    invoke-virtual {v0, p1, p2}, Lmobi/beyondpod/ui/views/onboarding/startup/FirstRunConfigurator;->downloadOptionsChanged(ZZ)V

    .line 147
    iget-object p1, p0, Lmobi/beyondpod/ui/views/onboarding/startup/FirstRun;->_Configurator:Lmobi/beyondpod/ui/views/onboarding/startup/FirstRunConfigurator;

    invoke-virtual {p1, p3}, Lmobi/beyondpod/ui/views/onboarding/startup/FirstRunConfigurator;->analyticsOptionsChanged(Z)V

    .line 148
    invoke-direct {p0}, Lmobi/beyondpod/ui/views/onboarding/startup/FirstRun;->updatePageButtons()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 32
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c006d

    .line 33
    invoke-virtual {p0, p1}, Lmobi/beyondpod/ui/views/onboarding/startup/FirstRun;->setContentView(I)V

    const/4 p1, 0x0

    .line 35
    invoke-virtual {p0, p1}, Lmobi/beyondpod/ui/views/onboarding/startup/FirstRun;->setFinishOnTouchOutside(Z)V

    const p1, 0x7f0902b6

    .line 37
    invoke-virtual {p0, p1}, Lmobi/beyondpod/ui/views/onboarding/startup/FirstRun;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lmobi/beyondpod/ui/views/onboarding/startup/FirstRun;->_Continue:Landroid/view/View;

    const p1, 0x7f0902b7

    .line 38
    invoke-virtual {p0, p1}, Lmobi/beyondpod/ui/views/onboarding/startup/FirstRun;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lmobi/beyondpod/ui/views/onboarding/startup/FirstRun;->_ContinueText:Landroid/widget/TextView;

    const p1, 0x7f0902b8

    .line 39
    invoke-virtual {p0, p1}, Lmobi/beyondpod/ui/views/onboarding/startup/FirstRun;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lmobi/beyondpod/ui/views/onboarding/startup/FirstRun;->_Progress:Landroid/view/View;

    const p1, 0x7f0902b4

    .line 40
    invoke-virtual {p0, p1}, Lmobi/beyondpod/ui/views/onboarding/startup/FirstRun;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lmobi/beyondpod/ui/views/onboarding/startup/FirstRun;->_Exit:Landroid/view/View;

    .line 42
    new-instance p1, Lmobi/beyondpod/ui/views/onboarding/startup/FirstRunConfigurator;

    iget-object v0, p0, Lmobi/beyondpod/ui/views/onboarding/startup/FirstRun;->_Progress:Landroid/view/View;

    invoke-direct {p1, p0, v0}, Lmobi/beyondpod/ui/views/onboarding/startup/FirstRunConfigurator;-><init>(Landroid/support/v4/app/FragmentActivity;Landroid/view/View;)V

    iput-object p1, p0, Lmobi/beyondpod/ui/views/onboarding/startup/FirstRun;->_Configurator:Lmobi/beyondpod/ui/views/onboarding/startup/FirstRunConfigurator;

    .line 44
    iget-object p1, p0, Lmobi/beyondpod/ui/views/onboarding/startup/FirstRun;->_Exit:Landroid/view/View;

    new-instance v0, Lmobi/beyondpod/ui/views/onboarding/startup/FirstRun$1;

    invoke-direct {v0, p0}, Lmobi/beyondpod/ui/views/onboarding/startup/FirstRun$1;-><init>(Lmobi/beyondpod/ui/views/onboarding/startup/FirstRun;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 53
    iget-object p1, p0, Lmobi/beyondpod/ui/views/onboarding/startup/FirstRun;->_Continue:Landroid/view/View;

    new-instance v0, Lmobi/beyondpod/ui/views/onboarding/startup/FirstRun$2;

    invoke-direct {v0, p0}, Lmobi/beyondpod/ui/views/onboarding/startup/FirstRun$2;-><init>(Lmobi/beyondpod/ui/views/onboarding/startup/FirstRun;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 62
    new-instance p1, Lmobi/beyondpod/ui/views/onboarding/startup/FirstRunPagerAdapter;

    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/onboarding/startup/FirstRun;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const-string v1, "splash"

    invoke-direct {p1, v0, v1}, Lmobi/beyondpod/ui/views/onboarding/startup/FirstRunPagerAdapter;-><init>(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    iput-object p1, p0, Lmobi/beyondpod/ui/views/onboarding/startup/FirstRun;->mAdapter:Lmobi/beyondpod/ui/views/onboarding/startup/FirstRunPagerAdapter;

    const p1, 0x7f0901b7

    .line 63
    invoke-virtual {p0, p1}, Lmobi/beyondpod/ui/views/onboarding/startup/FirstRun;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/support/v4/view/ViewPager;

    iput-object p1, p0, Lmobi/beyondpod/ui/views/onboarding/startup/FirstRun;->mPager:Landroid/support/v4/view/ViewPager;

    .line 64
    iget-object p1, p0, Lmobi/beyondpod/ui/views/onboarding/startup/FirstRun;->mPager:Landroid/support/v4/view/ViewPager;

    iget-object v0, p0, Lmobi/beyondpod/ui/views/onboarding/startup/FirstRun;->mAdapter:Lmobi/beyondpod/ui/views/onboarding/startup/FirstRunPagerAdapter;

    invoke-virtual {p1, v0}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 66
    iget-object p1, p0, Lmobi/beyondpod/ui/views/onboarding/startup/FirstRun;->mPager:Landroid/support/v4/view/ViewPager;

    new-instance v0, Lmobi/beyondpod/ui/views/onboarding/startup/FirstRun$3;

    invoke-direct {v0, p0}, Lmobi/beyondpod/ui/views/onboarding/startup/FirstRun$3;-><init>(Lmobi/beyondpod/ui/views/onboarding/startup/FirstRun;)V

    invoke-virtual {p1, v0}, Landroid/support/v4/view/ViewPager;->addOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 87
    invoke-direct {p0}, Lmobi/beyondpod/ui/views/onboarding/startup/FirstRun;->updatePageButtons()V

    const/4 p1, 0x1

    .line 88
    sput-boolean p1, Lmobi/beyondpod/ui/views/onboarding/startup/FirstRun;->_IsActive:Z

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 133
    iget-object v0, p0, Lmobi/beyondpod/ui/views/onboarding/startup/FirstRun;->_Configurator:Lmobi/beyondpod/ui/views/onboarding/startup/FirstRunConfigurator;

    invoke-virtual {v0}, Lmobi/beyondpod/ui/views/onboarding/startup/FirstRunConfigurator;->release()V

    const/4 v0, 0x0

    .line 134
    sput-boolean v0, Lmobi/beyondpod/ui/views/onboarding/startup/FirstRun;->_IsActive:Z

    .line 135
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onDestroy()V

    return-void
.end method

.method public onWizardContinue()V
    .locals 2

    .line 94
    iget-object v0, p0, Lmobi/beyondpod/ui/views/onboarding/startup/FirstRun;->mPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 95
    iget-object v1, p0, Lmobi/beyondpod/ui/views/onboarding/startup/FirstRun;->mAdapter:Lmobi/beyondpod/ui/views/onboarding/startup/FirstRunPagerAdapter;

    invoke-virtual {v1}, Lmobi/beyondpod/ui/views/onboarding/startup/FirstRunPagerAdapter;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 96
    iget-object v1, p0, Lmobi/beyondpod/ui/views/onboarding/startup/FirstRun;->mPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1, v0}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    goto :goto_0

    .line 98
    :cond_0
    iget-object v0, p0, Lmobi/beyondpod/ui/views/onboarding/startup/FirstRun;->_Configurator:Lmobi/beyondpod/ui/views/onboarding/startup/FirstRunConfigurator;

    invoke-virtual {v0}, Lmobi/beyondpod/ui/views/onboarding/startup/FirstRunConfigurator;->buildSampleContent()V

    :goto_0
    return-void
.end method
