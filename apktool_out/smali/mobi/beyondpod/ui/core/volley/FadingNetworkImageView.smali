.class public Lmobi/beyondpod/ui/core/volley/FadingNetworkImageView;
.super Landroid/support/v7/widget/AppCompatImageView;
.source "FadingNetworkImageView.java"


# static fields
.field protected static final ANIMATION_FADE_IN_TIME:I = 0x64

.field protected static final HALF_FADE_IN_TIME:I = 0x32

.field protected static _prefetchImageListener:Lcom/android/volley/toolbox/ImageLoader$ImageListener;

.field protected static final transparentDrawable:Landroid/graphics/drawable/ColorDrawable;


# instance fields
.field protected mDefaultImageId:I

.field protected mErrorImageId:I

.field protected mFadeInImage:Z

.field protected mImageContainer:Lcom/android/volley/toolbox/ImageLoader$ImageContainer;

.field protected mImageListener:Lcom/android/volley/toolbox/ImageLoader$ImageListener;

.field protected mImageLoader:Lmobi/beyondpod/ui/core/volley/ImageLoader;

.field protected mIsInLayoutPass:Z

.field protected mMaxImageHeight:I

.field protected mMaxImageWidth:I

.field protected mUrl:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 89
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-static {}, Lmobi/beyondpod/BeyondPodApplication;->getInstance()Lmobi/beyondpod/BeyondPodApplication;

    move-result-object v1

    invoke-virtual {v1}, Lmobi/beyondpod/BeyondPodApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x106000d

    invoke-static {v1, v2}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    sput-object v0, Lmobi/beyondpod/ui/core/volley/FadingNetworkImageView;->transparentDrawable:Landroid/graphics/drawable/ColorDrawable;

    .line 241
    new-instance v0, Lmobi/beyondpod/ui/core/volley/FadingNetworkImageView$3;

    invoke-direct {v0}, Lmobi/beyondpod/ui/core/volley/FadingNetworkImageView$3;-><init>()V

    sput-object v0, Lmobi/beyondpod/ui/core/volley/FadingNetworkImageView;->_prefetchImageListener:Lcom/android/volley/toolbox/ImageLoader$ImageListener;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 93
    invoke-direct {p0, p1, v0}, Lmobi/beyondpod/ui/core/volley/FadingNetworkImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 98
    invoke-direct {p0, p1, p2, v0}, Lmobi/beyondpod/ui/core/volley/FadingNetworkImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 103
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/widget/AppCompatImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x1

    .line 74
    iput-boolean p1, p0, Lmobi/beyondpod/ui/core/volley/FadingNetworkImageView;->mFadeInImage:Z

    const/4 p1, 0x0

    .line 81
    iput p1, p0, Lmobi/beyondpod/ui/core/volley/FadingNetworkImageView;->mMaxImageHeight:I

    .line 86
    iput p1, p0, Lmobi/beyondpod/ui/core/volley/FadingNetworkImageView;->mMaxImageWidth:I

    .line 166
    new-instance p1, Lmobi/beyondpod/ui/core/volley/FadingNetworkImageView$1;

    invoke-direct {p1, p0}, Lmobi/beyondpod/ui/core/volley/FadingNetworkImageView$1;-><init>(Lmobi/beyondpod/ui/core/volley/FadingNetworkImageView;)V

    iput-object p1, p0, Lmobi/beyondpod/ui/core/volley/FadingNetworkImageView;->mImageListener:Lcom/android/volley/toolbox/ImageLoader$ImageListener;

    return-void
.end method

.method public static prefetchImage(Ljava/lang/String;Lmobi/beyondpod/ui/core/volley/ImageLoader;II)V
    .locals 1

    .line 256
    sget-object v0, Lmobi/beyondpod/ui/core/volley/FadingNetworkImageView;->_prefetchImageListener:Lcom/android/volley/toolbox/ImageLoader$ImageListener;

    invoke-virtual {p1, p0, v0, p2, p3}, Lmobi/beyondpod/ui/core/volley/ImageLoader;->get(Ljava/lang/String;Lcom/android/volley/toolbox/ImageLoader$ImageListener;II)Lcom/android/volley/toolbox/ImageLoader$ImageContainer;

    return-void
