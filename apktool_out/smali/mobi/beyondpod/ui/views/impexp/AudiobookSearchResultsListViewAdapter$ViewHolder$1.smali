.class Lmobi/beyondpod/ui/views/impexp/AudiobookSearchResultsListViewAdapter$ViewHolder$1;
.super Ljava/lang/Object;
.source "AudiobookSearchResultsListViewAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobi/beyondpod/ui/views/impexp/AudiobookSearchResultsListViewAdapter$ViewHolder;-><init>(Lmobi/beyondpod/ui/views/impexp/AudiobookSearchResultsListViewAdapter;Landroid/view/View;Ljava/util/List;Lmobi/beyondpod/ui/views/impexp/AudiobookSearchResultsListViewAdapter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lmobi/beyondpod/ui/views/impexp/AudiobookSearchResultsListViewAdapter$ViewHolder;

.field final synthetic val$itemView:Landroid/view/View;

.field final synthetic val$items:Ljava/util/List;

.field final synthetic val$this$0:Lmobi/beyondpod/ui/views/impexp/AudiobookSearchResultsListViewAdapter;


# direct methods
.method constructor <init>(Lmobi/beyondpod/ui/views/impexp/AudiobookSearchResultsListViewAdapter$ViewHolder;Lmobi/beyondpod/ui/views/impexp/AudiobookSearchResultsListViewAdapter;Ljava/util/List;Landroid/view/View;)V
    .locals 0

    .line 175
    iput-object p1, p0, Lmobi/beyondpod/ui/views/impexp/AudiobookSearchResultsListViewAdapter$ViewHolder$1;->this$1:Lmobi/beyondpod/ui/views/impexp/AudiobookSearchResultsListViewAdapter$ViewHolder;

    iput-object p2, p0, Lmobi/beyondpod/ui/views/impexp/AudiobookSearchResultsListViewAdapter$ViewHolder$1;->val$this$0:Lmobi/beyondpod/ui/views/impexp/AudiobookSearchResultsListViewAdapter;

    iput-object p3, p0, Lmobi/beyondpod/ui/views/impexp/AudiobookSearchResultsListViewAdapter$ViewHolder$1;->val$items:Ljava/util/List;

    iput-object p4, p0, Lmobi/beyondpod/ui/views/impexp/AudiobookSearchResultsListViewAdapter$ViewHolder$1;->val$itemView:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 179
    iget-object p1, p0, Lmobi/beyondpod/ui/views/impexp/AudiobookSearchResultsListViewAdapter$ViewHolder$1;->this$1:Lmobi/beyondpod/ui/views/impexp/AudiobookSearchResultsListViewAdapter$ViewHolder;

    invoke-virtual {p1}, Lmobi/beyondpod/ui/views/impexp/AudiobookSearchResultsListViewAdapter$ViewHolder;->getAdapterPosition()I

    move-result p1

    .line 180
    iget-object v0, p0, Lmobi/beyondpod/ui/views/impexp/AudiobookSearchResultsListViewAdapter$ViewHolder$1;->val$items:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lmobi/beyondpod/ui/views/impexp/FeedSearchResult;

    .line 181
    iget-object v0, p0, Lmobi/beyondpod/ui/views/impexp/AudiobookSearchResultsListViewAdapter$ViewHolder$1;->val$itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Lmobi/beyondpod/ui/views/impexp/FeedSearchResult;->getLink()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lmobi/beyondpod/ui/views/impexp/FeedSearchResult;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lmobi/beyondpod/ui/views/impexp/FeedSearchResult;->getImageUrl()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, v1, v2, p1}, Lmobi/beyondpod/ui/views/publishedepisodes/FeedPreviewActivity;->subscribeFeed(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
