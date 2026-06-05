.class Lmobi/beyondpod/rsscore/Configuration$1$1;
.super Ljava/lang/Object;
.source "Configuration.java"

# interfaces
.implements Lcom/google/android/gms/tagmanager/ContainerHolder$ContainerAvailableListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobi/beyondpod/rsscore/Configuration$1;->onResult(Lcom/google/android/gms/tagmanager/ContainerHolder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmobi/beyondpod/rsscore/Configuration$1;


# direct methods
.method constructor <init>(Lmobi/beyondpod/rsscore/Configuration$1;)V
    .locals 0

    .line 184
    iput-object p1, p0, Lmobi/beyondpod/rsscore/Configuration$1$1;->this$0:Lmobi/beyondpod/rsscore/Configuration$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onContainerAvailable(Lcom/google/android/gms/tagmanager/ContainerHolder;Ljava/lang/String;)V
    .locals 2

    .line 188
    invoke-static {p2}, Lmobi/beyondpod/rsscore/Configuration;->access$102(Ljava/lang/String;)Ljava/lang/String;

    const-string p1, "Configuration"

    .line 189
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "New tag container available! Version: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
