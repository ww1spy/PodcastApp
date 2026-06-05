.class public Lmobi/beyondpod/ui/views/base/colormatcher/ImageUtils$FloatUtils;
.super Ljava/lang/Object;
.source "ImageUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobi/beyondpod/ui/views/base/colormatcher/ImageUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FloatUtils"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 8
    const-class v0, Lmobi/beyondpod/ui/views/base/colormatcher/ImageUtils;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static varargs weightedAverage([F)F
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    move v2, v1

    .line 17
    :goto_0
    array-length v3, p0

    if-ge v0, v3, :cond_0

    .line 19
    aget v3, p0, v0

    add-int/lit8 v4, v0, 0x1

    .line 20
    aget v4, p0, v4

    mul-float/2addr v3, v4

    add-float/2addr v1, v3

    add-float/2addr v2, v4

    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    :cond_0
    div-float/2addr v1, v2

    return v1
.end method
