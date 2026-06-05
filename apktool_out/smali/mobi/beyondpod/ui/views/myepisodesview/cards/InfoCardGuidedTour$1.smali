.class Lmobi/beyondpod/ui/views/myepisodesview/cards/InfoCardGuidedTour$1;
.super Ljava/lang/Object;
.source "InfoCardGuidedTour.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobi/beyondpod/ui/views/myepisodesview/cards/InfoCardGuidedTour;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmobi/beyondpod/ui/views/myepisodesview/cards/InfoCardGuidedTour;


# direct methods
.method constructor <init>(Lmobi/beyondpod/ui/views/myepisodesview/cards/InfoCardGuidedTour;)V
    .locals 0

    .line 31
    iput-object p1, p0, Lmobi/beyondpod/ui/views/myepisodesview/cards/InfoCardGuidedTour$1;->this$0:Lmobi/beyondpod/ui/views/myepisodesview/cards/InfoCardGuidedTour;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 35
    iget-object p1, p0, Lmobi/beyondpod/ui/views/myepisodesview/cards/InfoCardGuidedTour$1;->this$0:Lmobi/beyondpod/ui/views/myepisodesview/cards/InfoCardGuidedTour;

    iget p1, p1, Lmobi/beyondpod/ui/views/myepisodesview/cards/InfoCardGuidedTour;->_CardType:I

    iget-object v0, p0, Lmobi/beyondpod/ui/views/myepisodesview/cards/InfoCardGuidedTour$1;->this$0:Lmobi/beyondpod/ui/views/myepisodesview/cards/InfoCardGuidedTour;

    iget-object v0, v0, Lmobi/beyondpod/ui/views/myepisodesview/cards/InfoCardGuidedTour;->_Owner:Lmobi/beyondpod/ui/views/myepisodesview/cards/InfoCardManager$IInfoCardAdapterOwner;

    invoke-interface {v0}, Lmobi/beyondpod/ui/views/myepisodesview/cards/InfoCardManager$IInfoCardAdapterOwner;->getOwnerActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {p1, v0}, Lmobi/beyondpod/ui/commands/CommandManager;->cmdOpenGuidedTour(ILandroid/support/v4/app/FragmentActivity;)V

    return-void
.end method
