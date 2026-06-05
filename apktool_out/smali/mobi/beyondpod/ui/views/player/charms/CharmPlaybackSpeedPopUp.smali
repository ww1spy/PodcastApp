.class public Lmobi/beyondpod/ui/views/player/charms/CharmPlaybackSpeedPopUp;
.super Lmobi/beyondpod/ui/views/player/charms/CharmPopUpBase;
.source "CharmPlaybackSpeedPopUp.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmobi/beyondpod/ui/views/player/charms/CharmPlaybackSpeedPopUp$PlaybackSpeedSelectedListener;
    }
.end annotation


# instance fields
.field private _Config:Landroid/widget/ImageView;

.field private _CurrSpeed:Landroid/widget/TextView;

.field private _Description:Landroid/widget/TextView;

.field private _IsSettingPresets:Z

.field private _Normal:Landroid/widget/Button;

.field private _PlaybackSpeedFormat:Ljava/text/DecimalFormat;

.field private _PlaybackSpeedSelectedListener:Lmobi/beyondpod/ui/views/player/charms/CharmPlaybackSpeedPopUp$PlaybackSpeedSelectedListener;

.field private _Preset1:Landroid/widget/Button;

.field private _Preset2:Landroid/widget/Button;

.field private _SelectedSpeed:F

.field private _Shake:Landroid/view/animation/Animation;

