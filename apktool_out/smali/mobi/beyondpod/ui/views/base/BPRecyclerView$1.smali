.class Lmobi/beyondpod/ui/views/base/BPRecyclerView$1;
.super Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;
.source "BPRecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobi/beyondpod/ui/views/base/BPRecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmobi/beyondpod/ui/views/base/BPRecyclerView;


# direct methods
.method constructor <init>(Lmobi/beyondpod/ui/views/base/BPRecyclerView;)V
    .locals 0

    .line 57
    iput-object p1, p0, Lmobi/beyondpod/ui/views/base/BPRecyclerView$1;->this$0:Lmobi/beyondpod/ui/views/base/BPRecyclerView;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    .line 61
    invoke-super {p0}, Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;->onChanged()V

    .line 62
    iget-object v0, p0, Lmobi/beyondpod/ui/views/base/BPRecyclerView$1;->this$0:Lmobi/beyondpod/ui/views/base/BPRecyclerView;

    invoke-static {v0}, Lmobi/beyondpod/ui/views/base/BPRecyclerView;->access$000(Lmobi/beyondpod/ui/views/base/BPRecyclerView;)V

    return-void
.end method
