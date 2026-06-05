.class public Lmobi/beyondpod/ui/views/player/PlaylistPagerAdapter;
.super Landroid/support/v4/view/PagerAdapter;
.source "PlaylistPagerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmobi/beyondpod/ui/views/player/PlaylistPagerAdapter$Holder;
    }
.end annotation


# static fields
.field private static final MENU_DELETE_PODCAST:I = 0x1

.field private static final MENU_PODCAST_INFO:I = 0x4

.field private static final MENU_REMOVE_FROM_PLAYLIST:I = 0x2

.field private static final MENU_SHARE_PODCAST_URL:I = 0x3

.field private static final MENU_TOGGLE_LOCK_PODCAST:I = 0x6

.field private static final MENU_TOGGLE_PLAYED:I = 0x5

.field private static sFormatBuilder:Ljava/lang/StringBuilder;

.field private static sFormatter:Ljava/util/Formatter;


# instance fields
.field private _ImageHeight:I

.field private _ImageWidth:I

.field private _Items:Lmobi/beyondpod/rsscore/TrackList;

.field private _Owner:Lmobi/beyondpod/ui/views/player/PlaylistPager;

.field private _PageWidth:F

.field private _RecycledWebViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 42
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sput-object v0, Lmobi/beyondpod/ui/views/player/PlaylistPagerAdapter;->sFormatBuilder:Ljava/lang/StringBuilder;

    .line 43
    new-instance v0, Ljava/util/Formatter;

    sget-object v1, Lmobi/beyondpod/ui/views/player/PlaylistPagerAdapter;->sFormatBuilder:Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    sput-object v0, Lmobi/beyondpod/ui/views/player/PlaylistPagerAdapter;->sFormatter:Ljava/util/Formatter;

    return-void
.end method

.method public constructor <init>(Lmobi/beyondpod/ui/views/player/PlaylistPager;)V
    .locals 3

    .line 48
    invoke-direct {p0}, Landroid/support/v4/view/PagerAdapter;-><init>()V

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmobi/beyondpod/ui/views/player/PlaylistPagerAdapter;->_RecycledWebViews:Ljava/util/ArrayList;

    .line 45
    new-instance v0, Lmobi/beyondpod/rsscore/TrackList;

    invoke-direct {v0}, Lmobi/beyondpod/rsscore/TrackList;-><init>()V

    iput-object v0, p0, Lmobi/beyondpod/ui/views/player/PlaylistPagerAdapter;->_Items:Lmobi/beyondpod/rsscore/TrackList;

    .line 49
    iput-object p1, p0, Lmobi/beyondpod/ui/views/player/PlaylistPagerAdapter;->_Owner:Lmobi/beyondpod/ui/views/player/PlaylistPager;

    .line 51
    iget-object v0, p0, Lmobi/beyondpod/ui/views/player/PlaylistPagerAdapter;->_Owner:Lmobi/beyondpod/ui/views/player/PlaylistPager;

    invoke-virtual {v0}, Lmobi/beyondpod/ui/views/player/PlaylistPager;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0021

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 53
    invoke-virtual {p1}, Lmobi/beyondpod/ui/views/player/PlaylistPager;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0700ea

    .line 54
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lmobi/beyondpod/ui/views/player/PlaylistPagerAdapter;->_ImageWidth:I

    .line 55
    invoke-virtual {p1}, Lmobi/beyondpod/ui/views/player/PlaylistPager;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f0700e9

    .line 56
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lmobi/beyondpod/ui/views/player/PlaylistPagerAdapter;->_ImageHeight:I

    int-to-float p1, v0

    const/high16 v0, 0x3f800000    # 1.0f

    div-float/2addr v0, p1

    .line 58
    iput v0, p0, Lmobi/beyondpod/ui/views/player/PlaylistPagerAdapter;->_PageWidth:F

    return-void
.end method

