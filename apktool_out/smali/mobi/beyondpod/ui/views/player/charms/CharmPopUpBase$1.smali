.class Lmobi/beyondpod/ui/views/player/charms/CharmPopUpBase$1;
.super Ljava/lang/Object;
.source "CharmPopUpBase.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobi/beyondpod/ui/views/player/charms/CharmPopUpBase;
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

    .line 47
    iput-object p1, p0, Lmobi/beyondpod/ui/views/player/charms/CharmPopUpBase$1;->this$0:Lmobi/beyondpod/ui/views/player/charms/CharmPopUpBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 51
    iget-object v0, p0, Lmobi/beyondpod/ui/views/player/charms/CharmPopUpBase$1;->this$0:Lmobi/beyondpod/ui/views/player/charms/CharmPopUpBase;

    invoke-static {v0}, Lmobi/beyondpod/ui/views/player/charms/CharmPopUpBase;->access$000(Lmobi/beyondpod/ui/views/player/charms/CharmPopUpBase;)Lmobi/beyondpod/ui/views/player/charms/CharmPopUpBase$CharmListener;

    move-result-object v0

    invoke-interface {v0}, Lmobi/beyondpod/ui/views/player/charms/CharmPopUpBase$CharmListener;->onCharmPopupShown()V

    return-void
.end method
