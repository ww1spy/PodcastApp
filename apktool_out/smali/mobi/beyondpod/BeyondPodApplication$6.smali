.class final Lmobi/beyondpod/BeyondPodApplication$6;
.super Ljava/lang/Object;
.source "BeyondPodApplication.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobi/beyondpod/BeyondPodApplication;->releaseWakeLocks()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 486
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 489
    invoke-static {}, Lmobi/beyondpod/BeyondPodApplication;->access$300()Lmobi/beyondpod/BeyondPodApplication;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lmobi/beyondpod/BeyondPodApplication;->access$300()Lmobi/beyondpod/BeyondPodApplication;

    move-result-object v0

    invoke-virtual {v0}, Lmobi/beyondpod/BeyondPodApplication;->masterActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 490
    invoke-static {}, Lmobi/beyondpod/BeyondPodApplication;->access$300()Lmobi/beyondpod/BeyondPodApplication;

    move-result-object v0

    invoke-virtual {v0}, Lmobi/beyondpod/BeyondPodApplication;->masterActivity()Landroid/app/Activity;

    move-result-object v0

    monitor-enter v0

    .line 491
    :try_start_0
    invoke-static {}, Lmobi/beyondpod/BeyondPodApplication;->access$300()Lmobi/beyondpod/BeyondPodApplication;

    move-result-object v1

    invoke-virtual {v1}, Lmobi/beyondpod/BeyondPodApplication;->masterActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v1, v2}, Landroid/view/Window;->clearFlags(I)V

    .line 492
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_0
    :goto_0
    return-void
.end method
