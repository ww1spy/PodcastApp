.class Lmobi/beyondpod/ui/views/impexp/FeedSearchResultsAdapter$ViewHolder$1;
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

.field final synthetic val$itemView:Landroid/view/View;

.field final synthetic val$items:Ljava/util/List;

.field final synthetic val$this$0:Lmobi/beyondpod/ui/views/impexp/FeedSearchResultsAdapter;


# direct methods
.method constructor <init>(Lmobi/beyondpod/ui/views/impexp/FeedSearchResultsAdapter$ViewHolder;Lmobi/beyondpod/ui/views/impexp/FeedSearchResultsAdapter;Ljava/util/List;Landroid/view/View;Lmobi/beyondpod/ui/views/impexp/FeedSearchResultsAdapter;)V
    .locals 0

    .line 193
    iput-object p1, p0, Lmobi/beyondpod/ui/views/impexp/FeedSearchResultsAdapter$ViewHolder$1;->this$1:Lmobi/beyondpod/ui/views/impexp/FeedSearchResultsAdapter$ViewHolder;

    iput-object p2, p0, Lmobi/beyondpod/ui/views/impexp/FeedSearchResultsAdapter$ViewHolder$1;->val$this$0:Lmobi/beyondpod/ui/views/impexp/FeedSearchResultsAdapter;

    iput-object p3, p0, Lmobi/beyondpod/ui/views/impexp/FeedSearchResultsAdapter$ViewHolder$1;->val$items:Ljava/util/List;

    iput-object p4, p0, Lmobi/beyondpod/ui/views/impexp/FeedSearchResultsAdapter$ViewHolder$1;->val$itemView:Landroid/view/View;

    iput-object p5, p0, Lmobi/beyondpod/ui/views/impexp/FeedSearchResultsAdapter$ViewHolder$1;->val$adapter:Lmobi/beyondpod/ui/views/impexp/FeedSearchResultsAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 197
    iget-object p1, p0, Lmobi/beyondpod/ui/views/impexp/FeedSearchResultsAdapter$ViewHolder$1;->this$1:Lmobi/beyondpod/ui/views/impexp/FeedSearchResultsAdapter$ViewHolder;

    invoke-virtual {p1}, Lmobi/beyondpod/ui/views/impexp/FeedSearchResultsAdapter$ViewHolder;->getAdapterPosition()I

    move-result p1

    .line 198
    iget-object v0, p0, Lmobi/beyondpod/ui/views/impexp/FeedSearchResultsAdapter$ViewHolder$1;->val$items:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lmobi/beyondpod/ui/views/impexp/FeedSearchResult;

    .line 200
    invoke-virtual {p1}, Lmobi/beyondpod/ui/views/impexp/FeedSearchResult;->getOriginatingFeed()Ljava/lang/String;

    move-result-object v0

    .line 201
    invoke-static {v0}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 202
    invoke-virtual {p1}, Lmobi/beyondpod/ui/views/impexp/FeedSearchResult;->getTitle()Ljava/lang/String;

    move-result-object v0

    .line 204
    :cond_0
    iget-object v1, p0, Lmobi/beyondpod/ui/views/impexp/FeedSearchResultsAdapter$ViewHolder$1;->val$itemView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1}, Lmobi/beyondpod/ui/views/impexp/FeedSearchResult;->getLink()Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x0

    invoke-static {v1, p1, v0, v2}, Lmobi/beyondpod/ui/views/publishedepisodes/FeedPreviewActivity;->subscribeFeed(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    iget-object p1, p0, Lmobi/beyondpod/ui/views/impexp/FeedSearchResultsAdapter$ViewHolder$1;->val$adapter:Lmobi/beyondpod/ui/views/impexp/FeedSearchResultsAdapter;

    invoke-virtual {p1}, Lmobi/beyondpod/ui/views/impexp/FeedSearchResultsAdapter;->notifyDataSetChanged()V

    return-void
.end method
