.class Lmobi/beyondpod/ui/views/navigator/ReorderCategoriesListView$1;
.super Ljava/lang/Object;
.source "ReorderCategoriesListView.java"

# interfaces
.implements Lcom/mobeta/android/dslv/DragSortListView$DropListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobi/beyondpod/ui/views/navigator/ReorderCategoriesListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmobi/beyondpod/ui/views/navigator/ReorderCategoriesListView;


# direct methods
.method constructor <init>(Lmobi/beyondpod/ui/views/navigator/ReorderCategoriesListView;)V
    .locals 0

    .line 134
    iput-object p1, p0, Lmobi/beyondpod/ui/views/navigator/ReorderCategoriesListView$1;->this$0:Lmobi/beyondpod/ui/views/navigator/ReorderCategoriesListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public drop(II)V
    .locals 5

    .line 137
    iget-object v0, p0, Lmobi/beyondpod/ui/views/navigator/ReorderCategoriesListView$1;->this$0:Lmobi/beyondpod/ui/views/navigator/ReorderCategoriesListView;

    invoke-static {v0}, Lmobi/beyondpod/ui/views/navigator/ReorderCategoriesListView;->access$000(Lmobi/beyondpod/ui/views/navigator/ReorderCategoriesListView;)Lmobi/beyondpod/ui/views/navigator/ReorderCategoriesViewAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lmobi/beyondpod/ui/views/navigator/ReorderCategoriesViewAdapter;->getCategoryAtPosition(I)Lmobi/beyondpod/rsscore/categories/FeedCategory;

    move-result-object v0

    .line 138
    iget-object v1, p0, Lmobi/beyondpod/ui/views/navigator/ReorderCategoriesListView$1;->this$0:Lmobi/beyondpod/ui/views/navigator/ReorderCategoriesListView;

    invoke-static {v1}, Lmobi/beyondpod/ui/views/navigator/ReorderCategoriesListView;->access$000(Lmobi/beyondpod/ui/views/navigator/ReorderCategoriesListView;)Lmobi/beyondpod/ui/views/navigator/ReorderCategoriesViewAdapter;

    move-result-object v1

    invoke-virtual {v1, p2}, Lmobi/beyondpod/ui/views/navigator/ReorderCategoriesViewAdapter;->getCategoryAtPosition(I)Lmobi/beyondpod/rsscore/categories/FeedCategory;

    move-result-object v1

    const-string v2, "View"

    .line 140
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "**** Drag category "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lmobi/beyondpod/rsscore/categories/FeedCategory;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " (item "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "), to:"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    invoke-virtual {v1}, Lmobi/beyondpod/rsscore/categories/FeedCategory;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " (item:"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 140
    invoke-static {v2, p1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    invoke-static {v0, v1}, Lmobi/beyondpod/rsscore/categories/CategoryManager;->moveCategory(Lmobi/beyondpod/rsscore/categories/FeedCategory;Lmobi/beyondpod/rsscore/categories/FeedCategory;)V

    return-void
.end method
