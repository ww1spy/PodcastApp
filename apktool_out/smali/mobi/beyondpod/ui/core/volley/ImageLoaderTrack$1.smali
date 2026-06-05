.class Lmobi/beyondpod/ui/core/volley/ImageLoaderTrack$1;
.super Ljava/lang/Object;
.source "ImageLoaderTrack.java"

# interfaces
.implements Lcom/android/volley/Response$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobi/beyondpod/ui/core/volley/ImageLoaderTrack;->get(Ljava/lang/String;Lmobi/beyondpod/rsscore/Track;Lmobi/beyondpod/rsscore/Feed;Lcom/android/volley/toolbox/ImageLoader$ImageListener;II)Lcom/android/volley/toolbox/ImageLoader$ImageContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/volley/Response$Listener<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lmobi/beyondpod/ui/core/volley/ImageLoaderTrack;

.field final synthetic val$cacheKey:Ljava/lang/String;


# direct methods
.method constructor <init>(Lmobi/beyondpod/ui/core/volley/ImageLoaderTrack;Ljava/lang/String;)V
    .locals 0

    .line 105
    iput-object p1, p0, Lmobi/beyondpod/ui/core/volley/ImageLoaderTrack$1;->this$0:Lmobi/beyondpod/ui/core/volley/ImageLoaderTrack;

    iput-object p2, p0, Lmobi/beyondpod/ui/core/volley/ImageLoaderTrack$1;->val$cacheKey:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Landroid/graphics/Bitmap;)V
    .locals 2

    .line 109
    iget-object v0, p0, Lmobi/beyondpod/ui/core/volley/ImageLoaderTrack$1;->this$0:Lmobi/beyondpod/ui/core/volley/ImageLoaderTrack;

    iget-object v1, p0, Lmobi/beyondpod/ui/core/volley/ImageLoaderTrack$1;->val$cacheKey:Ljava/lang/String;

    invoke-static {v0, v1, p1}, Lmobi/beyondpod/ui/core/volley/ImageLoaderTrack;->access$000(Lmobi/beyondpod/ui/core/volley/ImageLoaderTrack;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .line 105
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lmobi/beyondpod/ui/core/volley/ImageLoaderTrack$1;->onResponse(Landroid/graphics/Bitmap;)V

    return-void
.end method
