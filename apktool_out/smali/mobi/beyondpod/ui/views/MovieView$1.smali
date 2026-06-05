.class Lmobi/beyondpod/ui/views/MovieView$1;
.super Ljava/lang/Object;
.source "MovieView.java"

# interfaces
.implements Landroid/view/View$OnSystemUiVisibilityChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobi/beyondpod/ui/views/MovieView;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmobi/beyondpod/ui/views/MovieView;


# direct methods
.method constructor <init>(Lmobi/beyondpod/ui/views/MovieView;)V
    .locals 0

    .line 146
    iput-object p1, p0, Lmobi/beyondpod/ui/views/MovieView$1;->this$0:Lmobi/beyondpod/ui/views/MovieView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSystemUiVisibilityChange(I)V
    .locals 2

    .line 149
    iget-object v0, p0, Lmobi/beyondpod/ui/views/MovieView$1;->this$0:Lmobi/beyondpod/ui/views/MovieView;

    invoke-static {v0}, Lmobi/beyondpod/ui/views/MovieView;->access$000(Lmobi/beyondpod/ui/views/MovieView;)I

    move-result v0

    xor-int/2addr v0, p1

    .line 150
    iget-object v1, p0, Lmobi/beyondpod/ui/views/MovieView$1;->this$0:Lmobi/beyondpod/ui/views/MovieView;

    invoke-static {v1, p1}, Lmobi/beyondpod/ui/views/MovieView;->access$002(Lmobi/beyondpod/ui/views/MovieView;I)I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    and-int/lit8 p1, p1, 0x2

    if-nez p1, :cond_0

    .line 155
    iget-object p1, p0, Lmobi/beyondpod/ui/views/MovieView$1;->this$0:Lmobi/beyondpod/ui/views/MovieView;

    invoke-static {p1}, Lmobi/beyondpod/ui/views/MovieView;->access$100(Lmobi/beyondpod/ui/views/MovieView;)Lmobi/beyondpod/ui/views/base/BPMediaController;

    move-result-object p1

    const-wide/16 v0, 0xbb8

    invoke-virtual {p1, v0, v1}, Lmobi/beyondpod/ui/views/base/BPMediaController;->show(J)V

    :cond_0
    return-void
.end method
