.class final Lmobi/beyondpod/ui/commands/CommandManager$9;
.super Ljava/lang/Object;
.source "CommandManager.java"

# interfaces
.implements Lmobi/beyondpod/ui/views/notifications/UserNotificationManager$OnContinueListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobi/beyondpod/ui/commands/CommandManager;->cmdUpdateFeedOrCategory(Landroid/content/Context;Lmobi/beyondpod/rsscore/Feed;Lmobi/beyondpod/rsscore/categories/FeedCategory;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$toUpdate:Lmobi/beyondpod/rsscore/FeedList;


# direct methods
.method constructor <init>(Lmobi/beyondpod/rsscore/FeedList;)V
    .locals 0

    .line 1338
    iput-object p1, p0, Lmobi/beyondpod/ui/commands/CommandManager$9;->val$toUpdate:Lmobi/beyondpod/rsscore/FeedList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onContinue()V
    .locals 3

    .line 1342
    iget-object v0, p0, Lmobi/beyondpod/ui/commands/CommandManager$9;->val$toUpdate:Lmobi/beyondpod/rsscore/FeedList;

    new-instance v1, Lmobi/beyondpod/rsscore/FeedSorter;

    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->getFeedsSortOrder()I

    move-result v2

    invoke-direct {v1, v2}, Lmobi/beyondpod/rsscore/FeedSorter;-><init>(I)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1343
    iget-object v0, p0, Lmobi/beyondpod/ui/commands/CommandManager$9;->val$toUpdate:Lmobi/beyondpod/rsscore/FeedList;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lmobi/beyondpod/ui/commands/CommandManager;->cmdUpdateFeeds(Lmobi/beyondpod/rsscore/FeedList;Z)V

    return-void
.end method
