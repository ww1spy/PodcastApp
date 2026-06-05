.class Lmobi/beyondpod/ui/views/UpdateAndDownloadQueueActivityDialog$3;
.super Ljava/lang/Object;
.source "UpdateAndDownloadQueueActivityDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobi/beyondpod/ui/views/UpdateAndDownloadQueueActivityDialog;
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

    .line 121
    iput-object p1, p0, Lmobi/beyondpod/ui/views/UpdateAndDownloadQueueActivityDialog$3;->this$0:Lmobi/beyondpod/ui/views/UpdateAndDownloadQueueActivityDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 125
    invoke-static {}, Lmobi/beyondpod/downloadengine/UpdateAndDownloadManager;->terminateAll()V

    .line 126
    iget-object p1, p0, Lmobi/beyondpod/ui/views/UpdateAndDownloadQueueActivityDialog$3;->this$0:Lmobi/beyondpod/ui/views/UpdateAndDownloadQueueActivityDialog;

    invoke-virtual {p1}, Lmobi/beyondpod/ui/views/UpdateAndDownloadQueueActivityDialog;->finish()V

    return-void
.end method
