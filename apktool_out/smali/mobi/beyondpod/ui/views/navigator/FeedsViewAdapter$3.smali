.class Lmobi/beyondpod/ui/views/navigator/FeedsViewAdapter$3;
.super Ljava/lang/Object;
.source "FeedsViewAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobi/beyondpod/ui/views/navigator/FeedsViewAdapter;->buildCategoryViewItem(Landroid/view/View;Lmobi/beyondpod/rsscore/categories/FeedCategory;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmobi/beyondpod/ui/views/navigator/FeedsViewAdapter;


# direct methods
.method constructor <init>(Lmobi/beyondpod/ui/views/navigator/FeedsViewAdapter;)V
    .locals 0

    .line 291
    iput-object p1, p0, Lmobi/beyondpod/ui/views/navigator/FeedsViewAdapter$3;->this$0:Lmobi/beyondpod/ui/views/navigator/FeedsViewAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    const v0, 0x7f0901a4

    .line 295
    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmobi/beyondpod/rsscore/categories/FeedCategory;

    if-nez v0, :cond_0

    return-void

    .line 299
    :cond_0
    iget-object v1, p0, Lmobi/beyondpod/ui/views/navigator/FeedsViewAdapter$3;->this$0:Lmobi/beyondpod/ui/views/navigator/FeedsViewAdapter;

    check-cast p1, Landroid/widget/ImageView;

    iget-object v2, p0, Lmobi/beyondpod/ui/views/navigator/FeedsViewAdapter$3;->this$0:Lmobi/beyondpod/ui/views/navigator/FeedsViewAdapter;

    invoke-static {v2}, Lmobi/beyondpod/ui/views/navigator/FeedsViewAdapter;->access$300(Lmobi/beyondpod/ui/views/navigator/FeedsViewAdapter;)Lmobi/beyondpod/ui/views/navigator/FeedListViewDataSource;

    move-result-object v2

    invoke-virtual {v2, v0}, Lmobi/beyondpod/ui/views/navigator/FeedListViewDataSource;->isCategoryExpanded(Lmobi/beyondpod/rsscore/categories/FeedCategory;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, p1, v0, v2}, Lmobi/beyondpod/ui/views/navigator/FeedsViewAdapter;->expandCollapseCategory(Landroid/widget/ImageView;Lmobi/beyondpod/rsscore/categories/FeedCategory;Z)V

    return-void
.end method
