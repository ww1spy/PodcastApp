.class public Lmobi/beyondpod/ui/views/player/visualizers/VisualizerOptions;
.super Ljava/lang/Object;
.source "VisualizerOptions.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmobi/beyondpod/ui/views/player/visualizers/VisualizerOptions$Builder;
    }
.end annotation


# instance fields
.field private mColor:I

.field private mTextSize:I

.field private mTypeface:Landroid/graphics/Typeface;


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getColor()I
    .locals 1

    .line 50
    iget v0, p0, Lmobi/beyondpod/ui/views/player/visualizers/VisualizerOptions;->mColor:I

    return v0
.end method

.method public getTextSize()I
    .locals 1

    .line 42
    iget v0, p0, Lmobi/beyondpod/ui/views/player/visualizers/VisualizerOptions;->mTextSize:I

    return v0
.end method

.method public getTypeface()Landroid/graphics/Typeface;
    .locals 1

    .line 34
    iget-object v0, p0, Lmobi/beyondpod/ui/views/player/visualizers/VisualizerOptions;->mTypeface:Landroid/graphics/Typeface;

    return-object v0
.end method

.method protected setColor(I)V
    .locals 0

    .line 46
    iput p1, p0, Lmobi/beyondpod/ui/views/player/visualizers/VisualizerOptions;->mColor:I

    return-void
.end method

.method protected setTextSize(I)V
    .locals 0

    .line 38
    iput p1, p0, Lmobi/beyondpod/ui/views/player/visualizers/VisualizerOptions;->mTextSize:I

    return-void
.end method

.method protected setTypeface(Landroid/graphics/Typeface;)V
    .locals 0

    .line 30
    iput-object p1, p0, Lmobi/beyondpod/ui/views/player/visualizers/VisualizerOptions;->mTypeface:Landroid/graphics/Typeface;

    return-void
.end method
