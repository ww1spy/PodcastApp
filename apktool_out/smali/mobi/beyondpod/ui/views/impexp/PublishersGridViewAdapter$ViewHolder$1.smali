.class Lmobi/beyondpod/ui/views/impexp/PublishersGridViewAdapter$ViewHolder$1;
.super Ljava/lang/Object;
.source "PublishersGridViewAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobi/beyondpod/ui/views/impexp/PublishersGridViewAdapter$ViewHolder;-><init>(Lmobi/beyondpod/ui/views/impexp/PublishersGridViewAdapter;Landroid/view/View;ILmobi/beyondpod/ui/views/impexp/PublishersGridViewAdapter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lmobi/beyondpod/ui/views/impexp/PublishersGridViewAdapter$ViewHolder;

.field final synthetic val$adapter:Lmobi/beyondpod/ui/views/impexp/PublishersGridViewAdapter;

.field final synthetic val$this$0:Lmobi/beyondpod/ui/views/impexp/PublishersGridViewAdapter;


# direct methods
.method constructor <init>(Lmobi/beyondpod/ui/views/impexp/PublishersGridViewAdapter$ViewHolder;Lmobi/beyondpod/ui/views/impexp/PublishersGridViewAdapter;Lmobi/beyondpod/ui/views/impexp/PublishersGridViewAdapter;)V
    .locals 0

    .line 260
    iput-object p1, p0, Lmobi/beyondpod/ui/views/impexp/PublishersGridViewAdapter$ViewHolder$1;->this$1:Lmobi/beyondpod/ui/views/impexp/PublishersGridViewAdapter$ViewHolder;

    iput-object p2, p0, Lmobi/beyondpod/ui/views/impexp/PublishersGridViewAdapter$ViewHolder$1;->val$this$0:Lmobi/beyondpod/ui/views/impexp/PublishersGridViewAdapter;

    iput-object p3, p0, Lmobi/beyondpod/ui/views/impexp/PublishersGridViewAdapter$ViewHolder$1;->val$adapter:Lmobi/beyondpod/ui/views/impexp/PublishersGridViewAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 264
    iget-object p1, p0, Lmobi/beyondpod/ui/views/impexp/PublishersGridViewAdapter$ViewHolder$1;->this$1:Lmobi/beyondpod/ui/views/impexp/PublishersGridViewAdapter$ViewHolder;

    invoke-virtual {p1}, Lmobi/beyondpod/ui/views/impexp/PublishersGridViewAdapter$ViewHolder;->getAdapterPosition()I

    move-result p1

    .line 265
    iget-object v0, p0, Lmobi/beyondpod/ui/views/impexp/PublishersGridViewAdapter$ViewHolder$1;->this$1:Lmobi/beyondpod/ui/views/impexp/PublishersGridViewAdapter$ViewHolder;

    iget-object v0, v0, Lmobi/beyondpod/ui/views/impexp/PublishersGridViewAdapter$ViewHolder;->this$0:Lmobi/beyondpod/ui/views/impexp/PublishersGridViewAdapter;

    invoke-static {v0}, Lmobi/beyondpod/ui/views/impexp/PublishersGridViewAdapter;->access$100(Lmobi/beyondpod/ui/views/impexp/PublishersGridViewAdapter;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lmobi/beyondpod/ui/views/impexp/FeedSearchResult;

    .line 266
    iget-object v0, p0, Lmobi/beyondpod/ui/views/impexp/PublishersGridViewAdapter$ViewHolder$1;->val$adapter:Lmobi/beyondpod/ui/views/impexp/PublishersGridViewAdapter;

    invoke-static {v0, p1}, Lmobi/beyondpod/ui/views/impexp/PublishersGridViewAdapter;->access$200(Lmobi/beyondpod/ui/views/impexp/PublishersGridViewAdapter;Lmobi/beyondpod/ui/views/impexp/FeedSearchResult;)V

    return-void
.end method
