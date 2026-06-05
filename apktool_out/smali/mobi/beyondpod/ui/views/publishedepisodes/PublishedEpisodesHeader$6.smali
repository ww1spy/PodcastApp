.class Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesHeader$6;
.super Ljava/lang/Object;
.source "PublishedEpisodesHeader.java"

# interfaces
.implements Lcom/android/volley/toolbox/ImageLoader$ImageListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesHeader;->setCurrentFeed(Lmobi/beyondpod/rsscore/Feed;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesHeader;


# direct methods
.method constructor <init>(Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesHeader;)V
    .locals 0

    .line 262
    iput-object p1, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesHeader$6;->this$0:Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesHeader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .locals 1

    .line 266
    iget-object p1, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesHeader$6;->this$0:Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesHeader;

    invoke-static {}, Lmobi/beyondpod/ui/views/base/colormatcher/DominantColorCalculator;->getDefaultColors()Lmobi/beyondpod/ui/views/base/colormatcher/ColorScheme;

    move-result-object v0

    invoke-static {p1, v0}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesHeader;->access$200(Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesHeader;Lmobi/beyondpod/ui/views/base/colormatcher/ColorScheme;)V

    return-void
.end method

.method public onResponse(Lcom/android/volley/toolbox/ImageLoader$ImageContainer;Z)V
    .locals 0

    .line 272
    invoke-virtual {p1}, Lcom/android/volley/toolbox/ImageLoader$ImageContainer;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 276
    iget-object p2, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesHeader$6;->this$0:Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesHeader;

    invoke-static {p1}, Lmobi/beyondpod/ui/views/base/colormatcher/DominantColorCalculator;->getColorScheme(Landroid/graphics/Bitmap;)Lmobi/beyondpod/ui/views/base/colormatcher/ColorScheme;

    move-result-object p1

    invoke-static {p2, p1}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesHeader;->access$200(Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesHeader;Lmobi/beyondpod/ui/views/base/colormatcher/ColorScheme;)V

    :cond_0
    return-void
.end method
