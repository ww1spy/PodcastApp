.class final Lmobi/beyondpod/ui/commands/CommandManager$11;
.super Ljava/lang/Object;
.source "CommandManager.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobi/beyondpod/ui/commands/CommandManager;->cmdDownloadEnclosure(Landroid/content/Context;Lmobi/beyondpod/downloadengine/EnclosureDownloadManager$DownloadableEnclosure;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$downloadList:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Ljava/util/ArrayList;)V
    .locals 0

    .line 1556
    iput-object p1, p0, Lmobi/beyondpod/ui/commands/CommandManager$11;->val$downloadList:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 1559
    iget-object p1, p0, Lmobi/beyondpod/ui/commands/CommandManager$11;->val$downloadList:Ljava/util/ArrayList;

    const/4 p2, 0x0

    const/4 v0, 0x1

    invoke-static {p1, p2, v0}, Lmobi/beyondpod/downloadengine/UpdateAndDownloadManager;->downloadEnclosures(Ljava/util/List;ZZ)V

    return-void
.end method
