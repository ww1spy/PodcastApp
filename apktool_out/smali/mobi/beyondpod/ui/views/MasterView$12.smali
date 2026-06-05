.class Lmobi/beyondpod/ui/views/MasterView$12;
.super Landroid/os/AsyncTask;
.source "MasterView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobi/beyondpod/ui/views/MasterView;->updateGCMRegistration()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lmobi/beyondpod/ui/views/MasterView;

.field final synthetic val$regId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lmobi/beyondpod/ui/views/MasterView;Ljava/lang/String;)V
    .locals 0

    .line 1237
    iput-object p1, p0, Lmobi/beyondpod/ui/views/MasterView$12;->this$0:Lmobi/beyondpod/ui/views/MasterView;

    iput-object p2, p0, Lmobi/beyondpod/ui/views/MasterView$12;->val$regId:Ljava/lang/String;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1237
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lmobi/beyondpod/ui/views/MasterView$12;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 4

    const/4 p1, 0x0

    .line 1243
    :try_start_0
    new-instance v0, Lmobi/beyondpod/sync/trackers/bp/BPTracker;

    invoke-direct {v0}, Lmobi/beyondpod/sync/trackers/bp/BPTracker;-><init>()V

    .line 1244
    invoke-virtual {v0}, Lmobi/beyondpod/sync/trackers/bp/BPTracker;->initialize()V

    .line 1245
    iget-object v1, p0, Lmobi/beyondpod/ui/views/MasterView$12;->val$regId:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lmobi/beyondpod/sync/trackers/bp/BPTracker;->updateServerCDMRegistration(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1248
    iget-object v0, p0, Lmobi/beyondpod/ui/views/MasterView$12;->this$0:Lmobi/beyondpod/ui/views/MasterView;

    invoke-virtual {v0}, Lmobi/beyondpod/ui/views/MasterView;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lmobi/beyondpod/evo/GcmRegistrar;->unregister(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1253
    invoke-static {}, Lmobi/beyondpod/ui/views/MasterView;->access$1100()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "--- failed to add CDS registration! reason: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1254
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1253
    invoke-static {v1, v0, p1}, Lmobi/beyondpod/sync/TrackedChangeBase;->logSyncEvent(Ljava/lang/String;Ljava/lang/String;Lmobi/beyondpod/sync/TrackedChangeBase;)V

    :cond_0
    :goto_0
    return-object p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 1237
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lmobi/beyondpod/ui/views/MasterView$12;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 1

    .line 1263
    iget-object p1, p0, Lmobi/beyondpod/ui/views/MasterView$12;->this$0:Lmobi/beyondpod/ui/views/MasterView;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lmobi/beyondpod/ui/views/MasterView;->access$1202(Lmobi/beyondpod/ui/views/MasterView;Landroid/os/AsyncTask;)Landroid/os/AsyncTask;

    return-void
.end method
