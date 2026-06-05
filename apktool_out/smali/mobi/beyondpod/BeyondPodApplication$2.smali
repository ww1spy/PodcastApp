.class Lmobi/beyondpod/BeyondPodApplication$2;
.super Landroid/os/Handler;
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

    .line 180
    iput-object p1, p0, Lmobi/beyondpod/BeyondPodApplication$2;->this$0:Lmobi/beyondpod/BeyondPodApplication;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 184
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 187
    :cond_0
    invoke-static {}, Lmobi/beyondpod/BeyondPodApplication;->releaseWakeLocks()V

    :goto_0
    return-void
.end method
