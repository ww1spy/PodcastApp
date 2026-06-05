.class public Lmobi/beyondpod/ui/views/player/charms/CharmSleepTimerPopUp;
.super Lmobi/beyondpod/ui/views/player/charms/CharmPopUpBase;
.source "CharmSleepTimerPopUp.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmobi/beyondpod/ui/views/player/charms/CharmSleepTimerPopUp$SleepTimeSelectedListener;
    }
.end annotation


# instance fields
.field private _SleepClickListener:Landroid/view/View$OnClickListener;

.field private _SleepTimeListener:Lmobi/beyondpod/ui/views/player/charms/CharmSleepTimerPopUp$SleepTimeSelectedListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lmobi/beyondpod/ui/views/player/charms/CharmSleepTimerPopUp$SleepTimeSelectedListener;F)V
    .locals 7

    const p3, 0x7f0c00a6

    .line 41
    invoke-direct {p0, p1, p3, p2}, Lmobi/beyondpod/ui/views/player/charms/CharmPopUpBase;-><init>(Landroid/content/Context;ILmobi/beyondpod/ui/views/player/charms/CharmPopUpBase$CharmListener;)V

    .line 103
    new-instance p1, Lmobi/beyondpod/ui/views/player/charms/CharmSleepTimerPopUp$1;

    invoke-direct {p1, p0}, Lmobi/beyondpod/ui/views/player/charms/CharmSleepTimerPopUp$1;-><init>(Lmobi/beyondpod/ui/views/player/charms/CharmSleepTimerPopUp;)V

    iput-object p1, p0, Lmobi/beyondpod/ui/views/player/charms/CharmSleepTimerPopUp;->_SleepClickListener:Landroid/view/View$OnClickListener;

    .line 43
    iput-object p2, p0, Lmobi/beyondpod/ui/views/player/charms/CharmSleepTimerPopUp;->_SleepTimeListener:Lmobi/beyondpod/ui/views/player/charms/CharmSleepTimerPopUp$SleepTimeSelectedListener;

    .line 45
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/player/charms/CharmSleepTimerPopUp;->getContentView()Landroid/view/View;

    move-result-object p1

    const/4 p2, 0x5

    .line 47
    new-array p3, p2, [I

    fill-array-data p3, :array_0

    .line 48
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->playerSleepTimeouts()[I

    move-result-object v0

    const/4 v1, 0x4

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 56
    array-length v6, v0

    if-le v6, v4, :cond_4

    .line 58
    aget v6, v0, v4

    aput v6, p3, v5

    .line 59
    array-length v6, v0

    if-le v6, v3, :cond_0

    aget v6, v0, v3

    goto :goto_0

    :cond_0
    move v6, v5

    :goto_0
    aput v6, p3, v4

    .line 60
    array-length v6, v0

    if-le v6, v2, :cond_1

    aget v6, v0, v2

    goto :goto_1

    :cond_1
    move v6, v5

    :goto_1
    aput v6, p3, v3

    .line 61
    array-length v6, v0

    if-le v6, v1, :cond_2

    aget v6, v0, v1

    goto :goto_2

    :cond_2
    move v6, v5

    :goto_2
    aput v6, p3, v2

    .line 62
    array-length v6, v0

    if-le v6, p2, :cond_3

    aget p2, v0, p2

    goto :goto_3

    :cond_3
    move p2, v5

    :goto_3
    aput p2, p3, v1

    :cond_4
    const p2, 0x7f090239

    .line 66
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    const/high16 v0, -0x80000000

    .line 67
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 68
    iget-object v0, p0, Lmobi/beyondpod/ui/views/player/charms/CharmSleepTimerPopUp;->_SleepClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p2, 0x7f09023a

    .line 71
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    .line 72
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 73
    iget-object v0, p0, Lmobi/beyondpod/ui/views/player/charms/CharmSleepTimerPopUp;->_SleepClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p2, 0x7f090234

    .line 76
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    .line 77
    aget v0, p3, v5

    invoke-direct {p0, v0, p2}, Lmobi/beyondpod/ui/views/player/charms/CharmSleepTimerPopUp;->buildSleepButton(ILandroid/widget/Button;)V

    const p2, 0x7f090235

    .line 79
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    .line 80
    aget v0, p3, v4

    invoke-direct {p0, v0, p2}, Lmobi/beyondpod/ui/views/player/charms/CharmSleepTimerPopUp;->buildSleepButton(ILandroid/widget/Button;)V

    const p2, 0x7f090236

    .line 82
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    .line 83
    aget v0, p3, v3

    invoke-direct {p0, v0, p2}, Lmobi/beyondpod/ui/views/player/charms/CharmSleepTimerPopUp;->buildSleepButton(ILandroid/widget/Button;)V

    const p2, 0x7f090237

    .line 85
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    .line 86
    aget v0, p3, v2

    invoke-direct {p0, v0, p2}, Lmobi/beyondpod/ui/views/player/charms/CharmSleepTimerPopUp;->buildSleepButton(ILandroid/widget/Button;)V

    const p2, 0x7f090238

    .line 88
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    .line 89
    aget p2, p3, v1

    invoke-direct {p0, p2, p1}, Lmobi/beyondpod/ui/views/player/charms/CharmSleepTimerPopUp;->buildSleepButton(ILandroid/widget/Button;)V

    return-void

    :array_0
    .array-data 4
        0xf
        0x1e
        0x2d
        0x3c
        0x4b
    .end array-data
.end method

.method static synthetic access$000(Lmobi/beyondpod/ui/views/player/charms/CharmSleepTimerPopUp;)Lmobi/beyondpod/ui/views/player/charms/CharmSleepTimerPopUp$SleepTimeSelectedListener;
    .locals 0

    .line 30
    iget-object p0, p0, Lmobi/beyondpod/ui/views/player/charms/CharmSleepTimerPopUp;->_SleepTimeListener:Lmobi/beyondpod/ui/views/player/charms/CharmSleepTimerPopUp$SleepTimeSelectedListener;

    return-object p0
.end method

.method private buildSleepButton(ILandroid/widget/Button;)V
    .locals 1

    if-lez p1, :cond_0

    const/16 v0, 0x270f

    if-ge p1, v0, :cond_0

    .line 96
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 97
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " min"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 98
    iget-object p1, p0, Lmobi/beyondpod/ui/views/player/charms/CharmSleepTimerPopUp;->_SleepClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p2, p1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x4

    .line 100
    invoke-virtual {p2, p1}, Landroid/widget/Button;->setVisibility(I)V

    :goto_0
    return-void
.end method