.method static synthetic access$000(Lmobi/beyondpod/ui/views/player/PlaylistPagerAdapter;)Lmobi/beyondpod/ui/views/player/PlaylistPager;
    .locals 0

    .line 27
    iget-object p0, p0, Lmobi/beyondpod/ui/views/player/PlaylistPagerAdapter;->_Owner:Lmobi/beyondpod/ui/views/player/PlaylistPager;

    return-object p0
.end method

.method private createEpisodeView()Landroid/view/View;
    .locals 3

    .line 255
    iget-object v0, p0, Lmobi/beyondpod/ui/views/player/PlaylistPagerAdapter;->_Owner:Lmobi/beyondpod/ui/views/player/PlaylistPager;

    invoke-virtual {v0}, Lmobi/beyondpod/ui/views/player/PlaylistPager;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0022

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const v0, 0x7f0c0053

    goto :goto_0

    :cond_0
    const v0, 0x7f0c0052

    .line 261
    :goto_0
    iget-object v1, p0, Lmobi/beyondpod/ui/views/player/PlaylistPagerAdapter;->_Owner:Lmobi/beyondpod/ui/views/player/PlaylistPager;

    invoke-virtual {v1}, Lmobi/beyondpod/ui/views/player/PlaylistPager;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lmobi/beyondpod/ui/views/player/PlaylistPager;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private getEpisodeView()Landroid/view/View;
    .locals 3

    .line 233
    iget-object v0, p0, Lmobi/beyondpod/ui/views/player/PlaylistPagerAdapter;->_RecycledWebViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 235
    iget-object v0, p0, Lmobi/beyondpod/ui/views/player/PlaylistPagerAdapter;->_RecycledWebViews:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 236
    iget-object v2, p0, Lmobi/beyondpod/ui/views/player/PlaylistPagerAdapter;->_RecycledWebViews:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    return-object v0

    .line 242
    :cond_0
    invoke-direct {p0}, Lmobi/beyondpod/ui/views/player/PlaylistPagerAdapter;->createEpisodeView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private putEpisodeView(Landroid/view/View;)V
    .locals 2

    const/4 v0, 0x0

    .line 247
    invoke-virtual {p1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    const v1, 0x7f09006e

    .line 248
    invoke-virtual {p1, v1, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 250
    iget-object v0, p0, Lmobi/beyondpod/ui/views/player/PlaylistPagerAdapter;->_RecycledWebViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public destroyItem(Landroid/view/View;ILjava/lang/Object;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 204
    check-cast p1, Landroid/support/v4/view/ViewPager;

    check-cast p3, Landroid/view/View;

    invoke-virtual {p1, p3}, Landroid/support/v4/view/ViewPager;->removeView(Landroid/view/View;)V

    .line 205
    invoke-direct {p0, p3}, Lmobi/beyondpod/ui/views/player/PlaylistPagerAdapter;->putEpisodeView(Landroid/view/View;)V

    return-void
.end method

.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 0

    .line 210
    check-cast p3, Landroid/view/View;

    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 211
    invoke-direct {p0, p3}, Lmobi/beyondpod/ui/views/player/PlaylistPagerAdapter;->putEpisodeView(Landroid/view/View;)V

    return-void
.end method

.method public getCount()I
    .locals 1

    .line 64
    iget-object v0, p0, Lmobi/beyondpod/ui/views/player/PlaylistPagerAdapter;->_Items:Lmobi/beyondpod/rsscore/TrackList;

    invoke-virtual {v0}, Lmobi/beyondpod/rsscore/TrackList;->size()I

    move-result v0

    return v0
.end method

.method public getPageWidth(I)F
    .locals 0

    .line 197
    iget p1, p0, Lmobi/beyondpod/ui/views/player/PlaylistPagerAdapter;->_PageWidth:F

    return p1
.end method

.method public instantiateItem(Landroid/view/View;I)Ljava/lang/Object;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 71
    invoke-direct {p0}, Lmobi/beyondpod/ui/views/player/PlaylistPagerAdapter;->getEpisodeView()Landroid/view/View;

    move-result-object v0

    .line 73
    iget-object v1, p0, Lmobi/beyondpod/ui/views/player/PlaylistPagerAdapter;->_Items:Lmobi/beyondpod/rsscore/TrackList;

    invoke-virtual {v1, p2}, Lmobi/beyondpod/rsscore/TrackList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lmobi/beyondpod/rsscore/Track;

    .line 75
    invoke-virtual {p0, v0, p2}, Lmobi/beyondpod/ui/views/player/PlaylistPagerAdapter;->loadItemData(Landroid/view/View;Lmobi/beyondpod/rsscore/Track;)V

    .line 77
    check-cast p1, Landroid/support/v4/view/ViewPager;

    const/4 p2, 0x0

    invoke-virtual {p1, v0, p2}, Landroid/support/v4/view/ViewPager;->addView(Landroid/view/View;I)V

    return-object v0
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 2

    .line 84
    invoke-direct {p0}, Lmobi/beyondpod/ui/views/player/PlaylistPagerAdapter;->getEpisodeView()Landroid/view/View;

    move-result-object v0

    .line 86
    iget-object v1, p0, Lmobi/beyondpod/ui/views/player/PlaylistPagerAdapter;->_Items:Lmobi/beyondpod/rsscore/TrackList;

    invoke-virtual {v1, p2}, Lmobi/beyondpod/rsscore/TrackList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lmobi/beyondpod/rsscore/Track;

    .line 88
    invoke-virtual {p0, v0, p2}, Lmobi/beyondpod/ui/views/player/PlaylistPagerAdapter;->loadItemData(Landroid/view/View;Lmobi/beyondpod/rsscore/Track;)V

    const/4 p2, 0x0

    .line 90
    invoke-virtual {p1, v0, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    return-object v0
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 0

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method loadItemData(Landroid/view/View;Lmobi/beyondpod/rsscore/Track;)V
    .locals 8

    .line 97
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 99
    new-instance v0, Lmobi/beyondpod/ui/views/player/PlaylistPagerAdapter$Holder;

    invoke-direct {v0, p0}, Lmobi/beyondpod/ui/views/player/PlaylistPagerAdapter$Holder;-><init>(Lmobi/beyondpod/ui/views/player/PlaylistPagerAdapter;)V

    const v2, 0x7f090154

    .line 100
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lmobi/beyondpod/ui/views/base/ProgressImageView;

    iput-object v2, v0, Lmobi/beyondpod/ui/views/player/PlaylistPagerAdapter$Holder;->image:Lmobi/beyondpod/ui/views/base/ProgressImageView;

    .line 102
    iget-object v2, v0, Lmobi/beyondpod/ui/views/player/PlaylistPagerAdapter$Holder;->image:Lmobi/beyondpod/ui/views/base/ProgressImageView;

    invoke-virtual {v2, v1}, Lmobi/beyondpod/ui/views/base/ProgressImageView;->setFadeInImage(Z)V

    .line 103
    iget-object v2, v0, Lmobi/beyondpod/ui/views/player/PlaylistPagerAdapter$Holder;->image:Lmobi/beyondpod/ui/views/base/ProgressImageView;

    iget v3, p0, Lmobi/beyondpod/ui/views/player/PlaylistPagerAdapter;->_ImageWidth:I

    iget v4, p0, Lmobi/beyondpod/ui/views/player/PlaylistPagerAdapter;->_ImageHeight:I

    invoke-virtual {v2, v3, v4}, Lmobi/beyondpod/ui/views/base/ProgressImageView;->setMaxImageSize(II)V

    .line 104
    iget-object v2, v0, Lmobi/beyondpod/ui/views/player/PlaylistPagerAdapter$Holder;->image:Lmobi/beyondpod/ui/views/base/ProgressImageView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lmobi/beyondpod/ui/views/base/ProgressImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 105
    iget-object v2, v0, Lmobi/beyondpod/ui/views/player/PlaylistPagerAdapter$Holder;->image:Lmobi/beyondpod/ui/views/base/ProgressImageView;

    const v3, 0x7f0801f7

    invoke-virtual {v2, v3}, Lmobi/beyondpod/ui/views/base/ProgressImageView;->setDefaultImageResId(I)V

    .line 106
    iget-object v2, v0, Lmobi/beyondpod/ui/views/player/PlaylistPagerAdapter$Holder;->image:Lmobi/beyondpod/ui/views/base/ProgressImageView;

    invoke-static {v1}, Lmobi/beyondpod/ui/core/volley/FadingNetworkImageViewTrack;->getDefaultImage(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lmobi/beyondpod/ui/views/base/ProgressImageView;->setErrorImageResId(I)V

    const v2, 0x7f09028a

    .line 108
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lmobi/beyondpod/ui/views/player/PlaylistPagerAdapter$Holder;->title:Landroid/widget/TextView;

    const v2, 0x7f0900ba

    .line 109
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lmobi/beyondpod/ui/views/player/PlaylistPagerAdapter$Holder;->description:Landroid/widget/TextView;

    const v2, 0x7f0900b7

    .line 110
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lmobi/beyondpod/ui/views/player/PlaylistPagerAdapter$Holder;->date:Landroid/widget/TextView;

    const v2, 0x7f09006b

    .line 112
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, v0, Lmobi/beyondpod/ui/views/player/PlaylistPagerAdapter$Holder;->card:Landroid/view/View;

    .line 114
    invoke-virtual {p1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 117
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmobi/beyondpod/ui/views/player/PlaylistPagerAdapter$Holder;

    const v2, 0x7f09006e

    .line 119
    invoke-virtual {p1, v2, p2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 121
    new-instance v2, Lmobi/beyondpod/ui/views/player/PlaylistPagerAdapter$1;

    invoke-direct {v2, p0, p2}, Lmobi/beyondpod/ui/views/player/PlaylistPagerAdapter$1;-><init>(Lmobi/beyondpod/ui/views/player/PlaylistPagerAdapter;Lmobi/beyondpod/rsscore/Track;)V

    invoke-virtual {p1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 130
    sget-object p1, Lmobi/beyondpod/ui/views/player/PlaylistPagerAdapter;->sFormatBuilder:Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 132
    iget-object p1, p0, Lmobi/beyondpod/ui/views/player/PlaylistPagerAdapter;->_Owner:Lmobi/beyondpod/ui/views/player/PlaylistPager;

    invoke-virtual {p1}, Lmobi/beyondpod/ui/views/player/PlaylistPager;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, p2}, Lmobi/beyondpod/ui/views/base/UIUtils;->formatEpisodeTimeAsRemaining(Landroid/content/Context;Lmobi/beyondpod/rsscore/Track;)Ljava/lang/String;

    move-result-object p1

    .line 134
    iget-object v3, v0, Lmobi/beyondpod/ui/views/player/PlaylistPagerAdapter$Holder;->date:Landroid/widget/TextView;

    sget-object v4, Lmobi/beyondpod/ui/views/player/PlaylistPagerAdapter;->sFormatter:Ljava/util/Formatter;

    const-string v5, "%s \u2022 %s"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    .line 135
    invoke-virtual {p2}, Lmobi/beyondpod/rsscore/Track;->getLastModifiedDate()Ljava/util/Date;

    move-result-object v7

    invoke-static {v7}, Lmobi/beyondpod/rsscore/helpers/DateTime;->formatDateTimeToday(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v2

    aput-object p1, v6, v1

    .line 134
    invoke-virtual {v4, v5, v6}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object p1

    .line 136
    invoke-virtual {p1}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object p1

    .line 134
    invoke-virtual {v3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 138
    invoke-virtual {p2}, Lmobi/beyondpod/rsscore/Track;->exists()Z

    move-result p1

    xor-int/2addr p1, v1

    .line 139
    invoke-virtual {p2}, Lmobi/beyondpod/rsscore/Track;->getDownloadStatus()I

    move-result v3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_1

    goto :goto_0

    :cond_1
    move v1, v2

    .line 141
    :goto_0
    invoke-virtual {p2}, Lmobi/beyondpod/rsscore/Track;->locked()Z

    move-result v3

    if-eqz v3, :cond_2

    const v3, 0x7f08013e

    goto :goto_1

    :cond_2
    move v3, v2

    :goto_1
    if-eqz v1, :cond_3

    const p1, 0x7f080147

    goto :goto_2

    :cond_3
    if-eqz p1, :cond_4

    const p1, 0x7f080145

    goto :goto_2

    :cond_4
    move p1, v2

    .line 149
    :goto_2
    iget-object v1, v0, Lmobi/beyondpod/ui/views/player/PlaylistPagerAdapter$Holder;->date:Landroid/widget/TextView;

    invoke-virtual {v1, v3, v2, p1, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 151
    iget-object p1, v0, Lmobi/beyondpod/ui/views/player/PlaylistPagerAdapter$Holder;->date:Landroid/widget/TextView;

    invoke-virtual {p2}, Lmobi/beyondpod/rsscore/Track;->isPlayed()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lmobi/beyondpod/ui/views/player/PlaylistPagerAdapter;->_Owner:Lmobi/beyondpod/ui/views/player/PlaylistPager;

    invoke-virtual {v1}, Lmobi/beyondpod/ui/views/player/PlaylistPager;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f06007e

    invoke-static {v1, v2}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    goto :goto_3

    :cond_5
    iget-object v1, p0, Lmobi/beyondpod/ui/views/player/PlaylistPagerAdapter;->_Owner:Lmobi/beyondpod/ui/views/player/PlaylistPager;

    .line 152
    invoke-virtual {v1}, Lmobi/beyondpod/ui/views/player/PlaylistPager;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f060081

    invoke-static {v1, v2}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    .line 151
    :goto_3
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 155
    iget-object p1, v0, Lmobi/beyondpod/ui/views/player/PlaylistPagerAdapter$Holder;->title:Landroid/widget/TextView;

    invoke-virtual {p2}, Lmobi/beyondpod/rsscore/Track;->displayName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 157
    iget-object p1, v0, Lmobi/beyondpod/ui/views/player/PlaylistPagerAdapter$Holder;->description:Landroid/widget/TextView;

    if-eqz p1, :cond_7

    .line 158
    iget-object p1, v0, Lmobi/beyondpod/ui/views/player/PlaylistPagerAdapter$Holder;->description:Landroid/widget/TextView;

    invoke-virtual {p2}, Lmobi/beyondpod/rsscore/Track;->trackDescription()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {p2}, Lmobi/beyondpod/rsscore/Track;->getParentFeed()Lmobi/beyondpod/rsscore/Feed;

    move-result-object v1

    .line 159
    invoke-virtual {v1}, Lmobi/beyondpod/rsscore/Feed;->getName()Ljava/lang/String;

    move-result-object v1

    goto :goto_4

    :cond_6
    invoke-virtual {p2}, Lmobi/beyondpod/rsscore/Track;->trackDescription()Ljava/lang/String;

    move-result-object v1

    .line 158
    :goto_4
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 161
    :cond_7
    invoke-static {}, Lmobi/beyondpod/BeyondPodApplication;->getInstance()Lmobi/beyondpod/BeyondPodApplication;

    move-result-object p1

    invoke-virtual {p1}, Lmobi/beyondpod/BeyondPodApplication;->playList()Lmobi/beyondpod/services/player/PlayList;

    move-result-object p1

    invoke-virtual {p1}, Lmobi/beyondpod/services/player/PlayList;->currentTrack()Lmobi/beyondpod/rsscore/Track;

    move-result-object p1

    if-ne p2, p1, :cond_9

    .line 163
    iget-object p1, v0, Lmobi/beyondpod/ui/views/player/PlaylistPagerAdapter$Holder;->card:Landroid/view/View;

    iget-object v1, p0, Lmobi/beyondpod/ui/views/player/PlaylistPagerAdapter;->_Owner:Lmobi/beyondpod/ui/views/player/PlaylistPager;

    invoke-virtual {v1}, Lmobi/beyondpod/ui/views/player/PlaylistPager;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f06007a

    invoke-static {v1, v2}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 166
    iget-object p1, v0, Lmobi/beyondpod/ui/views/player/PlaylistPagerAdapter$Holder;->description:Landroid/widget/TextView;

    if-eqz p1, :cond_8

    .line 167
    iget-object p1, v0, Lmobi/beyondpod/ui/views/player/PlaylistPagerAdapter$Holder;->description:Landroid/widget/TextView;

    iget-object v1, p0, Lmobi/beyondpod/ui/views/player/PlaylistPagerAdapter;->_Owner:Lmobi/beyondpod/ui/views/player/PlaylistPager;

    invoke-virtual {v1}, Lmobi/beyondpod/ui/views/player/PlaylistPager;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f06007b

    invoke-static {v1, v2}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 169
    :cond_8
    iget-object p1, v0, Lmobi/beyondpod/ui/views/player/PlaylistPagerAdapter$Holder;->title:Landroid/widget/TextView;

    iget-object v1, p0, Lmobi/beyondpod/ui/views/player/PlaylistPagerAdapter;->_Owner:Lmobi/beyondpod/ui/views/player/PlaylistPager;

    .line 170
    invoke-virtual {v1}, Lmobi/beyondpod/ui/views/player/PlaylistPager;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f06007c

    invoke-static {v1, v2}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_6

    .line 175
    :cond_9
    iget-object p1, v0, Lmobi/beyondpod/ui/views/player/PlaylistPagerAdapter$Holder;->card:Landroid/view/View;

    iget-object v1, p0, Lmobi/beyondpod/ui/views/player/PlaylistPagerAdapter;->_Owner:Lmobi/beyondpod/ui/views/player/PlaylistPager;

    invoke-virtual {v1}, Lmobi/beyondpod/ui/views/player/PlaylistPager;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f060079

    invoke-static {v1, v2}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 177
    iget-object p1, v0, Lmobi/beyondpod/ui/views/player/PlaylistPagerAdapter$Holder;->description:Landroid/widget/TextView;

    if-eqz p1, :cond_a

    .line 178
    iget-object p1, v0, Lmobi/beyondpod/ui/views/player/PlaylistPagerAdapter$Holder;->description:Landroid/widget/TextView;

    iget-object v1, p0, Lmobi/beyondpod/ui/views/player/PlaylistPagerAdapter;->_Owner:Lmobi/beyondpod/ui/views/player/PlaylistPager;

    invoke-virtual {v1}, Lmobi/beyondpod/ui/views/player/PlaylistPager;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f06007d

    invoke-static {v1, v2}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 181
    :cond_a
    iget-object p1, v0, Lmobi/beyondpod/ui/views/player/PlaylistPagerAdapter$Holder;->title:Landroid/widget/TextView;

    invoke-virtual {p2}, Lmobi/beyondpod/rsscore/Track;->isPlayed()Z

    move-result v1

    if-eqz v1, :cond_b

    iget-object v1, p0, Lmobi/beyondpod/ui/views/player/PlaylistPagerAdapter;->_Owner:Lmobi/beyondpod/ui/views/player/PlaylistPager;

    invoke-virtual {v1}, Lmobi/beyondpod/ui/views/player/PlaylistPager;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f06007f

    invoke-static {v1, v2}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    goto :goto_5

    :cond_b
    iget-object v1, p0, Lmobi/beyondpod/ui/views/player/PlaylistPagerAdapter;->_Owner:Lmobi/beyondpod/ui/views/player/PlaylistPager;

    .line 182
    invoke-virtual {v1}, Lmobi/beyondpod/ui/views/player/PlaylistPager;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f060082

    invoke-static {v1, v2}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    .line 181
    :goto_5
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 186
    :goto_6
    invoke-virtual {p2}, Lmobi/beyondpod/rsscore/Track;->isFullyDownloaded()Z

    move-result p1

    if-eqz p1, :cond_c

    .line 187
    iget-object p1, v0, Lmobi/beyondpod/ui/views/player/PlaylistPagerAdapter$Holder;->image:Lmobi/beyondpod/ui/views/base/ProgressImageView;

    iget-object v1, p0, Lmobi/beyondpod/ui/views/player/PlaylistPagerAdapter;->_Owner:Lmobi/beyondpod/ui/views/player/PlaylistPager;

    invoke-virtual {v1}, Lmobi/beyondpod/ui/views/player/PlaylistPager;->getImageLoader()Lmobi/beyondpod/ui/core/volley/ImageLoader;

    move-result-object v1

    invoke-virtual {p1, p2, v1}, Lmobi/beyondpod/ui/views/base/ProgressImageView;->setTrack(Lmobi/beyondpod/rsscore/Track;Lmobi/beyondpod/ui/core/volley/ImageLoader;)V

    goto :goto_7

    .line 189
    :cond_c
    iget-object p1, v0, Lmobi/beyondpod/ui/views/player/PlaylistPagerAdapter$Holder;->image:Lmobi/beyondpod/ui/views/base/ProgressImageView;

    invoke-virtual {p2}, Lmobi/beyondpod/rsscore/Track;->getParentFeed()Lmobi/beyondpod/rsscore/Feed;

    move-result-object v1

    iget-object v2, p0, Lmobi/beyondpod/ui/views/player/PlaylistPagerAdapter;->_Owner:Lmobi/beyondpod/ui/views/player/PlaylistPager;

    invoke-virtual {v2}, Lmobi/beyondpod/ui/views/player/PlaylistPager;->getImageLoader()Lmobi/beyondpod/ui/core/volley/ImageLoader;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lmobi/beyondpod/ui/views/base/ProgressImageView;->setFeed(Lmobi/beyondpod/rsscore/Feed;Lmobi/beyondpod/ui/core/volley/ImageLoader;)V

    .line 191
    :goto_7
    iget-object p1, v0, Lmobi/beyondpod/ui/views/player/PlaylistPagerAdapter$Holder;->image:Lmobi/beyondpod/ui/views/base/ProgressImageView;

    invoke-virtual {p2}, Lmobi/beyondpod/rsscore/Track;->playedAsFraction()F

    move-result p2

    const/high16 v0, 0x42c80000    # 100.0f

    mul-float/2addr p2, v0

    float-to-double v0, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int p2, v0

    invoke-virtual {p1, p2}, Lmobi/beyondpod/ui/views/base/ProgressImageView;->setProgress(I)V

    return-void
.end method

.method public reloadTracks()V
    .locals 2

    .line 266
    iget-object v0, p0, Lmobi/beyondpod/ui/views/player/PlaylistPagerAdapter;->_Items:Lmobi/beyondpod/rsscore/TrackList;

    invoke-virtual {v0}, Lmobi/beyondpod/rsscore/TrackList;->clear()V

    .line 267
    iget-object v0, p0, Lmobi/beyondpod/ui/views/player/PlaylistPagerAdapter;->_Items:Lmobi/beyondpod/rsscore/TrackList;

    invoke-static {}, Lmobi/beyondpod/BeyondPodApplication;->getInstance()Lmobi/beyondpod/BeyondPodApplication;

    move-result-object v1

    invoke-virtual {v1}, Lmobi/beyondpod/BeyondPodApplication;->playList()Lmobi/beyondpod/services/player/PlayList;

    move-result-object v1

    invoke-virtual {v1}, Lmobi/beyondpod/services/player/PlayList;->getTracks()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmobi/beyondpod/rsscore/TrackList;->addAll(Ljava/util/Collection;)Z

    .line 268
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/player/PlaylistPagerAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public restoreState(Landroid/os/Parcelable;Ljava/lang/ClassLoader;)V
    .locals 0

    return-void
.end method

.method public saveState()Landroid/os/Parcelable;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