.field private _SpeedSeeker:Landroid/widget/SeekBar;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lmobi/beyondpod/ui/views/player/charms/CharmPlaybackSpeedPopUp$PlaybackSpeedSelectedListener;F)V
    .locals 2

    const v0, 0x7f0c00a7

    .line 56
    invoke-direct {p0, p1, v0, p2}, Lmobi/beyondpod/ui/views/player/charms/CharmPopUpBase;-><init>(Landroid/content/Context;ILmobi/beyondpod/ui/views/player/charms/CharmPopUpBase$CharmListener;)V

    const/4 v0, 0x0

    .line 48
    iput-boolean v0, p0, Lmobi/beyondpod/ui/views/player/charms/CharmPlaybackSpeedPopUp;->_IsSettingPresets:Z

    .line 50
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "#.#x"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lmobi/beyondpod/ui/views/player/charms/CharmPlaybackSpeedPopUp;->_PlaybackSpeedFormat:Ljava/text/DecimalFormat;

    .line 58
    iput p3, p0, Lmobi/beyondpod/ui/views/player/charms/CharmPlaybackSpeedPopUp;->_SelectedSpeed:F

    const p3, 0x7f010010

    .line 60
    invoke-static {p1, p3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p1

    iput-object p1, p0, Lmobi/beyondpod/ui/views/player/charms/CharmPlaybackSpeedPopUp;->_Shake:Landroid/view/animation/Animation;

    .line 62
    iput-object p2, p0, Lmobi/beyondpod/ui/views/player/charms/CharmPlaybackSpeedPopUp;->_PlaybackSpeedSelectedListener:Lmobi/beyondpod/ui/views/player/charms/CharmPlaybackSpeedPopUp$PlaybackSpeedSelectedListener;

    .line 64
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/player/charms/CharmPlaybackSpeedPopUp;->getContentView()Landroid/view/View;

    move-result-object p1

    const p2, 0x7f09021b

    .line 66
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/SeekBar;

    iput-object p2, p0, Lmobi/beyondpod/ui/views/player/charms/CharmPlaybackSpeedPopUp;->_SpeedSeeker:Landroid/widget/SeekBar;

    const p2, 0x7f0900b0

    .line 67
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lmobi/beyondpod/ui/views/player/charms/CharmPlaybackSpeedPopUp;->_CurrSpeed:Landroid/widget/TextView;

    const p2, 0x7f09008a

    .line 69
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lmobi/beyondpod/ui/views/player/charms/CharmPlaybackSpeedPopUp;->_Description:Landroid/widget/TextView;

    const p2, 0x7f0901da

    .line 71
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    iput-object p2, p0, Lmobi/beyondpod/ui/views/player/charms/CharmPlaybackSpeedPopUp;->_Preset1:Landroid/widget/Button;

    const p2, 0x7f0901db

    .line 72
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    iput-object p2, p0, Lmobi/beyondpod/ui/views/player/charms/CharmPlaybackSpeedPopUp;->_Preset2:Landroid/widget/Button;

    const p2, 0x7f0901dc

    .line 73
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    iput-object p2, p0, Lmobi/beyondpod/ui/views/player/charms/CharmPlaybackSpeedPopUp;->_Normal:Landroid/widget/Button;

    const p2, 0x7f09009c

    .line 74
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lmobi/beyondpod/ui/views/player/charms/CharmPlaybackSpeedPopUp;->_Config:Landroid/widget/ImageView;

    .line 76
    iget-object p1, p0, Lmobi/beyondpod/ui/views/player/charms/CharmPlaybackSpeedPopUp;->_Preset1:Landroid/widget/Button;

    new-instance p2, Lmobi/beyondpod/ui/views/player/charms/CharmPlaybackSpeedPopUp$1;

    invoke-direct {p2, p0}, Lmobi/beyondpod/ui/views/player/charms/CharmPlaybackSpeedPopUp$1;-><init>(Lmobi/beyondpod/ui/views/player/charms/CharmPlaybackSpeedPopUp;)V

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 93
    iget-object p1, p0, Lmobi/beyondpod/ui/views/player/charms/CharmPlaybackSpeedPopUp;->_Preset2:Landroid/widget/Button;

    new-instance p2, Lmobi/beyondpod/ui/views/player/charms/CharmPlaybackSpeedPopUp$2;

    invoke-direct {p2, p0}, Lmobi/beyondpod/ui/views/player/charms/CharmPlaybackSpeedPopUp$2;-><init>(Lmobi/beyondpod/ui/views/player/charms/CharmPlaybackSpeedPopUp;)V

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 110
    iget-object p1, p0, Lmobi/beyondpod/ui/views/player/charms/CharmPlaybackSpeedPopUp;->_Normal:Landroid/widget/Button;

    new-instance p2, Lmobi/beyondpod/ui/views/player/charms/CharmPlaybackSpeedPopUp$3;

    invoke-direct {p2, p0}, Lmobi/beyondpod/ui/views/player/charms/CharmPlaybackSpeedPopUp$3;-><init>(Lmobi/beyondpod/ui/views/player/charms/CharmPlaybackSpeedPopUp;)V

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 123
    iget-object p1, p0, Lmobi/beyondpod/ui/views/player/charms/CharmPlaybackSpeedPopUp;->_Config:Landroid/widget/ImageView;

    new-instance p2, Lmobi/beyondpod/ui/views/player/charms/CharmPlaybackSpeedPopUp$4;

    invoke-direct {p2, p0}, Lmobi/beyondpod/ui/views/player/charms/CharmPlaybackSpeedPopUp$4;-><init>(Lmobi/beyondpod/ui/views/player/charms/CharmPlaybackSpeedPopUp;)V

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 139
    iget-object p1, p0, Lmobi/beyondpod/ui/views/player/charms/CharmPlaybackSpeedPopUp;->_SpeedSeeker:Landroid/widget/SeekBar;

    const/16 p2, 0x1b

    invoke-virtual {p1, p2}, Landroid/widget/SeekBar;->setMax(I)V

    .line 140
    iget-object p1, p0, Lmobi/beyondpod/ui/views/player/charms/CharmPlaybackSpeedPopUp;->_SpeedSeeker:Landroid/widget/SeekBar;

    invoke-virtual {p1, p2}, Landroid/widget/SeekBar;->setSecondaryProgress(I)V

    .line 142
    iget-object p1, p0, Lmobi/beyondpod/ui/views/player/charms/CharmPlaybackSpeedPopUp;->_SpeedSeeker:Landroid/widget/SeekBar;

    new-instance p2, Lmobi/beyondpod/ui/views/player/charms/CharmPlaybackSpeedPopUp$5;

    invoke-direct {p2, p0}, Lmobi/beyondpod/ui/views/player/charms/CharmPlaybackSpeedPopUp$5;-><init>(Lmobi/beyondpod/ui/views/player/charms/CharmPlaybackSpeedPopUp;)V

    invoke-virtual {p1, p2}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 166
    iget p1, p0, Lmobi/beyondpod/ui/views/player/charms/CharmPlaybackSpeedPopUp;->_SelectedSpeed:F

    invoke-direct {p0, p1}, Lmobi/beyondpod/ui/views/player/charms/CharmPlaybackSpeedPopUp;->updateProgressUI(F)V

    .line 167
    invoke-direct {p0}, Lmobi/beyondpod/ui/views/player/charms/CharmPlaybackSpeedPopUp;->updatePresets()V

    return-void
.end method

.method static synthetic access$000(Lmobi/beyondpod/ui/views/player/charms/CharmPlaybackSpeedPopUp;)Z
    .locals 0

    .line 37
    iget-boolean p0, p0, Lmobi/beyondpod/ui/views/player/charms/CharmPlaybackSpeedPopUp;->_IsSettingPresets:Z

    return p0
.end method

.method static synthetic access$100(Lmobi/beyondpod/ui/views/player/charms/CharmPlaybackSpeedPopUp;)Landroid/widget/SeekBar;
    .locals 0

    .line 37
    iget-object p0, p0, Lmobi/beyondpod/ui/views/player/charms/CharmPlaybackSpeedPopUp;->_SpeedSeeker:Landroid/widget/SeekBar;

    return-object p0
.end method

.method static synthetic access$200(Lmobi/beyondpod/ui/views/player/charms/CharmPlaybackSpeedPopUp;I)F
    .locals 0

    .line 37
    invoke-direct {p0, p1}, Lmobi/beyondpod/ui/views/player/charms/CharmPlaybackSpeedPopUp;->toProgressFloat(I)F

    move-result p0

    return p0
.end method

.method static synthetic access$300(Lmobi/beyondpod/ui/views/player/charms/CharmPlaybackSpeedPopUp;)V
    .locals 0

    .line 37
    invoke-direct {p0}, Lmobi/beyondpod/ui/views/player/charms/CharmPlaybackSpeedPopUp;->stopSettingPresets()V

    return-void
.end method

.method static synthetic access$400(Lmobi/beyondpod/ui/views/player/charms/CharmPlaybackSpeedPopUp;F)V
    .locals 0

    .line 37
    invoke-direct {p0, p1}, Lmobi/beyondpod/ui/views/player/charms/CharmPlaybackSpeedPopUp;->setSpeedTo(F)V

    return-void
.end method

.method static synthetic access$500(Lmobi/beyondpod/ui/views/player/charms/CharmPlaybackSpeedPopUp;)V
    .locals 0

    .line 37
    invoke-direct {p0}, Lmobi/beyondpod/ui/views/player/charms/CharmPlaybackSpeedPopUp;->startSettingPresets()V

    return-void
.end method

.method static synthetic access$600(Lmobi/beyondpod/ui/views/player/charms/CharmPlaybackSpeedPopUp;)F
    .locals 0

    .line 37
    iget p0, p0, Lmobi/beyondpod/ui/views/player/charms/CharmPlaybackSpeedPopUp;->_SelectedSpeed:F

    return p0
.end method

.method static synthetic access$602(Lmobi/beyondpod/ui/views/player/charms/CharmPlaybackSpeedPopUp;F)F
    .locals 0

    .line 37
    iput p1, p0, Lmobi/beyondpod/ui/views/player/charms/CharmPlaybackSpeedPopUp;->_SelectedSpeed:F

    return p1
.end method

.method private fromProgressFloat(F)I
    .locals 1

    const/high16 v0, 0x41200000    # 10.0f

    mul-float/2addr p1, v0

    float-to-int p1, p1

    add-int/lit8 p1, p1, -0x3

    return p1
.end method

.method private setSpeedTo(F)V
    .locals 1

    .line 213
    iget-object v0, p0, Lmobi/beyondpod/ui/views/player/charms/CharmPlaybackSpeedPopUp;->_PlaybackSpeedSelectedListener:Lmobi/beyondpod/ui/views/player/charms/CharmPlaybackSpeedPopUp$PlaybackSpeedSelectedListener;

    if-eqz v0, :cond_0

    .line 214
    iget-object v0, p0, Lmobi/beyondpod/ui/views/player/charms/CharmPlaybackSpeedPopUp;->_PlaybackSpeedSelectedListener:Lmobi/beyondpod/ui/views/player/charms/CharmPlaybackSpeedPopUp$PlaybackSpeedSelectedListener;

    invoke-interface {v0, p1}, Lmobi/beyondpod/ui/views/player/charms/CharmPlaybackSpeedPopUp$PlaybackSpeedSelectedListener;->onPlaybackSpeedSelected(F)V

    .line 216
    :cond_0
    invoke-direct {p0, p1}, Lmobi/beyondpod/ui/views/player/charms/CharmPlaybackSpeedPopUp;->updateProgressUI(F)V

    return-void
.end method

.method private startSettingPresets()V
    .locals 2

    const/4 v0, 0x1

    .line 196
    iput-boolean v0, p0, Lmobi/beyondpod/ui/views/player/charms/CharmPlaybackSpeedPopUp;->_IsSettingPresets:Z

    .line 197
    iget-object v0, p0, Lmobi/beyondpod/ui/views/player/charms/CharmPlaybackSpeedPopUp;->_Normal:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 198
    iget-object v0, p0, Lmobi/beyondpod/ui/views/player/charms/CharmPlaybackSpeedPopUp;->_Config:Landroid/widget/ImageView;

    const v1, 0x7f0800d7

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 199
    iget-object v0, p0, Lmobi/beyondpod/ui/views/player/charms/CharmPlaybackSpeedPopUp;->_Description:Landroid/widget/TextView;

    const v1, 0x7f1002c2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 200
    iget-object v0, p0, Lmobi/beyondpod/ui/views/player/charms/CharmPlaybackSpeedPopUp;->_Preset1:Landroid/widget/Button;

    iget-object v1, p0, Lmobi/beyondpod/ui/views/player/charms/CharmPlaybackSpeedPopUp;->_Shake:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->startAnimation(Landroid/view/animation/Animation;)V

    .line 201
    iget-object v0, p0, Lmobi/beyondpod/ui/views/player/charms/CharmPlaybackSpeedPopUp;->_Preset2:Landroid/widget/Button;

    iget-object v1, p0, Lmobi/beyondpod/ui/views/player/charms/CharmPlaybackSpeedPopUp;->_Shake:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method private stopSettingPresets()V
    .locals 2

    const/4 v0, 0x0

    .line 184
    iput-boolean v0, p0, Lmobi/beyondpod/ui/views/player/charms/CharmPlaybackSpeedPopUp;->_IsSettingPresets:Z

    .line 185
    iget-object v0, p0, Lmobi/beyondpod/ui/views/player/charms/CharmPlaybackSpeedPopUp;->_Description:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 186
    iget-object v0, p0, Lmobi/beyondpod/ui/views/player/charms/CharmPlaybackSpeedPopUp;->_Preset1:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->clearAnimation()V

    .line 187
    iget-object v0, p0, Lmobi/beyondpod/ui/views/player/charms/CharmPlaybackSpeedPopUp;->_Preset2:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->clearAnimation()V

    .line 188
    iget-object v0, p0, Lmobi/beyondpod/ui/views/player/charms/CharmPlaybackSpeedPopUp;->_Normal:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 189
    iget-object v0, p0, Lmobi/beyondpod/ui/views/player/charms/CharmPlaybackSpeedPopUp;->_Config:Landroid/widget/ImageView;

    const v1, 0x7f08011c

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 190
    invoke-direct {p0}, Lmobi/beyondpod/ui/views/player/charms/CharmPlaybackSpeedPopUp;->updatePresets()V

    .line 191
    iget v0, p0, Lmobi/beyondpod/ui/views/player/charms/CharmPlaybackSpeedPopUp;->_SelectedSpeed:F

    invoke-direct {p0, v0}, Lmobi/beyondpod/ui/views/player/charms/CharmPlaybackSpeedPopUp;->updateProgressUI(F)V

    return-void
.end method

.method private toProgressFloat(I)F
    .locals 1

    int-to-float p1, p1

    const/high16 v0, 0x41200000    # 10.0f

    div-float/2addr p1, v0

    const v0, 0x3e99999a    # 0.3f

    add-float/2addr v0, p1

    const/high16 p1, 0x42c80000    # 100.0f

    mul-float/2addr v0, p1

    .line 174
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, p1

    return v0
.end method

.method private updatePresets()V
    .locals 4

    .line 206
    iget-object v0, p0, Lmobi/beyondpod/ui/views/player/charms/CharmPlaybackSpeedPopUp;->_Preset1:Landroid/widget/Button;

    iget-object v1, p0, Lmobi/beyondpod/ui/views/player/charms/CharmPlaybackSpeedPopUp;->_PlaybackSpeedFormat:Ljava/text/DecimalFormat;

    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->playbackSpeed1()F

    move-result v2

    float-to-double v2, v2

    invoke-virtual {v1, v2, v3}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 207
    iget-object v0, p0, Lmobi/beyondpod/ui/views/player/charms/CharmPlaybackSpeedPopUp;->_Preset2:Landroid/widget/Button;

    iget-object v1, p0, Lmobi/beyondpod/ui/views/player/charms/CharmPlaybackSpeedPopUp;->_PlaybackSpeedFormat:Ljava/text/DecimalFormat;

    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->playbackSpeed2()F

    move-result v2

    float-to-double v2, v2

    invoke-virtual {v1, v2, v3}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 208
    iget-object v0, p0, Lmobi/beyondpod/ui/views/player/charms/CharmPlaybackSpeedPopUp;->_Normal:Landroid/widget/Button;

    iget-object v1, p0, Lmobi/beyondpod/ui/views/player/charms/CharmPlaybackSpeedPopUp;->_PlaybackSpeedFormat:Ljava/text/DecimalFormat;

    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->playbackSpeedNormal()F

    move-result v2

    float-to-double v2, v2

    invoke-virtual {v1, v2, v3}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private updateProgressUI(F)V
    .locals 4

    .line 221
    iget-object v0, p0, Lmobi/beyondpod/ui/views/player/charms/CharmPlaybackSpeedPopUp;->_SpeedSeeker:Landroid/widget/SeekBar;

    invoke-direct {p0, p1}, Lmobi/beyondpod/ui/views/player/charms/CharmPlaybackSpeedPopUp;->fromProgressFloat(F)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 222
    iget-object v0, p0, Lmobi/beyondpod/ui/views/player/charms/CharmPlaybackSpeedPopUp;->_CurrSpeed:Landroid/widget/TextView;

    iget-object v1, p0, Lmobi/beyondpod/ui/views/player/charms/CharmPlaybackSpeedPopUp;->_PlaybackSpeedFormat:Ljava/text/DecimalFormat;

    float-to-double v2, p1

    invoke-virtual {v1, v2, v3}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
