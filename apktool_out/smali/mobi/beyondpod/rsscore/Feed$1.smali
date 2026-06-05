.class final Lmobi/beyondpod/rsscore/Feed$1;
.super Ljava/lang/Object;
.source "Feed.java"

# interfaces
.implements Lmobi/beyondpod/ui/dialogs/SelectCategoryDialog$OnCategorySelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobi/beyondpod/rsscore/Feed;->subscribeToFeedAndPromptForCategory(Landroid/content/Context;Lmobi/beyondpod/rsscore/Feed;Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$feed:Lmobi/beyondpod/rsscore/Feed;

.field final synthetic val$notify:Z


# direct methods
.method constructor <init>(Landroid/content/Context;Lmobi/beyondpod/rsscore/Feed;Z)V
    .locals 0

    .line 1287
    iput-object p1, p0, Lmobi/beyondpod/rsscore/Feed$1;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lmobi/beyondpod/rsscore/Feed$1;->val$feed:Lmobi/beyondpod/rsscore/Feed;

    iput-boolean p3, p0, Lmobi/beyondpod/rsscore/Feed$1;->val$notify:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCategorySelected(Lmobi/beyondpod/rsscore/categories/FeedCategory;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 1294
    :cond_0
    iget-object v0, p0, Lmobi/beyondpod/rsscore/Feed$1;->val$context:Landroid/content/Context;

    iget-object v1, p0, Lmobi/beyondpod/rsscore/Feed$1;->val$feed:Lmobi/beyondpod/rsscore/Feed;

    iget-boolean v2, p0, Lmobi/beyondpod/rsscore/Feed$1;->val$notify:Z

    invoke-static {v0, v1, p1, v2}, Lmobi/beyondpod/rsscore/Feed;->addSubscriptionInCategory(Landroid/content/Context;Lmobi/beyondpod/rsscore/Feed;Lmobi/beyondpod/rsscore/categories/FeedCategory;Z)V

    return-void
.end method
