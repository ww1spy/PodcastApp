.class public Lmobi/beyondpod/ui/views/navigator/FeedsViewAdapter;
.super Landroid/widget/BaseAdapter;
.source "FeedsViewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmobi/beyondpod/ui/views/navigator/FeedsViewAdapter$FeedsViewItem;
    }
.end annotation


# static fields
.field private static final BACK_TO_PARENT:Ljava/lang/String;

.field private static final DOWNLOADING:Ljava/lang/String;

.field private static final FEEDS:Ljava/lang/String;

.field private static final MY_FEEDS:Ljava/lang/String;

.field private static final OF:Ljava/lang/String;

.field private static final S_PENDING:Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "FeedsViewAdapter"

.field private static final UNREAD:Ljava/lang/String;

.field private static final UPDATING:Ljava/lang/String;

.field private static sInfoTextFormatter:Ljava/util/Formatter;

.field private static sInfoTextStringBuilder:Ljava/lang/StringBuilder;


# instance fields
.field private _CaretDown:Landroid/graphics/drawable/Drawable;

.field private _CaretUp:Landroid/graphics/drawable/Drawable;

.field private _ChildTypeface:Landroid/graphics/Typeface;

.field private _DataSource:Lmobi/beyondpod/ui/views/navigator/FeedListViewDataSource;

.field private _Feed:Lmobi/beyondpod/rsscore/Feed;

.field private _IfEmptyText:Ljava/lang/CharSequence;

.field private _ImageHeight:I

.field private _ImageWidth:I

.field private _Inflater:Landroid/view/LayoutInflater;

.field private _Owner:Lmobi/beyondpod/ui/views/navigator/FeedsListView;

.field private final _ParentColorHNormalColor:I

.field private _ParentNormalTextColor:I

.field private _ParentNormalTypeface:Landroid/graphics/Typeface;

.field private _ParentSelectedTypeface:Landroid/graphics/Typeface;

.field private final _TitleHasUnread:I

