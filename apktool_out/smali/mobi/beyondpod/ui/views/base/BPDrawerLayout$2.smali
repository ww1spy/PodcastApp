.class Lmobi/beyondpod/ui/views/base/BPDrawerLayout$2;
.super Ljava/lang/Object;
.source "BPDrawerLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobi/beyondpod/ui/views/base/BPDrawerLayout;->peekDrawer(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmobi/beyondpod/ui/views/base/BPDrawerLayout;

.field final synthetic val$whichDrawer:I


# direct methods
.method constructor <init>(Lmobi/beyondpod/ui/views/base/BPDrawerLayout;I)V
    .locals 0

    .line 52
    iput-object p1, p0, Lmobi/beyondpod/ui/views/base/BPDrawerLayout$2;->this$0:Lmobi/beyondpod/ui/views/base/BPDrawerLayout;

    iput p2, p0, Lmobi/beyondpod/ui/views/base/BPDrawerLayout$2;->val$whichDrawer:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 56
    iget-object v0, p0, Lmobi/beyondpod/ui/views/base/BPDrawerLayout$2;->this$0:Lmobi/beyondpod/ui/views/base/BPDrawerLayout;

    iget v1, p0, Lmobi/beyondpod/ui/views/base/BPDrawerLayout$2;->val$whichDrawer:I

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lmobi/beyondpod/ui/views/base/BPDrawerLayout;->access$000(Lmobi/beyondpod/ui/views/base/BPDrawerLayout;II)V

    return-void
.end method
