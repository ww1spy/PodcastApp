.class Lmobi/beyondpod/ui/views/Workspace$7;
.super Ljava/lang/Object;
.source "Workspace.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobi/beyondpod/ui/views/Workspace;->handleOptionsMenu(ILandroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmobi/beyondpod/ui/views/Workspace;


# direct methods
.method constructor <init>(Lmobi/beyondpod/ui/views/Workspace;)V
    .locals 0

    .line 666
    iput-object p1, p0, Lmobi/beyondpod/ui/views/Workspace$7;->this$0:Lmobi/beyondpod/ui/views/Workspace;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    const-wide/high16 p1, 0x3ff0000000000000L    # 1.0

    .line 670
    invoke-static {p1, p2}, Lmobi/beyondpod/rsscore/helpers/TimeSpan;->fromSeconds(D)Lmobi/beyondpod/rsscore/helpers/TimeSpan;

    move-result-object p1

    const/4 p2, 0x0

    const/4 v0, 0x1

    invoke-static {p2, p1, v0}, Lmobi/beyondpod/schedulercore/ScheduledTasksManager;->scheduleSyncTaskIfSyncIsEnabled(ILmobi/beyondpod/rsscore/helpers/TimeSpan;Z)Z

    return-void
.end method
