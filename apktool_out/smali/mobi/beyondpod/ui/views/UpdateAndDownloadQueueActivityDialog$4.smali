.class Lmobi/beyondpod/ui/views/UpdateAndDownloadQueueActivityDialog$4;
.super Ljava/lang/Object;
.source "UpdateAndDownloadQueueActivityDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobi/beyondpod/ui/views/UpdateAndDownloadQueueActivityDialog;->RefreshQueue()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmobi/beyondpod/ui/views/UpdateAndDownloadQueueActivityDialog;


# direct methods
.method constructor <init>(Lmobi/beyondpod/ui/views/UpdateAndDownloadQueueActivityDialog;)V
    .locals 0

    .line 134
    iput-object p1, p0, Lmobi/beyondpod/ui/views/UpdateAndDownloadQueueActivityDialog$4;->this$0:Lmobi/beyondpod/ui/views/UpdateAndDownloadQueueActivityDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 138
    iget-object v0, p0, Lmobi/beyondpod/ui/views/UpdateAndDownloadQueueActivityDialog$4;->this$0:Lmobi/beyondpod/ui/views/UpdateAndDownloadQueueActivityDialog;

    invoke-static {v0}, Lmobi/beyondpod/ui/views/UpdateAndDownloadQueueActivityDialog;->access$000(Lmobi/beyondpod/ui/views/UpdateAndDownloadQueueActivityDialog;)Lmobi/beyondpod/ui/views/UpdateAndDownloadQueueViewAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lmobi/beyondpod/ui/views/UpdateAndDownloadQueueViewAdapter;->Refresh()V

    .line 140
    invoke-static {}, Lmobi/beyondpod/downloadengine/UpdateAndDownloadManager;->hasWorkToDo()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    invoke-static {}, Lmobi/beyondpod/downloadengine/EnclosureDownloadManager;->queueCount()I

    move-result v0

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 142
    :goto_1
    iget-object v2, p0, Lmobi/beyondpod/ui/views/UpdateAndDownloadQueueActivityDialog$4;->this$0:Lmobi/beyondpod/ui/views/UpdateAndDownloadQueueActivityDialog;

    iget-object v2, v2, Lmobi/beyondpod/ui/views/UpdateAndDownloadQueueActivityDialog;->_OKButton:Landroid/widget/Button;

    if-eqz v0, :cond_2

    const v3, 0x7f100405

    goto :goto_2

    :cond_2
    const v3, 0x7f100406

    .line 143
    :goto_2
    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(I)V

    .line 146
    iget-object v2, p0, Lmobi/beyondpod/ui/views/UpdateAndDownloadQueueActivityDialog$4;->this$0:Lmobi/beyondpod/ui/views/UpdateAndDownloadQueueActivityDialog;

    iget-object v2, v2, Lmobi/beyondpod/ui/views/UpdateAndDownloadQueueActivityDialog;->_ViewUpdateLogButton:Landroid/widget/Button;

    if-eqz v0, :cond_3

    const/16 v1, 0x8

    :cond_3
    invoke-virtual {v2, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 148
    invoke-static {}, Lmobi/beyondpod/downloadengine/RssFeedUpdateManager;->queueCount()I

    move-result v0

    .line 149
    invoke-static {}, Lmobi/beyondpod/downloadengine/EnclosureDownloadManager;->queueCount()I

    move-result v1

    .line 150
    iget-object v2, p0, Lmobi/beyondpod/ui/views/UpdateAndDownloadQueueActivityDialog$4;->this$0:Lmobi/beyondpod/ui/views/UpdateAndDownloadQueueActivityDialog;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lmobi/beyondpod/ui/views/UpdateAndDownloadQueueActivityDialog$4;->this$0:Lmobi/beyondpod/ui/views/UpdateAndDownloadQueueActivityDialog;

    invoke-virtual {v4}, Lmobi/beyondpod/ui/views/UpdateAndDownloadQueueActivityDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f1003fd

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-lez v0, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " ("

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_4
    if-lez v1, :cond_5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " ("

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_5
    const-string v0, ""

    :goto_3
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lmobi/beyondpod/ui/views/UpdateAndDownloadQueueActivityDialog;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method
