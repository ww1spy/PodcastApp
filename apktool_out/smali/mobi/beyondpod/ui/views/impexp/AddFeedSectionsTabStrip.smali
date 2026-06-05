.class public Lmobi/beyondpod/ui/views/impexp/AddFeedSectionsTabStrip;
.super Landroid/widget/HorizontalScrollView;
.source "AddFeedSectionsTabStrip.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmobi/beyondpod/ui/views/impexp/AddFeedSectionsTabStrip$PageListener;
    }
.end annotation


# instance fields
.field private addFeedView:Lmobi/beyondpod/ui/views/impexp/AddFeedView;

.field private currentPosition:I

.field private currentPositionOffset:F

.field private dividerPaint:Landroid/graphics/Paint;

.field private lastIndicatorPosition:I

.field private lastScrollX:I

.field private final pageListener:Lmobi/beyondpod/ui/views/impexp/AddFeedSectionsTabStrip$PageListener;

.field private pager:Landroid/support/v4/view/ViewPager;

.field private rectPaint:Landroid/graphics/Paint;

.field private tabTotal:I

.field private tabsContainer:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 52
    invoke-direct {p0, p1, v0}, Lmobi/beyondpod/ui/views/impexp/AddFeedSectionsTabStrip;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 53
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lmobi/beyondpod/ui/views/impexp/AddFeedSectionsTabStrip;->rectPaint:Landroid/graphics/Paint;

    .line 54
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lmobi/beyondpod/ui/views/impexp/AddFeedSectionsTabStrip;->dividerPaint:Landroid/graphics/Paint;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 58
    invoke-direct {p0, p1, p2, v0}, Lmobi/beyondpod/ui/views/impexp/AddFeedSectionsTabStrip;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 59
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lmobi/beyondpod/ui/views/impexp/AddFeedSectionsTabStrip;->rectPaint:Landroid/graphics/Paint;

    .line 60
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lmobi/beyondpod/ui/views/impexp/AddFeedSectionsTabStrip;->dividerPaint:Landroid/graphics/Paint;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .line 64
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 39
    new-instance p2, Lmobi/beyondpod/ui/views/impexp/AddFeedSectionsTabStrip$PageListener;

    const/4 p3, 0x0

    invoke-direct {p2, p0, p3}, Lmobi/beyondpod/ui/views/impexp/AddFeedSectionsTabStrip$PageListener;-><init>(Lmobi/beyondpod/ui/views/impexp/AddFeedSectionsTabStrip;Lmobi/beyondpod/ui/views/impexp/AddFeedSectionsTabStrip$1;)V

    iput-object p2, p0, Lmobi/beyondpod/ui/views/impexp/AddFeedSectionsTabStrip;->pageListener:Lmobi/beyondpod/ui/views/impexp/AddFeedSectionsTabStrip$PageListener;

    const/4 p2, -0x1

    .line 44
    iput p2, p0, Lmobi/beyondpod/ui/views/impexp/AddFeedSectionsTabStrip;->lastIndicatorPosition:I

    const/4 p2, 0x0

    .line 45
    iput p2, p0, Lmobi/beyondpod/ui/views/impexp/AddFeedSectionsTabStrip;->currentPosition:I

    const/4 v0, 0x0

    .line 46
    iput v0, p0, Lmobi/beyondpod/ui/views/impexp/AddFeedSectionsTabStrip;->currentPositionOffset:F

    .line 47
    iput p2, p0, Lmobi/beyondpod/ui/views/impexp/AddFeedSectionsTabStrip;->lastScrollX:I

    .line 66
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lmobi/beyondpod/ui/views/impexp/AddFeedSectionsTabStrip;->rectPaint:Landroid/graphics/Paint;

    .line 67
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lmobi/beyondpod/ui/views/impexp/AddFeedSectionsTabStrip;->dividerPaint:Landroid/graphics/Paint;

    const/4 v0, 0x1

    .line 69
    invoke-virtual {p0, v0}, Lmobi/beyondpod/ui/views/impexp/AddFeedSectionsTabStrip;->setFillViewport(Z)V

    .line 70
    invoke-virtual {p0, p2}, Lmobi/beyondpod/ui/views/impexp/AddFeedSectionsTabStrip;->setWillNotDraw(Z)V

    .line 72
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c00b3

    invoke-virtual {v0, v1, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/LinearLayout;

    iput-object p3, p0, Lmobi/beyondpod/ui/views/impexp/AddFeedSectionsTabStrip;->tabsContainer:Landroid/widget/LinearLayout;

    .line 73
    iget-object p3, p0, Lmobi/beyondpod/ui/views/impexp/AddFeedSectionsTabStrip;->tabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p0, p3}, Lmobi/beyondpod/ui/views/impexp/AddFeedSectionsTabStrip;->addView(Landroid/view/View;)V

    .line 75
    iget-object p3, p0, Lmobi/beyondpod/ui/views/impexp/AddFeedSectionsTabStrip;->tabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p3}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 76
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/impexp/AddFeedSectionsTabStrip;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const v0, 0x7f030003

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p3

    .line 77
    array-length v0, p3

    iput v0, p0, Lmobi/beyondpod/ui/views/impexp/AddFeedSectionsTabStrip;->tabTotal:I

    .line 78
    :goto_0
    iget v0, p0, Lmobi/beyondpod/ui/views/impexp/AddFeedSectionsTabStrip;->tabTotal:I

    if-ge p2, v0, :cond_0

    .line 79
    aget-object v0, p3, p2

    invoke-direct {p0, p1, p2, v0}, Lmobi/beyondpod/ui/views/impexp/AddFeedSectionsTabStrip;->addTab(Landroid/content/Context;ILjava/lang/String;)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method static synthetic access$100(Lmobi/beyondpod/ui/views/impexp/AddFeedSectionsTabStrip;)Lmobi/beyondpod/ui/views/impexp/AddFeedView;
    .locals 0

    .line 37
    iget-object p0, p0, Lmobi/beyondpod/ui/views/impexp/AddFeedSectionsTabStrip;->addFeedView:Lmobi/beyondpod/ui/views/impexp/AddFeedView;

    return-object p0
