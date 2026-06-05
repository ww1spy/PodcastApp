.class public Lmobi/beyondpod/ui/core/ThemeManager;
.super Ljava/lang/Object;
.source "ThemeManager.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static activeThemeId()I
    .locals 2

    .line 13
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->activeTheme()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const v0, 0x7f11018a

    goto :goto_0

    :cond_0
    const v0, 0x7f110189

    :goto_0
    return v0
.end method

.method public static isDarkTheme()Z
    .locals 2

    .line 18
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->activeTheme()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method
