.class public Lmobi/beyondpod/ui/views/base/BPRecyclerView;
.super Landroid/support/v7/widget/RecyclerView;
.source "BPRecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmobi/beyondpod/ui/views/base/BPRecyclerView$ItemSpacerDecoration;
    }
.end annotation


# instance fields
.field protected emptyView:Landroid/view/View;

.field final observer:Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 35
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 31
    iput-object p1, p0, Lmobi/beyondpod/ui/views/base/BPRecyclerView;->emptyView:Landroid/view/View;

    .line 56
    new-instance p1, Lmobi/beyondpod/ui/views/base/BPRecyclerView$1;

    invoke-direct {p1, p0}, Lmobi/beyondpod/ui/views/base/BPRecyclerView$1;-><init>(Lmobi/beyondpod/ui/views/base/BPRecyclerView;)V

    iput-object p1, p0, Lmobi/beyondpod/ui/views/base/BPRecyclerView;->observer:Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 40
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 31
    iput-object p1, p0, Lmobi/beyondpod/ui/views/base/BPRecyclerView;->emptyView:Landroid/view/View;

    .line 56
    new-instance p1, Lmobi/beyondpod/ui/views/base/BPRecyclerView$1;

    invoke-direct {p1, p0}, Lmobi/beyondpod/ui/views/base/BPRecyclerView$1;-><init>(Lmobi/beyondpod/ui/views/base/BPRecyclerView;)V

    iput-object p1, p0, Lmobi/beyondpod/ui/views/base/BPRecyclerView;->observer:Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 45
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 31
    iput-object p1, p0, Lmobi/beyondpod/ui/views/base/BPRecyclerView;->emptyView:Landroid/view/View;

    .line 56
    new-instance p1, Lmobi/beyondpod/ui/views/base/BPRecyclerView$1;

    invoke-direct {p1, p0}, Lmobi/beyondpod/ui/views/base/BPRecyclerView$1;-><init>(Lmobi/beyondpod/ui/views/base/BPRecyclerView;)V

    iput-object p1, p0, Lmobi/beyondpod/ui/views/base/BPRecyclerView;->observer:Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;

    return-void
.end method

.method static synthetic access$000(Lmobi/beyondpod/ui/views/base/BPRecyclerView;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Lmobi/beyondpod/ui/views/base/BPRecyclerView;->checkIfEmpty()V

    return-void
.end method

.method private checkIfEmpty()V
    .locals 2

    .line 50
    iget-object v0, p0, Lmobi/beyondpod/ui/views/base/BPRecyclerView;->emptyView:Landroid/view/View;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/base/BPRecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 52
    iget-object v0, p0, Lmobi/beyondpod/ui/views/base/BPRecyclerView;->emptyView:Landroid/view/View;

    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/base/BPRecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v1

    if-lez v1, :cond_0

    const/16 v1, 0x8

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void
.end method


# virtual methods
.method public setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V
    .locals 2

    .line 69
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/base/BPRecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 72
    iget-object v1, p0, Lmobi/beyondpod/ui/views/base/BPRecyclerView;->observer:Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView$Adapter;->unregisterAdapterDataObserver(Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;)V

    .line 74
    :cond_0
    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    if-eqz p1, :cond_1

    .line 77
    iget-object v0, p0, Lmobi/beyondpod/ui/views/base/BPRecyclerView;->observer:Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView$Adapter;->registerAdapterDataObserver(Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;)V

    :cond_1
    return-void
.end method

.method public setEmptyView(Landroid/view/View;)V
    .locals 0

    .line 83
    iput-object p1, p0, Lmobi/beyondpod/ui/views/base/BPRecyclerView;->emptyView:Landroid/view/View;

    .line 84
    invoke-direct {p0}, Lmobi/beyondpod/ui/views/base/BPRecyclerView;->checkIfEmpty()V

    return-void
.end method
