.class Lmobi/beyondpod/ui/views/MovieView$2$3;
.super Ljava/lang/Object;
.source "MovieView.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobi/beyondpod/ui/views/MovieView$2;->onError(Landroid/media/MediaPlayer;II)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lmobi/beyondpod/ui/views/MovieView$2;


# direct methods
.method constructor <init>(Lmobi/beyondpod/ui/views/MovieView$2;)V
    .locals 0

    .line 233
    iput-object p1, p0, Lmobi/beyondpod/ui/views/MovieView$2$3;->this$1:Lmobi/beyondpod/ui/views/MovieView$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 238
    iget-object p1, p0, Lmobi/beyondpod/ui/views/MovieView$2$3;->this$1:Lmobi/beyondpod/ui/views/MovieView$2;

    iget-object p1, p1, Lmobi/beyondpod/ui/views/MovieView$2;->this$0:Lmobi/beyondpod/ui/views/MovieView;

    iget-object p2, p0, Lmobi/beyondpod/ui/views/MovieView$2$3;->this$1:Lmobi/beyondpod/ui/views/MovieView$2;

    iget-object p2, p2, Lmobi/beyondpod/ui/views/MovieView$2;->this$0:Lmobi/beyondpod/ui/views/MovieView;

    invoke-static {p2}, Lmobi/beyondpod/ui/views/MovieView;->access$300(Lmobi/beyondpod/ui/views/MovieView;)Lmobi/beyondpod/rsscore/Track;

    move-result-object p2

    invoke-static {p1, p2}, Lmobi/beyondpod/ui/commands/CommandManager;->cmdOpenExternalPlayer(Landroid/content/Context;Lmobi/beyondpod/rsscore/Track;)V

    .line 239
    iget-object p1, p0, Lmobi/beyondpod/ui/views/MovieView$2$3;->this$1:Lmobi/beyondpod/ui/views/MovieView$2;

    iget-object p1, p1, Lmobi/beyondpod/ui/views/MovieView$2;->this$0:Lmobi/beyondpod/ui/views/MovieView;

    invoke-virtual {p1}, Lmobi/beyondpod/ui/views/MovieView;->finish()V

    return-void
.end method
