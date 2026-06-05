.class public Lmobi/beyondpod/ui/views/base/UIUtils;
.super Ljava/lang/Object;
.source "UIUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static buildTrackSubtitle(Landroid/content/Context;Lmobi/beyondpod/rsscore/Track;)Ljava/lang/String;
    .locals 3

    .line 72
    invoke-static {p0, p1}, Lmobi/beyondpod/ui/views/base/UIUtils;->formatEpisodeTimeAsRemaining(Landroid/content/Context;Lmobi/beyondpod/rsscore/Track;)Ljava/lang/String;

    move-result-object p0

    .line 74
    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/Track;->getLastModifiedDate()Ljava/util/Date;

    move-result-object p1

    invoke-static {p1}, Lmobi/beyondpod/rsscore/helpers/DateTime;->formatDateTimeToday(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    .line 76
    invoke-static {p0}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    :cond_0
    const-string v0, "%s \u2022 %s"

    const/4 v1, 0x2

    .line 79
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 p1, 0x1

    aput-object p0, v1, p1

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static createStatusBarColorFromCategoryColor(I)I
    .locals 2

    const v0, 0x3f4ccccd    # 0.8f

    const v1, 0x3f666666    # 0.9f

    .line 121
    invoke-static {p0, v0, v1}, Lmobi/beyondpod/ui/views/base/UIUtils;->scaleColor(IFF)I

    move-result p0

    return p0
.end method

.method public static formatEpisodeTimeAsRemaining(Landroid/content/Context;Lmobi/beyondpod/rsscore/Track;)Ljava/lang/String;
    .locals 9

    const-string v0, ""

    .line 86
    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/Track;->getTotalTime()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-lez v5, :cond_2

    .line 88
    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/Track;->getTotalTime()J

    move-result-wide v0

    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/Track;->getPlayedTime()J

    move-result-wide v5

    sub-long v7, v0, v5

    .line 90
    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/Track;->getPlayedTime()J

    move-result-wide v0

    cmp-long v2, v0, v3

    if-lez v2, :cond_1

    cmp-long v0, v7, v3

    if-lez v0, :cond_1

    const-wide/16 v0, 0x1e

    cmp-long p1, v7, v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-gez p1, :cond_0

    .line 94
    sget p1, Lmobi/beyondpod/R$string;->minute_remaining:I

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->formatSecondsAsMinutes(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v2

    invoke-virtual {p0, p1, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 96
    :cond_0
    sget p1, Lmobi/beyondpod/R$string;->minutes_remaining:I

    new-array v0, v3, [Ljava/lang/Object;

    .line 97
    invoke-static {v7, v8}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->formatSecondsAsMinutes(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    .line 96
    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 99
    :cond_1
    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/Track;->totalTimeAsMinuteString()Ljava/lang/String;

    move-result-object v0

    :cond_2
    :goto_0
    return-object v0
.end method

.method public static getMediaBrowserEpisodeAlbumArt(Lmobi/beyondpod/rsscore/Track;)Landroid/graphics/Bitmap;
    .locals 2

    const/16 v0, 0x64

    .line 45
    invoke-static {p0, v0, v0}, Lmobi/beyondpod/ui/core/volley/ImageUtils;->loadEpisodeImage(Lmobi/beyondpod/rsscore/Track;II)Landroid/graphics/Bitmap;

    move-result-object v1

    if-nez v1, :cond_0

    .line 47
    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/Track;->getParentFeed()Lmobi/beyondpod/rsscore/Feed;

    move-result-object p0

    invoke-static {p0, v0, v0}, Lmobi/beyondpod/ui/core/FeedImageCache;->getSizedFeedImageFor(Lmobi/beyondpod/rsscore/Feed;II)Landroid/graphics/Bitmap;

    move-result-object v1

    :cond_0
    if-nez v1, :cond_1

    .line 50
    invoke-static {}, Lmobi/beyondpod/BeyondPodApplication;->getInstance()Lmobi/beyondpod/BeyondPodApplication;

    move-result-object p0

    invoke-virtual {p0}, Lmobi/beyondpod/BeyondPodApplication;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lmobi/beyondpod/R$drawable;->ic_media_browser_unknown_track:I

    invoke-static {p0, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    :cond_1
    return-object v1
.end method

.method public static getMediaBrowserFeedImage(Lmobi/beyondpod/rsscore/Feed;)Landroid/graphics/Bitmap;
    .locals 2

    .line 57
    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/Feed;->getType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 59
    invoke-static {}, Lmobi/beyondpod/BeyondPodApplication;->getInstance()Lmobi/beyondpod/BeyondPodApplication;

    move-result-object p0

    invoke-virtual {p0}, Lmobi/beyondpod/BeyondPodApplication;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lmobi/beyondpod/R$drawable;->ic_media_browser_virtual_feed:I

    invoke-static {p0, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    :cond_0
    const/16 v0, 0x64

    .line 62
    invoke-static {p0, v0, v0}, Lmobi/beyondpod/ui/core/FeedImageCache;->getSizedFeedImageFor(Lmobi/beyondpod/rsscore/Feed;II)Landroid/graphics/Bitmap;

    move-result-object p0

    if-nez p0, :cond_1

    .line 65
    invoke-static {}, Lmobi/beyondpod/BeyondPodApplication;->getInstance()Lmobi/beyondpod/BeyondPodApplication;

    move-result-object p0

    invoke-virtual {p0}, Lmobi/beyondpod/BeyondPodApplication;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lmobi/beyondpod/R$drawable;->ic_media_browser_unknown_feed:I

    invoke-static {p0, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p0

    :cond_1
    return-object p0
.end method

.method public static isScrollable(Landroid/widget/ListView;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 138
    :cond_0
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    .line 140
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v3

    if-nez v3, :cond_1

    return v0

    .line 143
    :cond_1
    invoke-virtual {p0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/ListView;->getHeight()I

    move-result v3

    if-gt v1, v3, :cond_4

    invoke-virtual {p0, v0}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    if-gez v1, :cond_2

    goto :goto_0

    .line 149
    :cond_2
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/ListView;->getCount()I

    move-result p0

    if-ne v1, p0, :cond_3

    return v0

    :cond_3
    return v2

    :cond_4
    :goto_0
    return v2
.end method

.method public static scaleColor(IFF)I
    .locals 2

    .line 114
    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, p2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result p2

    .line 115
    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, p1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 116
    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result p0

    int-to-float p0, p0

    mul-float/2addr p0, p1

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    .line 114
    invoke-static {p2, v0, v1, p0}, Landroid/graphics/Color;->argb(IIII)I

    move-result p0

    return p0
.end method

.method public static setColorAlpha(IF)I
    .locals 2

    const/high16 v0, 0x437f0000    # 255.0f

    mul-float/2addr p1, v0

    float-to-int p1, p1

    const/4 v0, 0x0

    .line 108
    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    const/16 v0, 0xff

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 109
    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v0

    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v1

    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result p0

    invoke-static {p1, v0, v1, p0}, Landroid/graphics/Color;->argb(IIII)I

    move-result p0

    return p0
.end method

.method public static setStatusBarColor(Landroid/app/Activity;I)V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .line 127
    invoke-static {}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->apiLevel()I

    move-result v0

    const/16 v1, 0x15

    if-ge v0, v1, :cond_0

    return-void

    .line 130
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/view/Window;->setStatusBarColor(I)V

    return-void
.end method
