.class Lmobi/beyondpod/BeyondPodApplication$3;
.super Ljava/lang/Object;
.source "BeyondPodApplication.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobi/beyondpod/BeyondPodApplication;->shutdown()V
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

    .line 283
    iput-object p1, p0, Lmobi/beyondpod/BeyondPodApplication$3;->this$0:Lmobi/beyondpod/BeyondPodApplication;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 287
    iget-object v0, p0, Lmobi/beyondpod/BeyondPodApplication$3;->this$0:Lmobi/beyondpod/BeyondPodApplication;

    invoke-virtual {v0}, Lmobi/beyondpod/BeyondPodApplication;->masterActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 288
    iget-object v0, p0, Lmobi/beyondpod/BeyondPodApplication$3;->this$0:Lmobi/beyondpod/BeyondPodApplication;

    invoke-virtual {v0}, Lmobi/beyondpod/BeyondPodApplication;->masterActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 290
    :cond_0
    iget-object v0, p0, Lmobi/beyondpod/BeyondPodApplication$3;->this$0:Lmobi/beyondpod/BeyondPodApplication;

    invoke-virtual {v0}, Lmobi/beyondpod/BeyondPodApplication;->onTerminate()V

    const/4 v0, 0x0

    .line 291
    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    return-void
.end method