.end method

.method static synthetic access$200(Lmobi/beyondpod/ui/views/impexp/AddFeedSectionsTabStrip;)Landroid/support/v4/view/ViewPager;
    .locals 0

    .line 37
    iget-object p0, p0, Lmobi/beyondpod/ui/views/impexp/AddFeedSectionsTabStrip;->pager:Landroid/support/v4/view/ViewPager;

    return-object p0
.end method

.method static synthetic access$302(Lmobi/beyondpod/ui/views/impexp/AddFeedSectionsTabStrip;I)I
    .locals 0

    .line 37
    iput p1, p0, Lmobi/beyondpod/ui/views/impexp/AddFeedSectionsTabStrip;->currentPosition:I

    return p1
.end method

.method static synthetic access$402(Lmobi/beyondpod/ui/views/impexp/AddFeedSectionsTabStrip;F)F
    .locals 0

    .line 37
    iput p1, p0, Lmobi/beyondpod/ui/views/impexp/AddFeedSectionsTabStrip;->currentPositionOffset:F

    return p1
.end method

.method static synthetic access$500(Lmobi/beyondpod/ui/views/impexp/AddFeedSectionsTabStrip;)Landroid/widget/LinearLayout;
    .locals 0

    .line 37
    iget-object p0, p0, Lmobi/beyondpod/ui/views/impexp/AddFeedSectionsTabStrip;->tabsContainer:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic access$600(Lmobi/beyondpod/ui/views/impexp/AddFeedSectionsTabStrip;II)V
    .locals 0

    .line 37
    invoke-direct {p0, p1, p2}, Lmobi/beyondpod/ui/views/impexp/AddFeedSectionsTabStrip;->scrollToChild(II)V

    return-void
.end method

.method private addTab(Landroid/content/Context;ILjava/lang/String;)V
    .locals 2

    .line 84
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const v0, 0x7f0c00b2

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 85
    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 86
    new-instance p3, Lmobi/beyondpod/ui/views/impexp/AddFeedSectionsTabStrip$1;

    invoke-direct {p3, p0, p2}, Lmobi/beyondpod/ui/views/impexp/AddFeedSectionsTabStrip$1;-><init>(Lmobi/beyondpod/ui/views/impexp/AddFeedSectionsTabStrip;I)V

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 94
    iget-object p3, p0, Lmobi/beyondpod/ui/views/impexp/AddFeedSectionsTabStrip;->tabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p3, p1, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    return-void
.end method

