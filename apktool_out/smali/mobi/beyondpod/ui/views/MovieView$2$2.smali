.class Lmobi/beyondpod/ui/views/MovieView$2$2;
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

    .line 219
    iput-object p1, p0, Lmobi/beyondpod/ui/views/MovieView$2$2;->this$1:Lmobi/beyondpod/ui/views/MovieView$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 223
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->faqVideoPlayerHelpURL()Landroid/net/Uri;

    move-result-object p1

    const-string p2, "BeyondPod FAQ"

    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Lmobi/beyondpod/ui/commands/CommandManager;->cmdStartHtmlViewActivity(Landroid/net/Uri;Ljava/lang/CharSequence;Z)V

    .line 225
    iget-object p1, p0, Lmobi/beyondpod/ui/views/MovieView$2$2;->this$1:Lmobi/beyondpod/ui/views/MovieView$2;

    iget-object p1, p1, Lmobi/beyondpod/ui/views/MovieView$2;->this$0:Lmobi/beyondpod/ui/views/MovieView;

    invoke-virtual {p1}, Lmobi/beyondpod/ui/views/MovieView;->finish()V

    return-void
.end method
