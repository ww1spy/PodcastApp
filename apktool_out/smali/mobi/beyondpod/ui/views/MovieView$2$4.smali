.class Lmobi/beyondpod/ui/views/MovieView$2$4;
.super Ljava/lang/Object;
.source "MovieView.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


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

    .line 246
    iput-object p1, p0, Lmobi/beyondpod/ui/views/MovieView$2$4;->this$1:Lmobi/beyondpod/ui/views/MovieView$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 0

    .line 250
    iget-object p1, p0, Lmobi/beyondpod/ui/views/MovieView$2$4;->this$1:Lmobi/beyondpod/ui/views/MovieView$2;

    iget-object p1, p1, Lmobi/beyondpod/ui/views/MovieView$2;->this$0:Lmobi/beyondpod/ui/views/MovieView;

    invoke-virtual {p1}, Lmobi/beyondpod/ui/views/MovieView;->finish()V

    return-void
.end method