.method private scrollToChild(II)V
    .locals 3

    .line 108
    iget v0, p0, Lmobi/beyondpod/ui/views/impexp/AddFeedSectionsTabStrip;->tabTotal:I

    if-nez v0, :cond_0

    return-void

    .line 111
    :cond_0
    iget v0, p0, Lmobi/beyondpod/ui/views/impexp/AddFeedSectionsTabStrip;->lastIndicatorPosition:I

    const/4 v1, 0x0

    if-eq v0, p1, :cond_2

    if-nez p2, :cond_2

    .line 112
    iget-object v0, p0, Lmobi/beyondpod/ui/views/impexp/AddFeedSectionsTabStrip;->tabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/4 v2, 0x1

    .line 113
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setSelected(Z)V

    .line 114
    iget v0, p0, Lmobi/beyondpod/ui/views/impexp/AddFeedSectionsTabStrip;->lastIndicatorPosition:I

    if-ltz v0, :cond_1

    .line 115
    iget-object v0, p0, Lmobi/beyondpod/ui/views/impexp/AddFeedSectionsTabStrip;->tabsContainer:Landroid/widget/LinearLayout;

    iget v2, p0, Lmobi/beyondpod/ui/views/impexp/AddFeedSectionsTabStrip;->lastIndicatorPosition:I

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 116
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 118
    :cond_1
    iput p1, p0, Lmobi/beyondpod/ui/views/impexp/AddFeedSectionsTabStrip;->lastIndicatorPosition:I

    .line 121
    :cond_2
    iget-object v0, p0, Lmobi/beyondpod/ui/views/impexp/AddFeedSectionsTabStrip;->tabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    add-int/2addr v0, p2

    if-gtz p1, :cond_3

    if-lez p2, :cond_4

    :cond_3
    int-to-float p1, v0

    .line 124
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/impexp/AddFeedSectionsTabStrip;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f0700fb

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p2

    sub-float/2addr p1, p2

    float-to-int v0, p1

    .line 126
    :cond_4
    iget p1, p0, Lmobi/beyondpod/ui/views/impexp/AddFeedSectionsTabStrip;->lastScrollX:I

    if-eq v0, p1, :cond_5

    .line 127
    iput v0, p0, Lmobi/beyondpod/ui/views/impexp/AddFeedSectionsTabStrip;->lastScrollX:I

    .line 128
    invoke-virtual {p0, v0, v1}, Lmobi/beyondpod/ui/views/impexp/AddFeedSectionsTabStrip;->scrollTo(II)V

    :cond_5
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 11

    .line 134
    invoke-super {p0, p1}, Landroid/widget/HorizontalScrollView;->onDraw(Landroid/graphics/Canvas;)V

    .line 136
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/impexp/AddFeedSectionsTabStrip;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_3

    iget v0, p0, Lmobi/beyondpod/ui/views/impexp/AddFeedSectionsTabStrip;->tabTotal:I

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 139
    :cond_0
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/impexp/AddFeedSectionsTabStrip;->getHeight()I

    move-result v0

    .line 143
    iget-object v1, p0, Lmobi/beyondpod/ui/views/impexp/AddFeedSectionsTabStrip;->tabsContainer:Landroid/widget/LinearLayout;

    iget v2, p0, Lmobi/beyondpod/ui/views/impexp/AddFeedSectionsTabStrip;->currentPosition:I

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 144
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v2

    int-to-float v2, v2

    .line 145
    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v1

    int-to-float v1, v1

    .line 148
    iget v3, p0, Lmobi/beyondpod/ui/views/impexp/AddFeedSectionsTabStrip;->currentPositionOffset:F

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    const/4 v4, 0x1

    if-lez v3, :cond_1

    iget v3, p0, Lmobi/beyondpod/ui/views/impexp/AddFeedSectionsTabStrip;->currentPosition:I

    iget v5, p0, Lmobi/beyondpod/ui/views/impexp/AddFeedSectionsTabStrip;->tabTotal:I

    sub-int/2addr v5, v4

    if-ge v3, v5, :cond_1

    .line 150
    iget-object v3, p0, Lmobi/beyondpod/ui/views/impexp/AddFeedSectionsTabStrip;->tabsContainer:Landroid/widget/LinearLayout;

    iget v5, p0, Lmobi/beyondpod/ui/views/impexp/AddFeedSectionsTabStrip;->currentPosition:I

    add-int/2addr v5, v4

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 151
    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v5

    int-to-float v5, v5

    .line 152
    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v3

    int-to-float v3, v3

    .line 154
    iget v6, p0, Lmobi/beyondpod/ui/views/impexp/AddFeedSectionsTabStrip;->currentPositionOffset:F

    mul-float/2addr v6, v5

    iget v5, p0, Lmobi/beyondpod/ui/views/impexp/AddFeedSectionsTabStrip;->currentPositionOffset:F

    const/high16 v7, 0x3f800000    # 1.0f

    sub-float v5, v7, v5

    mul-float/2addr v5, v2

    add-float v2, v6, v5

    .line 155
    iget v5, p0, Lmobi/beyondpod/ui/views/impexp/AddFeedSectionsTabStrip;->currentPositionOffset:F

    mul-float/2addr v5, v3

    iget v3, p0, Lmobi/beyondpod/ui/views/impexp/AddFeedSectionsTabStrip;->currentPositionOffset:F

    sub-float/2addr v7, v3

    mul-float/2addr v7, v1

    add-float v1, v5, v7

    :cond_1
    move v8, v1

    move v6, v2

    .line 159
    iget-object v1, p0, Lmobi/beyondpod/ui/views/impexp/AddFeedSectionsTabStrip;->rectPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 160
    iget-object v1, p0, Lmobi/beyondpod/ui/views/impexp/AddFeedSectionsTabStrip;->rectPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 161
    iget-object v1, p0, Lmobi/beyondpod/ui/views/impexp/AddFeedSectionsTabStrip;->rectPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/impexp/AddFeedSectionsTabStrip;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f06002a

    invoke-static {v2, v3}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    int-to-float v0, v0

    .line 162
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/impexp/AddFeedSectionsTabStrip;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0700f9

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    sub-float v7, v0, v1

    iget-object v10, p0, Lmobi/beyondpod/ui/views/impexp/AddFeedSectionsTabStrip;->rectPaint:Landroid/graphics/Paint;

    move-object v5, p1

    move v9, v0

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 165
    iget-object v1, p0, Lmobi/beyondpod/ui/views/impexp/AddFeedSectionsTabStrip;->dividerPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 166
    iget-object v1, p0, Lmobi/beyondpod/ui/views/impexp/AddFeedSectionsTabStrip;->dividerPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/impexp/AddFeedSectionsTabStrip;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0700f8

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 167
    iget-object v1, p0, Lmobi/beyondpod/ui/views/impexp/AddFeedSectionsTabStrip;->dividerPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/impexp/AddFeedSectionsTabStrip;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0600b9

    invoke-static {v2, v3}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v1, 0x0

    .line 168
    :goto_0
    iget v2, p0, Lmobi/beyondpod/ui/views/impexp/AddFeedSectionsTabStrip;->tabTotal:I

    sub-int/2addr v2, v4

    if-ge v1, v2, :cond_2

    .line 169
    iget-object v2, p0, Lmobi/beyondpod/ui/views/impexp/AddFeedSectionsTabStrip;->tabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 170
    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v3

    int-to-float v6, v3

    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/impexp/AddFeedSectionsTabStrip;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f0700f7

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v2

    int-to-float v8, v2

    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/impexp/AddFeedSectionsTabStrip;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    sub-float v9, v0, v2

    iget-object v10, p0, Lmobi/beyondpod/ui/views/impexp/AddFeedSectionsTabStrip;->dividerPaint:Landroid/graphics/Paint;

    move-object v5, p1

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void

    :cond_3
    :goto_1
    return-void
.end method

.method public setAddFeedView(Lmobi/beyondpod/ui/views/impexp/AddFeedView;)V
    .locals 0

    .line 103
    iput-object p1, p0, Lmobi/beyondpod/ui/views/impexp/AddFeedSectionsTabStrip;->addFeedView:Lmobi/beyondpod/ui/views/impexp/AddFeedView;

    return-void
.end method

.method public setViewPager(Landroid/support/v4/view/ViewPager;)V
    .locals 1

    .line 98
    iput-object p1, p0, Lmobi/beyondpod/ui/views/impexp/AddFeedSectionsTabStrip;->pager:Landroid/support/v4/view/ViewPager;

    .line 99
    iget-object v0, p0, Lmobi/beyondpod/ui/views/impexp/AddFeedSectionsTabStrip;->pageListener:Lmobi/beyondpod/ui/views/impexp/AddFeedSectionsTabStrip$PageListener;

    invoke-virtual {p1, v0}, Landroid/support/v4/view/ViewPager;->addOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    return-void
.end method
