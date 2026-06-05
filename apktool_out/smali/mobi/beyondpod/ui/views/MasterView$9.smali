.class Lmobi/beyondpod/ui/views/MasterView$9;
.super Ljava/lang/Object;
.source "MasterView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobi/beyondpod/ui/views/MasterView;->introduceNavigator(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmobi/beyondpod/ui/views/MasterView;


# direct methods
.method constructor <init>(Lmobi/beyondpod/ui/views/MasterView;)V
    .locals 0

    .line 872
    iput-object p1, p0, Lmobi/beyondpod/ui/views/MasterView$9;->this$0:Lmobi/beyondpod/ui/views/MasterView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 876
    iget-object v0, p0, Lmobi/beyondpod/ui/views/MasterView$9;->this$0:Lmobi/beyondpod/ui/views/MasterView;

    invoke-static {v0}, Lmobi/beyondpod/ui/views/MasterView;->access$600(Lmobi/beyondpod/ui/views/MasterView;)Lmobi/beyondpod/ui/views/base/BPDrawerLayout;

    move-result-object v0

    const v1, 0x800003

    invoke-virtual {v0, v1}, Lmobi/beyondpod/ui/views/base/BPDrawerLayout;->openDrawer(I)V

    return-void
.end method
