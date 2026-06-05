.class Lmobi/beyondpod/ui/views/impexp/OpmlListViewAdapter$2;
.super Ljava/lang/Object;
.source "OpmlListViewAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobi/beyondpod/ui/views/impexp/OpmlListViewAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmobi/beyondpod/ui/views/impexp/OpmlListViewAdapter;


# direct methods
.method constructor <init>(Lmobi/beyondpod/ui/views/impexp/OpmlListViewAdapter;)V
    .locals 0

    .line 341
    iput-object p1, p0, Lmobi/beyondpod/ui/views/impexp/OpmlListViewAdapter$2;->this$0:Lmobi/beyondpod/ui/views/impexp/OpmlListViewAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 345
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lmobi/beyondpod/rsscore/Feed;

    if-eqz p1, :cond_0

    .line 348
    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/Feed;->getFeedUri()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/Feed;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/Feed;->isGReaderFeed()Z

    move-result p1

    invoke-static {v0, v1, v2, p1}, Lmobi/beyondpod/ui/commands/CommandManager;->cmdOpenFeedPreview(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method
