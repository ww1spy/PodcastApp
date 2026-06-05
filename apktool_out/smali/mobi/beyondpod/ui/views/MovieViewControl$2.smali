.class Lmobi/beyondpod/ui/views/MovieViewControl$2;
.super Ljava/lang/Object;
.source "MovieViewControl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobi/beyondpod/ui/views/MovieViewControl;->prepareAndStartPlayback(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmobi/beyondpod/ui/views/MovieViewControl;


# direct methods
.method constructor <init>(Lmobi/beyondpod/ui/views/MovieViewControl;)V
    .locals 0

    .line 185
    iput-object p1, p0, Lmobi/beyondpod/ui/views/MovieViewControl$2;->this$0:Lmobi/beyondpod/ui/views/MovieViewControl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 189
    iget-object v0, p0, Lmobi/beyondpod/ui/views/MovieViewControl$2;->this$0:Lmobi/beyondpod/ui/views/MovieViewControl;

    invoke-static {v0}, Lmobi/beyondpod/ui/views/MovieViewControl;->access$100(Lmobi/beyondpod/ui/views/MovieViewControl;)Landroid/widget/VideoView;

    move-result-object v0

    iget-object v1, p0, Lmobi/beyondpod/ui/views/MovieViewControl$2;->this$0:Lmobi/beyondpod/ui/views/MovieViewControl;

    iget-object v1, v1, Lmobi/beyondpod/ui/views/MovieViewControl;->_CurrentTrack:Lmobi/beyondpod/rsscore/Track;

    invoke-virtual {v1}, Lmobi/beyondpod/rsscore/Track;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setVideoURI(Landroid/net/Uri;)V

    return-void
.end method
