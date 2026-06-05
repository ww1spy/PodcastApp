.class final Lmobi/beyondpod/ui/commands/CommandManager$5;
.super Ljava/lang/Object;
.source "CommandManager.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobi/beyondpod/ui/commands/CommandManager;->cmdSetUpdateSchedule(Lmobi/beyondpod/rsscore/categories/FeedCategory;Landroid/content/Context;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$category:Lmobi/beyondpod/rsscore/categories/FeedCategory;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lmobi/beyondpod/rsscore/categories/FeedCategory;Landroid/content/Context;)V
    .locals 0

    .line 860
    iput-object p1, p0, Lmobi/beyondpod/ui/commands/CommandManager$5;->val$category:Lmobi/beyondpod/rsscore/categories/FeedCategory;

    iput-object p2, p0, Lmobi/beyondpod/ui/commands/CommandManager$5;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 864
    iget-object p1, p0, Lmobi/beyondpod/ui/commands/CommandManager$5;->val$category:Lmobi/beyondpod/rsscore/categories/FeedCategory;

    if-nez p1, :cond_0

    .line 867
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->scheduledUpdatesURL()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lmobi/beyondpod/ui/commands/CommandManagerBase;->cmdOpenExternalBrowser(Ljava/lang/String;)V

    goto :goto_0

    .line 872
    :cond_0
    iget-object p1, p0, Lmobi/beyondpod/ui/commands/CommandManager$5;->val$category:Lmobi/beyondpod/rsscore/categories/FeedCategory;

    iget-object p2, p0, Lmobi/beyondpod/ui/commands/CommandManager$5;->val$context:Landroid/content/Context;

    invoke-static {p1, p2}, Lmobi/beyondpod/ui/commands/CommandManager;->access$100(Lmobi/beyondpod/rsscore/categories/FeedCategory;Landroid/content/Context;)V

    :goto_0
    return-void
.end method
