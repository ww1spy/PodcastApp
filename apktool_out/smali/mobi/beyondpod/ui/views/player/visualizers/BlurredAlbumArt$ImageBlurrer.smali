.class Lmobi/beyondpod/ui/views/player/visualizers/BlurredAlbumArt$ImageBlurrer;
.super Landroid/os/AsyncTask;
.source "BlurredAlbumArt.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobi/beyondpod/ui/views/player/visualizers/BlurredAlbumArt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ImageBlurrer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Landroid/graphics/Bitmap;",
        "Ljava/lang/Integer;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lmobi/beyondpod/ui/views/player/visualizers/BlurredAlbumArt;


# direct methods
.method private constructor <init>(Lmobi/beyondpod/ui/views/player/visualizers/BlurredAlbumArt;)V
    .locals 0

    .line 184
    iput-object p1, p0, Lmobi/beyondpod/ui/views/player/visualizers/BlurredAlbumArt$ImageBlurrer;->this$0:Lmobi/beyondpod/ui/views/player/visualizers/BlurredAlbumArt;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lmobi/beyondpod/ui/views/player/visualizers/BlurredAlbumArt;Lmobi/beyondpod/ui/views/player/visualizers/BlurredAlbumArt$1;)V
    .locals 0

    .line 184
    invoke-direct {p0, p1}, Lmobi/beyondpod/ui/views/player/visualizers/BlurredAlbumArt$ImageBlurrer;-><init>(Lmobi/beyondpod/ui/views/player/visualizers/BlurredAlbumArt;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 3

    const/4 v0, 0x0

    .line 191
    :try_start_0
    iget-object v1, p0, Lmobi/beyondpod/ui/views/player/visualizers/BlurredAlbumArt$ImageBlurrer;->this$0:Lmobi/beyondpod/ui/views/player/visualizers/BlurredAlbumArt;

    invoke-virtual {v1}, Lmobi/beyondpod/ui/views/player/visualizers/BlurredAlbumArt;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    aget-object p1, p1, v2

    const/16 v2, 0x64

    invoke-static {v1, p1, v2}, Lmobi/beyondpod/ui/views/base/ImageBlur;->fastblur(Landroid/content/Context;Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    return-object v0

    :catch_1
    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 184
    check-cast p1, [Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lmobi/beyondpod/ui/views/player/visualizers/BlurredAlbumArt$ImageBlurrer;->doInBackground([Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method protected onPostExecute(Landroid/graphics/Bitmap;)V
    .locals 1

    .line 204
    iget-object v0, p0, Lmobi/beyondpod/ui/views/player/visualizers/BlurredAlbumArt$ImageBlurrer;->this$0:Lmobi/beyondpod/ui/views/player/visualizers/BlurredAlbumArt;

    invoke-static {v0, p1}, Lmobi/beyondpod/ui/views/player/visualizers/BlurredAlbumArt;->access$100(Lmobi/beyondpod/ui/views/player/visualizers/BlurredAlbumArt;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 184
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lmobi/beyondpod/ui/views/player/visualizers/BlurredAlbumArt$ImageBlurrer;->onPostExecute(Landroid/graphics/Bitmap;)V

    return-void
.end method
