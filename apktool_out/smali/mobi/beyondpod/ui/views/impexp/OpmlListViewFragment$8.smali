.class Lmobi/beyondpod/ui/views/impexp/OpmlListViewFragment$8;
.super Ljava/lang/Object;
.source "OpmlListViewFragment.java"

# interfaces
.implements Lmobi/beyondpod/ui/dialogs/SelectCategoryDialog$OnCategorySelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobi/beyondpod/ui/views/impexp/OpmlListViewFragment;->batchImport()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmobi/beyondpod/ui/views/impexp/OpmlListViewFragment;

.field final synthetic val$feeds:Lmobi/beyondpod/rsscore/FeedList;


# direct methods
.method constructor <init>(Lmobi/beyondpod/ui/views/impexp/OpmlListViewFragment;Lmobi/beyondpod/rsscore/FeedList;)V
    .locals 0

    .line 527
    iput-object p1, p0, Lmobi/beyondpod/ui/views/impexp/OpmlListViewFragment$8;->this$0:Lmobi/beyondpod/ui/views/impexp/OpmlListViewFragment;

    iput-object p2, p0, Lmobi/beyondpod/ui/views/impexp/OpmlListViewFragment$8;->val$feeds:Lmobi/beyondpod/rsscore/FeedList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCategorySelected(Lmobi/beyondpod/rsscore/categories/FeedCategory;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 534
    :cond_0
    iget-object v0, p0, Lmobi/beyondpod/ui/views/impexp/OpmlListViewFragment$8;->val$feeds:Lmobi/beyondpod/rsscore/FeedList;

    invoke-static {v0, p1}, Lmobi/beyondpod/rsscore/Feed;->addSubscriptionsInCategory(Lmobi/beyondpod/rsscore/FeedList;Lmobi/beyondpod/rsscore/categories/FeedCategory;)Lmobi/beyondpod/rsscore/FeedList;

    .line 537
    iget-object p1, p0, Lmobi/beyondpod/ui/views/impexp/OpmlListViewFragment$8;->this$0:Lmobi/beyondpod/ui/views/impexp/OpmlListViewFragment;

    iget-object p1, p1, Lmobi/beyondpod/ui/views/impexp/OpmlListViewFragment;->_ListView:Landroid/widget/ListView;

    invoke-virtual {p1}, Landroid/widget/ListView;->clearChoices()V

    .line 538
    iget-object p1, p0, Lmobi/beyondpod/ui/views/impexp/OpmlListViewFragment$8;->this$0:Lmobi/beyondpod/ui/views/impexp/OpmlListViewFragment;

    invoke-static {p1}, Lmobi/beyondpod/ui/views/impexp/OpmlListViewFragment;->access$200(Lmobi/beyondpod/ui/views/impexp/OpmlListViewFragment;)Lmobi/beyondpod/ui/views/impexp/OpmlListViewAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lmobi/beyondpod/ui/views/impexp/OpmlListViewAdapter;->notifyDataSetChanged()V

    return-void
.end method
