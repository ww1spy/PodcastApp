.class public Lmobi/beyondpod/ui/views/navigator/NavigatorHeader;
.super Landroid/widget/FrameLayout;
.source "NavigatorHeader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmobi/beyondpod/ui/views/navigator/NavigatorHeader$INavigatorHeaderOwner;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "NavigatorHeader"


# instance fields
.field private _ABUpdate:Landroid/view/View;

.field private _Category:I

.field private _Default:I

.field _FeedFilter:Landroid/widget/TextSwitcher;

.field _Green:I

.field private _HeaderImage:Landroid/widget/ImageView;

.field private _Home:I

.field private _ImageId:I

.field private _LabelAllFeeds:Ljava/lang/String;

.field private _LabelNewFeeds:Ljava/lang/String;

.field private _LastCategoryColor:I

.field private _LastUpdated:Landroid/widget/TextView;

.field private _Owner:Lmobi/beyondpod/ui/views/navigator/NavigatorHeader$INavigatorHeaderOwner;

.field private _Progress:Landroid/view/View;

.field _Red:I

.field private _StartUpdate:Landroid/view/View;

.field _Yellow:I

.field private _previousSubtitle:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 123
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, -0x1

    .line 38
    iput p1, p0, Lmobi/beyondpod/ui/views/navigator/NavigatorHeader;->_Category:I

    const/16 v0, 0xff

    const/16 v1, 0x25

    const/16 v2, 0x44

    .line 40
    invoke-static {v0, v1, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    iput v0, p0, Lmobi/beyondpod/ui/views/navigator/NavigatorHeader;->_Red:I

    const/16 v0, 0x7b

    const/16 v1, 0xcc

    const/16 v2, 0x2b

    .line 41
    invoke-static {v0, v1, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    iput v0, p0, Lmobi/beyondpod/ui/views/navigator/NavigatorHeader;->_Green:I

    const/16 v0, 0xef

    const/16 v1, 0xb7

    const/16 v2, 0x2d

    .line 42
    invoke-static {v0, v1, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    iput v0, p0, Lmobi/beyondpod/ui/views/navigator/NavigatorHeader;->_Yellow:I

    .line 44
    iput p1, p0, Lmobi/beyondpod/ui/views/navigator/NavigatorHeader;->_ImageId:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 128
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, -0x1

    .line 38
    iput p1, p0, Lmobi/beyondpod/ui/views/navigator/NavigatorHeader;->_Category:I

    const/16 p2, 0xff

    const/16 v0, 0x25

    const/16 v1, 0x44

    .line 40
    invoke-static {p2, v0, v1}, Landroid/graphics/Color;->rgb(III)I

    move-result p2

    iput p2, p0, Lmobi/beyondpod/ui/views/navigator/NavigatorHeader;->_Red:I

    const/16 p2, 0x7b

    const/16 v0, 0xcc

    const/16 v1, 0x2b

    .line 41
    invoke-static {p2, v0, v1}, Landroid/graphics/Color;->rgb(III)I

    move-result p2

    iput p2, p0, Lmobi/beyondpod/ui/views/navigator/NavigatorHeader;->_Green:I

    const/16 p2, 0xef

    const/16 v0, 0xb7

    const/16 v1, 0x2d

    .line 42
    invoke-static {p2, v0, v1}, Landroid/graphics/Color;->rgb(III)I

    move-result p2

    iput p2, p0, Lmobi/beyondpod/ui/views/navigator/NavigatorHeader;->_Yellow:I

    .line 44
    iput p1, p0, Lmobi/beyondpod/ui/views/navigator/NavigatorHeader;->_ImageId:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 133
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, -0x1

    .line 38
    iput p1, p0, Lmobi/beyondpod/ui/views/navigator/NavigatorHeader;->_Category:I

    const/16 p2, 0xff

    const/16 p3, 0x25

    const/16 v0, 0x44

    .line 40
    invoke-static {p2, p3, v0}, Landroid/graphics/Color;->rgb(III)I

    move-result p2

    iput p2, p0, Lmobi/beyondpod/ui/views/navigator/NavigatorHeader;->_Red:I

    const/16 p2, 0x7b

    const/16 p3, 0xcc

    const/16 v0, 0x2b

    .line 41
    invoke-static {p2, p3, v0}, Landroid/graphics/Color;->rgb(III)I

    move-result p2

    iput p2, p0, Lmobi/beyondpod/ui/views/navigator/NavigatorHeader;->_Green:I

    const/16 p2, 0xef

    const/16 p3, 0xb7

    const/16 v0, 0x2d

    .line 42
    invoke-static {p2, p3, v0}, Landroid/graphics/Color;->rgb(III)I

    move-result p2

    iput p2, p0, Lmobi/beyondpod/ui/views/navigator/NavigatorHeader;->_Yellow:I

    .line 44
    iput p1, p0, Lmobi/beyondpod/ui/views/navigator/NavigatorHeader;->_ImageId:I

    return-void
.end method

.method static synthetic access$000(Lmobi/beyondpod/ui/views/navigator/NavigatorHeader;)I
    .locals 0

    .line 23
    iget p0, p0, Lmobi/beyondpod/ui/views/navigator/NavigatorHeader;->_ImageId:I

    return p0
.end method

.method static synthetic access$002(Lmobi/beyondpod/ui/views/navigator/NavigatorHeader;I)I
    .locals 0

    .line 23
    iput p1, p0, Lmobi/beyondpod/ui/views/navigator/NavigatorHeader;->_ImageId:I

    return p1
.end method

.method static synthetic access$100(Lmobi/beyondpod/ui/views/navigator/NavigatorHeader;)Landroid/widget/ImageView;
    .locals 0

    .line 23
    iget-object p0, p0, Lmobi/beyondpod/ui/views/navigator/NavigatorHeader;->_HeaderImage:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$200(Lmobi/beyondpod/ui/views/navigator/NavigatorHeader;)Lmobi/beyondpod/ui/views/navigator/NavigatorHeader$INavigatorHeaderOwner;
    .locals 0

    .line 23
    iget-object p0, p0, Lmobi/beyondpod/ui/views/navigator/NavigatorHeader;->_Owner:Lmobi/beyondpod/ui/views/navigator/NavigatorHeader$INavigatorHeaderOwner;

    return-object p0
.end method

.method private crossfadeImage(I)V
    .locals 1

    .line 104
    :try_start_0
    iget-object v0, p0, Lmobi/beyondpod/ui/views/navigator/NavigatorHeader;->_HeaderImage:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 108
    :catch_0
    iget-object p1, p0, Lmobi/beyondpod/ui/views/navigator/NavigatorHeader;->_HeaderImage:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-void
.end method

.method private setImageFrame(I)V
    .locals 1

    .line 79
    invoke-virtual {p0, p1}, Lmobi/beyondpod/ui/views/navigator/NavigatorHeader;->setBackgroundColor(I)V

    .line 81
    iget v0, p0, Lmobi/beyondpod/ui/views/navigator/NavigatorHeader;->_ImageId:I

    if-lez v0, :cond_0

    .line 82
    iget-object p1, p0, Lmobi/beyondpod/ui/views/navigator/NavigatorHeader;->_HeaderImage:Landroid/widget/ImageView;

    iget v0, p0, Lmobi/beyondpod/ui/views/navigator/NavigatorHeader;->_ImageId:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 85
    :cond_0
    iget v0, p0, Lmobi/beyondpod/ui/views/navigator/NavigatorHeader;->_Red:I

    if-eq p1, v0, :cond_3

    iget v0, p0, Lmobi/beyondpod/ui/views/navigator/NavigatorHeader;->_Home:I

    if-ne p1, v0, :cond_1

    goto :goto_0

    .line 89
    :cond_1
    iget v0, p0, Lmobi/beyondpod/ui/views/navigator/NavigatorHeader;->_Yellow:I

    if-ne p1, v0, :cond_2

    const p1, 0x7f08007a

    .line 91
    invoke-direct {p0, p1}, Lmobi/beyondpod/ui/views/navigator/NavigatorHeader;->crossfadeImage(I)V

    goto :goto_1

    :cond_2
    const p1, 0x7f080078

    .line 95
    invoke-direct {p0, p1}, Lmobi/beyondpod/ui/views/navigator/NavigatorHeader;->crossfadeImage(I)V

    goto :goto_1

    :cond_3
    :goto_0
    const p1, 0x7f080079

    .line 87
    invoke-direct {p0, p1}, Lmobi/beyondpod/ui/views/navigator/NavigatorHeader;->crossfadeImage(I)V

    :goto_1
    return-void
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 2

    .line 144
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 146
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/navigator/NavigatorHeader;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f06002a

    invoke-static {v0, v1}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lmobi/beyondpod/ui/views/navigator/NavigatorHeader;->_Home:I

    .line 147
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/navigator/NavigatorHeader;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f06002d

    invoke-static {v0, v1}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lmobi/beyondpod/ui/views/navigator/NavigatorHeader;->_Default:I

    const v0, 0x7f090010

    .line 149
    invoke-virtual {p0, v0}, Lmobi/beyondpod/ui/views/navigator/NavigatorHeader;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lmobi/beyondpod/ui/views/navigator/NavigatorHeader;->_ABUpdate:Landroid/view/View;

    const v0, 0x7f0901d6

    .line 150
    invoke-virtual {p0, v0}, Lmobi/beyondpod/ui/views/navigator/NavigatorHeader;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lmobi/beyondpod/ui/views/navigator/NavigatorHeader;->_Progress:Landroid/view/View;

    const v0, 0x7f0901f4

    .line 151
    invoke-virtual {p0, v0}, Lmobi/beyondpod/ui/views/navigator/NavigatorHeader;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lmobi/beyondpod/ui/views/navigator/NavigatorHeader;->_StartUpdate:Landroid/view/View;

    const v0, 0x7f09016a

    .line 152
    invoke-virtual {p0, v0}, Lmobi/beyondpod/ui/views/navigator/NavigatorHeader;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lmobi/beyondpod/ui/views/navigator/NavigatorHeader;->_LastUpdated:Landroid/widget/TextView;

    const v0, 0x7f0901a1

    .line 153
    invoke-virtual {p0, v0}, Lmobi/beyondpod/ui/views/navigator/NavigatorHeader;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lmobi/beyondpod/ui/views/navigator/NavigatorHeader;->_HeaderImage:Landroid/widget/ImageView;

    .line 155
    iget-object v0, p0, Lmobi/beyondpod/ui/views/navigator/NavigatorHeader;->_HeaderImage:Landroid/widget/ImageView;

    new-instance v1, Lmobi/beyondpod/ui/views/navigator/NavigatorHeader$1;

    invoke-direct {v1, p0}, Lmobi/beyondpod/ui/views/navigator/NavigatorHeader$1;-><init>(Lmobi/beyondpod/ui/views/navigator/NavigatorHeader;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 172
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/navigator/NavigatorHeader;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1002a2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmobi/beyondpod/ui/views/navigator/NavigatorHeader;->_LabelNewFeeds:Ljava/lang/String;

    .line 173
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/navigator/NavigatorHeader;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1002a1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmobi/beyondpod/ui/views/navigator/NavigatorHeader;->_LabelAllFeeds:Ljava/lang/String;

    const v0, 0x7f0900ee

    .line 175
    invoke-virtual {p0, v0}, Lmobi/beyondpod/ui/views/navigator/NavigatorHeader;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextSwitcher;

    iput-object v0, p0, Lmobi/beyondpod/ui/views/navigator/NavigatorHeader;->_FeedFilter:Landroid/widget/TextSwitcher;

    .line 177
    iget-object v0, p0, Lmobi/beyondpod/ui/views/navigator/NavigatorHeader;->_FeedFilter:Landroid/widget/TextSwitcher;

    new-instance v1, Lmobi/beyondpod/ui/views/navigator/NavigatorHeader$2;

    invoke-direct {v1, p0}, Lmobi/beyondpod/ui/views/navigator/NavigatorHeader$2;-><init>(Lmobi/beyondpod/ui/views/navigator/NavigatorHeader;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextSwitcher;->setFactory(Landroid/widget/ViewSwitcher$ViewFactory;)V

    const v0, 0x7f0900ef

    .line 186
    invoke-virtual {p0, v0}, Lmobi/beyondpod/ui/views/navigator/NavigatorHeader;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lmobi/beyondpod/ui/views/navigator/NavigatorHeader$3;

    invoke-direct {v1, p0}, Lmobi/beyondpod/ui/views/navigator/NavigatorHeader$3;-><init>(Lmobi/beyondpod/ui/views/navigator/NavigatorHeader;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 199
    iget-object v0, p0, Lmobi/beyondpod/ui/views/navigator/NavigatorHeader;->_ABUpdate:Landroid/view/View;

    new-instance v1, Lmobi/beyondpod/ui/views/navigator/NavigatorHeader$4;

    invoke-direct {v1, p0}, Lmobi/beyondpod/ui/views/navigator/NavigatorHeader$4;-><init>(Lmobi/beyondpod/ui/views/navigator/NavigatorHeader;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 209
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/navigator/NavigatorHeader;->updateFeedFilter()V

    .line 210
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/navigator/NavigatorHeader;->refreshHeaderImage()V

    return-void
.end method

.method public refreshHeaderImage()V
    .locals 3

    .line 49
    iget v0, p0, Lmobi/beyondpod/ui/views/navigator/NavigatorHeader;->_Default:I

    .line 50
    invoke-static {}, Lmobi/beyondpod/ui/core/ThemeManager;->isDarkTheme()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 52
    iput v1, p0, Lmobi/beyondpod/ui/views/navigator/NavigatorHeader;->_LastCategoryColor:I

    goto :goto_0

    .line 56
    :cond_0
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->getActiveFeedCategory()Lmobi/beyondpod/rsscore/categories/FeedCategory;

    move-result-object v0

    .line 57
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->actionBarUsesCategoryColor()Z

    move-result v1

    if-eqz v1, :cond_3

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lmobi/beyondpod/rsscore/categories/FeedCategory;->color()I

    move-result v1

    if-eqz v1, :cond_3

    .line 59
    iget v1, p0, Lmobi/beyondpod/ui/views/navigator/NavigatorHeader;->_Category:I

    if-ltz v1, :cond_1

    iget v1, p0, Lmobi/beyondpod/ui/views/navigator/NavigatorHeader;->_LastCategoryColor:I

    invoke-virtual {v0}, Lmobi/beyondpod/rsscore/categories/FeedCategory;->color()I

    move-result v2

    if-eq v1, v2, :cond_2

    .line 61
    :cond_1
    invoke-virtual {v0}, Lmobi/beyondpod/rsscore/categories/FeedCategory;->color()I

    move-result v0

    iput v0, p0, Lmobi/beyondpod/ui/views/navigator/NavigatorHeader;->_LastCategoryColor:I

    .line 62
    iget v0, p0, Lmobi/beyondpod/ui/views/navigator/NavigatorHeader;->_LastCategoryColor:I

    iput v0, p0, Lmobi/beyondpod/ui/views/navigator/NavigatorHeader;->_Category:I

    .line 65
    :cond_2
    iget v0, p0, Lmobi/beyondpod/ui/views/navigator/NavigatorHeader;->_Category:I

    goto :goto_0

    .line 69
    :cond_3
    sget-object v0, Lmobi/beyondpod/rsscore/categories/CategoryManager;->CategoryHome:Lmobi/beyondpod/rsscore/categories/FeedCategory;

    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->getActiveFeedCategory()Lmobi/beyondpod/rsscore/categories/FeedCategory;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmobi/beyondpod/rsscore/categories/FeedCategory;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget v0, p0, Lmobi/beyondpod/ui/views/navigator/NavigatorHeader;->_Home:I

    goto :goto_0

    :cond_4
    iget v0, p0, Lmobi/beyondpod/ui/views/navigator/NavigatorHeader;->_Default:I

    .line 73
    :goto_0
    invoke-direct {p0, v0}, Lmobi/beyondpod/ui/views/navigator/NavigatorHeader;->setImageFrame(I)V

    return-void
.end method

.method public setOwner(Lmobi/beyondpod/ui/views/navigator/NavigatorHeader$INavigatorHeaderOwner;)V
    .locals 0

    .line 138
    iput-object p1, p0, Lmobi/beyondpod/ui/views/navigator/NavigatorHeader;->_Owner:Lmobi/beyondpod/ui/views/navigator/NavigatorHeader$INavigatorHeaderOwner;

    return-void
.end method

.method public toggleUpdateAnimation(Z)V
    .locals 5

    const/4 v0, 0x1

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    .line 217
    iget-object p1, p0, Lmobi/beyondpod/ui/views/navigator/NavigatorHeader;->_Progress:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 218
    iget-object p1, p0, Lmobi/beyondpod/ui/views/navigator/NavigatorHeader;->_StartUpdate:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 219
    iget-object p1, p0, Lmobi/beyondpod/ui/views/navigator/NavigatorHeader;->_LastUpdated:Landroid/widget/TextView;

    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/navigator/NavigatorHeader;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f1003ff

    new-array v0, v0, [Ljava/lang/Object;

    const-string v4, ""

    aput-object v4, v0, v2

    invoke-virtual {v1, v3, v0}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 220
    iget-object p1, p0, Lmobi/beyondpod/ui/views/navigator/NavigatorHeader;->_LastUpdated:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 224
    :cond_0
    iget-object p1, p0, Lmobi/beyondpod/ui/views/navigator/NavigatorHeader;->_Progress:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 225
    iget-object p1, p0, Lmobi/beyondpod/ui/views/navigator/NavigatorHeader;->_StartUpdate:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 227
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->getLastUpdateAndDownloadManagerRunTime()Ljava/util/Date;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 229
    iget-object p1, p0, Lmobi/beyondpod/ui/views/navigator/NavigatorHeader;->_LastUpdated:Landroid/widget/TextView;

    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/navigator/NavigatorHeader;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f1002a3

    new-array v0, v0, [Ljava/lang/Object;

    .line 230
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->getLastUpdateAndDownloadManagerRunTime()Ljava/util/Date;

    move-result-object v4

    invoke-static {v4}, Lmobi/beyondpod/rsscore/helpers/DateTime;->formatTimeRelative(Ljava/util/Date;)Ljava/lang/CharSequence;

    move-result-object v4

    aput-object v4, v0, v2

    .line 229
    invoke-virtual {v1, v3, v0}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 231
    iget-object p1, p0, Lmobi/beyondpod/ui/views/navigator/NavigatorHeader;->_LastUpdated:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 234
    :cond_1
    iget-object p1, p0, Lmobi/beyondpod/ui/views/navigator/NavigatorHeader;->_LastUpdated:Landroid/widget/TextView;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public updateFeedFilter()V
    .locals 2

    .line 279
    iget-object v0, p0, Lmobi/beyondpod/ui/views/navigator/NavigatorHeader;->_FeedFilter:Landroid/widget/TextSwitcher;

    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->allowHidingRead()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/4 v1, 0x4

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextSwitcher;->setVisibility(I)V

    .line 281
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->getHideReadFeeds()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lmobi/beyondpod/ui/views/navigator/NavigatorHeader;->_LabelNewFeeds:Ljava/lang/String;

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lmobi/beyondpod/ui/views/navigator/NavigatorHeader;->_LabelAllFeeds:Ljava/lang/String;

    .line 283
    :goto_1
    iget-object v1, p0, Lmobi/beyondpod/ui/views/navigator/NavigatorHeader;->_previousSubtitle:Ljava/lang/String;

    invoke-static {v1}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-static {v0}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lmobi/beyondpod/ui/views/navigator/NavigatorHeader;->_previousSubtitle:Ljava/lang/String;

    .line 284
    invoke-static {v1, v0}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_2

    .line 287
    :cond_2
    iget-object v1, p0, Lmobi/beyondpod/ui/views/navigator/NavigatorHeader;->_FeedFilter:Landroid/widget/TextSwitcher;

    invoke-virtual {v1, v0}, Landroid/widget/TextSwitcher;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 285
    :cond_3
    :goto_2
    iget-object v1, p0, Lmobi/beyondpod/ui/views/navigator/NavigatorHeader;->_FeedFilter:Landroid/widget/TextSwitcher;

    invoke-virtual {v1, v0}, Landroid/widget/TextSwitcher;->setCurrentText(Ljava/lang/CharSequence;)V

    .line 289
    :goto_3
    iput-object v0, p0, Lmobi/beyondpod/ui/views/navigator/NavigatorHeader;->_previousSubtitle:Ljava/lang/String;

    return-void
.end method