.end method


# virtual methods
.method protected drawableStateChanged()V
    .locals 0

    .line 356
    invoke-super {p0}, Landroid/support/v7/widget/AppCompatImageView;->drawableStateChanged()V

    .line 357
    invoke-virtual {p0}, Lmobi/beyondpod/ui/core/volley/FadingNetworkImageView;->invalidate()V

    return-void
.end method

.method protected getImageContainer()Lcom/android/volley/toolbox/ImageLoader$ImageContainer;
    .locals 5

    .line 327
    iget-object v0, p0, Lmobi/beyondpod/ui/core/volley/FadingNetworkImageView;->mImageLoader:Lmobi/beyondpod/ui/core/volley/ImageLoader;

    iget-object v1, p0, Lmobi/beyondpod/ui/core/volley/FadingNetworkImageView;->mUrl:Ljava/lang/String;

    iget-object v2, p0, Lmobi/beyondpod/ui/core/volley/FadingNetworkImageView;->mImageListener:Lcom/android/volley/toolbox/ImageLoader$ImageListener;

    iget v3, p0, Lmobi/beyondpod/ui/core/volley/FadingNetworkImageView;->mMaxImageWidth:I

    iget v4, p0, Lmobi/beyondpod/ui/core/volley/FadingNetworkImageView;->mMaxImageHeight:I

    invoke-virtual {v0, v1, v2, v3, v4}, Lmobi/beyondpod/ui/core/volley/ImageLoader;->get(Ljava/lang/String;Lcom/android/volley/toolbox/ImageLoader$ImageListener;II)Lcom/android/volley/toolbox/ImageLoader$ImageContainer;

    move-result-object v0

    return-object v0
.end method

.method protected imageError(Lcom/android/volley/VolleyError;)V
    .locals 0

    .line 224
    iget p1, p0, Lmobi/beyondpod/ui/core/volley/FadingNetworkImageView;->mErrorImageId:I

    if-eqz p1, :cond_0

    .line 225
    iget p1, p0, Lmobi/beyondpod/ui/core/volley/FadingNetworkImageView;->mErrorImageId:I

    invoke-virtual {p0, p1}, Lmobi/beyondpod/ui/core/volley/FadingNetworkImageView;->setImageFromResource(I)V

    :cond_0
    return-void
.end method

