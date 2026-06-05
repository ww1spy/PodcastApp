.class final Lmobi/beyondpod/ui/commands/CommandManager$6;
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
.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 853
    iput-object p1, p0, Lmobi/beyondpod/ui/commands/CommandManager$6;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 857
    sget-object p1, Lmobi/beyondpod/rsscore/categories/CategoryManager;->AllFeeds:Lmobi/beyondpod/rsscore/categories/FeedCategory;

    iget-object p2, p0, Lmobi/beyondpod/ui/commands/CommandManager$6;->val$context:Landroid/content/Context;

    invoke-static {p1, p2}, Lmobi/beyondpod/ui/commands/CommandManager;->access$100(Lmobi/beyondpod/rsscore/categories/FeedCategory;Landroid/content/Context;)V

    return-void
.end method
