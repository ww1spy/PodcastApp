.class public Lmobi/beyondpod/ui/core/Rotate3dAnimation;
.super Landroid/view/animation/Animation;
.source "Rotate3dAnimation.java"


# instance fields
.field private mCamera:Landroid/graphics/Camera;

.field private final mCenterX:F

.field private final mCenterY:F

.field private final mDepthZ:F

.field private final mFromDegrees:F

.field private final mReverse:Z

.field private final mToDegrees:F


# direct methods
.method public constructor <init>(FFFFFZ)V
    .locals 0

    .line 61
    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    .line 62
    iput p1, p0, Lmobi/beyondpod/ui/core/Rotate3dAnimation;->mFromDegrees:F

    .line 63
    iput p2, p0, Lmobi/beyondpod/ui/core/Rotate3dAnimation;->mToDegrees:F

    .line 64
    iput p3, p0, Lmobi/beyondpod/ui/core/Rotate3dAnimation;->mCenterX:F

    .line 65
    iput p4, p0, Lmobi/beyondpod/ui/core/Rotate3dAnimation;->mCenterY:F

    .line 66
    iput p5, p0, Lmobi/beyondpod/ui/core/Rotate3dAnimation;->mDepthZ:F

    .line 67
    iput-boolean p6, p0, Lmobi/beyondpod/ui/core/Rotate3dAnimation;->mReverse:Z

    return-void
.end method


# virtual methods
.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 7

    .line 80
    iget v0, p0, Lmobi/beyondpod/ui/core/Rotate3dAnimation;->mFromDegrees:F

    .line 81
    iget v1, p0, Lmobi/beyondpod/ui/core/Rotate3dAnimation;->mToDegrees:F

    sub-float/2addr v1, v0

    mul-float/2addr v1, p1

    add-float/2addr v0, v1

    .line 83
    iget v1, p0, Lmobi/beyondpod/ui/core/Rotate3dAnimation;->mCenterX:F

    .line 84
    iget v2, p0, Lmobi/beyondpod/ui/core/Rotate3dAnimation;->mCenterY:F

    .line 85
    iget-object v3, p0, Lmobi/beyondpod/ui/core/Rotate3dAnimation;->mCamera:Landroid/graphics/Camera;

    .line 87
    invoke-virtual {p2}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object p2

    .line 89
    invoke-virtual {v3}, Landroid/graphics/Camera;->save()V

    .line 91
    iget-boolean v4, p0, Lmobi/beyondpod/ui/core/Rotate3dAnimation;->mReverse:Z

    const/4 v5, 0x0

    if-eqz v4, :cond_0

    .line 93
    iget v4, p0, Lmobi/beyondpod/ui/core/Rotate3dAnimation;->mDepthZ:F

    mul-float/2addr v4, p1

    invoke-virtual {v3, v5, v5, v4}, Landroid/graphics/Camera;->translate(FFF)V

    goto :goto_0

    .line 96
    :cond_0
    iget v4, p0, Lmobi/beyondpod/ui/core/Rotate3dAnimation;->mDepthZ:F

    const/high16 v6, 0x3f800000    # 1.0f

    sub-float/2addr v6, p1

    mul-float/2addr v4, v6

    invoke-virtual {v3, v5, v5, v4}, Landroid/graphics/Camera;->translate(FFF)V

    .line 98
    :goto_0
    invoke-virtual {v3, v0}, Landroid/graphics/Camera;->rotateY(F)V

    .line 99
    invoke-virtual {v3, p2}, Landroid/graphics/Camera;->getMatrix(Landroid/graphics/Matrix;)V

    .line 100
    invoke-virtual {v3}, Landroid/graphics/Camera;->restore()V

    neg-float p1, v1

    neg-float v0, v2

    .line 102
    invoke-virtual {p2, p1, v0}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 103
    invoke-virtual {p2, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    return-void
.end method

.method public initialize(IIII)V
    .locals 0

    .line 73
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/animation/Animation;->initialize(IIII)V

    .line 74
    new-instance p1, Landroid/graphics/Camera;

    invoke-direct {p1}, Landroid/graphics/Camera;-><init>()V

    iput-object p1, p0, Lmobi/beyondpod/ui/core/Rotate3dAnimation;->mCamera:Landroid/graphics/Camera;

    return-void
.end method
