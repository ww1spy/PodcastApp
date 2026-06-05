.class Lmobi/beyondpod/ui/views/onboarding/GuidedTour$2;
.super Ljava/lang/Object;
.source "GuidedTour.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

.field final synthetic val$type:I


# direct methods
.method constructor <init>(Lmobi/beyondpod/ui/views/onboarding/GuidedTour;I)V
    .locals 0

    .line 51
    iput-object p1, p0, Lmobi/beyondpod/ui/views/onboarding/GuidedTour$2;->this$0:Lmobi/beyondpod/ui/views/onboarding/GuidedTour;

    iput p2, p0, Lmobi/beyondpod/ui/views/onboarding/GuidedTour$2;->val$type:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 56
    iget-object p1, p0, Lmobi/beyondpod/ui/views/onboarding/GuidedTour$2;->this$0:Lmobi/beyondpod/ui/views/onboarding/GuidedTour;

    iget-object p1, p1, Lmobi/beyondpod/ui/views/onboarding/GuidedTour;->mAdapter:Lmobi/beyondpod/ui/views/onboarding/GuidedTourPagerAdapter;

    invoke-virtual {p1}, Lmobi/beyondpod/ui/views/onboarding/GuidedTourPagerAdapter;->getCount()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 58
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->versionUpgradeNotesURL()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lmobi/beyondpod/ui/commands/CommandManagerBase;->cmdOpenExternalBrowser(Ljava/lang/String;)V

    .line 59
    iget-object p1, p0, Lmobi/beyondpod/ui/views/onboarding/GuidedTour$2;->this$0:Lmobi/beyondpod/ui/views/onboarding/GuidedTour;

    iget v0, p0, Lmobi/beyondpod/ui/views/onboarding/GuidedTour$2;->val$type:I

    invoke-static {p1, v0}, Lmobi/beyondpod/ui/views/onboarding/GuidedTour;->access$000(Lmobi/beyondpod/ui/views/onboarding/GuidedTour;I)V

    return-void

    .line 63
    :cond_0
    iget-object p1, p0, Lmobi/beyondpod/ui/views/onboarding/GuidedTour$2;->this$0:Lmobi/beyondpod/ui/views/onboarding/GuidedTour;

    iget-object p1, p1, Lmobi/beyondpod/ui/views/onboarding/GuidedTour;->mPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {p1}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result p1

    iget-object v1, p0, Lmobi/beyondpod/ui/views/onboarding/GuidedTour$2;->this$0:Lmobi/beyondpod/ui/views/onboarding/GuidedTour;

    iget-object v1, v1, Lmobi/beyondpod/ui/views/onboarding/GuidedTour;->mAdapter:Lmobi/beyondpod/ui/views/onboarding/GuidedTourPagerAdapter;

    invoke-virtual {v1}, Lmobi/beyondpod/ui/views/onboarding/GuidedTourPagerAdapter;->getCount()I

    move-result v1

    sub-int/2addr v1, v0

    if-ge p1, v1, :cond_1

    .line 65
    iget-object p1, p0, Lmobi/beyondpod/ui/views/onboarding/GuidedTour$2;->this$0:Lmobi/beyondpod/ui/views/onboarding/GuidedTour;

    iget-object p1, p1, Lmobi/beyondpod/ui/views/onboarding/GuidedTour;->mPager:Landroid/support/v4/view/ViewPager;

    iget-object v1, p0, Lmobi/beyondpod/ui/views/onboarding/GuidedTour$2;->this$0:Lmobi/beyondpod/ui/views/onboarding/GuidedTour;

    iget-object v1, v1, Lmobi/beyondpod/ui/views/onboarding/GuidedTour;->mPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v1

    add-int/2addr v1, v0

    invoke-virtual {p1, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    goto :goto_0

    .line 68
    :cond_1
    invoke-static {}, Lmobi/beyondpod/rsscore/rss/PolicyManager;->isUnlocked()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 69
    iget-object p1, p0, Lmobi/beyondpod/ui/views/onboarding/GuidedTour$2;->this$0:Lmobi/beyondpod/ui/views/onboarding/GuidedTour;

    iget v0, p0, Lmobi/beyondpod/ui/views/onboarding/GuidedTour$2;->val$type:I

    invoke-static {p1, v0}, Lmobi/beyondpod/ui/views/onboarding/GuidedTour;->access$000(Lmobi/beyondpod/ui/views/onboarding/GuidedTour;I)V

    goto :goto_0

    .line 71
    :cond_2
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->faqLiteProURL()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lmobi/beyondpod/ui/commands/CommandManagerBase;->cmdOpenExternalBrowser(Ljava/lang/String;)V

    :goto_0
    return-void
.end method