.method protected imageSuccess(Lcom/android/volley/toolbox/ImageLoader$ImageContainer;Z)V
    .locals 2

    if-eqz p2, :cond_0

    .line 191
    iget-boolean v0, p0, Lmobi/beyondpod/ui/core/volley/FadingNetworkImageView;->mIsInLayoutPass:Z

    if-eqz v0, :cond_0

    .line 193
    new-instance p2, Lmobi/beyondpod/ui/core/volley/FadingNetworkImageView$2;

    invoke-direct {p2, p0, p1}, Lmobi/beyondpod/ui/core/volley/FadingNetworkImageView$2;-><init>(Lmobi/beyondpod/ui/core/volley/FadingNetworkImageView;Lcom/android/volley/toolbox/ImageLoader$ImageContainer;)V

    invoke-virtual {p0, p2}, Lmobi/beyondpod/ui/core/volley/FadingNetworkImageView;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 204
    :cond_0
    invoke-virtual {p1}, Lcom/android/volley/toolbox/ImageLoader$ImageContainer;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 206
    invoke-virtual {p1}, Lcom/android/volley/toolbox/ImageLoader$ImageContainer;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {v0}, Lmobi/beyondpod/ui/core/volley/BitmapCache;->getBitmapSize(Landroid/graphics/Bitmap;)I

    move-result v0

    const/16 v1, 0x800

    if-gt v0, v1, :cond_2

    iget v0, p0, Lmobi/beyondpod/ui/core/volley/FadingNetworkImageView;->mErrorImageId:I

    if-nez v0, :cond_1

    goto :goto_0

    .line 209
    :cond_1
    invoke-virtual {p0}, Lmobi/beyondpod/ui/core/volley/FadingNetworkImageView;->loadedImageIsBad()V

    goto :goto_2

    .line 207
    :cond_2
    :goto_0
    invoke-virtual {p1}, Lcom/android/volley/toolbox/ImageLoader$ImageContainer;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-virtual {p0}, Lmobi/beyondpod/ui/core/volley/FadingNetworkImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-boolean v1, p0, Lmobi/beyondpod/ui/core/volley/FadingNetworkImageView;->mFadeInImage:Z

    if-eqz v1, :cond_3

    if-nez p2, :cond_3

    const/4 p2, 0x1

    goto :goto_1

    :cond_3
    const/4 p2, 0x0

    :goto_1
    invoke-virtual {p0, p0, p1, v0, p2}, Lmobi/beyondpod/ui/core/volley/FadingNetworkImageView;->setImageBitmap(Landroid/widget/ImageView;Landroid/graphics/Bitmap;Landroid/content/res/Resources;Z)V

    goto :goto_2

    .line 211
    :cond_4
    iget p1, p0, Lmobi/beyondpod/ui/core/volley/FadingNetworkImageView;->mDefaultImageId:I

    if-eqz p1, :cond_5

    .line 213
    iget p1, p0, Lmobi/beyondpod/ui/core/volley/FadingNetworkImageView;->mDefaultImageId:I

    invoke-virtual {p0, p1}, Lmobi/beyondpod/ui/core/volley/FadingNetworkImageView;->setImageFromResource(I)V

    :cond_5
    :goto_2
    return-void
.end method

