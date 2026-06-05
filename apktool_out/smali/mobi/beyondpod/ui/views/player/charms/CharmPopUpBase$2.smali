.class Lmobi/beyondpod/ui/views/player/charms/CharmPopUpBase$2;
.super Ljava/lang/Object;
.source "CharmPopUpBase.java"

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobi/beyondpod/ui/views/player/charms/CharmPopUpBase;-><init>(Landroid/content/Context;ILmobi/beyondpod/ui/views/player/charms/CharmPopUpBase$CharmListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmobi/beyondpod/ui/views/player/charms/CharmPopUpBase;


# direct methods
.method constructor <init>(Lmobi/beyondpod/ui/views/player/charms/CharmPopUpBase;)V
    .locals 0

    .line 77
    iput-object p1, p0, Lmobi/beyondpod/ui/views/player/charms/CharmPopUpBase$2;->this$0:Lmobi/beyondpod/ui/views/player/charms/CharmPopUpBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss()V
    .locals 2

    .line 81
    iget-object v0, p0, Lmobi/beyondpod/ui/views/player/charms/CharmPopUpBase$2;->this$0:Lmobi/beyondpod/ui/views/player/charms/CharmPopUpBase;

    invoke-static {v0}, Lmobi/beyondpod/ui/views/player/charms/CharmPopUpBase;->access$100(Lmobi/beyondpod/ui/views/player/charms/CharmPopUpBase;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 82
    iget-object v0, p0, Lmobi/beyondpod/ui/views/player/charms/CharmPopUpBase$2;->this$0:Lmobi/beyondpod/ui/views/player/charms/CharmPopUpBase;

    invoke-static {v0}, Lmobi/beyondpod/ui/views/player/charms/CharmPopUpBase;->access$000(Lmobi/beyondpod/ui/views/player/charms/CharmPopUpBase;)Lmobi/beyondpod/ui/views/player/charms/CharmPopUpBase$CharmListener;

    move-result-object v0

    invoke-interface {v0}, Lmobi/beyondpod/ui/views/player/charms/CharmPopUpBase$CharmListener;->onCharmPopupDismissed()V

    return-void
.end method
