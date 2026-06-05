.class public Lmobi/beyondpod/rsscore/ConfigurationHD;
.super Ljava/lang/Object;
.source "ConfigurationHD.java"


# static fields
.field private static _playerDismissedByUser:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isPlayerDismissedByUser()Z
    .locals 1

    .line 28
    sget-boolean v0, Lmobi/beyondpod/rsscore/ConfigurationHD;->_playerDismissedByUser:Z

    return v0
.end method

.method public static setPlayerDismissedByUser(Z)V
    .locals 0

    .line 33
    sput-boolean p0, Lmobi/beyondpod/rsscore/ConfigurationHD;->_playerDismissedByUser:Z

    return-void
.end method
