.class public Lmobi/beyondpod/ui/views/notifications/UserNotificationManager;
.super Ljava/lang/Object;
.source "UserNotificationManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmobi/beyondpod/ui/views/notifications/UserNotificationManager$OnContinueListener;
    }
.end annotation


# static fields
.field private static _LastPlaylistDemoTime:J

.field private static _Preferences:Lmobi/beyondpod/ui/views/notifications/NotificationPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 41
    new-instance v0, Lmobi/beyondpod/ui/views/notifications/NotificationPreferences;

    invoke-direct {v0}, Lmobi/beyondpod/ui/views/notifications/NotificationPreferences;-><init>()V

    sput-object v0, Lmobi/beyondpod/ui/views/notifications/UserNotificationManager;->_Preferences:Lmobi/beyondpod/ui/views/notifications/NotificationPreferences;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lmobi/beyondpod/ui/views/notifications/NotificationPreferences;
    .locals 1

    .line 38
    sget-object v0, Lmobi/beyondpod/ui/views/notifications/UserNotificationManager;->_Preferences:Lmobi/beyondpod/ui/views/notifications/NotificationPreferences;

    return-object v0
.end method

.method public static hasEnoughTimePassedSinceLastTip(J)Z
    .locals 7

    .line 214
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->getLastTipNotificationTime()Ljava/util/Date;

    move-result-object v0

    if-nez v0, :cond_0

    .line 216
    invoke-static {}, Lmobi/beyondpod/ui/views/notifications/UserNotificationManager;->recordTipShown()Ljava/util/Date;

    move-result-object v0

    .line 218
    :cond_0
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    sub-long v5, v1, v3

    cmp-long v0, v5, p0

    if-lez v0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isNotificationEnabledFor(I)Z
    .locals 3

    const-string v0, "1"

    .line 199
    sget-object v1, Lmobi/beyondpod/ui/views/notifications/UserNotificationManager;->_Preferences:Lmobi/beyondpod/ui/views/notifications/NotificationPreferences;

    const-string v2, "1"

    invoke-virtual {v1, p0, v2}, Lmobi/beyondpod/ui/views/notifications/NotificationPreferences;->getPreference(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private static openNotification(Landroid/content/Context;ILmobi/beyondpod/ui/views/notifications/UserNotificationManager$OnContinueListener;Z)V
    .locals 5

    if-eqz p0, :cond_7

    const-string v0, "0"

    .line 105
    sget-object v1, Lmobi/beyondpod/ui/views/notifications/UserNotificationManager;->_Preferences:Lmobi/beyondpod/ui/views/notifications/NotificationPreferences;

    const-string v2, "1"

    .line 107
    invoke-virtual {v1, p1, v2}, Lmobi/beyondpod/ui/views/notifications/NotificationPreferences;->getPreference(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_3

    .line 114
    :cond_0
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c004d

    const/4 v2, 0x0

    .line 115
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0900c5

    .line 117
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const/4 v3, 0x0

    if-eqz p1, :cond_3

    const/16 v4, 0x9

    if-eq p1, v4, :cond_2

    const/16 v4, 0xb

    if-eq p1, v4, :cond_1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const v4, 0x7f100176

    .line 137
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :pswitch_1
    const v4, 0x7f100172

    .line 129
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :cond_1
    const v4, 0x7f100171

    .line 133
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :cond_2
    const v4, 0x7f100175

    .line 141
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :cond_3
    const v3, 0x7f100173

    .line 124
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(I)V

    const v3, 0x7f100174

    :goto_0
    const v1, 0x7f0900c7

    .line 145
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    .line 147
    new-instance v4, Lmobi/beyondpod/ui/views/notifications/UserNotificationManager$1;

    invoke-direct {v4, v1, p1, p2}, Lmobi/beyondpod/ui/views/notifications/UserNotificationManager$1;-><init>(Landroid/widget/CheckBox;ILmobi/beyondpod/ui/views/notifications/UserNotificationManager$OnContinueListener;)V

    .line 162
    new-instance p1, Landroid/app/AlertDialog$Builder;

    invoke-direct {p1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    if-lez v3, :cond_4

    .line 164
    invoke-virtual {p0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    :cond_4
    const p1, 0x7f10008c

    if-nez p3, :cond_5

    .line 168
    invoke-virtual {p0, p1, v4}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_1

    .line 172
    :cond_5
    invoke-virtual {p0, p1, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const p1, 0x7f10008a

    .line 173
    invoke-virtual {p0, p1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 182
    :goto_1
    :try_start_0
    invoke-virtual {p0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/AlertDialog;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    if-eqz p2, :cond_6

    .line 187
    invoke-interface {p2}, Lmobi/beyondpod/ui/views/notifications/UserNotificationManager$OnContinueListener;->onContinue()V

    :cond_6
    :goto_2
    return-void

    :cond_7
    :goto_3
    if-eqz p2, :cond_8

    .line 110
    invoke-interface {p2}, Lmobi/beyondpod/ui/views/notifications/UserNotificationManager$OnContinueListener;->onContinue()V

    :cond_8
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static recordTipShown()Ljava/util/Date;
    .locals 1

    .line 223
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 224
    invoke-static {v0}, Lmobi/beyondpod/rsscore/Configuration;->setLastTipNotificationTime(Ljava/util/Date;)V

    return-object v0
.end method

.method public static resetDefaultPrefs()V
    .locals 1

    .line 193
    sget-object v0, Lmobi/beyondpod/ui/views/notifications/UserNotificationManager;->_Preferences:Lmobi/beyondpod/ui/views/notifications/NotificationPreferences;

    invoke-virtual {v0}, Lmobi/beyondpod/ui/views/notifications/NotificationPreferences;->resetDefaultPrefs()V

    .line 194
    sget-object v0, Lmobi/beyondpod/ui/views/notifications/UserNotificationManager;->_Preferences:Lmobi/beyondpod/ui/views/notifications/NotificationPreferences;

    invoke-virtual {v0}, Lmobi/beyondpod/ui/views/notifications/NotificationPreferences;->save()V

    return-void
.end method

.method public static setNotificationPreferenceFor(IZ)V
    .locals 1

    .line 204
    sget-object v0, Lmobi/beyondpod/ui/views/notifications/UserNotificationManager;->_Preferences:Lmobi/beyondpod/ui/views/notifications/NotificationPreferences;

    if-eqz p1, :cond_0

    const-string p1, "1"

    goto :goto_0

    :cond_0
    const-string p1, "0"

    :goto_0
    invoke-virtual {v0, p0, p1}, Lmobi/beyondpod/ui/views/notifications/NotificationPreferences;->setPreference(ILjava/lang/String;)V

    return-void
.end method

.method public static shouldPeekPlaylist()Z
    .locals 8

    const/4 v0, 0x7

    .line 66
    invoke-static {v0}, Lmobi/beyondpod/ui/views/notifications/UserNotificationManager;->isNotificationEnabledFor(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 69
    :cond_0
    invoke-static {}, Lmobi/beyondpod/BeyondPodApplication;->getInstance()Lmobi/beyondpod/BeyondPodApplication;

    move-result-object v0

    invoke-virtual {v0}, Lmobi/beyondpod/BeyondPodApplication;->playList()Lmobi/beyondpod/services/player/PlayList;

    move-result-object v0

    invoke-virtual {v0}, Lmobi/beyondpod/services/player/PlayList;->playlistSize()I

    move-result v0

    if-nez v0, :cond_1

    return v1

    .line 72
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 73
    sget-wide v4, Lmobi/beyondpod/ui/views/notifications/UserNotificationManager;->_LastPlaylistDemoTime:J

    sub-long v6, v2, v4

    const-wide/16 v4, 0x3e8

    cmp-long v0, v6, v4

    if-gez v0, :cond_2

    return v1

    .line 76
    :cond_2
    sput-wide v2, Lmobi/beyondpod/ui/views/notifications/UserNotificationManager;->_LastPlaylistDemoTime:J

    const/4 v0, 0x1

    return v0
.end method

.method public static warnAboutMarkingAllAsReadOrPlayed(Landroid/content/Context;Lmobi/beyondpod/ui/views/notifications/UserNotificationManager$OnContinueListener;Z)V
    .locals 1

    if-eqz p2, :cond_0

    const/4 p2, 0x4

    goto :goto_0

    :cond_0
    const/16 p2, 0xb

    :goto_0
    const/4 v0, 0x1

    .line 60
    invoke-static {p0, p2, p1, v0}, Lmobi/beyondpod/ui/views/notifications/UserNotificationManager;->openNotification(Landroid/content/Context;ILmobi/beyondpod/ui/views/notifications/UserNotificationManager$OnContinueListener;Z)V

    return-void
.end method

.method public static warnAboutPlaybackInExternalPlayer(Landroid/content/Context;Lmobi/beyondpod/ui/views/notifications/UserNotificationManager$OnContinueListener;)V
    .locals 2

    .line 48
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->playerIntegrationType()I

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 51
    invoke-interface {p1}, Lmobi/beyondpod/ui/views/notifications/UserNotificationManager$OnContinueListener;->onContinue()V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 55
    invoke-static {p0, v0, p1, v1}, Lmobi/beyondpod/ui/views/notifications/UserNotificationManager;->openNotification(Landroid/content/Context;ILmobi/beyondpod/ui/views/notifications/UserNotificationManager$OnContinueListener;Z)V

    return-void
.end method

.method public static warnAboutStartEpisodeDownload(Landroid/content/Context;Lmobi/beyondpod/ui/views/notifications/UserNotificationManager$OnContinueListener;)V
    .locals 2

    .line 82
    invoke-static {}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->isWiFiConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 84
    invoke-interface {p1}, Lmobi/beyondpod/ui/views/notifications/UserNotificationManager$OnContinueListener;->onContinue()V

    return-void

    :cond_0
    const/16 v0, 0x9

    const/4 v1, 0x1

    .line 88
    invoke-static {p0, v0, p1, v1}, Lmobi/beyondpod/ui/views/notifications/UserNotificationManager;->openNotification(Landroid/content/Context;ILmobi/beyondpod/ui/views/notifications/UserNotificationManager$OnContinueListener;Z)V

    return-void
.end method

.method public static warnAboutStartUpdateAndDownloadOnMobile(Landroid/content/Context;Lmobi/beyondpod/ui/views/notifications/UserNotificationManager$OnContinueListener;)V
    .locals 2

    .line 93
    invoke-static {}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->isWiFiConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 95
    invoke-interface {p1}, Lmobi/beyondpod/ui/views/notifications/UserNotificationManager$OnContinueListener;->onContinue()V

    return-void

    :cond_0
    const/4 v0, 0x5

    const/4 v1, 0x1

    .line 99
    invoke-static {p0, v0, p1, v1}, Lmobi/beyondpod/ui/views/notifications/UserNotificationManager;->openNotification(Landroid/content/Context;ILmobi/beyondpod/ui/views/notifications/UserNotificationManager$OnContinueListener;Z)V

    return-void
.end method
