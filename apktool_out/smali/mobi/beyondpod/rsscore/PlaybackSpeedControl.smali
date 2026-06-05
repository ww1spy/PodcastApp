.class public Lmobi/beyondpod/rsscore/PlaybackSpeedControl;
.super Ljava/lang/Object;
.source "PlaybackSpeedControl.java"


# static fields
.field private static final DELTA_AUTO:I = -0x1

.field private static final DELTA_FF:I = 0x19

.field private static final MAX_SPEED:I = 0x12c

.field private static final MIN_SPEED:I = 0x1e


# instance fields
.field _InMin:Landroid/view/animation/Animation;

.field _InPlus:Landroid/view/animation/Animation;

.field private _MinusButton:Landroid/widget/ImageButton;

.field private _OnMinusListener:Landroid/view/View$OnClickListener;

.field private _OnPlusListener:Landroid/view/View$OnClickListener;

.field _OutMin:Landroid/view/animation/Animation;

.field _OutPlus:Landroid/view/animation/Animation;

.field _PlaybackSpeedFormat:Ljava/text/DecimalFormat;

.field private _PlaybackSpeedInfo:Landroid/widget/TextSwitcher;

.field private _PlusButton:Landroid/widget/ImageButton;

.field protected _Speed:I


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 2

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "#.##x"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lmobi/beyondpod/rsscore/PlaybackSpeedControl;->_PlaybackSpeedFormat:Ljava/text/DecimalFormat;

    .line 70
    new-instance v0, Lmobi/beyondpod/rsscore/PlaybackSpeedControl$2;

    invoke-direct {v0, p0}, Lmobi/beyondpod/rsscore/PlaybackSpeedControl$2;-><init>(Lmobi/beyondpod/rsscore/PlaybackSpeedControl;)V

    iput-object v0, p0, Lmobi/beyondpod/rsscore/PlaybackSpeedControl;->_OnPlusListener:Landroid/view/View$OnClickListener;

    .line 79
    new-instance v0, Lmobi/beyondpod/rsscore/PlaybackSpeedControl$3;

    invoke-direct {v0, p0}, Lmobi/beyondpod/rsscore/PlaybackSpeedControl$3;-><init>(Lmobi/beyondpod/rsscore/PlaybackSpeedControl;)V

    iput-object v0, p0, Lmobi/beyondpod/rsscore/PlaybackSpeedControl;->_OnMinusListener:Landroid/view/View$OnClickListener;

    const v0, 0x7f09025b

    .line 31
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextSwitcher;

    iput-object v0, p0, Lmobi/beyondpod/rsscore/PlaybackSpeedControl;->_PlaybackSpeedInfo:Landroid/widget/TextSwitcher;

    .line 32
    iget-object v0, p0, Lmobi/beyondpod/rsscore/PlaybackSpeedControl;->_PlaybackSpeedInfo:Landroid/widget/TextSwitcher;

    new-instance v1, Lmobi/beyondpod/rsscore/PlaybackSpeedControl$1;

    invoke-direct {v1, p0, p1}, Lmobi/beyondpod/rsscore/PlaybackSpeedControl$1;-><init>(Lmobi/beyondpod/rsscore/PlaybackSpeedControl;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextSwitcher;->setFactory(Landroid/widget/ViewSwitcher$ViewFactory;)V

    const v0, 0x7f090255

    .line 44
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lmobi/beyondpod/rsscore/PlaybackSpeedControl;->_PlusButton:Landroid/widget/ImageButton;

    .line 45
    iget-object v0, p0, Lmobi/beyondpod/rsscore/PlaybackSpeedControl;->_PlusButton:Landroid/widget/ImageButton;

    iget-object v1, p0, Lmobi/beyondpod/rsscore/PlaybackSpeedControl;->_OnPlusListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090254

    .line 47
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lmobi/beyondpod/rsscore/PlaybackSpeedControl;->_MinusButton:Landroid/widget/ImageButton;

    .line 48
    iget-object v0, p0, Lmobi/beyondpod/rsscore/PlaybackSpeedControl;->_MinusButton:Landroid/widget/ImageButton;

    iget-object v1, p0, Lmobi/beyondpod/rsscore/PlaybackSpeedControl;->_OnMinusListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 50
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f010014

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lmobi/beyondpod/rsscore/PlaybackSpeedControl;->_InPlus:Landroid/view/animation/Animation;

    .line 51
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f010016

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lmobi/beyondpod/rsscore/PlaybackSpeedControl;->_OutPlus:Landroid/view/animation/Animation;

    .line 53
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f010013

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lmobi/beyondpod/rsscore/PlaybackSpeedControl;->_InMin:Landroid/view/animation/Animation;

    .line 54
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f010015

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p1

    iput-object p1, p0, Lmobi/beyondpod/rsscore/PlaybackSpeedControl;->_OutMin:Landroid/view/animation/Animation;

    return-void
.end method

.method static synthetic access$000(Lmobi/beyondpod/rsscore/PlaybackSpeedControl;I)V
    .locals 0

    .line 16
    invoke-direct {p0, p1}, Lmobi/beyondpod/rsscore/PlaybackSpeedControl;->increaseSpeed(I)V

    return-void
.end method

.method static synthetic access$100(Lmobi/beyondpod/rsscore/PlaybackSpeedControl;I)V
    .locals 0

    .line 16
    invoke-direct {p0, p1}, Lmobi/beyondpod/rsscore/PlaybackSpeedControl;->decreaseSpeed(I)V

    return-void
.end method

.method private decreaseSpeed(I)V
    .locals 3

    .line 108
    iget v0, p0, Lmobi/beyondpod/rsscore/PlaybackSpeedControl;->_Speed:I

    const/16 v1, 0x1e

    if-gt v0, v1, :cond_0

    return-void

    .line 111
    :cond_0
    iget-object v0, p0, Lmobi/beyondpod/rsscore/PlaybackSpeedControl;->_PlaybackSpeedInfo:Landroid/widget/TextSwitcher;

    iget-object v2, p0, Lmobi/beyondpod/rsscore/PlaybackSpeedControl;->_InMin:Landroid/view/animation/Animation;

    invoke-virtual {v0, v2}, Landroid/widget/TextSwitcher;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 112
    iget-object v0, p0, Lmobi/beyondpod/rsscore/PlaybackSpeedControl;->_PlaybackSpeedInfo:Landroid/widget/TextSwitcher;

    iget-object v2, p0, Lmobi/beyondpod/rsscore/PlaybackSpeedControl;->_OutMin:Landroid/view/animation/Animation;

    invoke-virtual {v0, v2}, Landroid/widget/TextSwitcher;->setOutAnimation(Landroid/view/animation/Animation;)V

    if-lez p1, :cond_2

    .line 116
    iget v0, p0, Lmobi/beyondpod/rsscore/PlaybackSpeedControl;->_Speed:I

    rem-int/2addr v0, p1

    .line 117
    iget v2, p0, Lmobi/beyondpod/rsscore/PlaybackSpeedControl;->_Speed:I

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    move p1, v0

    :goto_0
    sub-int/2addr v2, p1

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lmobi/beyondpod/rsscore/PlaybackSpeedControl;->_Speed:I

    goto :goto_1

    .line 119
    :cond_2
    iget p1, p0, Lmobi/beyondpod/rsscore/PlaybackSpeedControl;->_Speed:I

    add-int/lit8 p1, p1, -0x5

    iput p1, p0, Lmobi/beyondpod/rsscore/PlaybackSpeedControl;->_Speed:I

    .line 121
    :goto_1
    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/PlaybackSpeedControl;->updateSpeed()V

    return-void
.end method

.method private increaseSpeed(I)V
    .locals 3

    .line 90
    iget v0, p0, Lmobi/beyondpod/rsscore/PlaybackSpeedControl;->_Speed:I

    const/16 v1, 0x12c

    if-lt v0, v1, :cond_0

    return-void

    .line 93
    :cond_0
    iget-object v0, p0, Lmobi/beyondpod/rsscore/PlaybackSpeedControl;->_PlaybackSpeedInfo:Landroid/widget/TextSwitcher;

    iget-object v2, p0, Lmobi/beyondpod/rsscore/PlaybackSpeedControl;->_InPlus:Landroid/view/animation/Animation;

    invoke-virtual {v0, v2}, Landroid/widget/TextSwitcher;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 94
    iget-object v0, p0, Lmobi/beyondpod/rsscore/PlaybackSpeedControl;->_PlaybackSpeedInfo:Landroid/widget/TextSwitcher;

    iget-object v2, p0, Lmobi/beyondpod/rsscore/PlaybackSpeedControl;->_OutPlus:Landroid/view/animation/Animation;

    invoke-virtual {v0, v2}, Landroid/widget/TextSwitcher;->setOutAnimation(Landroid/view/animation/Animation;)V

    if-lez p1, :cond_1

    .line 98
    iget v0, p0, Lmobi/beyondpod/rsscore/PlaybackSpeedControl;->_Speed:I

    rem-int/2addr v0, p1

    .line 99
    iget v2, p0, Lmobi/beyondpod/rsscore/PlaybackSpeedControl;->_Speed:I

    add-int/2addr v2, p1

    sub-int/2addr v2, v0

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Lmobi/beyondpod/rsscore/PlaybackSpeedControl;->_Speed:I

    goto :goto_0

    .line 101
    :cond_1
    iget p1, p0, Lmobi/beyondpod/rsscore/PlaybackSpeedControl;->_Speed:I

    add-int/lit8 p1, p1, 0x5

    iput p1, p0, Lmobi/beyondpod/rsscore/PlaybackSpeedControl;->_Speed:I

    .line 103
    :goto_0
    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/PlaybackSpeedControl;->updateSpeed()V

    return-void
.end method


# virtual methods
.method public getSelectedSpeed()I
    .locals 1

    .line 67
    iget v0, p0, Lmobi/beyondpod/rsscore/PlaybackSpeedControl;->_Speed:I

    return v0
.end method

.method public initialize(I)V
    .locals 1

    const/16 v0, 0x1e

    if-ge p1, v0, :cond_0

    const/4 p1, 0x0

    .line 60
    :cond_0
    iput p1, p0, Lmobi/beyondpod/rsscore/PlaybackSpeedControl;->_Speed:I

    .line 62
    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/PlaybackSpeedControl;->updateSpeed()V

    return-void
.end method

.method protected updateSpeed()V
    .locals 5

    .line 126
    iget v0, p0, Lmobi/beyondpod/rsscore/PlaybackSpeedControl;->_Speed:I

    int-to-float v0, v0

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v0, v1

    .line 127
    iget-object v1, p0, Lmobi/beyondpod/rsscore/PlaybackSpeedControl;->_PlaybackSpeedInfo:Landroid/widget/TextSwitcher;

    iget-object v2, p0, Lmobi/beyondpod/rsscore/PlaybackSpeedControl;->_PlaybackSpeedFormat:Ljava/text/DecimalFormat;

    float-to-double v3, v0

    invoke-virtual {v2, v3, v4}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextSwitcher;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
