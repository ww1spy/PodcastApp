.class Lmobi/beyondpod/ui/views/navigator/FeedsListView$2;
.super Ljava/lang/Object;
.source "FeedsListView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobi/beyondpod/ui/views/navigator/FeedsListView;->loadHeaderAndFooter()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmobi/beyondpod/ui/views/navigator/FeedsListView;


# direct methods
.method constructor <init>(Lmobi/beyondpod/ui/views/navigator/FeedsListView;)V
    .locals 0

    .line 206
    iput-object p1, p0, Lmobi/beyondpod/ui/views/navigator/FeedsListView$2;->this$0:Lmobi/beyondpod/ui/views/navigator/FeedsListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 210
    iget-object v0, p0, Lmobi/beyondpod/ui/views/navigator/FeedsListView$2;->this$0:Lmobi/beyondpod/ui/views/navigator/FeedsListView;

    sget-object v1, Lmobi/beyondpod/rsscore/categories/CategoryManager;->CategoryHome:Lmobi/beyondpod/rsscore/categories/FeedCategory;

    const/4 v2, 0x0

    invoke-static {v0, p1, v2, v1}, Lmobi/beyondpod/ui/views/navigator/FeedsListView;->access$100(Lmobi/beyondpod/ui/views/navigator/FeedsListView;Landroid/view/View;Lmobi/beyondpod/rsscore/Feed;Lmobi/beyondpod/rsscore/categories/FeedCategory;)V

    return-void
.end method
