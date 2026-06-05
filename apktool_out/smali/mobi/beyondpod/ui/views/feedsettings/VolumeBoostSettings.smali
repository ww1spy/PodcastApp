.class public Lmobi/beyondpod/ui/views/feedsettings/VolumeBoostSettings;
.super Lmobi/beyondpod/rsscore/VolumeBoostControl;
.source "VolumeBoostSettings.java"


# instance fields
.field private _CustomVolumeBoost:Landroid/widget/CheckBox;

.field private _VolumeBoostControls:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 2

    .line 19
    invoke-direct {p0, p1}, Lmobi/beyondpod/rsscore/VolumeBoostControl;-><init>(Landroid/view/View;)V

    const v0, 0x7f09013d

    .line 21
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lmobi/beyondpod/ui/views/feedsettings/VolumeBoostSettings;->_CustomVolumeBoost:Landroid/widget/CheckBox;

    const v0, 0x7f090147

    .line 22
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lmobi/beyondpod/ui/views/feedsettings/VolumeBoostSettings;->_VolumeBoostControls:Landroid/view/View;

    .line 24
    iget-object v0, p0, Lmobi/beyondpod/ui/views/feedsettings/VolumeBoostSettings;->_CustomVolumeBoost:Landroid/widget/CheckBox;

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

    const v0, 0x7f090148

    .line 25
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Lmobi/beyondpod/ui/views/feedsettings/VolumeBoostSettings;->_CustomVolumeBoost:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->getVisibility()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method static synthetic access$000(Lmobi/beyondpod/ui/views/feedsettings/VolumeBoostSettings;)Landroid/view/View;
    .locals 0

    .line 12
    iget-object p0, p0, Lmobi/beyondpod/ui/views/feedsettings/VolumeBoostSettings;->_VolumeBoostControls:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$102(Lmobi/beyondpod/ui/views/feedsettings/VolumeBoostSettings;I)I
    .locals 0

    .line 12
    iput p1, p0, Lmobi/beyondpod/ui/views/feedsettings/VolumeBoostSettings;->_Boost:I

    return p1
.end method

.method static synthetic access$200(Lmobi/beyondpod/ui/views/feedsettings/VolumeBoostSettings;)V
    .locals 0

    .line 12
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/feedsettings/VolumeBoostSettings;->updateScaling()V

    return-void
.end method


# virtual methods
.method public initialize(I)V
    .locals 2

    .line 31
    invoke-super {p0, p1}, Lmobi/beyondpod/rsscore/VolumeBoostControl;->initialize(I)V

    .line 33
    iget-object v0, p0, Lmobi/beyondpod/ui/views/feedsettings/VolumeBoostSettings;->_CustomVolumeBoost:Landroid/widget/CheckBox;

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    move p1, v1

    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 35
    iget-object p1, p0, Lmobi/beyondpod/ui/views/feedsettings/VolumeBoostSettings;->_VolumeBoostControls:Landroid/view/View;

    iget-object v0, p0, Lmobi/beyondpod/ui/views/feedsettings/VolumeBoostSettings;->_CustomVolumeBoost:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lmobi/beyondpod/ui/views/feedsettings/VolumeBoostSettings;->_CustomVolumeBoost:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    const/16 v1, 0x8

    :goto_1
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 37
    iget-object p1, p0, Lmobi/beyondpod/ui/views/feedsettings/VolumeBoostSettings;->_CustomVolumeBoost:Landroid/widget/CheckBox;

    new-instance v0, Lmobi/beyondpod/ui/views/feedsettings/VolumeBoostSettings$1;

    invoke-direct {v0, p0}, Lmobi/beyondpod/ui/views/feedsettings/VolumeBoostSettings$1;-><init>(Lmobi/beyondpod/ui/views/feedsettings/VolumeBoostSettings;)V

    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    return-void
.end method
