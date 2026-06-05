.class public Lmobi/beyondpod/ui/views/notifications/NotificationPreferences;
.super Ljava/lang/Object;
.source "NotificationPreferences.java"


# static fields
.field public static final NO:Ljava/lang/String; = "0"

.field public static final SHOW_GUIDED_TOUR:I = 0x1

.field public static final SHOW_GUIDED_TOUR_VERSION_UPGRADE:I = 0x2

.field public static final TIP_HOW_TO_EXPAND_CATEGORY:I = 0x10

.field public static final TIP_HOW_TO_MULTI_SELECT:I = 0x12

.field public static final TIP_HOW_TO_SELECT_COMPACT_CARD:I = 0x11

.field public static final TIP_HOW_TO_USE_DRAG_DROP_CATEGORY:I = 0x8

.field public static final TIP_HOW_TO_USE_DRAG_DROP_PLAYLIST:I = 0x6

.field public static final TIP_INTRODUCE_CHROMECAST:I = 0xf

.field public static final TIP_INTRODUCE_SMART_PLAY:I = 0x13

.field public static final TIP_NOW_TO_EXPAND_PLAYER:I = 0xc

.field public static final TIP_NOW_TO_USE_SMART_PLAY:I = 0xd

.field public static final TIP_TAP_TO_ADD_REMOVE_PLAYLIST:I = 0x7

.field public static final WARN_INSTALLED_ON_SD_CARD:I = 0x3

.field public static final WARN_MARK_ALL_PLAYED:I = 0xb

.field public static final WARN_MARK_ALL_READ:I = 0x4

.field public static final WARN_PLAY_EXTERNAL_PLAYER:I = 0x0

.field public static final WARN_REPLACE_PLAYLIST:I = 0xa

.field public static final WARN_START_EPISODE_DOWNLOAD:I = 0x9

.field public static final WARN_START_UPDATE_DOWNLOAD:I = 0x5

.field public static final WARN_TRIAL_EXPIRED:I = 0xe

.field public static final YES:Ljava/lang/String; = "1"