.method protected loadImageIfNecessary(Z)V
    .locals 4

    .line 267
    invoke-virtual {p0}, Lmobi/beyondpod/ui/core/volley/FadingNetworkImageView;->getWidth()I

    move-result v0

    .line 268
    invoke-virtual {p0}, Lmobi/beyondpod/ui/core/volley/FadingNetworkImageView;->getHeight()I

    move-result v1

    .line 270
    invoke-virtual {p0}, Lmobi/beyondpod/ui/core/volley/FadingNetworkImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lmobi/beyondpod/ui/core/volley/FadingNetworkImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/4 v3, -0x2

    if-ne v2, v3, :cond_0

    .line 271
    invoke-virtual {p0}, Lmobi/beyondpod/ui/core/volley/FadingNetworkImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-ne v2, v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-nez v0, :cond_1

    if-nez v1, :cond_1

    if-nez v2, :cond_1

    return-void

    .line 283
    :cond_1
    iget-object v0, p0, Lmobi/beyondpod/ui/core/volley/FadingNetworkImageView;->mUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_5

    iget-object v0, p0, Lmobi/beyondpod/ui/core/volley/FadingNetworkImageView;->mUrl:Ljava/lang/String;

    if-nez v0, :cond_2

    goto :goto_1

    .line 300
    :cond_2
    iget-object v0, p0, Lmobi/beyondpod/ui/core/volley/FadingNetworkImageView;->mImageContainer:Lcom/android/volley/toolbox/ImageLoader$ImageContainer;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lmobi/beyondpod/ui/core/volley/FadingNetworkImageView;->mImageContainer:Lcom/android/volley/toolbox/ImageLoader$ImageContainer;

    invoke-virtual {v0}, Lcom/android/volley/toolbox/ImageLoader$ImageContainer;->getRequestUrl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 302
    iget-object v0, p0, Lmobi/beyondpod/ui/core/volley/FadingNetworkImageView;->mImageContainer:Lcom/android/volley/toolbox/ImageLoader$ImageContainer;

    invoke-virtual {v0}, Lcom/android/volley/toolbox/ImageLoader$ImageContainer;->getRequestUrl()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lmobi/beyondpod/ui/core/volley/FadingNetworkImageView;->mUrl:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    return-void

    .line 311
    :cond_3
    iget-object v0, p0, Lmobi/beyondpod/ui/core/volley/FadingNetworkImageView;->mImageContainer:Lcom/android/volley/toolbox/ImageLoader$ImageContainer;

    invoke-virtual {v0}, Lcom/android/volley/toolbox/ImageLoader$ImageContainer;->cancelRequest()V

    .line 312
    invoke-virtual {p0, v1}, Lmobi/beyondpod/ui/core/volley/FadingNetworkImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 319
    :cond_4
    iput-boolean p1, p0, Lmobi/beyondpod/ui/core/volley/FadingNetworkImageView;->mIsInLayoutPass:Z

    .line 322
    invoke-virtual {p0}, Lmobi/beyondpod/ui/core/volley/FadingNetworkImageView;->getImageContainer()Lcom/android/volley/toolbox/ImageLoader$ImageContainer;

    move-result-object p1

    iput-object p1, p0, Lmobi/beyondpod/ui/core/volley/FadingNetworkImageView;->mImageContainer:Lcom/android/volley/toolbox/ImageLoader$ImageContainer;

    return-void

    .line 285
    :cond_5
    :goto_1
    iget-object p1, p0, Lmobi/beyondpod/ui/core/volley/FadingNetworkImageView;->mImageContainer:Lcom/android/volley/toolbox/ImageLoader$ImageContainer;

    if-eqz p1, :cond_6

    .line 287
    iget-object p1, p0, Lmobi/beyondpod/ui/core/volley/FadingNetworkImageView;->mImageContainer:Lcom/android/volley/toolbox/ImageLoader$ImageContainer;

    invoke-virtual {p1}, Lcom/android/volley/toolbox/ImageLoader$ImageContainer;->cancelRequest()V

    .line 288
    iput-object v1, p0, Lmobi/beyondpod/ui/core/volley/FadingNetworkImageView;->mImageContainer:Lcom/android/volley/toolbox/ImageLoader$ImageContainer;

    .line 291
    :cond_6
    iget p1, p0, Lmobi/beyondpod/ui/core/volley/FadingNetworkImageView;->mErrorImageId:I

    if-eqz p1, :cond_7

    .line 292
    iget p1, p0, Lmobi/beyondpod/ui/core/volley/FadingNetworkImageView;->mErrorImageId:I

    invoke-virtual {p0, p1}, Lmobi/beyondpod/ui/core/volley/FadingNetworkImageView;->setImageFromResource(I)V

    goto :goto_2

    .line 294
    :cond_7
    invoke-virtual {p0, v1}, Lmobi/beyondpod/ui/core/volley/FadingNetworkImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :goto_2
    return-void
.end method

.method protected loadedImageIsBad()V
    .locals 1

    .line 219
    iget v0, p0, Lmobi/beyondpod/ui/core/volley/FadingNetworkImageView;->mErrorImageId:I

    invoke-virtual {p0, v0}, Lmobi/beyondpod/ui/core/volley/FadingNetworkImageView;->setImageFromResource(I)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 340
    iget-object v0, p0, Lmobi/beyondpod/ui/core/volley/FadingNetworkImageView;->mImageContainer:Lcom/android/volley/toolbox/ImageLoader$ImageContainer;

    if-eqz v0, :cond_0

    .line 344
    iget-object v0, p0, Lmobi/beyondpod/ui/core/volley/FadingNetworkImageView;->mImageContainer:Lcom/android/volley/toolbox/ImageLoader$ImageContainer;

    invoke-virtual {v0}, Lcom/android/volley/toolbox/ImageLoader$ImageContainer;->cancelRequest()V

    const/4 v0, 0x0

    .line 345
    invoke-virtual {p0, v0}, Lmobi/beyondpod/ui/core/volley/FadingNetworkImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 348
    iput-object v0, p0, Lmobi/beyondpod/ui/core/volley/FadingNetworkImageView;->mImageContainer:Lcom/android/volley/toolbox/ImageLoader$ImageContainer;

    .line 350
    :cond_0
    invoke-super {p0}, Landroid/support/v7/widget/AppCompatImageView;->onDetachedFromWindow()V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 333
    invoke-super/range {p0 .. p5}, Landroid/support/v7/widget/AppCompatImageView;->onLayout(ZIIII)V

    const/4 p1, 0x1

    .line 334
    invoke-virtual {p0, p1}, Lmobi/beyondpod/ui/core/volley/FadingNetworkImageView;->loadImageIfNecessary(Z)V

    return-void
