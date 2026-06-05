.class public Lmobi/beyondpod/ui/views/feedsettings/PlaybackSpeedSettings;
.super Lmobi/beyondpod/rsscore/PlaybackSpeedControl;
.source "PlaybackSpeedSettings.java"


# instance fields
.field private _CustomPlaybackSpeed:Landroid/widget/CheckBox;

.field private _PlaybackSpeedControls:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 2

    .line 18
    invoke-direct {p0, p1}, Lmobi/beyondpod/rsscore/PlaybackSpeedControl;-><init>(Landroid/view/View;)V

    const v0, 0x7f09013a

    .line 20
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lmobi/beyondpod/ui/views/feedsettings/PlaybackSpeedSettings;->_CustomPlaybackSpeed:Landroid/widget/CheckBox;

    const v0, 0x7f09013b

    .line 21
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lmobi/beyondpod/ui/views/feedsettings/PlaybackSpeedSettings;->_PlaybackSpeedControls:Landroid/view/View;

    .line 23
    iget-object v0, p0, Lmobi/beyondpod/ui/views/feedsettings/PlaybackSpeedSettings;->_CustomPlaybackSpeed:Landroid/widget/CheckBox;

    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->enableAudioPlugins()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->enableSonicAudioPlugin()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setVisibility(I)V

    const v0, 0x7f09013c

    .line 24
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Lmobi/beyondpod/ui/views/feedsettings/PlaybackSpeedSettings;->_CustomPlaybackSpeed:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->getVisibility()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method static synthetic access$002(Lmobi/beyondpod/ui/views/feedsettings/PlaybackSpeedSettings;I)I
    .locals 0

    .line 11
    iput p1, p0, Lmobi/beyondpod/ui/views/feedsettings/PlaybackSpeedSettings;->_Speed:I

    return p1
.end method

.method static synthetic access$102(Lmobi/beyondpod/ui/views/feedsettings/PlaybackSpeedSettings;I)I
    .locals 0

    .line 11
    iput p1, p0, Lmobi/beyondpod/ui/views/feedsettings/PlaybackSpeedSettings;->_Speed:I

    return p1
.end method


# virtual methods
.method public initialize(I)V
    .locals 1

    .line 30
    invoke-super {p0, p1}, Lmobi/beyondpod/rsscore/PlaybackSpeedControl;->initialize(I)V

    .line 32
    iget-object p1, p0, Lmobi/beyondpod/ui/views/feedsettings/PlaybackSpeedSettings;->_CustomPlaybackSpeed:Landroid/widget/CheckBox;

    iget v0, p0, Lmobi/beyondpod/ui/views/feedsettings/PlaybackSpeedSettings;->_Speed:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 34
    iget-object p1, p0, Lmobi/beyondpod/ui/views/feedsettings/PlaybackSpeedSettings;->_CustomPlaybackSpeed:Landroid/widget/CheckBox;

    new-instance v0, Lmobi/beyondpod/ui/views/feedsettings/PlaybackSpeedSettings$1;

    invoke-direct {v0, p0}, Lmobi/beyondpod/ui/views/feedsettings/PlaybackSpeedSettings$1;-><init>(Lmobi/beyondpod/ui/views/feedsettings/PlaybackSpeedSettings;)V

    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    return-void
.end method

.method protected updateSpeed()V
    .locals 2

    .line 52
    iget-object v0, p0, Lmobi/beyondpod/ui/views/feedsettings/PlaybackSpeedSettings;->_CustomPlaybackSpeed:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lmobi/beyondpod/ui/views/feedsettings/PlaybackSpeedSettings;->_Speed:I

    if-eqz v0, :cond_0

    .line 54
    invoke-super {p0}, Lmobi/beyondpod/rsscore/PlaybackSpeedControl;->updateSpeed()V

    .line 55
    iget-object v0, p0, Lmobi/beyondpod/ui/views/feedsettings/PlaybackSpeedSettings;->_PlaybackSpeedControls:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 57
    :cond_0
    iget-object v0, p0, Lmobi/beyondpod/ui/views/feedsettings/PlaybackSpeedSettings;->_PlaybackSpeedControls:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void
.end method
