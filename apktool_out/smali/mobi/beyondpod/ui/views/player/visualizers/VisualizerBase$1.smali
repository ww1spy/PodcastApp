.class Lmobi/beyondpod/ui/views/player/visualizers/VisualizerBase$1;
.super Ljava/lang/Object;
.source "VisualizerBase.java"

# interfaces
.implements Lcom/android/volley/toolbox/ImageLoader$ImageListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobi/beyondpod/ui/views/player/visualizers/VisualizerBase;->loadEpisodeAlbumArt(Lmobi/beyondpod/rsscore/Track;Lmobi/beyondpod/ui/core/volley/ImageLoaderTrack;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmobi/beyondpod/ui/views/player/visualizers/VisualizerBase;

.field final synthetic val$episode:Lmobi/beyondpod/rsscore/Track;


# direct methods
.method constructor <init>(Lmobi/beyondpod/ui/views/player/visualizers/VisualizerBase;Lmobi/beyondpod/rsscore/Track;)V
    .locals 0

    .line 103
    iput-object p1, p0, Lmobi/beyondpod/ui/views/player/visualizers/VisualizerBase$1;->this$0:Lmobi/beyondpod/ui/views/player/visualizers/VisualizerBase;

    iput-object p2, p0, Lmobi/beyondpod/ui/views/player/visualizers/VisualizerBase$1;->val$episode:Lmobi/beyondpod/rsscore/Track;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .locals 3

    .line 107
    iget-object p1, p0, Lmobi/beyondpod/ui/views/player/visualizers/VisualizerBase$1;->this$0:Lmobi/beyondpod/ui/views/player/visualizers/VisualizerBase;

    iget-object v0, p0, Lmobi/beyondpod/ui/views/player/visualizers/VisualizerBase$1;->val$episode:Lmobi/beyondpod/rsscore/Track;

    invoke-static {}, Lmobi/beyondpod/ui/views/player/visualizers/VisualizerBase;->access$000()Lmobi/beyondpod/ui/views/base/colormatcher/ColorScheme;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v1}, Lmobi/beyondpod/ui/views/player/visualizers/VisualizerBase;->buildVisualisation(Lmobi/beyondpod/rsscore/Track;Landroid/graphics/Bitmap;Lmobi/beyondpod/ui/views/base/colormatcher/ColorScheme;)V

    return-void
.end method

.method public onResponse(Lcom/android/volley/toolbox/ImageLoader$ImageContainer;Z)V
    .locals 2

    .line 113
    invoke-virtual {p1}, Lcom/android/volley/toolbox/ImageLoader$ImageContainer;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 117
    iget-object p2, p0, Lmobi/beyondpod/ui/views/player/visualizers/VisualizerBase$1;->this$0:Lmobi/beyondpod/ui/views/player/visualizers/VisualizerBase;

    invoke-static {p2}, Lmobi/beyondpod/ui/views/player/visualizers/VisualizerBase;->access$100(Lmobi/beyondpod/ui/views/player/visualizers/VisualizerBase;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 122
    :try_start_0
    iget-object p2, p0, Lmobi/beyondpod/ui/views/player/visualizers/VisualizerBase$1;->this$0:Lmobi/beyondpod/ui/views/player/visualizers/VisualizerBase;

    iget-object v0, p0, Lmobi/beyondpod/ui/views/player/visualizers/VisualizerBase$1;->val$episode:Lmobi/beyondpod/rsscore/Track;

    invoke-static {p1}, Lmobi/beyondpod/ui/views/base/colormatcher/DominantColorCalculator;->getColorScheme(Landroid/graphics/Bitmap;)Lmobi/beyondpod/ui/views/base/colormatcher/ColorScheme;

    move-result-object v1

    invoke-virtual {p2, v0, p1, v1}, Lmobi/beyondpod/ui/views/player/visualizers/VisualizerBase;->buildVisualisation(Lmobi/beyondpod/rsscore/Track;Landroid/graphics/Bitmap;Lmobi/beyondpod/ui/views/base/colormatcher/ColorScheme;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 126
    :catch_0
    iget-object p2, p0, Lmobi/beyondpod/ui/views/player/visualizers/VisualizerBase$1;->this$0:Lmobi/beyondpod/ui/views/player/visualizers/VisualizerBase;

    iget-object v0, p0, Lmobi/beyondpod/ui/views/player/visualizers/VisualizerBase$1;->val$episode:Lmobi/beyondpod/rsscore/Track;

    invoke-static {}, Lmobi/beyondpod/ui/views/player/visualizers/VisualizerBase;->access$000()Lmobi/beyondpod/ui/views/base/colormatcher/ColorScheme;

    move-result-object v1

    invoke-virtual {p2, v0, p1, v1}, Lmobi/beyondpod/ui/views/player/visualizers/VisualizerBase;->buildVisualisation(Lmobi/beyondpod/rsscore/Track;Landroid/graphics/Bitmap;Lmobi/beyondpod/ui/views/base/colormatcher/ColorScheme;)V

    goto :goto_0

    .line 131
    :cond_0
    iget-object p2, p0, Lmobi/beyondpod/ui/views/player/visualizers/VisualizerBase$1;->this$0:Lmobi/beyondpod/ui/views/player/visualizers/VisualizerBase;

    iget-object v0, p0, Lmobi/beyondpod/ui/views/player/visualizers/VisualizerBase$1;->val$episode:Lmobi/beyondpod/rsscore/Track;

    invoke-static {}, Lmobi/beyondpod/ui/views/player/visualizers/VisualizerBase;->access$000()Lmobi/beyondpod/ui/views/base/colormatcher/ColorScheme;

    move-result-object v1

    invoke-virtual {p2, v0, p1, v1}, Lmobi/beyondpod/ui/views/player/visualizers/VisualizerBase;->buildVisualisation(Lmobi/beyondpod/rsscore/Track;Landroid/graphics/Bitmap;Lmobi/beyondpod/ui/views/base/colormatcher/ColorScheme;)V

    :cond_1
    :goto_0
    return-void
.end method