.end method

.method public setDefaultImageResId(I)V
    .locals 0

    .line 140
    iput p1, p0, Lmobi/beyondpod/ui/core/volley/FadingNetworkImageView;->mDefaultImageId:I

    return-void
.end method

.method public setErrorImageResId(I)V
    .locals 0

    .line 149
    iput p1, p0, Lmobi/beyondpod/ui/core/volley/FadingNetworkImageView;->mErrorImageId:I

    return-void
.end method

.method public setFadeInImage(Z)V
    .locals 0

    .line 154
    iput-boolean p1, p0, Lmobi/beyondpod/ui/core/volley/FadingNetworkImageView;->mFadeInImage:Z

    return-void
.end method

.method protected setImageBitmap(Landroid/widget/ImageView;Landroid/graphics/Bitmap;Landroid/content/res/Resources;Z)V
    .locals 2

    if-eqz p4, :cond_1

    .line 377
    invoke-virtual {p1}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p3

    const/high16 p4, 0x3f000000    # 0.5f

    invoke-virtual {p3, p4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p3

    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p4

    if-nez p4, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x32

    :goto_0
    invoke-virtual {p3, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p3

    new-instance p4, Lmobi/beyondpod/ui/core/volley/FadingNetworkImageView$4;

    invoke-direct {p4, p0, p1, p2}, Lmobi/beyondpod/ui/core/volley/FadingNetworkImageView$4;-><init>(Lmobi/beyondpod/ui/core/volley/FadingNetworkImageView;Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V

    .line 378
    invoke-virtual {p3, p4}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 386
    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_1

    .line 391
    :cond_1
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :goto_1
    return-void
.end method

.method protected setImageFromResource(I)V
    .locals 0

    .line 233
    :try_start_0
    invoke-virtual {p0, p1}, Lmobi/beyondpod/ui/core/volley/FadingNetworkImageView;->setImageResource(I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public setImageUrl(Ljava/lang/String;Lmobi/beyondpod/ui/core/volley/ImageLoader;)V
    .locals 0

    .line 124
    iput-object p1, p0, Lmobi/beyondpod/ui/core/volley/FadingNetworkImageView;->mUrl:Ljava/lang/String;

    .line 125
    iput-object p2, p0, Lmobi/beyondpod/ui/core/volley/FadingNetworkImageView;->mImageLoader:Lmobi/beyondpod/ui/core/volley/ImageLoader;

    const/4 p1, 0x0

    .line 131
    invoke-virtual {p0, p1}, Lmobi/beyondpod/ui/core/volley/FadingNetworkImageView;->loadImageIfNecessary(Z)V

    return-void
.end method

.method public setMaxImageSize(II)V
    .locals 0

    .line 162
    iput p1, p0, Lmobi/beyondpod/ui/core/volley/FadingNetworkImageView;->mMaxImageWidth:I

    .line 163
    iput p2, p0, Lmobi/beyondpod/ui/core/volley/FadingNetworkImageView;->mMaxImageHeight:I

    return-void
.end method
