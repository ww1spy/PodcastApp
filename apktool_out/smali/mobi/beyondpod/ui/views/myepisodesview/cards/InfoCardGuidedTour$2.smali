.class Lmobi/beyondpod/ui/views/myepisodesview/cards/InfoCardGuidedTour$2;
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

    .line 40
    iput-object p1, p0, Lmobi/beyondpod/ui/views/myepisodesview/cards/InfoCardGuidedTour$2;->this$0:Lmobi/beyondpod/ui/views/myepisodesview/cards/InfoCardGuidedTour;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 44
    iget-object p1, p0, Lmobi/beyondpod/ui/views/myepisodesview/cards/InfoCardGuidedTour$2;->this$0:Lmobi/beyondpod/ui/views/myepisodesview/cards/InfoCardGuidedTour;

    iget-object p1, p1, Lmobi/beyondpod/ui/views/myepisodesview/cards/InfoCardGuidedTour;->_Context:Landroid/content/Context;

    invoke-static {p1}, Lmobi/beyondpod/ui/commands/CommandManager;->cmdUnlockBeyondPod(Landroid/content/Context;)V

    return-void
.end method
