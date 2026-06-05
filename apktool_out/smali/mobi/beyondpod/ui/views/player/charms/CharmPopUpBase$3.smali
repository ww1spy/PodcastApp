.class Lmobi/beyondpod/ui/views/player/charms/CharmPopUpBase$3;
.super Ljava/lang/Object;
.source "CharmPopUpBase.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

    .line 90
    iput-object p1, p0, Lmobi/beyondpod/ui/views/player/charms/CharmPopUpBase$3;->this$0:Lmobi/beyondpod/ui/views/player/charms/CharmPopUpBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 94
    iget-object p1, p0, Lmobi/beyondpod/ui/views/player/charms/CharmPopUpBase$3;->this$0:Lmobi/beyondpod/ui/views/player/charms/CharmPopUpBase;

    invoke-virtual {p1}, Lmobi/beyondpod/ui/views/player/charms/CharmPopUpBase;->dismiss()V

    return-void
.end method
