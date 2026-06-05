.class Lcom/aocate/media/ServiceBackedMediaPlayer$1$1;
.super Lcom/aocate/presto/service/IDeathCallback_0_8$Stub;
.source "ServiceBackedMediaPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aocate/media/ServiceBackedMediaPlayer$1;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/aocate/media/ServiceBackedMediaPlayer$1;


# direct methods
.method constructor <init>(Lcom/aocate/media/ServiceBackedMediaPlayer$1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/aocate/media/ServiceBackedMediaPlayer$1$1;->this$1:Lcom/aocate/media/ServiceBackedMediaPlayer$1;

    .line 109
    invoke-direct {p0}, Lcom/aocate/presto/service/IDeathCallback_0_8$Stub;-><init>()V

    return-void
.end method
