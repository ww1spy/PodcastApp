.class Lcom/aocate/media/MediaPlayer$2;
.super Ljava/lang/Object;
.source "MediaPlayer.java"

# interfaces
.implements Lcom/aocate/media/MediaPlayer$OnPreparedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aocate/media/MediaPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/aocate/media/MediaPlayer;


# direct methods
.method constructor <init>(Lcom/aocate/media/MediaPlayer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/aocate/media/MediaPlayer$2;->this$0:Lcom/aocate/media/MediaPlayer;

    .line 231
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrepared(Lcom/aocate/media/MediaPlayer;)V
    .locals 2

    const-string v0, "AocateReplacementMediaPlayer"

    const-string v1, "onPreparedListener 242 setting state to PREPARED"

    .line 233
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    iget-object v0, p0, Lcom/aocate/media/MediaPlayer$2;->this$0:Lcom/aocate/media/MediaPlayer;

    sget-object v1, Lcom/aocate/media/MediaPlayer$State;->PREPARED:Lcom/aocate/media/MediaPlayer$State;

    iput-object v1, v0, Lcom/aocate/media/MediaPlayer;->state:Lcom/aocate/media/MediaPlayer$State;

    .line 235
    iget-object v0, p0, Lcom/aocate/media/MediaPlayer$2;->this$0:Lcom/aocate/media/MediaPlayer;

    iget-object v0, v0, Lcom/aocate/media/MediaPlayer;->preparedListener:Lcom/aocate/media/MediaPlayer$OnPreparedListener;

    if-eqz v0, :cond_0

    const-string v0, "AocateReplacementMediaPlayer"

    const-string v1, "Calling preparedListener"

    .line 236
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    iget-object v0, p0, Lcom/aocate/media/MediaPlayer$2;->this$0:Lcom/aocate/media/MediaPlayer;

    iget-object v0, v0, Lcom/aocate/media/MediaPlayer;->preparedListener:Lcom/aocate/media/MediaPlayer$OnPreparedListener;

    invoke-interface {v0, p1}, Lcom/aocate/media/MediaPlayer$OnPreparedListener;->onPrepared(Lcom/aocate/media/MediaPlayer;)V

    :cond_0
    const-string p1, "AocateReplacementMediaPlayer"

    const-string v0, "Wrap up onPreparedListener"

    .line 239
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
