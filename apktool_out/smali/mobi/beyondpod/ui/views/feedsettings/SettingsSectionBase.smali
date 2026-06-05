.class public abstract Lmobi/beyondpod/ui/views/feedsettings/SettingsSectionBase;
.super Ljava/lang/Object;
.source "SettingsSectionBase.java"


# instance fields
.field protected _InflatedContent:Landroid/view/View;

.field protected _IsDataLoaded:Z

.field protected _Owner:Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView;

.field protected _StubId:I


# direct methods
.method constructor <init>(Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView;)V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lmobi/beyondpod/ui/views/feedsettings/SettingsSectionBase;->_Owner:Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView;

    return-void
.end method


# virtual methods
.method public focusControl(I)V
    .locals 1

    .line 86
    iget-object v0, p0, Lmobi/beyondpod/ui/views/feedsettings/SettingsSectionBase;->_Owner:Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView;

    invoke-virtual {v0, p1}, Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 88
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    :cond_0
    return-void
.end method

.method abstract hasFeedAddressChanged()Z
.end method

.method public hide()V
    .locals 2

    .line 70
    iget-object v0, p0, Lmobi/beyondpod/ui/views/feedsettings/SettingsSectionBase;->_InflatedContent:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 71
    iget-object v0, p0, Lmobi/beyondpod/ui/views/feedsettings/SettingsSectionBase;->_InflatedContent:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method protected abstract initialize()V
.end method

.method public isDataLoaded()Z
    .locals 1

    .line 81
    iget-boolean v0, p0, Lmobi/beyondpod/ui/views/feedsettings/SettingsSectionBase;->_IsDataLoaded:Z

    return v0
.end method

.method public abstract isURLFeed()Z
.end method

.method public isVisible()Z
    .locals 1

    .line 76
    iget-object v0, p0, Lmobi/beyondpod/ui/views/feedsettings/SettingsSectionBase;->_InflatedContent:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmobi/beyondpod/ui/views/feedsettings/SettingsSectionBase;->_InflatedContent:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public loadFromFeed(Lmobi/beyondpod/rsscore/Feed;)V
    .locals 0

    const/4 p1, 0x1

    .line 41
    iput-boolean p1, p0, Lmobi/beyondpod/ui/views/feedsettings/SettingsSectionBase;->_IsDataLoaded:Z

    return-void
.end method

.method abstract patchFeedUrl(Ljava/lang/String;)V
.end method

.method abstract refresh(Lmobi/beyondpod/rsscore/Feed;)V
.end method

.method public abstract saveToFeed(Lmobi/beyondpod/rsscore/Feed;)V
.end method

.method public show()V
    .locals 2

    .line 54
    iget-object v0, p0, Lmobi/beyondpod/ui/views/feedsettings/SettingsSectionBase;->_InflatedContent:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 55
    iget-object v0, p0, Lmobi/beyondpod/ui/views/feedsettings/SettingsSectionBase;->_InflatedContent:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 58
    :cond_0
    iget-object v0, p0, Lmobi/beyondpod/ui/views/feedsettings/SettingsSectionBase;->_Owner:Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView;

    iget v1, p0, Lmobi/beyondpod/ui/views/feedsettings/SettingsSectionBase;->_StubId:I

    invoke-virtual {v0, v1}, Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    if-eqz v0, :cond_1

    .line 61
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lmobi/beyondpod/ui/views/feedsettings/SettingsSectionBase;->_InflatedContent:Landroid/view/View;

    .line 62
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/feedsettings/SettingsSectionBase;->initialize()V

    .line 63
    iget-object v0, p0, Lmobi/beyondpod/ui/views/feedsettings/SettingsSectionBase;->_Owner:Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView;

    invoke-virtual {v0}, Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public abstract validateControls(Lmobi/beyondpod/rsscore/Feed;)Z
.end method
