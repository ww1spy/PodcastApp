.class public Lmobi/beyondpod/rsscore/VolumeBoostControl;
.super Ljava/lang/Object;
.source "VolumeBoostControl.java"


# static fields
.field private static final DELTA_AUTO:I = 0x1

.field private static final MAX_BOOST:I = 0x9

.field private static final MIN_BOOST:I = -0x9


# instance fields
.field protected _Boost:I

.field _InMin:Landroid/view/animation/Animation;

.field _InPlus:Landroid/view/animation/Animation;

.field private _MinusButton:Landroid/widget/ImageButton;

.field private _OnMinusListener:Landroid/view/View$OnClickListener;

.field private _OnPlusListener:Landroid/view/View$OnClickListener;

.field _OutMin:Landroid/view/animation/Animation;

.field _OutPlus:Landroid/view/animation/Animation;

.field _PlaybackSpeedFormat:Ljava/text/DecimalFormat;

.field private _PlusButton:Landroid/widget/ImageButton;

.field private _VolumeBoostInfo:Landroid/widget/TextSwitcher;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 2

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "#"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lmobi/beyondpod/rsscore/VolumeBoostControl;->_PlaybackSpeedFormat:Ljava/text/DecimalFormat;

    .line 69
    new-instance v0, Lmobi/beyondpod/rsscore/VolumeBoostControl$2;

    invoke-direct {v0, p0}, Lmobi/beyondpod/rsscore/VolumeBoostControl$2;-><init>(Lmobi/beyondpod/rsscore/VolumeBoostControl;)V

    iput-object v0, p0, Lmobi/beyondpod/rsscore/VolumeBoostControl;->_OnPlusListener:Landroid/view/View$OnClickListener;

    .line 78
    new-instance v0, Lmobi/beyondpod/rsscore/VolumeBoostControl$3;

    invoke-direct {v0, p0}, Lmobi/beyondpod/rsscore/VolumeBoostControl$3;-><init>(Lmobi/beyondpod/rsscore/VolumeBoostControl;)V

    iput-object v0, p0, Lmobi/beyondpod/rsscore/VolumeBoostControl;->_OnMinusListener:Landroid/view/View$OnClickListener;

    const v0, 0x7f090253

    .line 31
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextSwitcher;

    iput-object v0, p0, Lmobi/beyondpod/rsscore/VolumeBoostControl;->_VolumeBoostInfo:Landroid/widget/TextSwitcher;

    .line 32
    iget-object v0, p0, Lmobi/beyondpod/rsscore/VolumeBoostControl;->_VolumeBoostInfo:Landroid/widget/TextSwitcher;

    new-instance v1, Lmobi/beyondpod/rsscore/VolumeBoostControl$1;

    invoke-direct {v1, p0, p1}, Lmobi/beyondpod/rsscore/VolumeBoostControl$1;-><init>(Lmobi/beyondpod/rsscore/VolumeBoostControl;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextSwitcher;->setFactory(Landroid/widget/ViewSwitcher$ViewFactory;)V

    const v0, 0x7f090257

    .line 44
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lmobi/beyondpod/rsscore/VolumeBoostControl;->_PlusButton:Landroid/widget/ImageButton;

    .line 45
    iget-object v0, p0, Lmobi/beyondpod/rsscore/VolumeBoostControl;->_PlusButton:Landroid/widget/ImageButton;

    iget-object v1, p0, Lmobi/beyondpod/rsscore/VolumeBoostControl;->_OnPlusListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090256

    .line 47
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lmobi/beyondpod/rsscore/VolumeBoostControl;->_MinusButton:Landroid/widget/ImageButton;

    .line 48
    iget-object v0, p0, Lmobi/beyondpod/rsscore/VolumeBoostControl;->_MinusButton:Landroid/widget/ImageButton;

    iget-object v1, p0, Lmobi/beyondpod/rsscore/VolumeBoostControl;->_OnMinusListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 50
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f010014

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lmobi/beyondpod/rsscore/VolumeBoostControl;->_InPlus:Landroid/view/animation/Animation;

    .line 51
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f010016

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lmobi/beyondpod/rsscore/VolumeBoostControl;->_OutPlus:Landroid/view/animation/Animation;

    .line 53
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f010013

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lmobi/beyondpod/rsscore/VolumeBoostControl;->_InMin:Landroid/view/animation/Animation;

    .line 54
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f010015

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p1

    iput-object p1, p0, Lmobi/beyondpod/rsscore/VolumeBoostControl;->_OutMin:Landroid/view/animation/Animation;

    return-void
.end method

.method static synthetic access$000(Lmobi/beyondpod/rsscore/VolumeBoostControl;I)V
    .locals 0

    .line 17
    invoke-direct {p0, p1}, Lmobi/beyondpod/rsscore/VolumeBoostControl;->increaseSpeed(I)V

    return-void
.end method

.method static synthetic access$100(Lmobi/beyondpod/rsscore/VolumeBoostControl;I)V
    .locals 0

    .line 17
    invoke-direct {p0, p1}, Lmobi/beyondpod/rsscore/VolumeBoostControl;->decreaseSpeed(I)V

    return-void
.end method

.method private decreaseSpeed(I)V
    .locals 2

    .line 102
    iget v0, p0, Lmobi/beyondpod/rsscore/VolumeBoostControl;->_Boost:I

    const/16 v1, -0x9

    if-gt v0, v1, :cond_0

    return-void

    .line 105
    :cond_0
    iget-object v0, p0, Lmobi/beyondpod/rsscore/VolumeBoostControl;->_VolumeBoostInfo:Landroid/widget/TextSwitcher;

    iget-object v1, p0, Lmobi/beyondpod/rsscore/VolumeBoostControl;->_InMin:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/TextSwitcher;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 106
    iget-object v0, p0, Lmobi/beyondpod/rsscore/VolumeBoostControl;->_VolumeBoostInfo:Landroid/widget/TextSwitcher;

    iget-object v1, p0, Lmobi/beyondpod/rsscore/VolumeBoostControl;->_OutMin:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/TextSwitcher;->setOutAnimation(Landroid/view/animation/Animation;)V

    .line 108
    iget v0, p0, Lmobi/beyondpod/rsscore/VolumeBoostControl;->_Boost:I

    sub-int/2addr v0, p1

    iput v0, p0, Lmobi/beyondpod/rsscore/VolumeBoostControl;->_Boost:I

    .line 110
    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/VolumeBoostControl;->updateScaling()V

    return-void
.end method

.method private increaseSpeed(I)V
    .locals 2

    .line 89
    iget v0, p0, Lmobi/beyondpod/rsscore/VolumeBoostControl;->_Boost:I

    const/16 v1, 0x9

    if-lt v0, v1, :cond_0

    return-void

    .line 92
    :cond_0
    iget-object v0, p0, Lmobi/beyondpod/rsscore/VolumeBoostControl;->_VolumeBoostInfo:Landroid/widget/TextSwitcher;

    iget-object v1, p0, Lmobi/beyondpod/rsscore/VolumeBoostControl;->_InPlus:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/TextSwitcher;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 93
    iget-object v0, p0, Lmobi/beyondpod/rsscore/VolumeBoostControl;->_VolumeBoostInfo:Landroid/widget/TextSwitcher;

    iget-object v1, p0, Lmobi/beyondpod/rsscore/VolumeBoostControl;->_OutPlus:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/TextSwitcher;->setOutAnimation(Landroid/view/animation/Animation;)V

    .line 95
    iget v0, p0, Lmobi/beyondpod/rsscore/VolumeBoostControl;->_Boost:I

    add-int/2addr v0, p1

    iput v0, p0, Lmobi/beyondpod/rsscore/VolumeBoostControl;->_Boost:I

    .line 97
    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/VolumeBoostControl;->updateScaling()V

    return-void
.end method


# virtual methods
.method public getSelectedVolumeBoost()I
    .locals 1

    .line 66
    iget v0, p0, Lmobi/beyondpod/rsscore/VolumeBoostControl;->_Boost:I

    return v0
.end method

.method public initialize(I)V
    .locals 0

    .line 60
    iput p1, p0, Lmobi/beyondpod/rsscore/VolumeBoostControl;->_Boost:I

    .line 61
    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/VolumeBoostControl;->updateScaling()V

    return-void
.end method

.method protected updateScaling()V
    .locals 4

    .line 115
    iget-object v0, p0, Lmobi/beyondpod/rsscore/VolumeBoostControl;->_VolumeBoostInfo:Landroid/widget/TextSwitcher;

    iget-object v1, p0, Lmobi/beyondpod/rsscore/VolumeBoostControl;->_PlaybackSpeedFormat:Ljava/text/DecimalFormat;

    iget v2, p0, Lmobi/beyondpod/rsscore/VolumeBoostControl;->_Boost:I

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextSwitcher;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