.field private final _TitleNoUnred:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const v0, 0x7f10022c

    .line 67
    invoke-static {v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->loadResourceString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmobi/beyondpod/ui/views/navigator/FeedsViewAdapter;->FEEDS:Ljava/lang/String;

    const v0, 0x7f10022e

    .line 72
    invoke-static {v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->loadResourceString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmobi/beyondpod/ui/views/navigator/FeedsViewAdapter;->S_PENDING:Ljava/lang/String;

    const v0, 0x7f10022b

    .line 73
    invoke-static {v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->loadResourceString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmobi/beyondpod/ui/views/navigator/FeedsViewAdapter;->DOWNLOADING:Ljava/lang/String;

    const v0, 0x7f10022d

    .line 74
    invoke-static {v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->loadResourceString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmobi/beyondpod/ui/views/navigator/FeedsViewAdapter;->OF:Ljava/lang/String;

    const v0, 0x7f10022f

    .line 75
    invoke-static {v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->loadResourceString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmobi/beyondpod/ui/views/navigator/FeedsViewAdapter;->UPDATING:Ljava/lang/String;

    const v0, 0x7f10022a

    .line 76
    invoke-static {v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->loadResourceString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmobi/beyondpod/ui/views/navigator/FeedsViewAdapter;->BACK_TO_PARENT:Ljava/lang/String;

    const v0, 0x7f1001a3

    .line 77
    invoke-static {v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->loadResourceString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmobi/beyondpod/ui/views/navigator/FeedsViewAdapter;->UNREAD:Ljava/lang/String;

    const v0, 0x7f10029f

    .line 78
    invoke-static {v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->loadResourceString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmobi/beyondpod/ui/views/navigator/FeedsViewAdapter;->MY_FEEDS:Ljava/lang/String;

    .line 90
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sput-object v0, Lmobi/beyondpod/ui/views/navigator/FeedsViewAdapter;->sInfoTextStringBuilder:Ljava/lang/StringBuilder;

    .line 91
    new-instance v0, Ljava/util/Formatter;

    sget-object v1, Lmobi/beyondpod/ui/views/navigator/FeedsViewAdapter;->sInfoTextStringBuilder:Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    sput-object v0, Lmobi/beyondpod/ui/views/navigator/FeedsViewAdapter;->sInfoTextFormatter:Ljava/util/Formatter;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lmobi/beyondpod/ui/views/navigator/FeedsListView;)V
    .locals 2

    .line 107
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 84
    new-instance v0, Lmobi/beyondpod/ui/views/navigator/FeedListViewDataSource;

    invoke-direct {v0}, Lmobi/beyondpod/ui/views/navigator/FeedListViewDataSource;-><init>()V

    iput-object v0, p0, Lmobi/beyondpod/ui/views/navigator/FeedsViewAdapter;->_DataSource:Lmobi/beyondpod/ui/views/navigator/FeedListViewDataSource;

    const/16 v0, 0x46

    .line 93
    iput v0, p0, Lmobi/beyondpod/ui/views/navigator/FeedsViewAdapter;->_ImageHeight:I

    iput v0, p0, Lmobi/beyondpod/ui/views/navigator/FeedsViewAdapter;->_ImageWidth:I

    .line 108
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lmobi/beyondpod/ui/views/navigator/FeedsViewAdapter;->_Inflater:Landroid/view/LayoutInflater;

    .line 109
    iput-object p2, p0, Lmobi/beyondpod/ui/views/navigator/FeedsViewAdapter;->_Owner:Lmobi/beyondpod/ui/views/navigator/FeedsListView;

    .line 111
    iget-object p2, p0, Lmobi/beyondpod/ui/views/navigator/FeedsViewAdapter;->_Owner:Lmobi/beyondpod/ui/views/navigator/FeedsListView;

    invoke-virtual {p2}, Lmobi/beyondpod/ui/views/navigator/FeedsListView;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f0700ae

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p2

    float-to-int p2, p2

    iput p2, p0, Lmobi/beyondpod/ui/views/navigator/FeedsViewAdapter;->_ImageHeight:I

    .line 112
    iget-object p2, p0, Lmobi/beyondpod/ui/views/navigator/FeedsViewAdapter;->_Owner:Lmobi/beyondpod/ui/views/navigator/FeedsListView;

    invoke-virtual {p2}, Lmobi/beyondpod/ui/views/navigator/FeedsListView;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f0700af

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p2

    float-to-int p2, p2

    iput p2, p0, Lmobi/beyondpod/ui/views/navigator/FeedsViewAdapter;->_ImageWidth:I

    .line 114
    sget-object p2, Lmobi/beyondpod/evo/R$styleable;->NavigatorDrawer:[I

    invoke-virtual {p1, p2}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object p2

    const v0, 0x7f0600a0

    .line 117
    invoke-static {p1, v0}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    const/4 v1, 0x5

    .line 116
    invoke-virtual {p2, v1, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lmobi/beyondpod/ui/views/navigator/FeedsViewAdapter;->_ParentNormalTextColor:I

    const v0, 0x7f06009e

    .line 120
    invoke-static {p1, v0}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    const/4 v1, 0x4

    .line 119
    invoke-virtual {p2, v1, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lmobi/beyondpod/ui/views/navigator/FeedsViewAdapter;->_ParentColorHNormalColor:I

    const/4 v0, 0x2

    .line 122
    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lmobi/beyondpod/ui/views/navigator/FeedsViewAdapter;->_CaretUp:Landroid/graphics/drawable/Drawable;

    const/4 v0, 0x1

    .line 123
    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lmobi/beyondpod/ui/views/navigator/FeedsViewAdapter;->_CaretDown:Landroid/graphics/drawable/Drawable;

    .line 125
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 127
    sget-object p2, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    invoke-static {p2, v0}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object p2

    iput-object p2, p0, Lmobi/beyondpod/ui/views/navigator/FeedsViewAdapter;->_ParentSelectedTypeface:Landroid/graphics/Typeface;

    const p2, 0x7f060051

    .line 129
    invoke-static {p1, p2}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p2

    iput p2, p0, Lmobi/beyondpod/ui/views/navigator/FeedsViewAdapter;->_TitleHasUnread:I

    const p2, 0x7f060053

    .line 130
    invoke-static {p1, p2}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    iput p1, p0, Lmobi/beyondpod/ui/views/navigator/FeedsViewAdapter;->_TitleNoUnred:I

    return-void
.end method

.method static synthetic access$000(Lmobi/beyondpod/ui/views/navigator/FeedsViewAdapter;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 65
    iget-object p0, p0, Lmobi/beyondpod/ui/views/navigator/FeedsViewAdapter;->_CaretDown:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method static synthetic access$100(Lmobi/beyondpod/ui/views/navigator/FeedsViewAdapter;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 65
    iget-object p0, p0, Lmobi/beyondpod/ui/views/navigator/FeedsViewAdapter;->_CaretUp:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method static synthetic access$300(Lmobi/beyondpod/ui/views/navigator/FeedsViewAdapter;)Lmobi/beyondpod/ui/views/navigator/FeedListViewDataSource;
    .locals 0

    .line 65
    iget-object p0, p0, Lmobi/beyondpod/ui/views/navigator/FeedsViewAdapter;->_DataSource:Lmobi/beyondpod/ui/views/navigator/FeedListViewDataSource;

    return-object p0
.end method

.method static synthetic access$400(Lmobi/beyondpod/ui/views/navigator/FeedsViewAdapter;)Lmobi/beyondpod/ui/views/navigator/FeedsListView;
    .locals 0

    .line 65
    iget-object p0, p0, Lmobi/beyondpod/ui/views/navigator/FeedsViewAdapter;->_Owner:Lmobi/beyondpod/ui/views/navigator/FeedsListView;

    return-object p0
.end method

.method private buildCategoryViewItem(Landroid/view/View;Lmobi/beyondpod/rsscore/categories/FeedCategory;)Landroid/view/View;
    .locals 5

    if-nez p1, :cond_1

    .line 279
    iget-object p1, p0, Lmobi/beyondpod/ui/views/navigator/FeedsViewAdapter;->_Inflater:Landroid/view/LayoutInflater;

    const v0, 0x7f0c0090

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 280
    new-instance v0, Lmobi/beyondpod/ui/views/navigator/FeedsViewAdapter$FeedsViewItem;

    invoke-direct {v0, v1}, Lmobi/beyondpod/ui/views/navigator/FeedsViewAdapter$FeedsViewItem;-><init>(Lmobi/beyondpod/ui/views/navigator/FeedsViewAdapter$1;)V

    const v1, 0x7f090078

    .line 281
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lmobi/beyondpod/ui/views/navigator/FeedsViewAdapter$FeedsViewItem;->primaryText:Landroid/widget/TextView;

    const v1, 0x7f090077

    .line 282
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lmobi/beyondpod/ui/views/navigator/FeedsViewAdapter$FeedsViewItem;->secondaryText:Landroid/widget/TextView;

    const v1, 0x7f090079

    .line 283
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v0, Lmobi/beyondpod/ui/views/navigator/FeedsViewAdapter$FeedsViewItem;->overflow:Landroid/widget/ImageView;

    const v1, 0x7f090076

    .line 284
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v0, Lmobi/beyondpod/ui/views/navigator/FeedsViewAdapter$FeedsViewItem;->expander:Landroid/widget/ImageView;

    const v1, 0x7f090074

    .line 285
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Lmobi/beyondpod/ui/views/navigator/FeedsViewAdapter$FeedsViewItem;->colorH:Landroid/view/View;

    const v1, 0x7f090075

    .line 286
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Lmobi/beyondpod/ui/views/navigator/FeedsViewAdapter$FeedsViewItem;->colorV:Landroid/view/View;

    .line 288
    iget-object v1, p0, Lmobi/beyondpod/ui/views/navigator/FeedsViewAdapter;->_ParentNormalTypeface:Landroid/graphics/Typeface;

    if-nez v1, :cond_0

    .line 289
    iget-object v1, v0, Lmobi/beyondpod/ui/views/navigator/FeedsViewAdapter$FeedsViewItem;->primaryText:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v1

    iput-object v1, p0, Lmobi/beyondpod/ui/views/navigator/FeedsViewAdapter;->_ParentNormalTypeface:Landroid/graphics/Typeface;

    .line 291
    :cond_0
    iget-object v1, v0, Lmobi/beyondpod/ui/views/navigator/FeedsViewAdapter$FeedsViewItem;->expander:Landroid/widget/ImageView;

    new-instance v2, Lmobi/beyondpod/ui/views/navigator/FeedsViewAdapter$3;

    invoke-direct {v2, p0}, Lmobi/beyondpod/ui/views/navigator/FeedsViewAdapter$3;-><init>(Lmobi/beyondpod/ui/views/navigator/FeedsViewAdapter;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 303
    iget-object v1, v0, Lmobi/beyondpod/ui/views/navigator/FeedsViewAdapter$FeedsViewItem;->overflow:Landroid/widget/ImageView;

    new-instance v2, Lmobi/beyondpod/ui/views/navigator/FeedsViewAdapter$4;

    invoke-direct {v2, p0}, Lmobi/beyondpod/ui/views/navigator/FeedsViewAdapter$4;-><init>(Lmobi/beyondpod/ui/views/navigator/FeedsViewAdapter;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 315
    invoke-virtual {p1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 318
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmobi/beyondpod/ui/views/navigator/FeedsViewAdapter$FeedsViewItem;

    .line 321
    :goto_0
    iget-object v1, v0, Lmobi/beyondpod/ui/views/navigator/FeedsViewAdapter$FeedsViewItem;->primaryText:Landroid/widget/TextView;

    invoke-virtual {p2}, Lmobi/beyondpod/rsscore/categories/FeedCategory;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 323
    iget-object v1, v0, Lmobi/beyondpod/ui/views/navigator/FeedsViewAdapter$FeedsViewItem;->colorH:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 324
    iget-object v1, v0, Lmobi/beyondpod/ui/views/navigator/FeedsViewAdapter$FeedsViewItem;->colorV:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 326
    invoke-virtual {p2}, Lmobi/beyondpod/rsscore/categories/FeedCategory;->color()I

    move-result v1

    const/4 v3, 0x0

    if-nez v1, :cond_2

    .line 327
    iget-object v1, v0, Lmobi/beyondpod/ui/views/navigator/FeedsViewAdapter$FeedsViewItem;->primaryText:Landroid/widget/TextView;

    iget v4, p0, Lmobi/beyondpod/ui/views/navigator/FeedsViewAdapter;->_ParentNormalTextColor:I

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 329
    iget-object v1, p0, Lmobi/beyondpod/ui/views/navigator/FeedsViewAdapter;->_DataSource:Lmobi/beyondpod/ui/views/navigator/FeedListViewDataSource;

    invoke-virtual {v1, p2}, Lmobi/beyondpod/ui/views/navigator/FeedListViewDataSource;->isCategoryExpanded(Lmobi/beyondpod/rsscore/categories/FeedCategory;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 330
    iget-object v1, v0, Lmobi/beyondpod/ui/views/navigator/FeedsViewAdapter$FeedsViewItem;->colorH:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 331
    iget-object v1, v0, Lmobi/beyondpod/ui/views/navigator/FeedsViewAdapter$FeedsViewItem;->colorH:Landroid/view/View;

    iget v4, p0, Lmobi/beyondpod/ui/views/navigator/FeedsViewAdapter;->_ParentColorHNormalColor:I

    invoke-virtual {v1, v4}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_1

    .line 337
    :cond_2
    iget-object v1, p0, Lmobi/beyondpod/ui/views/navigator/FeedsViewAdapter;->_DataSource:Lmobi/beyondpod/ui/views/navigator/FeedListViewDataSource;

    invoke-virtual {v1, p2}, Lmobi/beyondpod/ui/views/navigator/FeedListViewDataSource;->isCategoryExpanded(Lmobi/beyondpod/rsscore/categories/FeedCategory;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 338
    iget-object v1, v0, Lmobi/beyondpod/ui/views/navigator/FeedsViewAdapter$FeedsViewItem;->colorH:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 339
    iget-object v1, v0, Lmobi/beyondpod/ui/views/navigator/FeedsViewAdapter$FeedsViewItem;->colorH:Landroid/view/View;

    invoke-virtual {p2}, Lmobi/beyondpod/rsscore/categories/FeedCategory;->color()I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_1

    .line 342
    :cond_3
    iget-object v1, v0, Lmobi/beyondpod/ui/views/navigator/FeedsViewAdapter$FeedsViewItem;->colorV:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 343
    iget-object v1, v0, Lmobi/beyondpod/ui/views/navigator/FeedsViewAdapter$FeedsViewItem;->colorV:Landroid/view/View;

    invoke-virtual {p2}, Lmobi/beyondpod/rsscore/categories/FeedCategory;->color()I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/view/View;->setBackgroundColor(I)V

    .line 347
    :cond_4
    :goto_1
    iget-object v1, v0, Lmobi/beyondpod/ui/views/navigator/FeedsViewAdapter$FeedsViewItem;->overflow:Landroid/widget/ImageView;

    iget-object v4, p0, Lmobi/beyondpod/ui/views/navigator/FeedsViewAdapter;->_Owner:Lmobi/beyondpod/ui/views/navigator/FeedsListView;

    invoke-virtual {v4}, Lmobi/beyondpod/ui/views/navigator/FeedsListView;->isEditingFeeds()Z

    move-result v4

    if-eqz v4, :cond_5

    move v4, v3

    goto :goto_2

    :cond_5
    move v4, v2

    :goto_2
    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 348
    iget-object v1, v0, Lmobi/beyondpod/ui/views/navigator/FeedsViewAdapter$FeedsViewItem;->overflow:Landroid/widget/ImageView;

    invoke-virtual {v1, p2}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 350
    invoke-static {}, Lmobi/beyondpod/rsscore/categories/CategoryManager;->hasUserCategories()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 351
    iget-object v1, v0, Lmobi/beyondpod/ui/views/navigator/FeedsViewAdapter$FeedsViewItem;->expander:Landroid/widget/ImageView;

    const v4, 0x7f0901a3

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_7

    .line 352
    iget-object v1, v0, Lmobi/beyondpod/ui/views/navigator/FeedsViewAdapter$FeedsViewItem;->expander:Landroid/widget/ImageView;

    iget-object v4, p0, Lmobi/beyondpod/ui/views/navigator/FeedsViewAdapter;->_DataSource:Lmobi/beyondpod/ui/views/navigator/FeedListViewDataSource;

    invoke-virtual {v4, p2}, Lmobi/beyondpod/ui/views/navigator/FeedListViewDataSource;->isCategoryExpanded(Lmobi/beyondpod/rsscore/categories/FeedCategory;)Z

    move-result v4

    if-eqz v4, :cond_6

    iget-object v4, p0, Lmobi/beyondpod/ui/views/navigator/FeedsViewAdapter;->_CaretUp:Landroid/graphics/drawable/Drawable;

    goto :goto_3

    :cond_6
    iget-object v4, p0, Lmobi/beyondpod/ui/views/navigator/FeedsViewAdapter;->_CaretDown:Landroid/graphics/drawable/Drawable;

    :goto_3
    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 356
    :cond_7
    iget-object v1, v0, Lmobi/beyondpod/ui/views/navigator/FeedsViewAdapter$FeedsViewItem;->expander:Landroid/widget/ImageView;

    const v4, 0x7f0901a4

    invoke-virtual {v1, v4, p2}, Landroid/widget/ImageView;->setTag(ILjava/lang/Object;)V

    .line 357
    iget-object v1, v0, Lmobi/beyondpod/ui/views/navigator/FeedsViewAdapter$FeedsViewItem;->expander:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_4

    .line 360
    :cond_8
    iget-object v1, v0, Lmobi/beyondpod/ui/views/navigator/FeedsViewAdapter$FeedsViewItem;->expander:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 363
    :goto_4
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->getActiveFeedFilter()Lmobi/beyondpod/rsscore/Feed;

    move-result-object v1

    if-nez v1, :cond_9

    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->getActiveFeedCategory()Lmobi/beyondpod/rsscore/categories/FeedCategory;

    move-result-object v1

    if-ne p2, v1, :cond_9

    .line 364
    iget-object v1, v0, Lmobi/beyondpod/ui/views/navigator/FeedsViewAdapter$FeedsViewItem;->primaryText:Landroid/widget/TextView;

    iget-object v4, p0, Lmobi/beyondpod/ui/views/navigator/FeedsViewAdapter;->_ParentSelectedTypeface:Landroid/graphics/Typeface;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    goto :goto_5

    .line 366
    :cond_9
    iget-object v1, v0, Lmobi/beyondpod/ui/views/navigator/FeedsViewAdapter$FeedsViewItem;->primaryText:Landroid/widget/TextView;

    iget-object v4, p0, Lmobi/beyondpod/ui/views/navigator/FeedsViewAdapter;->_ParentNormalTypeface:Landroid/graphics/Typeface;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 368
    :goto_5
    iget-object v1, p0, Lmobi/beyondpod/ui/views/navigator/FeedsViewAdapter;->_Owner:Lmobi/beyondpod/ui/views/navigator/FeedsListView;

    invoke-virtual {v1}, Lmobi/beyondpod/ui/views/navigator/FeedsListView;->isEditingFeeds()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 369
    invoke-static {p2}, Lmobi/beyondpod/schedulercore/ScheduleUtils;->getScheduledTaskForCategory(Lmobi/beyondpod/rsscore/categories/FeedCategory;)Lmobi/beyondpod/schedulercore/ScheduledTask;

    move-result-object p2

    if-eqz p2, :cond_a

    .line 370
    iget-boolean v1, p2, Lmobi/beyondpod/schedulercore/ScheduledTask;->active:Z

    if-eqz v1, :cond_a

    invoke-virtual {p2}, Lmobi/beyondpod/schedulercore/ScheduledTask;->existsOnDevice()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 371
    iget-object p2, p2, Lmobi/beyondpod/schedulercore/ScheduledTask;->event:Lmobi/beyondpod/schedulercore/Event;

    invoke-virtual {p2}, Lmobi/beyondpod/schedulercore/Event;->startTime()Ljava/util/Date;

    move-result-object p2

    .line 372
    iget-object v1, v0, Lmobi/beyondpod/ui/views/navigator/FeedsViewAdapter$FeedsViewItem;->secondaryText:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 373
    iget-object v0, v0, Lmobi/beyondpod/ui/views/navigator/FeedsViewAdapter$FeedsViewItem;->secondaryText:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p2}, Lmobi/beyondpod/rsscore/helpers/DateTime;->formatTime(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lmobi/beyondpod/rsscore/helpers/DateTime;->formatDate(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_6

    .line 376
    :cond_a
    iget-object p2, v0, Lmobi/beyondpod/ui/views/navigator/FeedsViewAdapter$FeedsViewItem;->secondaryText:Landroid/widget/TextView;

    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_6

    .line 380
    :cond_b
    iget-object p2, v0, Lmobi/beyondpod/ui/views/navigator/FeedsViewAdapter$FeedsViewItem;->secondaryText:Landroid/widget/TextView;

    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_6
    return-object p1
.end method

.method private buildFeedViewItem(Landroid/view/View;Lmobi/beyondpod/rsscore/Feed;)Landroid/view/View;
    .locals 8

    const/4 v0, 0x0

    if-nez p1, :cond_1

    .line 390
    iget-object p1, p0, Lmobi/beyondpod/ui/views/navigator/FeedsViewAdapter;->_Inflater:Landroid/view/LayoutInflater;

    const v1, 0x7f0c008b

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 391
    new-instance v1, Lmobi/beyondpod/ui/views/navigator/FeedsViewAdapter$FeedsViewItem;

    invoke-direct {v1, v2}, Lmobi/beyondpod/ui/views/navigator/FeedsViewAdapter$FeedsViewItem;-><init>(Lmobi/beyondpod/ui/views/navigator/FeedsViewAdapter$1;)V

    const v2, 0x7f090100

    .line 392
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lmobi/beyondpod/ui/views/navigator/FeedsViewAdapter$FeedsViewItem;->primaryText:Landroid/widget/TextView;

    const v2, 0x7f0900fb

    .line 393
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lmobi/beyondpod/ui/views/navigator/FeedsViewAdapter$FeedsViewItem;->secondaryText:Landroid/widget/TextView;

    const v2, 0x7f0900fc

    .line 394
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lmobi/beyondpod/ui/core/volley/FadingNetworkImageViewFeed;

    iput-object v2, v1, Lmobi/beyondpod/ui/views/navigator/FeedsViewAdapter$FeedsViewItem;->primaryImage:Lmobi/beyondpod/ui/core/volley/FadingNetworkImageViewFeed;

    .line 395
    iget-object v2, v1, Lmobi/beyondpod/ui/views/navigator/FeedsViewAdapter$FeedsViewItem;->primaryImage:Lmobi/beyondpod/ui/core/volley/FadingNetworkImageViewFeed;

    invoke-virtual {v2, v0}, Lmobi/beyondpod/ui/core/volley/FadingNetworkImageViewFeed;->setFadeInImage(Z)V

    .line 396
    iget-object v2, v1, Lmobi/beyondpod/ui/views/navigator/FeedsViewAdapter$FeedsViewItem;->primaryImage:Lmobi/beyondpod/ui/core/volley/FadingNetworkImageViewFeed;

    iget v3, p0, Lmobi/beyondpod/ui/views/navigator/FeedsViewAdapter;->_ImageWidth:I

    iget v4, p0, Lmobi/beyondpod/ui/views/navigator/FeedsViewAdapter;->_ImageHeight:I

    invoke-virtual {v2, v3, v4}, Lmobi/beyondpod/ui/core/volley/FadingNetworkImageViewFeed;->setMaxImageSize(II)V

    const v2, 0x7f0900fe

    .line 397
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lmobi/beyondpod/ui/views/navigator/FeedsViewAdapter$FeedsViewItem;->numEpisodes:Landroid/widget/TextView;

    const v2, 0x7f0900fd

    .line 398
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v1, Lmobi/beyondpod/ui/views/navigator/FeedsViewAdapter$FeedsViewItem;->overlayImage:Landroid/widget/ImageView;

    const v2, 0x7f0900ff

    .line 399
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v1, Lmobi/beyondpod/ui/views/navigator/FeedsViewAdapter$FeedsViewItem;->overflow:Landroid/widget/ImageView;

    .line 401
    iget-object v2, p0, Lmobi/beyondpod/ui/views/navigator/FeedsViewAdapter;->_ChildTypeface:Landroid/graphics/Typeface;

    if-nez v2, :cond_0

    .line 402
    iget-object v2, v1, Lmobi/beyondpod/ui/views/navigator/FeedsViewAdapter$FeedsViewItem;->primaryText:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v2

    iput-object v2, p0, Lmobi/beyondpod/ui/views/navigator/FeedsViewAdapter;->_ChildTypeface:Landroid/graphics/Typeface;

    .line 404
    :cond_0
    iget-object v2, v1, Lmobi/beyondpod/ui/views/navigator/FeedsViewAdapter$FeedsViewItem;->overflow:Landroid/widget/ImageView;

    new-instance v3, Lmobi/beyondpod/ui/views/navigator/FeedsViewAdapter$5;

    invoke-direct {v3, p0}, Lmobi/beyondpod/ui/views/navigator/FeedsViewAdapter$5;-><init>(Lmobi/beyondpod/ui/views/navigator/FeedsViewAdapter;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 416
    invoke-virtual {p1, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 419
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmobi/beyondpod/ui/views/navigator/FeedsViewAdapter$FeedsViewItem;

    .line 422
    :goto_0
    iget-object v2, v1, Lmobi/beyondpod/ui/views/navigator/FeedsViewAdapter$FeedsViewItem;->primaryText:Landroid/widget/TextView;

    invoke-virtual {p2}, Lmobi/beyondpod/rsscore/Feed;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 424
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->getActiveFeedFilter()Lmobi/beyondpod/rsscore/Feed;

    move-result-object v2

    const/4 v3, 0x1

    if-ne p2, v2, :cond_2

    .line 425
    iget-object v2, v1, Lmobi/beyondpod/ui/views/navigator/FeedsViewAdapter$FeedsViewItem;->primaryText:Landroid/widget/TextView;

    iget-object v4, p0, Lmobi/beyondpod/ui/views/navigator/FeedsViewAdapter;->_ChildTypeface:Landroid/graphics/Typeface;

    invoke-virtual {v2, v4, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    goto :goto_1

    .line 427
    :cond_2
    iget-object v2, v1, Lmobi/beyondpod/ui/views/navigator/FeedsViewAdapter$FeedsViewItem;->primaryText:Landroid/widget/TextView;

    iget-object v4, p0, Lmobi/beyondpod/ui/views/navigator/FeedsViewAdapter;->_ChildTypeface:Landroid/graphics/Typeface;

    invoke-virtual {v2, v4, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 431
    :goto_1
    invoke-static {p2}, Lmobi/beyondpod/ui/views/navigator/FeedsViewAdapter;->getInfoTextForFeed(Lmobi/beyondpod/rsscore/Feed;)Ljava/lang/String;

    move-result-object v2

    .line 433
    invoke-static {v2}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v4

    const/16 v5, 0x8

    if-nez v4, :cond_4

    iget-object v4, p0, Lmobi/beyondpod/ui/views/navigator/FeedsViewAdapter;->_Owner:Lmobi/beyondpod/ui/views/navigator/FeedsListView;

    invoke-virtual {v4}, Lmobi/beyondpod/ui/views/navigator/FeedsListView;->isEditingFeeds()Z

    move-result v4

    if-eqz v4, :cond_3

    goto :goto_2

    .line 437
    :cond_3
    iget-object v4, v1, Lmobi/beyondpod/ui/views/navigator/FeedsViewAdapter$FeedsViewItem;->secondaryText:Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 438
    iget-object v2, v1, Lmobi/beyondpod/ui/views/navigator/FeedsViewAdapter$FeedsViewItem;->secondaryText:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_3

    .line 434
    :cond_4
    :goto_2
    iget-object v2, v1, Lmobi/beyondpod/ui/views/navigator/FeedsViewAdapter$FeedsViewItem;->secondaryText:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 441
    :goto_3
    invoke-virtual {p2}, Lmobi/beyondpod/rsscore/Feed;->getType()I

    move-result v2

    .line 443
    invoke-static {}, Lmobi/beyondpod/rsscore/repository/FeedRepository;->getGoUpPlaceholder()Lmobi/beyondpod/rsscore/Feed;

    move-result-object v4

    invoke-virtual {p2, v4}, Lmobi/beyondpod/rsscore/Feed;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 444
    iget-object v2, v1, Lmobi/beyondpod/ui/views/navigator/FeedsViewAdapter$FeedsViewItem;->primaryImage:Lmobi/beyondpod/ui/core/volley/FadingNetworkImageViewFeed;

    const v4, 0x7f0800db

    invoke-virtual {v2, v4}, Lmobi/beyondpod/ui/core/volley/FadingNetworkImageViewFeed;->setErrorImageResId(I)V

    .line 445
    iget-object v2, v1, Lmobi/beyondpod/ui/views/navigator/FeedsViewAdapter$FeedsViewItem;->primaryText:Landroid/widget/TextView;

    sget-object v4, Lmobi/beyondpod/ui/views/navigator/FeedsViewAdapter;->sInfoTextFormatter:Ljava/util/Formatter;

    sget-object v6, Lmobi/beyondpod/ui/views/navigator/FeedsViewAdapter;->BACK_TO_PARENT:Ljava/lang/String;

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v7, p0, Lmobi/beyondpod/ui/views/navigator/FeedsViewAdapter;->_Feed:Lmobi/beyondpod/rsscore/Feed;

    .line 446
    invoke-virtual {v7}, Lmobi/beyondpod/rsscore/Feed;->isSubFeed()Z

    move-result v7

    if-eqz v7, :cond_5

    iget-object v7, p0, Lmobi/beyondpod/ui/views/navigator/FeedsViewAdapter;->_Feed:Lmobi/beyondpod/rsscore/Feed;

    invoke-virtual {v7}, Lmobi/beyondpod/rsscore/Feed;->parentFeed()Lmobi/beyondpod/rsscore/Feed;

    move-result-object v7

    invoke-virtual {v7}, Lmobi/beyondpod/rsscore/Feed;->getName()Ljava/lang/String;

    move-result-object v7

    goto :goto_4

    :cond_5
    sget-object v7, Lmobi/beyondpod/ui/views/navigator/FeedsViewAdapter;->MY_FEEDS:Ljava/lang/String;

    :goto_4
    aput-object v7, v3, v0

    .line 445
    invoke-virtual {v4, v6, v3}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object v3

    .line 447
    invoke-virtual {v3}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v3

    .line 445
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_6

    :cond_6
    if-ne v2, v3, :cond_8

    .line 450
    iget-object v2, v1, Lmobi/beyondpod/ui/views/navigator/FeedsViewAdapter$FeedsViewItem;->primaryImage:Lmobi/beyondpod/ui/core/volley/FadingNetworkImageViewFeed;

    invoke-virtual {p2}, Lmobi/beyondpod/rsscore/Feed;->isSubFeed()Z

    move-result v3

    if-eqz v3, :cond_7

    const v3, 0x7f0800be

    goto :goto_5

    :cond_7
    const v3, 0x7f0800bf

    :goto_5
    invoke-virtual {v2, v3}, Lmobi/beyondpod/ui/core/volley/FadingNetworkImageViewFeed;->setErrorImageResId(I)V

    goto :goto_6

    :cond_8
    const/4 v3, 0x4

    if-ne v2, v3, :cond_9

    .line 454
    iget-object v2, v1, Lmobi/beyondpod/ui/views/navigator/FeedsViewAdapter$FeedsViewItem;->primaryImage:Lmobi/beyondpod/ui/core/volley/FadingNetworkImageViewFeed;

    const v3, 0x7f0800a1

    invoke-virtual {v2, v3}, Lmobi/beyondpod/ui/core/volley/FadingNetworkImageViewFeed;->setErrorImageResId(I)V

    goto :goto_6

    :cond_9
    const/4 v3, 0x2

    if-eq v2, v3, :cond_a

    const/4 v3, 0x3

    if-eq v2, v3, :cond_a

    const/4 v3, 0x5

    if-ne v2, v3, :cond_b

    .line 458
    :cond_a
    iget-object v2, v1, Lmobi/beyondpod/ui/views/navigator/FeedsViewAdapter$FeedsViewItem;->primaryImage:Lmobi/beyondpod/ui/core/volley/FadingNetworkImageViewFeed;

    invoke-static {p2}, Lmobi/beyondpod/ui/core/FeedImageCache;->getDefaultImageResId(Lmobi/beyondpod/rsscore/Feed;)I

    move-result v3

    invoke-virtual {v2, v3}, Lmobi/beyondpod/ui/core/volley/FadingNetworkImageViewFeed;->setErrorImageResId(I)V

    .line 461
    :cond_b
    :goto_6
    iget-object v2, v1, Lmobi/beyondpod/ui/views/navigator/FeedsViewAdapter$FeedsViewItem;->primaryImage:Lmobi/beyondpod/ui/core/volley/FadingNetworkImageViewFeed;

    iget-object v3, p0, Lmobi/beyondpod/ui/views/navigator/FeedsViewAdapter;->_Owner:Lmobi/beyondpod/ui/views/navigator/FeedsListView;

    invoke-virtual {v3}, Lmobi/beyondpod/ui/views/navigator/FeedsListView;->getImageLoader()Lmobi/beyondpod/ui/core/volley/ImageLoader;

    move-result-object v3

    invoke-virtual {v2, p2, v3}, Lmobi/beyondpod/ui/core/volley/FadingNetworkImageViewFeed;->setFeed(Lmobi/beyondpod/rsscore/Feed;Lmobi/beyondpod/ui/core/volley/ImageLoader;)V

    .line 462
    iget-object v2, v1, Lmobi/beyondpod/ui/views/navigator/FeedsViewAdapter$FeedsViewItem;->primaryImage:Lmobi/beyondpod/ui/core/volley/FadingNetworkImageViewFeed;

    invoke-virtual {v2, p2}, Lmobi/beyondpod/ui/core/volley/FadingNetworkImageViewFeed;->setTag(Ljava/lang/Object;)V

    .line 463
    iget-object v2, v1, Lmobi/beyondpod/ui/views/navigator/FeedsViewAdapter$FeedsViewItem;->overlayImage:Landroid/widget/ImageView;

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 465
    iget-boolean v2, p2, Lmobi/beyondpod/rsscore/Feed;->updateFailed:Z

    if-nez v2, :cond_c

    iget-boolean v2, p2, Lmobi/beyondpod/rsscore/Feed;->downloadFailed:Z

    if-eqz v2, :cond_d

    .line 466
    :cond_c
    iget-object v2, v1, Lmobi/beyondpod/ui/views/navigator/FeedsViewAdapter$FeedsViewItem;->overlayImage:Landroid/widget/ImageView;

    const v3, 0x7f080147

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 467
    iget-object v2, v1, Lmobi/beyondpod/ui/views/navigator/FeedsViewAdapter$FeedsViewItem;->overlayImage:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 470
    :cond_d
    iget-object v2, v1, Lmobi/beyondpod/ui/views/navigator/FeedsViewAdapter$FeedsViewItem;->numEpisodes:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 472
    invoke-virtual {p2}, Lmobi/beyondpod/rsscore/Feed;->allowsEnclosures()Z

    move-result v2

    if-eqz v2, :cond_e

    invoke-virtual {p2}, Lmobi/beyondpod/rsscore/Feed;->tracks()Lmobi/beyondpod/rsscore/ConcurrentTrackList;

    move-result-object v2

    invoke-virtual {v2}, Lmobi/beyondpod/rsscore/ConcurrentTrackList;->size()I

    move-result v2

    if-lez v2, :cond_e

    iget-object v2, p0, Lmobi/beyondpod/ui/views/navigator/FeedsViewAdapter;->_Owner:Lmobi/beyondpod/ui/views/navigator/FeedsListView;

    invoke-virtual {v2}, Lmobi/beyondpod/ui/views/navigator/FeedsListView;->isEditingFeeds()Z

    move-result v2

    if-nez v2, :cond_e

    .line 473
    iget-object v2, v1, Lmobi/beyondpod/ui/views/navigator/FeedsViewAdapter$FeedsViewItem;->numEpisodes:Landroid/widget/TextView;

    invoke-virtual {p2}, Lmobi/beyondpod/rsscore/Feed;->tracks()Lmobi/beyondpod/rsscore/ConcurrentTrackList;

    move-result-object v3

    invoke-virtual {v3}, Lmobi/beyondpod/rsscore/ConcurrentTrackList;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 474
    iget-object v2, v1, Lmobi/beyondpod/ui/views/navigator/FeedsViewAdapter$FeedsViewItem;->numEpisodes:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 476
    iget-object v2, v1, Lmobi/beyondpod/ui/views/navigator/FeedsViewAdapter$FeedsViewItem;->numEpisodes:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 477
    iget-object v2, v1, Lmobi/beyondpod/ui/views/navigator/FeedsViewAdapter$FeedsViewItem;->numEpisodes:Landroid/widget/TextView;

    invoke-virtual {p2}, Lmobi/beyondpod/rsscore/Feed;->id()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 480
    :cond_e
    iget-object v2, v1, Lmobi/beyondpod/ui/views/navigator/FeedsViewAdapter$FeedsViewItem;->overflow:Landroid/widget/ImageView;

    iget-object v3, p0, Lmobi/beyondpod/ui/views/navigator/FeedsViewAdapter;->_Owner:Lmobi/beyondpod/ui/views/navigator/FeedsListView;

    invoke-virtual {v3}, Lmobi/beyondpod/ui/views/navigator/FeedsListView;->isEditingFeeds()Z

    move-result v3

    if-eqz v3, :cond_f

    goto :goto_7

    :cond_f
    move v0, v5

    :goto_7
    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 481
    iget-object v0, v1, Lmobi/beyondpod/ui/views/navigator/FeedsViewAdapter$FeedsViewItem;->overflow:Landroid/widget/ImageView;

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    return-object p1
.end method

.method private static getInfoTextForFeed(Lmobi/beyondpod/rsscore/Feed;)Ljava/lang/String;
    .locals 10

    .line 489
    sget-object v0, Lmobi/beyondpod/ui/views/navigator/FeedsViewAdapter;->sInfoTextStringBuilder:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 492
    invoke-static {}, Lmobi/beyondpod/downloadengine/RssFeedUpdateManager;->isUpdating()Z

    move-result v0

    const/4 v2, 0x4

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v0, :cond_2

    invoke-static {}, Lmobi/beyondpod/downloadengine/RssFeedUpdateManager;->currentFeed()Lmobi/beyondpod/rsscore/Feed;

    move-result-object v0

    if-ne v0, p0, :cond_2

    .line 493
    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/Feed;->getUpdateSize()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v0, v6, v8

    if-gtz v0, :cond_1

    .line 494
    sget-object v0, Lmobi/beyondpod/ui/views/navigator/FeedsViewAdapter;->sInfoTextFormatter:Ljava/util/Formatter;

    const-string v2, "%s %s..."

    new-array v3, v4, [Ljava/lang/Object;

    sget-object v4, Lmobi/beyondpod/ui/views/navigator/FeedsViewAdapter;->UPDATING:Ljava/lang/String;

    aput-object v4, v3, v1

    .line 497
    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/Feed;->getUpdatedPortion()J

    move-result-wide v6

    cmp-long v1, v6, v8

    if-lez v1, :cond_0

    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/Feed;->getUpdatedPortion()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-static {p0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->getFileLengthAsString(Ljava/lang/Long;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-string p0, ""

    :goto_0
    aput-object p0, v3, v5

    .line 494
    invoke-virtual {v0, v2, v3}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object p0

    .line 498
    invoke-virtual {p0}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_1

    .line 500
    :cond_1
    sget-object v0, Lmobi/beyondpod/ui/views/navigator/FeedsViewAdapter;->sInfoTextFormatter:Ljava/util/Formatter;

    const-string v6, "%s %s%% %s %s..."

    new-array v2, v2, [Ljava/lang/Object;

    sget-object v7, Lmobi/beyondpod/ui/views/navigator/FeedsViewAdapter;->UPDATING:Ljava/lang/String;

    aput-object v7, v2, v1

    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/Feed;->updatePercent()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v2, v5

    sget-object v1, Lmobi/beyondpod/ui/views/navigator/FeedsViewAdapter;->OF:Ljava/lang/String;

    aput-object v1, v2, v4

    .line 501
    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/Feed;->getUpdateSize()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-static {p0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->getFileLengthAsString(Ljava/lang/Long;)Ljava/lang/String;

    move-result-object p0

    aput-object p0, v2, v3

    .line 500
    invoke-virtual {v0, v6, v2}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object p0

    .line 501
    invoke-virtual {p0}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_1

    .line 504
    :cond_2
    invoke-static {}, Lmobi/beyondpod/downloadengine/EnclosureDownloadManager;->isDownloading()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lmobi/beyondpod/downloadengine/EnclosureDownloadManager;->currentFeed()Lmobi/beyondpod/rsscore/Feed;

    move-result-object v0

    if-ne v0, p0, :cond_3

    .line 507
    sget-object v0, Lmobi/beyondpod/ui/views/navigator/FeedsViewAdapter;->sInfoTextFormatter:Ljava/util/Formatter;

    const-string v6, "%s %s %s %s..."

    new-array v2, v2, [Ljava/lang/Object;

    sget-object v7, Lmobi/beyondpod/ui/views/navigator/FeedsViewAdapter;->DOWNLOADING:Ljava/lang/String;

    aput-object v7, v2, v1

    iget v1, p0, Lmobi/beyondpod/rsscore/Feed;->numDownloadedEnclosures:I

    add-int/2addr v1, v5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v2, v5

    sget-object v1, Lmobi/beyondpod/ui/views/navigator/FeedsViewAdapter;->OF:Ljava/lang/String;

    aput-object v1, v2, v4

    iget p0, p0, Lmobi/beyondpod/rsscore/Feed;->numEnclosuresAvailableForDownload:I

    .line 508
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v2, v3

    .line 507
    invoke-virtual {v0, v6, v2}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object p0

    .line 508
    invoke-virtual {p0}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_1

    .line 512
    :cond_3
    invoke-static {}, Lmobi/beyondpod/downloadengine/EnclosureDownloadManager;->isDownloading()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lmobi/beyondpod/rsscore/Feed;->downloadFailed:Z

    if-nez v0, :cond_4

    iget v0, p0, Lmobi/beyondpod/rsscore/Feed;->numEnclosuresAvailableForDownload:I

    if-lez v0, :cond_4

    iget v0, p0, Lmobi/beyondpod/rsscore/Feed;->numDownloadedEnclosures:I

    if-nez v0, :cond_4

    .line 514
    sget-object v0, Lmobi/beyondpod/ui/views/navigator/FeedsViewAdapter;->sInfoTextFormatter:Ljava/util/Formatter;

    sget-object v2, Lmobi/beyondpod/ui/views/navigator/FeedsViewAdapter;->S_PENDING:Ljava/lang/String;

    new-array v3, v5, [Ljava/lang/Object;

    iget p0, p0, Lmobi/beyondpod/rsscore/Feed;->numEnclosuresAvailableForDownload:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v3, v1

    invoke-virtual {v0, v2, v3}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_1

    .line 519
    :cond_4
    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/Feed;->subFeeds()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_5

    .line 520
    sget-object v0, Lmobi/beyondpod/ui/views/navigator/FeedsViewAdapter;->sInfoTextFormatter:Ljava/util/Formatter;

    const-string v2, "%s %s"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/Feed;->subFeeds()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v3, v1

    sget-object p0, Lmobi/beyondpod/ui/views/navigator/FeedsViewAdapter;->FEEDS:Ljava/lang/String;

    aput-object p0, v3, v5

    invoke-virtual {v0, v2, v3}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    .line 523
    :cond_5
    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/Feed;->numUnreadItems()I

    move-result v0

    if-lez v0, :cond_7

    .line 524
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->allowHidingRead()Z

    move-result v0

    if-eqz v0, :cond_6

    sget-object v0, Lmobi/beyondpod/ui/views/navigator/FeedsViewAdapter;->sInfoTextFormatter:Ljava/util/Formatter;

    const-string v2, "%s %s \u2022 %s"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/Feed;->numUnreadItems()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v3, v1

    sget-object v1, Lmobi/beyondpod/ui/views/navigator/FeedsViewAdapter;->UNREAD:Ljava/lang/String;

    aput-object v1, v3, v5

    .line 525
    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/Feed;->getLastModifiedDate()Ljava/util/Date;

    move-result-object p0

    invoke-static {p0}, Lmobi/beyondpod/rsscore/helpers/DateTime;->formatDateTime(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    aput-object p0, v3, v4

    .line 524
    invoke-virtual {v0, v2, v3}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object p0

    .line 525
    invoke-virtual {p0}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_6
    sget-object v0, Lmobi/beyondpod/ui/views/navigator/FeedsViewAdapter;->sInfoTextFormatter:Ljava/util/Formatter;

    const-string v2, "%s %s"

    new-array v3, v4, [Ljava/lang/Object;

    .line 526
    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/Feed;->numUnreadItems()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v3, v1

    sget-object p0, Lmobi/beyondpod/ui/views/navigator/FeedsViewAdapter;->UNREAD:Ljava/lang/String;

    aput-object p0, v3, v5

    invoke-virtual {v0, v2, v3}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    .line 529
    :cond_7
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->allowHidingRead()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/Feed;->hasUrl()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/Feed;->getLastModifiedDate()Ljava/util/Date;

    move-result-object p0

    invoke-static {p0}, Lmobi/beyondpod/rsscore/helpers/DateTime;->formatDateTime(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_8
    const/4 p0, 0x0

    :goto_1
    return-object p0
.end method

.method private isFeedValidForNextPrev(Lmobi/beyondpod/rsscore/Feed;)Z
    .locals 3

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 687
    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/Feed;->getType()I

    move-result v1

    const/4 v2, 0x4

    if-eq v1, v2, :cond_0

    .line 688
    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/Feed;->getType()I

    move-result v1

    if-eq v1, v0, :cond_0

    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/Feed;->id()Ljava/util/UUID;

    move-result-object p1

    invoke-static {p1}, Lmobi/beyondpod/rsscore/repository/FeedRepository;->getFeedById(Ljava/util/UUID;)Lmobi/beyondpod/rsscore/Feed;

    move-result-object p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private prefetchImageForFeed(Lmobi/beyondpod/rsscore/Feed;)V
    .locals 8

    if-nez p1, :cond_0

    return-void

    .line 747
    :cond_0
    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/Feed;->getType()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-ne v0, v1, :cond_3

    .line 751
    :cond_1
    invoke-static {p1}, Lmobi/beyondpod/ui/core/volley/FadingNetworkImageViewFeed;->generateFeedImageUrl(Lmobi/beyondpod/rsscore/Feed;)Ljava/lang/String;

    move-result-object v3

    .line 753
    invoke-static {v3}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    .line 756
    :cond_2
    iget-object v0, p0, Lmobi/beyondpod/ui/views/navigator/FeedsViewAdapter;->_Owner:Lmobi/beyondpod/ui/views/navigator/FeedsListView;

    invoke-virtual {v0}, Lmobi/beyondpod/ui/views/navigator/FeedsListView;->getImageLoader()Lmobi/beyondpod/ui/core/volley/ImageLoader;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lmobi/beyondpod/ui/core/volley/ImageLoaderFeed;

    new-instance v5, Lmobi/beyondpod/ui/views/navigator/FeedsViewAdapter$6;

    invoke-direct {v5, p0}, Lmobi/beyondpod/ui/views/navigator/FeedsViewAdapter$6;-><init>(Lmobi/beyondpod/ui/views/navigator/FeedsViewAdapter;)V

    iget v6, p0, Lmobi/beyondpod/ui/views/navigator/FeedsViewAdapter;->_ImageWidth:I

    iget v7, p0, Lmobi/beyondpod/ui/views/navigator/FeedsViewAdapter;->_ImageHeight:I

    move-object v4, p1

    invoke-virtual/range {v2 .. v7}, Lmobi/beyondpod/ui/core/volley/ImageLoaderFeed;->get(Ljava/lang/String;Lmobi/beyondpod/rsscore/Feed;Lcom/android/volley/toolbox/ImageLoader$ImageListener;II)Lcom/android/volley/toolbox/ImageLoader$ImageContainer;

    :cond_3
    return-void
.end method


# virtual methods
.method public areAllItemsSelectable()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public clear()V
    .locals 1

    const/4 v0, 0x0

    .line 537
    iput-object v0, p0, Lmobi/beyondpod/ui/views/navigator/FeedsViewAdapter;->_Feed:Lmobi/beyondpod/rsscore/Feed;

    .line 538
    iget-object v0, p0, Lmobi/beyondpod/ui/views/navigator/FeedsViewAdapter;->_DataSource:Lmobi/beyondpod/ui/views/navigator/FeedListViewDataSource;

    invoke-virtual {v0}, Lmobi/beyondpod/ui/views/navigator/FeedListViewDataSource;->clear()V

    return-void
.end method

.method public expandCollapseCategory(Landroid/widget/ImageView;Lmobi/beyondpod/rsscore/categories/FeedCategory;Z)V
    .locals 1

    .line 223
    iget-object v0, p0, Lmobi/beyondpod/ui/views/navigator/FeedsViewAdapter;->_DataSource:Lmobi/beyondpod/ui/views/navigator/FeedListViewDataSource;

    invoke-virtual {v0, p2, p3}, Lmobi/beyondpod/ui/views/navigator/FeedListViewDataSource;->expandCollapseCategory(Lmobi/beyondpod/rsscore/categories/FeedCategory;Z)V

    const-string p2, "A"

    const v0, 0x7f0901a3

    .line 225
    invoke-virtual {p1, v0, p2}, Landroid/widget/ImageView;->setTag(ILjava/lang/Object;)V

    .line 226
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/navigator/FeedsViewAdapter;->reloadFeeds()V

    .line 228
    iget-object p2, p0, Lmobi/beyondpod/ui/views/navigator/FeedsViewAdapter;->_Owner:Lmobi/beyondpod/ui/views/navigator/FeedsListView;

    invoke-virtual {p2}, Lmobi/beyondpod/ui/views/navigator/FeedsListView;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const/high16 v0, 0x10e0000

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p2

    const/4 v0, 0x2

    if-eqz p3, :cond_0

    .line 232
    sget-object p3, Landroid/view/View;->ROTATION:Landroid/util/Property;

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {p1, p3, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p3

    .line 233
    new-instance v0, Lmobi/beyondpod/ui/views/navigator/FeedsViewAdapter$1;

    invoke-direct {v0, p0, p1}, Lmobi/beyondpod/ui/views/navigator/FeedsViewAdapter$1;-><init>(Lmobi/beyondpod/ui/views/navigator/FeedsViewAdapter;Landroid/widget/ImageView;)V

    invoke-virtual {p3, v0}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto :goto_0

    .line 251
    :cond_0
    sget-object p3, Landroid/view/View;->ROTATION:Landroid/util/Property;

    new-array v0, v0, [F

    fill-array-data v0, :array_1

    invoke-static {p1, p3, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p3

    .line 252
    new-instance v0, Lmobi/beyondpod/ui/views/navigator/FeedsViewAdapter$2;

    invoke-direct {v0, p0, p1}, Lmobi/beyondpod/ui/views/navigator/FeedsViewAdapter$2;-><init>(Lmobi/beyondpod/ui/views/navigator/FeedsViewAdapter;Landroid/widget/ImageView;)V

    invoke-virtual {p3, v0}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :goto_0
    int-to-long p1, p2

    .line 270
    invoke-virtual {p3, p1, p2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 271
    invoke-virtual {p3}, Landroid/animation/ObjectAnimator;->start()V

    return-void

    :array_0
    .array-data 4
        0x0
        0x43340000    # 180.0f
    .end array-data

    :array_1
    .array-data 4
        0x0
        -0x3ccc0000    # -180.0f
    .end array-data
.end method

.method public expandFirstCategory()V
    .locals 1

    .line 578
    iget-object v0, p0, Lmobi/beyondpod/ui/views/navigator/FeedsViewAdapter;->_DataSource:Lmobi/beyondpod/ui/views/navigator/FeedListViewDataSource;

    invoke-virtual {v0}, Lmobi/beyondpod/ui/views/navigator/FeedListViewDataSource;->expandFirstCategory()V

    .line 579
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/navigator/FeedsViewAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public feedCount()I
    .locals 1

    .line 616
    iget-object v0, p0, Lmobi/beyondpod/ui/views/navigator/FeedsViewAdapter;->_DataSource:Lmobi/beyondpod/ui/views/navigator/FeedListViewDataSource;

    invoke-virtual {v0}, Lmobi/beyondpod/ui/views/navigator/FeedListViewDataSource;->feedCount()I

    move-result v0

    return v0
.end method

.method getCategoryAtPosition(I)Lmobi/beyondpod/rsscore/categories/FeedCategory;
    .locals 0

    .line 552
    invoke-virtual {p0, p1}, Lmobi/beyondpod/ui/views/navigator/FeedsViewAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 555
    check-cast p1, Lmobi/beyondpod/ui/views/navigator/FeedListViewDataSource$ListDataItem;

    iget-object p1, p1, Lmobi/beyondpod/ui/views/navigator/FeedListViewDataSource$ListDataItem;->Category:Lmobi/beyondpod/rsscore/categories/FeedCategory;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method getCategoryIndex(Lmobi/beyondpod/rsscore/categories/FeedCategory;)I
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, -0x1

    return p1

    .line 606
    :cond_0
    iget-object v0, p0, Lmobi/beyondpod/ui/views/navigator/FeedsViewAdapter;->_DataSource:Lmobi/beyondpod/ui/views/navigator/FeedListViewDataSource;

    invoke-virtual {v0, p1}, Lmobi/beyondpod/ui/views/navigator/FeedListViewDataSource;->getCategoryIndex(Lmobi/beyondpod/rsscore/categories/FeedCategory;)I

    move-result p1

    return p1
.end method

.method public getCount()I
    .locals 1

    .line 140
    iget-object v0, p0, Lmobi/beyondpod/ui/views/navigator/FeedsViewAdapter;->_DataSource:Lmobi/beyondpod/ui/views/navigator/FeedListViewDataSource;

    invoke-virtual {v0}, Lmobi/beyondpod/ui/views/navigator/FeedListViewDataSource;->size()I

    move-result v0

    return v0
.end method

.method getFeedAtPosition(I)Lmobi/beyondpod/rsscore/Feed;
    .locals 0

    .line 542
    invoke-virtual {p0, p1}, Lmobi/beyondpod/ui/views/navigator/FeedsViewAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 545
    check-cast p1, Lmobi/beyondpod/ui/views/navigator/FeedListViewDataSource$ListDataItem;

    iget-object p1, p1, Lmobi/beyondpod/ui/views/navigator/FeedListViewDataSource$ListDataItem;->Feed:Lmobi/beyondpod/rsscore/Feed;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method getFeedIndex(Lmobi/beyondpod/rsscore/Feed;)I
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, -0x1

    return p1

    .line 599
    :cond_0
    iget-object v0, p0, Lmobi/beyondpod/ui/views/navigator/FeedsViewAdapter;->_DataSource:Lmobi/beyondpod/ui/views/navigator/FeedListViewDataSource;

    invoke-virtual {v0, p1}, Lmobi/beyondpod/ui/views/navigator/FeedListViewDataSource;->getFeedIndex(Lmobi/beyondpod/rsscore/Feed;)I

    move-result p1

    return p1
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .line 145
    iget-object v0, p0, Lmobi/beyondpod/ui/views/navigator/FeedsViewAdapter;->_DataSource:Lmobi/beyondpod/ui/views/navigator/FeedListViewDataSource;

    invoke-virtual {v0, p1}, Lmobi/beyondpod/ui/views/navigator/FeedListViewDataSource;->getAtPosition(I)Lmobi/beyondpod/ui/views/navigator/FeedListViewDataSource$ListDataItem;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1

    .line 171
    iget-object v0, p0, Lmobi/beyondpod/ui/views/navigator/FeedsViewAdapter;->_DataSource:Lmobi/beyondpod/ui/views/navigator/FeedListViewDataSource;

    invoke-virtual {v0, p1}, Lmobi/beyondpod/ui/views/navigator/FeedListViewDataSource;->getAtPosition(I)Lmobi/beyondpod/ui/views/navigator/FeedListViewDataSource$ListDataItem;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 172
    iget-object v0, p1, Lmobi/beyondpod/ui/views/navigator/FeedListViewDataSource$ListDataItem;->Feed:Lmobi/beyondpod/rsscore/Feed;

    if-nez v0, :cond_0

    iget-object v0, p1, Lmobi/beyondpod/ui/views/navigator/FeedListViewDataSource$ListDataItem;->Category:Lmobi/beyondpod/rsscore/categories/FeedCategory;

    if-nez v0, :cond_0

    goto :goto_1

    .line 177
    :cond_0
    iget-object p1, p1, Lmobi/beyondpod/ui/views/navigator/FeedListViewDataSource$ListDataItem;->Feed:Lmobi/beyondpod/rsscore/Feed;

    if-nez p1, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    :goto_0
    return p1

    :cond_2
    :goto_1
    const/4 p1, -0x1

    return p1
.end method

.method getRootFeed()Lmobi/beyondpod/rsscore/Feed;
    .locals 1

    .line 135
    iget-object v0, p0, Lmobi/beyondpod/ui/views/navigator/FeedsViewAdapter;->_Feed:Lmobi/beyondpod/rsscore/Feed;

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    .line 182
    iget-object p3, p0, Lmobi/beyondpod/ui/views/navigator/FeedsViewAdapter;->_DataSource:Lmobi/beyondpod/ui/views/navigator/FeedListViewDataSource;

    invoke-virtual {p3, p1}, Lmobi/beyondpod/ui/views/navigator/FeedListViewDataSource;->getAtPosition(I)Lmobi/beyondpod/ui/views/navigator/FeedListViewDataSource$ListDataItem;

    move-result-object p1

    const/4 p3, 0x0

    if-nez p1, :cond_0

    .line 185
    iget-object p1, p0, Lmobi/beyondpod/ui/views/navigator/FeedsViewAdapter;->_Inflater:Landroid/view/LayoutInflater;

    const p2, 0x7f0c007b

    invoke-virtual {p1, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    return-object p1

    .line 188
    :cond_0
    :try_start_0
    iget-object v0, p1, Lmobi/beyondpod/ui/views/navigator/FeedListViewDataSource$ListDataItem;->Feed:Lmobi/beyondpod/rsscore/Feed;

    if-eqz v0, :cond_1

    .line 189
    iget-object p1, p1, Lmobi/beyondpod/ui/views/navigator/FeedListViewDataSource$ListDataItem;->Feed:Lmobi/beyondpod/rsscore/Feed;

    invoke-direct {p0, p2, p1}, Lmobi/beyondpod/ui/views/navigator/FeedsViewAdapter;->buildFeedViewItem(Landroid/view/View;Lmobi/beyondpod/rsscore/Feed;)Landroid/view/View;

    move-result-object p1

    goto :goto_1

    .line 191
    :cond_1
    iget-object v0, p1, Lmobi/beyondpod/ui/views/navigator/FeedListViewDataSource$ListDataItem;->Category:Lmobi/beyondpod/rsscore/categories/FeedCategory;

    if-eqz v0, :cond_2

    .line 192
    iget-object p1, p1, Lmobi/beyondpod/ui/views/navigator/FeedListViewDataSource$ListDataItem;->Category:Lmobi/beyondpod/rsscore/categories/FeedCategory;

    invoke-direct {p0, p2, p1}, Lmobi/beyondpod/ui/views/navigator/FeedsViewAdapter;->buildCategoryViewItem(Landroid/view/View;Lmobi/beyondpod/rsscore/categories/FeedCategory;)Landroid/view/View;

    move-result-object p1

    goto :goto_1

    :cond_2
    if-nez p2, :cond_3

    .line 196
    iget-object p1, p0, Lmobi/beyondpod/ui/views/navigator/FeedsViewAdapter;->_Inflater:Landroid/view/LayoutInflater;

    const v0, 0x7f0c0068

    invoke-virtual {p1, v0, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    move-object p2, p1

    .line 199
    :cond_3
    move-object p1, p2

    check-cast p1, Landroid/widget/TextView;

    .line 200
    iget-object p3, p0, Lmobi/beyondpod/ui/views/navigator/FeedsViewAdapter;->_DataSource:Lmobi/beyondpod/ui/views/navigator/FeedListViewDataSource;

    invoke-virtual {p3}, Lmobi/beyondpod/ui/views/navigator/FeedListViewDataSource;->size()I

    move-result p3

    const/4 v0, 0x1

    if-ne p3, v0, :cond_5

    .line 201
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/navigator/FeedsViewAdapter;->hasHiddenFeeds()Z

    move-result p3

    if-nez p3, :cond_4

    .line 202
    iget-object p3, p0, Lmobi/beyondpod/ui/views/navigator/FeedsViewAdapter;->_IfEmptyText:Ljava/lang/CharSequence;

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_4
    const p3, 0x7f1001c8

    .line 204
    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 207
    :cond_5
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/navigator/FeedsViewAdapter;->hasHiddenFeeds()Z

    move-result p3

    if-eqz p3, :cond_6

    const p3, 0x7f1001cb

    .line 208
    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 209
    :cond_6
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/navigator/FeedsViewAdapter;->hasReadFeeds()Z

    move-result p3

    if-eqz p3, :cond_7

    const p3, 0x7f1001c9

    .line 210
    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 215
    sget-object p3, Lmobi/beyondpod/ui/views/navigator/FeedsViewAdapter;->TAG:Ljava/lang/String;

    const-string v0, "failed to get feeds view item"

    invoke-static {p3, v0, p1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->logException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_7
    :goto_0
    move-object p1, p2

    :goto_1
    return-object p1
.end method

.method public getViewTypeCount()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public hasHiddenFeeds()Z
    .locals 1

    .line 703
    iget-object v0, p0, Lmobi/beyondpod/ui/views/navigator/FeedsViewAdapter;->_DataSource:Lmobi/beyondpod/ui/views/navigator/FeedListViewDataSource;

    invoke-virtual {v0}, Lmobi/beyondpod/ui/views/navigator/FeedListViewDataSource;->hasHiddenReadFeeds()Z

    move-result v0

    return v0
.end method

.method public hasReadFeeds()Z
    .locals 1

    .line 693
    iget-object v0, p0, Lmobi/beyondpod/ui/views/navigator/FeedsViewAdapter;->_DataSource:Lmobi/beyondpod/ui/views/navigator/FeedListViewDataSource;

    invoke-virtual {v0}, Lmobi/beyondpod/ui/views/navigator/FeedListViewDataSource;->hasReadFeeds()Z

    move-result v0

    return v0
.end method

.method public hiddenFeedCount()I
    .locals 1

    .line 621
    iget-object v0, p0, Lmobi/beyondpod/ui/views/navigator/FeedsViewAdapter;->_DataSource:Lmobi/beyondpod/ui/views/navigator/FeedListViewDataSource;

    invoke-virtual {v0}, Lmobi/beyondpod/ui/views/navigator/FeedListViewDataSource;->hiddenFeedCount()I

    move-result v0

    return v0
.end method

.method public isEnabled(I)Z
    .locals 1

    .line 155
    iget-object v0, p0, Lmobi/beyondpod/ui/views/navigator/FeedsViewAdapter;->_DataSource:Lmobi/beyondpod/ui/views/navigator/FeedListViewDataSource;

    invoke-virtual {v0, p1}, Lmobi/beyondpod/ui/views/navigator/FeedListViewDataSource;->getAtPosition(I)Lmobi/beyondpod/ui/views/navigator/FeedListViewDataSource$ListDataItem;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public nextFeed(Lmobi/beyondpod/rsscore/Feed;)Lmobi/beyondpod/rsscore/Feed;
    .locals 2

    .line 625
    invoke-virtual {p0, p1}, Lmobi/beyondpod/ui/views/navigator/FeedsViewAdapter;->getFeedIndex(Lmobi/beyondpod/rsscore/Feed;)I

    move-result p1

    :cond_0
    add-int/lit8 p1, p1, 0x1

    if-ltz p1, :cond_1

    .line 630
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/navigator/FeedsViewAdapter;->getCount()I

    move-result v0

    if-ge p1, v0, :cond_1

    .line 631
    invoke-virtual {p0, p1}, Lmobi/beyondpod/ui/views/navigator/FeedsViewAdapter;->getFeedAtPosition(I)Lmobi/beyondpod/rsscore/Feed;

    move-result-object v0

    .line 632
    invoke-direct {p0, v0}, Lmobi/beyondpod/ui/views/navigator/FeedsViewAdapter;->isFeedValidForNextPrev(Lmobi/beyondpod/rsscore/Feed;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public nextUnreadFeed(Lmobi/beyondpod/rsscore/Feed;)Lmobi/beyondpod/rsscore/Feed;
    .locals 4

    .line 664
    invoke-virtual {p0, p1}, Lmobi/beyondpod/ui/views/navigator/FeedsViewAdapter;->getFeedIndex(Lmobi/beyondpod/rsscore/Feed;)I

    move-result p1

    const/4 v0, 0x0

    if-gez p1, :cond_0

    return-object v0

    :cond_0
    add-int/lit8 v1, p1, 0x1

    :goto_0
    if-eq v1, p1, :cond_3

    .line 671
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/navigator/FeedsViewAdapter;->getCount()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 672
    invoke-virtual {p0, v1}, Lmobi/beyondpod/ui/views/navigator/FeedsViewAdapter;->getFeedAtPosition(I)Lmobi/beyondpod/rsscore/Feed;

    move-result-object v2

    .line 673
    invoke-direct {p0, v2}, Lmobi/beyondpod/ui/views/navigator/FeedsViewAdapter;->isFeedValidForNextPrev(Lmobi/beyondpod/rsscore/Feed;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Lmobi/beyondpod/rsscore/Feed;->hasUnreadItems()Z

    move-result v3

    if-eqz v3, :cond_1

    return-object v2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    :cond_3
    return-object v0
.end method

.method prefetchItemImages()V
    .locals 4

    .line 707
    iget-object v0, p0, Lmobi/beyondpod/ui/views/navigator/FeedsViewAdapter;->_Owner:Lmobi/beyondpod/ui/views/navigator/FeedsListView;

    invoke-virtual {v0}, Lmobi/beyondpod/ui/views/navigator/FeedsListView;->getChildCount()I

    move-result v0

    const/16 v1, 0xa

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 708
    iget-object v1, p0, Lmobi/beyondpod/ui/views/navigator/FeedsViewAdapter;->_Owner:Lmobi/beyondpod/ui/views/navigator/FeedsListView;

    invoke-virtual {v1}, Lmobi/beyondpod/ui/views/navigator/FeedsListView;->getChildCount()I

    move-result v1

    const/4 v2, 0x2

    mul-int/2addr v2, v1

    mul-int/lit8 v1, v0, 0x2

    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 711
    iget-object v2, p0, Lmobi/beyondpod/ui/views/navigator/FeedsViewAdapter;->_Owner:Lmobi/beyondpod/ui/views/navigator/FeedsListView;

    invoke-virtual {v2}, Lmobi/beyondpod/ui/views/navigator/FeedsListView;->getFirstVisiblePosition()I

    move-result v2

    sub-int/2addr v2, v0

    const/4 v0, 0x0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 712
    iget-object v2, p0, Lmobi/beyondpod/ui/views/navigator/FeedsViewAdapter;->_Owner:Lmobi/beyondpod/ui/views/navigator/FeedsListView;

    invoke-virtual {v2}, Lmobi/beyondpod/ui/views/navigator/FeedsListView;->getFirstVisiblePosition()I

    move-result v2

    if-ltz v0, :cond_0

    if-ge v0, v2, :cond_0

    :goto_0
    if-ge v0, v2, :cond_0

    add-int/lit8 v3, v0, 0x1

    .line 722
    invoke-virtual {p0, v0}, Lmobi/beyondpod/ui/views/navigator/FeedsViewAdapter;->getFeedAtPosition(I)Lmobi/beyondpod/rsscore/Feed;

    move-result-object v0

    invoke-direct {p0, v0}, Lmobi/beyondpod/ui/views/navigator/FeedsViewAdapter;->prefetchImageForFeed(Lmobi/beyondpod/rsscore/Feed;)V

    move v0, v3

    goto :goto_0

    .line 727
    :cond_0
    iget-object v0, p0, Lmobi/beyondpod/ui/views/navigator/FeedsViewAdapter;->_Owner:Lmobi/beyondpod/ui/views/navigator/FeedsListView;

    invoke-virtual {v0}, Lmobi/beyondpod/ui/views/navigator/FeedsListView;->getFirstVisiblePosition()I

    move-result v0

    iget-object v2, p0, Lmobi/beyondpod/ui/views/navigator/FeedsViewAdapter;->_Owner:Lmobi/beyondpod/ui/views/navigator/FeedsListView;

    invoke-virtual {v2}, Lmobi/beyondpod/ui/views/navigator/FeedsListView;->getChildCount()I

    move-result v2

    add-int/2addr v0, v2

    add-int/lit8 v0, v0, -0x1

    add-int/2addr v1, v0

    .line 728
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/navigator/FeedsViewAdapter;->getCount()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    if-ge v0, v1, :cond_1

    :goto_1
    if-ge v0, v1, :cond_1

    add-int/lit8 v2, v0, 0x1

    .line 738
    invoke-virtual {p0, v0}, Lmobi/beyondpod/ui/views/navigator/FeedsViewAdapter;->getFeedAtPosition(I)Lmobi/beyondpod/rsscore/Feed;

    move-result-object v0

    invoke-direct {p0, v0}, Lmobi/beyondpod/ui/views/navigator/FeedsViewAdapter;->prefetchImageForFeed(Lmobi/beyondpod/rsscore/Feed;)V

    move v0, v2

    goto :goto_1

    :cond_1
    return-void
.end method

.method public previousFeed(Lmobi/beyondpod/rsscore/Feed;)Lmobi/beyondpod/rsscore/Feed;
    .locals 3

    .line 643
    invoke-virtual {p0, p1}, Lmobi/beyondpod/ui/views/navigator/FeedsViewAdapter;->getFeedIndex(Lmobi/beyondpod/rsscore/Feed;)I

    move-result p1

    const/4 v0, 0x0

    if-gez p1, :cond_0

    return-object v0

    :cond_0
    add-int/lit8 p1, p1, -0x1

    if-ltz p1, :cond_1

    .line 652
    invoke-virtual {p0, p1}, Lmobi/beyondpod/ui/views/navigator/FeedsViewAdapter;->getFeedAtPosition(I)Lmobi/beyondpod/rsscore/Feed;

    move-result-object v1

    .line 653
    invoke-direct {p0, v1}, Lmobi/beyondpod/ui/views/navigator/FeedsViewAdapter;->isFeedValidForNextPrev(Lmobi/beyondpod/rsscore/Feed;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_1
    return-object v0
.end method

.method public reloadFeeds()V
    .locals 1

    .line 611
    iget-object v0, p0, Lmobi/beyondpod/ui/views/navigator/FeedsViewAdapter;->_Feed:Lmobi/beyondpod/rsscore/Feed;

    invoke-virtual {p0, v0}, Lmobi/beyondpod/ui/views/navigator/FeedsViewAdapter;->setRootFeed(Lmobi/beyondpod/rsscore/Feed;)V

    return-void
.end method

.method public setIfEmptyText(Ljava/lang/CharSequence;)V
    .locals 0

    .line 103
    iput-object p1, p0, Lmobi/beyondpod/ui/views/navigator/FeedsViewAdapter;->_IfEmptyText:Ljava/lang/CharSequence;

    return-void
.end method

.method setRootFeed(Lmobi/beyondpod/rsscore/Feed;)V
    .locals 2

    .line 562
    iput-object p1, p0, Lmobi/beyondpod/ui/views/navigator/FeedsViewAdapter;->_Feed:Lmobi/beyondpod/rsscore/Feed;

    .line 564
    iget-object v0, p0, Lmobi/beyondpod/ui/views/navigator/FeedsViewAdapter;->_DataSource:Lmobi/beyondpod/ui/views/navigator/FeedListViewDataSource;

    invoke-virtual {v0}, Lmobi/beyondpod/ui/views/navigator/FeedListViewDataSource;->clear()V

    .line 567
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->getHideReadFeeds()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->allowHidingRead()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 568
    invoke-static {v0}, Lmobi/beyondpod/rsscore/Configuration;->setHideReadFeeds(Z)V

    :cond_0
    if-eqz p1, :cond_1

    .line 570
    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/Feed;->subFeeds()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_1

    .line 571
    iget-object p1, p0, Lmobi/beyondpod/ui/views/navigator/FeedsViewAdapter;->_DataSource:Lmobi/beyondpod/ui/views/navigator/FeedListViewDataSource;

    iget-object v0, p0, Lmobi/beyondpod/ui/views/navigator/FeedsViewAdapter;->_Feed:Lmobi/beyondpod/rsscore/Feed;

    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->getHideReadFeeds()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lmobi/beyondpod/ui/views/navigator/FeedListViewDataSource;->filterAndGroupByFirstCategory(Lmobi/beyondpod/rsscore/Feed;Z)V

    .line 574
    :cond_1
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/navigator/FeedsViewAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public toggleReadFeeds(Z)V
    .locals 0

    xor-int/lit8 p1, p1, 0x1

    .line 697
    invoke-static {p1}, Lmobi/beyondpod/rsscore/Configuration;->setHideReadFeeds(Z)V

    .line 698
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/navigator/FeedsViewAdapter;->reloadFeeds()V

    return-void
.end method
