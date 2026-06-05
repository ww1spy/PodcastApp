.class public Lmobi/beyondpod/ui/views/player/visualizers/VisualizerOptions$Builder;
.super Ljava/lang/Object;
.source "VisualizerOptions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobi/beyondpod/ui/views/player/visualizers/VisualizerOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mOptions:Lmobi/beyondpod/ui/views/player/visualizers/VisualizerOptions;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    new-instance v0, Lmobi/beyondpod/ui/views/player/visualizers/VisualizerOptions;

    invoke-direct {v0}, Lmobi/beyondpod/ui/views/player/visualizers/VisualizerOptions;-><init>()V

    iput-object v0, p0, Lmobi/beyondpod/ui/views/player/visualizers/VisualizerOptions$Builder;->mOptions:Lmobi/beyondpod/ui/views/player/visualizers/VisualizerOptions;

    return-void
.end method


# virtual methods
.method public build()Lmobi/beyondpod/ui/views/player/visualizers/VisualizerOptions;
    .locals 1

    .line 76
    iget-object v0, p0, Lmobi/beyondpod/ui/views/player/visualizers/VisualizerOptions$Builder;->mOptions:Lmobi/beyondpod/ui/views/player/visualizers/VisualizerOptions;

    return-object v0
.end method

.method public setColor(I)Lmobi/beyondpod/ui/views/player/visualizers/VisualizerOptions$Builder;
    .locals 1

    .line 71
    iget-object v0, p0, Lmobi/beyondpod/ui/views/player/visualizers/VisualizerOptions$Builder;->mOptions:Lmobi/beyondpod/ui/views/player/visualizers/VisualizerOptions;

    invoke-virtual {v0, p1}, Lmobi/beyondpod/ui/views/player/visualizers/VisualizerOptions;->setColor(I)V

    return-object p0
.end method

.method public setTextSize(I)Lmobi/beyondpod/ui/views/player/visualizers/VisualizerOptions$Builder;
    .locals 1

    .line 66
    iget-object v0, p0, Lmobi/beyondpod/ui/views/player/visualizers/VisualizerOptions$Builder;->mOptions:Lmobi/beyondpod/ui/views/player/visualizers/VisualizerOptions;

    invoke-virtual {v0, p1}, Lmobi/beyondpod/ui/views/player/visualizers/VisualizerOptions;->setTextSize(I)V

    return-object p0
.end method

.method public setTypeface(Landroid/graphics/Typeface;)Lmobi/beyondpod/ui/views/player/visualizers/VisualizerOptions$Builder;
    .locals 1

    .line 61
    iget-object v0, p0, Lmobi/beyondpod/ui/views/player/visualizers/VisualizerOptions$Builder;->mOptions:Lmobi/beyondpod/ui/views/player/visualizers/VisualizerOptions;

    invoke-virtual {v0, p1}, Lmobi/beyondpod/ui/views/player/visualizers/VisualizerOptions;->setTypeface(Landroid/graphics/Typeface;)V

    return-object p0
.end method
