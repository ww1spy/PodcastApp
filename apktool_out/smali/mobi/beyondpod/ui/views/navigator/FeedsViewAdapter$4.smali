.class Lmobi/beyondpod/ui/views/navigator/FeedsViewAdapter$4;
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

    .line 303
    iput-object p1, p0, Lmobi/beyondpod/ui/views/navigator/FeedsViewAdapter$4;->this$0:Lmobi/beyondpod/ui/views/navigator/FeedsViewAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 307
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmobi/beyondpod/rsscore/categories/FeedCategory;

    if-nez v0, :cond_0

    return-void

    .line 311
    :cond_0
    iget-object v1, p0, Lmobi/beyondpod/ui/views/navigator/FeedsViewAdapter$4;->this$0:Lmobi/beyondpod/ui/views/navigator/FeedsViewAdapter;

    invoke-static {v1}, Lmobi/beyondpod/ui/views/navigator/FeedsViewAdapter;->access$400(Lmobi/beyondpod/ui/views/navigator/FeedsViewAdapter;)Lmobi/beyondpod/ui/views/navigator/FeedsListView;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lmobi/beyondpod/ui/views/navigator/FeedsListView;->editCategory(Landroid/view/View;Lmobi/beyondpod/rsscore/categories/FeedCategory;)V

    return-void
.end method