# instance fields
.field private _Prefs:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x14

    .line 37
    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lmobi/beyondpod/ui/views/notifications/NotificationPreferences;->_Prefs:[Ljava/lang/String;

    .line 41
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/notifications/NotificationPreferences;->resetDefaultPrefs()V

    .line 43
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->userNotificationPreferences()Ljava/lang/String;

    move-result-object v0

    .line 44
    invoke-static {v0}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "\\|"

    .line 46
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 47
    :goto_0
    array-length v2, v0

    if-eq v1, v2, :cond_1

    .line 49
    iget-object v2, p0, Lmobi/beyondpod/ui/views/notifications/NotificationPreferences;->_Prefs:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 50
    iget-object v2, p0, Lmobi/beyondpod/ui/views/notifications/NotificationPreferences;->_Prefs:[Ljava/lang/String;

    aget-object v3, v0, v1

    aput-object v3, v2, v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method getPreference(ILjava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 94
    iget-object v0, p0, Lmobi/beyondpod/ui/views/notifications/NotificationPreferences;->_Prefs:[Ljava/lang/String;

    array-length v0, v0

    if-ge p1, v0, :cond_0

    .line 95
    iget-object p2, p0, Lmobi/beyondpod/ui/views/notifications/NotificationPreferences;->_Prefs:[Ljava/lang/String;

    aget-object p1, p2, p1

    return-object p1

    :cond_0
    return-object p2
.end method

.method public resetDefaultPrefs()V
    .locals 3

    .line 58
    iget-object v0, p0, Lmobi/beyondpod/ui/views/notifications/NotificationPreferences;->_Prefs:[Ljava/lang/String;

    const-string v1, "1"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 59
    iget-object v0, p0, Lmobi/beyondpod/ui/views/notifications/NotificationPreferences;->_Prefs:[Ljava/lang/String;

    const-string v1, "0"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 60
    iget-object v0, p0, Lmobi/beyondpod/ui/views/notifications/NotificationPreferences;->_Prefs:[Ljava/lang/String;

    const-string v1, "0"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 61
    iget-object v0, p0, Lmobi/beyondpod/ui/views/notifications/NotificationPreferences;->_Prefs:[Ljava/lang/String;

    const-string v1, "1"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 62
    iget-object v0, p0, Lmobi/beyondpod/ui/views/notifications/NotificationPreferences;->_Prefs:[Ljava/lang/String;

    const-string v1, "1"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 63
    iget-object v0, p0, Lmobi/beyondpod/ui/views/notifications/NotificationPreferences;->_Prefs:[Ljava/lang/String;

    const-string v1, "1"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 64
    iget-object v0, p0, Lmobi/beyondpod/ui/views/notifications/NotificationPreferences;->_Prefs:[Ljava/lang/String;

    const-string v1, "1"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 65
    iget-object v0, p0, Lmobi/beyondpod/ui/views/notifications/NotificationPreferences;->_Prefs:[Ljava/lang/String;

    const-string v1, "1"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 66
    iget-object v0, p0, Lmobi/beyondpod/ui/views/notifications/NotificationPreferences;->_Prefs:[Ljava/lang/String;

    const-string v1, "1"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    .line 67
    iget-object v0, p0, Lmobi/beyondpod/ui/views/notifications/NotificationPreferences;->_Prefs:[Ljava/lang/String;

    const-string v1, "1"

    const/16 v2, 0x9

    aput-object v1, v0, v2

    .line 68
    iget-object v0, p0, Lmobi/beyondpod/ui/views/notifications/NotificationPreferences;->_Prefs:[Ljava/lang/String;

    const-string v1, "1"

    const/16 v2, 0xa

    aput-object v1, v0, v2

    .line 69
    iget-object v0, p0, Lmobi/beyondpod/ui/views/notifications/NotificationPreferences;->_Prefs:[Ljava/lang/String;

    const-string v1, "1"

    const/16 v2, 0xb

    aput-object v1, v0, v2

    .line 70
    iget-object v0, p0, Lmobi/beyondpod/ui/views/notifications/NotificationPreferences;->_Prefs:[Ljava/lang/String;

    const-string v1, "1"

    const/16 v2, 0xc

    aput-object v1, v0, v2

    .line 71
    iget-object v0, p0, Lmobi/beyondpod/ui/views/notifications/NotificationPreferences;->_Prefs:[Ljava/lang/String;

    const-string v1, "1"

    const/16 v2, 0xd

    aput-object v1, v0, v2

    .line 72
    iget-object v0, p0, Lmobi/beyondpod/ui/views/notifications/NotificationPreferences;->_Prefs:[Ljava/lang/String;

    const-string v1, "1"

    const/16 v2, 0xe

    aput-object v1, v0, v2

    .line 73
    iget-object v0, p0, Lmobi/beyondpod/ui/views/notifications/NotificationPreferences;->_Prefs:[Ljava/lang/String;

    const-string v1, "1"

    const/16 v2, 0xf

    aput-object v1, v0, v2

    .line 74
    iget-object v0, p0, Lmobi/beyondpod/ui/views/notifications/NotificationPreferences;->_Prefs:[Ljava/lang/String;

    const-string v1, "1"

    const/16 v2, 0x10

    aput-object v1, v0, v2

    .line 75
    iget-object v0, p0, Lmobi/beyondpod/ui/views/notifications/NotificationPreferences;->_Prefs:[Ljava/lang/String;

    const-string v1, "1"

    const/16 v2, 0x11

    aput-object v1, v0, v2

    .line 76
    iget-object v0, p0, Lmobi/beyondpod/ui/views/notifications/NotificationPreferences;->_Prefs:[Ljava/lang/String;

    const-string v1, "1"

    const/16 v2, 0x12

    aput-object v1, v0, v2

    .line 77
    iget-object v0, p0, Lmobi/beyondpod/ui/views/notifications/NotificationPreferences;->_Prefs:[Ljava/lang/String;

    const-string v1, "1"

    const/16 v2, 0x13

    aput-object v1, v0, v2

    return-void
.end method

.method public save()V
    .locals 6

    const-string v0, ""

    .line 84
    iget-object v1, p0, Lmobi/beyondpod/ui/views/notifications/NotificationPreferences;->_Prefs:[Ljava/lang/String;

    const/4 v2, 0x0

    array-length v3, v1

    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v4, v1, v2

    .line 86
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "|"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 89
    :cond_0
    invoke-static {v0}, Lmobi/beyondpod/rsscore/Configuration;->setUserNotificationPreferences(Ljava/lang/String;)V

    return-void
.end method

.method setPreference(ILjava/lang/String;)V
    .locals 1

    .line 102
    iget-object v0, p0, Lmobi/beyondpod/ui/views/notifications/NotificationPreferences;->_Prefs:[Ljava/lang/String;

    array-length v0, v0

    if-ge p1, v0, :cond_0

    .line 104
    iget-object v0, p0, Lmobi/beyondpod/ui/views/notifications/NotificationPreferences;->_Prefs:[Ljava/lang/String;

    aput-object p2, v0, p1

    .line 105
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/notifications/NotificationPreferences;->save()V

    :cond_0
    return-void
.end method
