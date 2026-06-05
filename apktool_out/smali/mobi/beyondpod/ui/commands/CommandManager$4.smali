.class final Lmobi/beyondpod/ui/commands/CommandManager$4;
.super Ljava/lang/Object;
.source "CommandManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobi/beyondpod/ui/commands/CommandManager;->cmdExit()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 814
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 819
    invoke-static {}, Lmobi/beyondpod/rsscore/rss/ItemStateHistory;->saveHistorySync()V

    .line 820
    invoke-static {}, Lmobi/beyondpod/rsscore/StartupContentBuilder;->backupRepositoriesSync()V

    .line 821
    invoke-static {}, Lmobi/beyondpod/BeyondPodApplication;->getInstance()Lmobi/beyondpod/BeyondPodApplication;

    move-result-object v0

    invoke-virtual {v0}, Lmobi/beyondpod/BeyondPodApplication;->shutdown()V

    return-void
.end method
