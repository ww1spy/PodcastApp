.class Lmobi/beyondpod/ui/views/impexp/FeedSearchResultsAdapter$ViewHolder$2;
.super Ljava/lang/Object;
.source "FeedSearchResultsAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobi/beyondpod/ui/views/impexp/FeedSearchResultsAdapter$ViewHolder;-><init>(Lmobi/beyondpod/ui/views/impexp/FeedSearchResultsAdapter;Landroid/view/View;Ljava/util/List;Lmobi/beyondpod/ui/views/impexp/FeedSearchResultsAdapter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lmobi/beyondpod/ui/views/impexp/FeedSearchResultsAdapter$ViewHolder;

.field final synthetic val$adapter:Lmobi/beyondpod/ui/views/impexp/FeedSearchResultsAdapter;

.field final synthetic val$items:Ljava/util/List;

.field final synthetic val$this$0:Lmobi/beyondpod/ui/views/impexp/FeedSearchResultsAdapter;


# direct methods
.method constructor <init>(Lmobi/beyondpod/ui/views/impexp/FeedSearchResultsAdapter$ViewHolder;Lmobi/beyondpod/ui/views/impexp/FeedSearchResultsAdapter;Ljava/util/List;Lmobi/beyondpod/ui/views/impexp/FeedSearchResultsAdapter;)V
    .locals 0

    .line 210
    iput-object p1, p0, Lmobi/beyondpod/ui/views/impexp/FeedSearchResultsAdapter$ViewHolder$2;->this$1:Lmobi/beyondpod/ui/views/impexp/FeedSearchResultsAdapter$ViewHolder;

    iput-object p2, p0, Lmobi/beyondpod/ui/views/impexp/FeedSearchResultsAdapter$ViewHolder$2;->val$this$0:Lmobi/beyondpod/ui/views/impexp/FeedSearchResultsAdapter;

    iput-object p3, p0, Lmobi/beyondpod/ui/views/impexp/FeedSearchResultsAdapter$ViewHolder$2;->val$items:Ljava/util/List;

    iput-object p4, p0, Lmobi/beyondpod/ui/views/impexp/FeedSearchResultsAdapter$ViewHolder$2;->val$adapter:Lmobi/beyondpod/ui/views/impexp/FeedSearchResultsAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 214
    iget-object p1, p0, Lmobi/beyondpod/ui/views/impexp/FeedSearchResultsAdapter$ViewHolder$2;->this$1:Lmobi/beyondpod/ui/views/impexp/FeedSearchResultsAdapter$ViewHolder;

    invoke-virtual {p1}, Lmobi/beyondpod/ui/views/impexp/FeedSearchResultsAdapter$ViewHolder;->getAdapterPosition()I

    move-result p1

    if-lez p1, :cond_0

    .line 216
    iget-object v0, p0, Lmobi/beyondpod/ui/views/impexp/FeedSearchResultsAdapter$ViewHolder$2;->val$items:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lmobi/beyondpod/ui/views/impexp/FeedSearchResult;

    .line 217
    iget-object v0, p0, Lmobi/beyondpod/ui/views/impexp/FeedSearchResultsAdapter$ViewHolder$2;->val$adapter:Lmobi/beyondpod/ui/views/impexp/FeedSearchResultsAdapter;

    invoke-static {v0, p1}, Lmobi/beyondpod/ui/views/impexp/FeedSearchResultsAdapter;->access$000(Lmobi/beyondpod/ui/views/impexp/FeedSearchResultsAdapter;Lmobi/beyondpod/ui/views/impexp/FeedSearchResult;)V

    :cond_0
    return-void
.end method
