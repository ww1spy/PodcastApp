.class Lmobi/beyondpod/BeyondPodApplication$1;
.super Ljava/lang/Thread;
.source "BeyondPodApplication.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobi/beyondpod/BeyondPodApplication;->onCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmobi/beyondpod/BeyondPodApplication;


# direct methods
.method constructor <init>(Lmobi/beyondpod/BeyondPodApplication;)V
    .locals 0

    .line 145
    iput-object p1, p0, Lmobi/beyondpod/BeyondPodApplication$1;->this$0:Lmobi/beyondpod/BeyondPodApplication;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 148
    iget-object v0, p0, Lmobi/beyondpod/BeyondPodApplication$1;->this$0:Lmobi/beyondpod/BeyondPodApplication;

    invoke-static {v0}, Lmobi/beyondpod/BeyondPodApplication;->access$000(Lmobi/beyondpod/BeyondPodApplication;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    const/4 v1, 0x1

    .line 149
    :try_start_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1}, Lmobi/beyondpod/BeyondPodApplication;->access$102(Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 150
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 151
    invoke-static {}, Lmobi/beyondpod/BeyondPodApplication;->access$200()Ljava/lang/String;

    move-result-object v0

    const-string v1, "*** Detected runtime shutdown."

    invoke-static {v0, v1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception v1

    .line 150
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
