.class public Lmobi/beyondpod/rsscore/PlaybackSpeedPreference;
.super Landroid/preference/DialogPreference;
.source "PlaybackSpeedPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmobi/beyondpod/rsscore/PlaybackSpeedPreference$SavedState;
    }
.end annotation


# instance fields
.field _DefaultSpeed:I

.field _PlaybackSpeed:Lmobi/beyondpod/rsscore/PlaybackSpeedControl;

.field _Speed:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 26
    invoke-direct {p0, p1, p2}, Landroid/preference/DialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const p1, 0x7f0c00a5

    .line 27
    invoke-virtual {p0, p1}, Lmobi/beyondpod/rsscore/PlaybackSpeedPreference;->setDialogLayoutResource(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 20
    invoke-direct {p0, p1, p2, p3}, Landroid/preference/DialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const p1, 0x7f0c00a5

    .line 21
    invoke-virtual {p0, p1}, Lmobi/beyondpod/rsscore/PlaybackSpeedPreference;->setDialogLayoutResource(I)V

    return-void
.end method


# virtual methods
.method protected onBindDialogView(Landroid/view/View;)V
    .locals 1

    .line 55
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onBindDialogView(Landroid/view/View;)V

    .line 56
    iget-object p1, p0, Lmobi/beyondpod/rsscore/PlaybackSpeedPreference;->_PlaybackSpeed:Lmobi/beyondpod/rsscore/PlaybackSpeedControl;

    iget v0, p0, Lmobi/beyondpod/rsscore/PlaybackSpeedPreference;->_Speed:I

    invoke-virtual {p1, v0}, Lmobi/beyondpod/rsscore/PlaybackSpeedControl;->initialize(I)V

    return-void
.end method

.method protected onCreateDialogView()Landroid/view/View;
    .locals 2

    .line 33
    invoke-super {p0}, Landroid/preference/DialogPreference;->onCreateDialogView()Landroid/view/View;

    move-result-object v0

    .line 34
    new-instance v1, Lmobi/beyondpod/rsscore/PlaybackSpeedControl;

    invoke-direct {v1, v0}, Lmobi/beyondpod/rsscore/PlaybackSpeedControl;-><init>(Landroid/view/View;)V

    iput-object v1, p0, Lmobi/beyondpod/rsscore/PlaybackSpeedPreference;->_PlaybackSpeed:Lmobi/beyondpod/rsscore/PlaybackSpeedControl;

    const/4 v1, 0x1

    .line 35
    invoke-virtual {p0, v1}, Lmobi/beyondpod/rsscore/PlaybackSpeedPreference;->setPersistent(Z)V

    return-object v0
.end method

.method protected onDialogClosed(Z)V
    .locals 1

    .line 62
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onDialogClosed(Z)V

    if-eqz p1, :cond_0

    .line 65
    iget-object p1, p0, Lmobi/beyondpod/rsscore/PlaybackSpeedPreference;->_PlaybackSpeed:Lmobi/beyondpod/rsscore/PlaybackSpeedControl;

    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/PlaybackSpeedControl;->getSelectedSpeed()I

    move-result p1

    int-to-float p1, p1

    const/high16 v0, 0x42c80000    # 100.0f

    div-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object p1

    .line 66
    invoke-virtual {p0, p1}, Lmobi/beyondpod/rsscore/PlaybackSpeedPreference;->callChangeListener(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 68
    invoke-virtual {p0, p1}, Lmobi/beyondpod/rsscore/PlaybackSpeedPreference;->persistString(Ljava/lang/String;)Z

    .line 69
    iget-object p1, p0, Lmobi/beyondpod/rsscore/PlaybackSpeedPreference;->_PlaybackSpeed:Lmobi/beyondpod/rsscore/PlaybackSpeedControl;

    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/PlaybackSpeedControl;->getSelectedSpeed()I

    move-result p1

    iput p1, p0, Lmobi/beyondpod/rsscore/PlaybackSpeedPreference;->_Speed:I

    iput p1, p0, Lmobi/beyondpod/rsscore/PlaybackSpeedPreference;->_DefaultSpeed:I

    goto :goto_0

    .line 72
    :cond_0
    iget p1, p0, Lmobi/beyondpod/rsscore/PlaybackSpeedPreference;->_DefaultSpeed:I

    iput p1, p0, Lmobi/beyondpod/rsscore/PlaybackSpeedPreference;->_Speed:I

    :cond_1
    :goto_0
    return-void
.end method

.method protected onGetDefaultValue(Landroid/content/res/TypedArray;I)Ljava/lang/Object;
    .locals 0

    .line 42
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2

    if-eqz p1, :cond_1

    .line 90
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lmobi/beyondpod/rsscore/PlaybackSpeedPreference$SavedState;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 97
    :cond_0
    check-cast p1, Lmobi/beyondpod/rsscore/PlaybackSpeedPreference$SavedState;

    .line 98
    iget v0, p1, Lmobi/beyondpod/rsscore/PlaybackSpeedPreference$SavedState;->value:I

    iput v0, p0, Lmobi/beyondpod/rsscore/PlaybackSpeedPreference;->_Speed:I

    .line 99
    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/PlaybackSpeedPreference$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object p1

    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void

    .line 93
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .line 78
    invoke-super {p0}, Landroid/preference/DialogPreference;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 79
    iget-object v1, p0, Lmobi/beyondpod/rsscore/PlaybackSpeedPreference;->_PlaybackSpeed:Lmobi/beyondpod/rsscore/PlaybackSpeedControl;

    if-nez v1, :cond_0

    return-object v0

    .line 82
    :cond_0
    new-instance v1, Lmobi/beyondpod/rsscore/PlaybackSpeedPreference$SavedState;

    invoke-direct {v1, v0}, Lmobi/beyondpod/rsscore/PlaybackSpeedPreference$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 83
    iget-object v0, p0, Lmobi/beyondpod/rsscore/PlaybackSpeedPreference;->_PlaybackSpeed:Lmobi/beyondpod/rsscore/PlaybackSpeedControl;

    invoke-virtual {v0}, Lmobi/beyondpod/rsscore/PlaybackSpeedControl;->getSelectedSpeed()I

    move-result v0

    iput v0, v1, Lmobi/beyondpod/rsscore/PlaybackSpeedPreference$SavedState;->value:I

    return-object v1
.end method

.method protected onSetInitialValue(ZLjava/lang/Object;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 48
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p2}, Lmobi/beyondpod/rsscore/PlaybackSpeedPreference;->getPersistedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, p2

    check-cast p1, Ljava/lang/String;

    :goto_0
    const/high16 p2, 0x3f800000    # 1.0f

    .line 49
    invoke-static {p1, p2}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->safeParseFloat(Ljava/lang/String;F)F

    move-result p1

    const/high16 p2, 0x42c80000    # 100.0f

    mul-float/2addr p1, p2

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    iput p1, p0, Lmobi/beyondpod/rsscore/PlaybackSpeedPreference;->_DefaultSpeed:I

    iput p1, p0, Lmobi/beyondpod/rsscore/PlaybackSpeedPreference;->_Speed:I

    return-void
.end method
