.class Lmobi/beyondpod/ui/views/onboarding/GuidedTour$3;
.super Ljava/lang/Object;
.source "GuidedTour.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobi/beyondpod/ui/views/onboarding/GuidedTour;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmobi/beyondpod/ui/views/onboarding/GuidedTour;


# direct methods
.method constructor <init>(Lmobi/beyondpod/ui/views/onboarding/GuidedTour;)V
    .locals 0

    .line 83
    iput-object p1, p0, Lmobi/beyondpod/ui/views/onboarding/GuidedTour$3;->this$0:Lmobi/beyondpod/ui/views/onboarding/GuidedTour;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0

    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0

    return-void
.end method

.method public onPageSelected(I)V
    .locals 1

    .line 94
    iget-object v0, p0, Lmobi/beyondpod/ui/views/onboarding/GuidedTour$3;->this$0:Lmobi/beyondpod/ui/views/onboarding/GuidedTour;

    iget-object v0, v0, Lmobi/beyondpod/ui/views/onboarding/GuidedTour;->mAdapter:Lmobi/beyondpod/ui/views/onboarding/GuidedTourPagerAdapter;

    invoke-virtual {v0}, Lmobi/beyondpod/ui/views/onboarding/GuidedTourPagerAdapter;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ge p1, v0, :cond_0

    .line 95
    iget-object p1, p0, Lmobi/beyondpod/ui/views/onboarding/GuidedTour$3;->this$0:Lmobi/beyondpod/ui/views/onboarding/GuidedTour;

    iget-object p1, p1, Lmobi/beyondpod/ui/views/onboarding/GuidedTour;->mNextPageText:Landroid/widget/TextView;

    const v0, 0x7f100235

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 97
    :cond_0
    iget-object p1, p0, Lmobi/beyondpod/ui/views/onboarding/GuidedTour$3;->this$0:Lmobi/beyondpod/ui/views/onboarding/GuidedTour;

    iget-object p1, p1, Lmobi/beyondpod/ui/views/onboarding/GuidedTour;->mNextPageText:Landroid/widget/TextView;

    invoke-static {}, Lmobi/beyondpod/rsscore/rss/PolicyManager;->isUnlocked()Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x7f100238

    goto :goto_0

    :cond_1
    const v0, 0x7f100237

    :goto_0
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    :goto_1
    return-void
.end method
