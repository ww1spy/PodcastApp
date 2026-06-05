.class public Lmobi/beyondpod/rsscore/Configuration;
.super Ljava/lang/Object;
.source "Configuration.java"


# static fields
.field private static final BEYONDPOD_DATABASE_AUTOBAK:Ljava/lang/String; = "beyondpod.db.autobak"

.field public static final BEYOND_POD_HISTORY_AUTOBAK:Ljava/lang/String; = "BeyondPodHistory.bin.autobak"

.field public static final BEYOND_POD_ITEM_HISTORY_AUTOBAK:Ljava/lang/String; = "BeyondPodItemHistory.bin.autobak"

.field public static final BEYOND_POD_SETTINGS_AUTOBAK:Ljava/lang/String; = "Settings.xml.autobak"

.field public static BP_USER_AGENT:Ljava/lang/String; = "Mozilla/5.0 (Linux; U; en-us; BeyondPod 4)"

.field public static final CONFIG_ERROR_INVALID_BEYONDPOD_ROOT:I = -0x3

.field public static final CONFIG_ERROR_INVALID_PODCAST_ROOT:I = -0x2

.field public static final CONFIG_ERROR_INVALID_SD_CARD_ROOT:I = -0x1

.field public static final CONFIG_ERROR_NONE:I = 0x0

.field public static final CONFIG_ERROR_ROOT_NEEDS_PERMISSION:I = -0x4

.field public static final CONTENT_THEME_BG_COLOR_BLACK:I = -0x1000000

.field public static final CONTENT_THEME_BG_COLOR_SEPIA:I = -0x102443

.field public static final CONTENT_THEME_BG_COLOR_WHITE:I = -0x1

.field public static ConfigurationInitErrorMsg:Ljava/lang/String; = null

.field public static ConfigurationInitErrorType:I = 0x0

.field private static final DEFAULT_CONTENT_VIEW_COLOR:Ljava/lang/String; = "#6699CC"

.field public static final DEFAULT_MAXIMUM_PODCAST_AGE_IN_DAYS:I = 0x1869f

.field public static IE_USER_AGENT:Ljava/lang/String; = "Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.0; .NET CLR 1.0.3705)"

.field private static final INTERNAL_PLAYER_SUPPORTED_EXTENSIONS:Ljava/lang/String; = "3gp,mp4,m4v,h264.mp4,m4a,mp3,mid,xmf,mxmf,rtttl,rtx,ota,imy,ogg,wav,jpg,gif,png,bmp"

.field public static IT_USER_AGENT:Ljava/lang/String; = "iTunes/10.6.1 (Windows; Microsoft Windows 7 Enterprise Edition Service Pack 1 (Build 7601)) AppleWebKit/534.54.16"

.field private static final MAX_RECENT_FEEDS:I = 0x3

.field public static MA_USER_AGENT:Ljava/lang/String; = "Mozilla/5.0 (Linux; U; Android 1.5; en-us; T-Mobile G1 Build/CRB43) AppleWebKit/528.5+ (KHTML, like Gecko) Version/3.1.2 Mobile Safari/525.20.1"

.field public static MO_USER_AGENT:Ljava/lang/String; = "Mozilla/5.0 (Linux; U; Windows NT 6.1; en-us; dream)"

.field private static final PLAY_LIST_BIN_AUTOBAK:Ljava/lang/String; = "PlayList.bin.autobak"

.field public static final SETTINGS_NAME:Ljava/lang/String; = "Settings"

.field public static final SKIP_TO_END_BUTTON_TYPE_HIDDEN:I = 0x3

.field public static final SKIP_TO_END_BUTTON_TYPE_LONG_CLICK:I = 0x2

.field public static final SKIP_TO_END_BUTTON_TYPE_SHORT_CLICK:I = 0x1

.field public static final SMART_PLAY_LIST_AUTOBAK:Ljava/lang/String; = "SmartPlayList.bin.autobak"

.field private static final TAG:Ljava/lang/String; = "Configuration"

.field private static final TAG_MANAGER_CONTAINER_ID:Ljava/lang/String; = "GTM-WXFRNW"

.field public static final TRACK_STATE_AUTOBAK:Ljava/lang/String; = "TrackState.xml.autobak"

.field public static TempFeedHolder:Ljava/util/HashMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/util/UUID;",
            "Lmobi/beyondpod/rsscore/Feed;",
            ">;"
        }
    .end annotation
.end field

.field private static _ActiveFeedCategory:Lmobi/beyondpod/rsscore/categories/FeedCategory; = null

.field private static _BeyondPodBackupManagerBackupRoot:Ljava/io/File; = null

.field private static _BeyondPodPrivateStorageRoot:Ljava/io/File; = null

.field private static _BeyondPodPublicStorageRoot:Ljava/io/File; = null

.field public static _Context:Landroid/content/Context; = null

.field private static _CurrentVersion:Lmobi/beyondpod/rsscore/helpers/Version; = null

.field private static _EnclosureDownloadRootPath:Ljava/lang/String; = null

.field private static _GReaderAuthValue:Ljava/lang/String; = null

.field private static _GReaderCookie:Ljava/lang/String; = null

.field private static _IsExpirationWarningShownInThisSession:Z = false

.field private static _IsFirstRun:Z = false

.field private static _LastSelectedFeed:Lmobi/beyondpod/rsscore/Feed; = null

.field private static _SleepTimes:Ljava/util/regex/Pattern; = null

.field private static _TagManagerContainerHolder:Lcom/google/android/gms/tagmanager/ContainerHolder; = null

.field private static _TagManagerContainerVersion:Ljava/lang/String; = "N/A"

.field private static _UnableToEstablishWiFiConnectionInThisSession:Z = false

.field public static _preferences:Landroid/content/SharedPreferences;

.field static colorRegex:Ljava/util/regex/Pattern;

.field public static contentFontSizes:[Ljava/lang/String;

.field public static contentThemes:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 119
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lmobi/beyondpod/rsscore/Configuration;->TempFeedHolder:Ljava/util/HashMap;

    const-string v0, "\\d+"

    .line 132
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lmobi/beyondpod/rsscore/Configuration;->_SleepTimes:Ljava/util/regex/Pattern;

    const-string v0, "x-large"

    const-string v1, "large"

    const-string v2, "medium"

    const-string v3, "small"

    const-string v4, "x-small"

    .line 891
    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmobi/beyondpod/rsscore/Configuration;->contentFontSizes:[Ljava/lang/String;

    const-string v0, ".theme { background-color: #FFFFFF; color:#000 } a:link {color: #FF6339; text-decoration:none;}"

    const-string v1, ".theme { background-color: #EFDBBD; color:#635142 } a:link {color: #996600;}"

    const-string v2, ".theme { background-color: #000000; color:#A5B2B5 } a:link {color: #FF6339; text-decoration:none;}"

    .line 903
    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmobi/beyondpod/rsscore/Configuration;->contentThemes:[Ljava/lang/String;

    const-string v0, "background-color: (#[A-Z_0-9]*);"

    const/16 v1, 0xa

    .line 918
    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lmobi/beyondpod/rsscore/Configuration;->colorRegex:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static BTNextButtonAction()I
    .locals 5

    .line 1868
    sget-object v0, Lmobi/beyondpod/rsscore/Configuration;->_preferences:Landroid/content/SharedPreferences;

    const-string v1, "BTNextButtonAction"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1870
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->BTRemoteButtonAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x3

    .line 1872
    :goto_0
    invoke-static {}, Lmobi/beyondpod/rsscore/ConfigWriteHelper;->getInstance()Lmobi/beyondpod/rsscore/ConfigWriteHelper;

    move-result-object v0

    sget-object v2, Lmobi/beyondpod/rsscore/Configuration;->_preferences:Landroid/content/SharedPreferences;

    const-string v3, "BTNextButtonAction"

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v2, v3, v4}, Lmobi/beyondpod/rsscore/ConfigWriteHelper;->putString(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    const/4 v1, 0x2

    .line 1875
    :goto_1
    sget-object v0, Lmobi/beyondpod/rsscore/Configuration;->_preferences:Landroid/content/SharedPreferences;

    const-string v2, "BTNextButtonAction"

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->safeParseInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static BTPreviousButtonAction()I
    .locals 5

    .line 1882
    sget-object v0, Lmobi/beyondpod/rsscore/Configuration;->_preferences:Landroid/content/SharedPreferences;

    const-string v1, "BTPreviousButtonAction"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x2

    if-nez v0, :cond_1

    .line 1884
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->BTRemoteButtonAction()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x4

    move v1, v0

    .line 1886
    :goto_0
    invoke-static {}, Lmobi/beyondpod/rsscore/ConfigWriteHelper;->getInstance()Lmobi/beyondpod/rsscore/ConfigWriteHelper;

    move-result-object v0

    sget-object v2, Lmobi/beyondpod/rsscore/Configuration;->_preferences:Landroid/content/SharedPreferences;

    const-string v3, "BTPreviousButtonAction"

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v2, v3, v4}, Lmobi/beyondpod/rsscore/ConfigWriteHelper;->putString(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)V

    .line 1889
    :cond_1
    sget-object v0, Lmobi/beyondpod/rsscore/Configuration;->_preferences:Landroid/content/SharedPreferences;

    const-string v2, "BTPreviousButtonAction"

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->safeParseInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static BTRemoteButtonAction()I
    .locals 3

    .line 1555
    sget-object v0, Lmobi/beyondpod/rsscore/Configuration;->_preferences:Landroid/content/SharedPreferences;

    const-string v1, "BTRemoteButtonAction"

    const-string v2, "1"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->safeParseInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static CDSAllowRemoteEpisodeDeletions()Z
    .locals 3

    .line 2187
    sget-object v0, Lmobi/beyondpod/rsscore/Configuration;->_preferences:Landroid/content/SharedPreferences;

    const-string v1, "CDSAllowRemoteEpisodeDeletions"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static CDSAllowRemoteFeeds()I
    .locals 3

    .line 2197
    sget-object v0, Lmobi/beyondpod/rsscore/Configuration;->_preferences:Landroid/content/SharedPreferences;

    const-string v1, "CDSAllowRemoteFeeds"

    const/4 v2, 0x2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static CDSCustomEndpointPath()Landroid/net/Uri;
    .locals 3

    const-string v0, "CDSEndpoint"

    const/4 v1, 0x0

    .line 2172
    invoke-static {v0, v1}, Lmobi/beyondpod/rsscore/Configuration;->getDebugProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2173
    invoke-static {v0}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "http"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2174
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/beyondpod"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0

    :cond_0
    return-object v1
.end method

.method public static CDSDebugEnabled()Z
    .locals 2

    const-string v0, "CDSEndpoint"

    const/4 v1, 0x0

    .line 2181
    invoke-static {v0, v1}, Lmobi/beyondpod/rsscore/Configuration;->getDebugProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2182
    invoke-static {v0}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public static CDSDeviceID()Ljava/lang/String;
    .locals 3

    .line 2134
    sget-object v0, Lmobi/beyondpod/rsscore/Configuration;->_preferences:Landroid/content/SharedPreferences;

    const-string v1, "CDSDeviceID"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static CDSEnabled()Z
    .locals 3

    .line 2094
    sget-object v0, Lmobi/beyondpod/rsscore/Configuration;->_preferences:Landroid/content/SharedPreferences;

    const-string v1, "CDSEnabled"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static CDSEndpoint()Landroid/net/Uri;
    .locals 1

    .line 2158
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->CDSCustomEndpointPath()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "https://feedsync.beyondpod.mobi/beyondpod"

    .line 2162
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static CDSPassword()Ljava/lang/String;
    .locals 3

    .line 2114
    sget-object v0, Lmobi/beyondpod/rsscore/Configuration;->_preferences:Landroid/content/SharedPreferences;

    const-string v1, "CDSPassword"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static CDSServiceEndpoint()Landroid/net/Uri;
    .locals 2

    .line 2167
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->CDSEndpoint()Landroid/net/Uri;

    move-result-object v0

    const-string v1, "rest"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static CDSSyncFurthestPlayedPositionOnly()Z
    .locals 3

    .line 2207
    sget-object v0, Lmobi/beyondpod/rsscore/Configuration;->_preferences:Landroid/content/SharedPreferences;

    const-string v1, "CDSSyncFurthestPlayedPositionOnly"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static CDSSyncRetryInterval()I
    .locals 3

    .line 2217
    sget-object v0, Lmobi/beyondpod/rsscore/Configuration;->_preferences:Landroid/content/SharedPreferences;

    const-string v1, "CDSSyncRetryInterval"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static CDSToken()Ljava/lang/String;
    .locals 3

    .line 2124
    sget-object v0, Lmobi/beyondpod/rsscore/Configuration;->_preferences:Landroid/content/SharedPreferences;

    const-string v1, "CDSToken"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static CDSTokenExpiration()Ljava/util/Date;
    .locals 5

    .line 2144
    sget-object v0, Lmobi/beyondpod/rsscore/Configuration;->_preferences:Landroid/content/SharedPreferences;

    const-string v1, "CDSTokenExpiration"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    .line 2146
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, v0, v1}, Ljava/util/Date;-><init>(J)V

    return-object v2

    .line 2148
    :cond_0
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    return-object v0
.end method

.method public static CDSUserName()Ljava/lang/String;
    .locals 3

    .line 2104
    sget-object v0, Lmobi/beyondpod/rsscore/Configuration;->_preferences:Landroid/content/SharedPreferences;

    const-string v1, "CDSUserName"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static DBGActionBarScroll()I
    .locals 2

    const-string v0, "ActionBarScroll"

    const-string v1, "1"

    .line 2479
    invoke-static {v0, v1}, Lmobi/beyondpod/rsscore/Configuration;->getDebugProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->safeParseInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static DBGAudioTrackBufferMultiplier()I
    .locals 2

    const-string v0, "ATBuff"

    const-string v1, "4"

    .line 2439
    invoke-static {v0, v1}, Lmobi/beyondpod/rsscore/Configuration;->getDebugProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->safeParseInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static DBGAutoBrowsable()I
    .locals 2

    const-string v0, "AutoBrowsable"

    const-string v1, "0"

    .line 2459
    invoke-static {v0, v1}, Lmobi/beyondpod/rsscore/Configuration;->getDebugProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->safeParseInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static DBGAutoMaxListSize()I
    .locals 2

    const-string v0, "AutoMaxListSize"

    const-string v1, "15"

    .line 2454
    invoke-static {v0, v1}, Lmobi/beyondpod/rsscore/Configuration;->getDebugProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xf

    invoke-static {v0, v1}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->safeParseInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static DBGAutoVerifyCallers()Z
    .locals 2

    const-string v0, "AutoVerifyCallers"

    const-string v1, "1"

    .line 2464
    invoke-static {v0, v1}, Lmobi/beyondpod/rsscore/Configuration;->getDebugProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->safeParseInt(Ljava/lang/String;I)I

    move-result v0

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public static DBGChromecastEnvironment()I
    .locals 2

    const-string v0, "CCEnv"

    const-string v1, "0"

    .line 2424
    invoke-static {v0, v1}, Lmobi/beyondpod/rsscore/Configuration;->getDebugProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->safeParseInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static DBGEnableAds()I
    .locals 2

    const-string v0, "ShowAds"

    const-string v1, "0"

    .line 2429
    invoke-static {v0, v1}, Lmobi/beyondpod/rsscore/Configuration;->getDebugProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->safeParseInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static DBGMaxFeedPosts()I
    .locals 2

    const-string v0, "MaxFeedPosts"

    const-string v1, "3000"

    .line 2419
    invoke-static {v0, v1}, Lmobi/beyondpod/rsscore/Configuration;->getDebugProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xbb8

    invoke-static {v0, v1}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->safeParseInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static DBGShowSettings()I
    .locals 2

    const-string v0, "ShowSettings"

    const-string v1, "0"

    .line 2434
    invoke-static {v0, v1}, Lmobi/beyondpod/rsscore/Configuration;->getDebugProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->safeParseInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private static DBGTagContainerID()Ljava/lang/String;
    .locals 2

    const-string v0, "TagContainer"

    const-string v1, "GTM-WXFRNW"

    .line 2474
    invoke-static {v0, v1}, Lmobi/beyondpod/rsscore/Configuration;->getDebugProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static DBGThrottlePublishPlaybackProgressToWearSeconds()I
    .locals 2

    const-string v0, "ThrottleWear"

    const-string v1, "60"

    .line 2449
    invoke-static {v0, v1}, Lmobi/beyondpod/rsscore/Configuration;->getDebugProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x3c

    invoke-static {v0, v1}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->safeParseInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static DBGUIDebug()I
    .locals 2

    const-string v0, "UIDebug"

    const-string v1, "0"

    .line 2444
    invoke-static {v0, v1}, Lmobi/beyondpod/rsscore/Configuration;->getDebugProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->safeParseInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static DBGUseChromeTabs()Z
    .locals 2

    const-string v0, "UseChromeTabs"

    const-string v1, "1"

    .line 2469
    invoke-static {v0, v1}, Lmobi/beyondpod/rsscore/Configuration;->getDebugProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->safeParseInt(Ljava/lang/String;I)I

    move-result v0

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public static GCMRegistrationId()Ljava/lang/String;
    .locals 4

    .line 2505
    sget-object v0, Lmobi/beyondpod/rsscore/Configuration;->_preferences:Landroid/content/SharedPreferences;

    const-string v1, "GCMRegistrationId"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2506
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, ""

    return-object v0

    .line 2514
    :cond_0
    sget-object v1, Lmobi/beyondpod/rsscore/Configuration;->_preferences:Landroid/content/SharedPreferences;

    const-string v2, "GCMRegistrationAppVersion"

    const/high16 v3, -0x80000000

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 2515
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->currentProductVersionCode()I

    move-result v2

    if-eq v1, v2, :cond_1

    const-string v0, ""

    return-object v0

    :cond_1
    return-object v0
.end method

.method public static GCMSenderID()Ljava/lang/String;
    .locals 1

    const-string v0, "1049497099258"

    return-object v0
.end method

.method public static GReaderAccountName()Ljava/lang/String;
    .locals 3

    .line 1321
    sget-object v0, Lmobi/beyondpod/rsscore/Configuration;->_preferences:Landroid/content/SharedPreferences;

    const-string v1, "GReaderAccountName"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static GReaderAuthValue()Ljava/lang/String;
    .locals 3

    .line 1271
    sget-object v0, Lmobi/beyondpod/rsscore/Configuration;->_GReaderAuthValue:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 1272
    sget-object v0, Lmobi/beyondpod/rsscore/Configuration;->_preferences:Landroid/content/SharedPreferences;

    const-string v1, "GReaderAuthValue"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmobi/beyondpod/rsscore/Configuration;->_GReaderAuthValue:Ljava/lang/String;

    .line 1274
    :cond_0
    sget-object v0, Lmobi/beyondpod/rsscore/Configuration;->_GReaderAuthValue:Ljava/lang/String;

    return-object v0
.end method

.method public static GReaderCookie()Ljava/lang/String;
    .locals 3

    .line 1257
    sget-object v0, Lmobi/beyondpod/rsscore/Configuration;->_GReaderCookie:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 1258
    sget-object v0, Lmobi/beyondpod/rsscore/Configuration;->_preferences:Landroid/content/SharedPreferences;

    const-string v1, "GReaderCookie"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmobi/beyondpod/rsscore/Configuration;->_GReaderCookie:Ljava/lang/String;

    .line 1260
    :cond_0
    sget-object v0, Lmobi/beyondpod/rsscore/Configuration;->_GReaderCookie:Ljava/lang/String;

    return-object v0
.end method

.method public static OAuthAccessToken()Ljava/lang/String;
    .locals 3

    .line 1284
    sget-object v0, Lmobi/beyondpod/rsscore/Configuration;->_preferences:Landroid/content/SharedPreferences;

    const-string v1, "OAuthToken"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static OAuthAccessTokenExpiration()Ljava/util/Date;
    .locals 4

    .line 1309
    sget-object v0, Lmobi/beyondpod/rsscore/Configuration;->_preferences:Landroid/content/SharedPreferences;

    const-string v1, "OAuthAccessTokenExpiration"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 1310
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, v0, v1}, Ljava/util/Date;-><init>(J)V

    return-object v2
.end method

.method public static OAuthRefreshToken()Ljava/lang/String;
    .locals 3

    .line 1304
    sget-object v0, Lmobi/beyondpod/rsscore/Configuration;->_preferences:Landroid/content/SharedPreferences;

    const-string v1, "OAuthRefreshToken"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static OAuthUser()Ljava/lang/String;
    .locals 3

    .line 1294
    sget-object v0, Lmobi/beyondpod/rsscore/Configuration;->_preferences:Landroid/content/SharedPreferences;

    const-string v1, "OAuthUser"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static WRDoubleClickButtonAction()I
    .locals 4

    .line 1903
    sget-object v0, Lmobi/beyondpod/rsscore/Configuration;->_preferences:Landroid/content/SharedPreferences;

    const-string v1, "WRDoubleClickButtonAction"

    const/4 v2, 0x1

    .line 1905
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    .line 1904
    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1903
    invoke-static {v0, v2}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->safeParseInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static WRLongPressButtonAction()I
    .locals 4

    .line 1894
    sget-object v0, Lmobi/beyondpod/rsscore/Configuration;->_preferences:Landroid/content/SharedPreferences;

    const-string v1, "WRLongPressButtonAction"

    const/4 v2, 0x3

    .line 1896
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    .line 1895
    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1894
    invoke-static {v0, v2}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->safeParseInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method static synthetic access$002(Lcom/google/android/gms/tagmanager/ContainerHolder;)Lcom/google/android/gms/tagmanager/ContainerHolder;
    .locals 0

    .line 70
    sput-object p0, Lmobi/beyondpod/rsscore/Configuration;->_TagManagerContainerHolder:Lcom/google/android/gms/tagmanager/ContainerHolder;

    return-object p0
.end method

.method static synthetic access$102(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 70
    sput-object p0, Lmobi/beyondpod/rsscore/Configuration;->_TagManagerContainerVersion:Ljava/lang/String;

    return-object p0
.end method

.method public static actionBarUsesCategoryColor()Z
    .locals 3

    .line 2546
    invoke-static {}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->apiLevel()I

    move-result v0

    const/4 v1, 0x1

    const/16 v2, 0x15

    if-lt v0, v2, :cond_0

    return v1

    :cond_0
    const-string v0, "ABColor"

    const-string v2, "0"

    .line 2549
    invoke-static {v0, v2}, Lmobi/beyondpod/rsscore/Configuration;->getDebugProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->safeParseInt(Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    return v1
.end method

.method public static activeTheme()I
    .locals 3

    .line 2646
    sget-object v0, Lmobi/beyondpod/rsscore/Configuration;->_preferences:Landroid/content/SharedPreferences;

    const-string v1, "ActiveTheme"

    const-string v2, "1"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->safeParseInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static addRecentFeed(Lmobi/beyondpod/rsscore/Feed;)V
    .locals 3

    if-eqz p0, :cond_5

    .line 1168
    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/Feed;->hasPodcasts()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 1171
    :cond_0
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->getRecentFeeds()Ljava/util/LinkedList;

    move-result-object v0

    .line 1173
    invoke-virtual {v0, p0}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1174
    invoke-virtual {v0, p0}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 1176
    :cond_1
    invoke-virtual {v0, p0}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 1178
    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result p0

    const/4 v1, 0x3

    if-le p0, v1, :cond_2

    .line 1179
    invoke-virtual {v0}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    .line 1181
    :cond_2
    new-instance p0, Ljava/lang/StringBuilder;

    const/16 v1, 0x5a

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1182
    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmobi/beyondpod/rsscore/Feed;

    .line 1184
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_3

    const-string v2, "|"

    .line 1185
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1186
    :cond_3
    invoke-virtual {v1}, Lmobi/beyondpod/rsscore/Feed;->id()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1189
    :cond_4
    invoke-static {}, Lmobi/beyondpod/rsscore/ConfigWriteHelper;->getInstance()Lmobi/beyondpod/rsscore/ConfigWriteHelper;

    move-result-object v0

    sget-object v1, Lmobi/beyondpod/rsscore/Configuration;->_preferences:Landroid/content/SharedPreferences;

    const-string v2, "RecentFeedsList"

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, v2, p0}, Lmobi/beyondpod/rsscore/ConfigWriteHelper;->putString(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_5
    :goto_1
    return-void
.end method

.method public static allowCleanupForManualDownloads()Z
    .locals 3

    .line 2022
    sget-object v0, Lmobi/beyondpod/rsscore/Configuration;->_preferences:Landroid/content/SharedPreferences;

    const-string v1, "AllowCleanupForManualDownloads"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static allowEpisodeStreaming()I
    .locals 4

    .line 2378
    sget-object v0, Lmobi/beyondpod/rsscore/Configuration;->_preferences:Landroid/content/SharedPreferences;

    const-string v1, "AllowEpisodeStreaming"

    const/4 v2, 0x0

    .line 2379
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2378
    invoke-static {v0, v2}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->safeParseInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static allowHidingRead()Z
    .locals 3

    .line 2554
    sget-object v0, Lmobi/beyondpod/rsscore/Configuration;->_preferences:Landroid/content/SharedPreferences;

    const-string v1, "AllowHidingRead"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static allowMarginNavigationInFeedItemContentDialog()Z
    .locals 3

    .line 2027
    sget-object v0, Lmobi/beyondpod/rsscore/Configuration;->_preferences:Landroid/content/SharedPreferences;

    const-string v1, "AllowMarginNavigationInFeedItemContentDialog"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static allowPullToRefresh()Z
    .locals 3

    .line 2363
    sget-object v0, Lmobi/beyondpod/rsscore/Configuration;->_preferences:Landroid/content/SharedPreferences;

    const-string v1, "AllowPullToRefresh"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static allowResumeAfterCall()Z
    .locals 3

    .line 1749
    sget-object v0, Lmobi/beyondpod/rsscore/Configuration;->_preferences:Landroid/content/SharedPreferences;

    const-string v1, "AllowResumeAfterCall"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static allowSeekingOfInternetStreams()Z
    .locals 2

    .line 1800
    invoke-static {}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->apiLevel()I

    move-result v0

    const/16 v1, 0x8

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static allowVideosInPlaylist()Z
    .locals 3

    .line 2064
    sget-object v0, Lmobi/beyondpod/rsscore/Configuration;->_preferences:Landroid/content/SharedPreferences;

    const-string v1, "allowVideosInPlaylist"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static androidBackupRestored()I
    .locals 3

    .line 2299
    sget-object v0, Lmobi/beyondpod/rsscore/Configuration;->_preferences:Landroid/content/SharedPreferences;

    const-string v1, "androidBackupRestored"

    const/4 v2, -0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static areSettingsInitialized()Z
    .locals 3

    .line 1376
    sget-object v0, Lmobi/beyondpod/rsscore/Configuration;->_preferences:Landroid/content/SharedPreferences;

    const-string v1, "DefaultSettingsInitialized"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static attachDownloadedPodcastsWhenSharing()Z
    .locals 3

    .line 1499
    sget-object v0, Lmobi/beyondpod/rsscore/Configuration;->_preferences:Landroid/content/SharedPreferences;

    const-string v1, "AttachDownloadedPodcastsWhenSharing"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static autoPlaySmartPlaylists()Z
    .locals 3

    .line 2267
    sget-object v0, Lmobi/beyondpod/rsscore/Configuration;->_preferences:Landroid/content/SharedPreferences;

    const-string v1, "AutoPlaySmartPlaylists"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static autoPlaylistEnabled()Z
    .locals 3

    .line 2262
    sget-object v0, Lmobi/beyondpod/rsscore/Configuration;->_preferences:Landroid/content/SharedPreferences;

    const-string v1, "AutoPlaylistEnabled"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static autoSyncSmartPlay()Z
    .locals 3

    .line 2044
    sget-object v0, Lmobi/beyondpod/rsscore/Configuration;->_preferences:Landroid/content/SharedPreferences;

    const-string v1, "AutoSyncSmartPlay"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static automaticallyCleanPlayedEpisodes()Z
    .locals 3

    .line 2368
    sget-object v0, Lmobi/beyondpod/rsscore/Configuration;->_preferences:Landroid/content/SharedPreferences;

    const-string v1, "AutomaticallyCleanPlayedEpisodes"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static automaticallyReDownloadPartialEpisodes()Z
    .locals 3

    .line 2671
    sget-object v0, Lmobi/beyondpod/rsscore/Configuration;->_preferences:Landroid/content/SharedPreferences;

    const-string v1, "AutomaticallyReDownloadPartialEpisodes"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static backupManagerBackupPath()Ljava/lang/String;
    .locals 1

    .line 387
    sget-object v0, Lmobi/beyondpod/rsscore/Configuration;->_BeyondPodBackupManagerBackupRoot:Ljava/io/File;

    if-nez v0, :cond_0

    .line 388
    sget-object v0, Lmobi/beyondpod/rsscore/Configuration;->_Context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    sput-object v0, Lmobi/beyondpod/rsscore/Configuration;->_BeyondPodBackupManagerBackupRoot:Ljava/io/File;

    .line 390
    :cond_0
    sget-object v0, Lmobi/beyondpod/rsscore/Configuration;->_BeyondPodBackupManagerBackupRoot:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static backupRestoreFileURL()Landroid/net/Uri;
    .locals 1

    const-string v0, "BackupRestore"

    .line 599
    invoke-static {v0}, Lmobi/beyondpod/rsscore/Configuration;->buildHelpURL(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static beyondPodContentUrl()Ljava/lang/String;
    .locals 1

    const-string v0, "content://beyondpodevo.enhanced"

    return-object v0
.end method

.method public static beyondPodPrivateStorageRootPath()Ljava/lang/String;
    .locals 3

    .line 378
    sget-object v0, Lmobi/beyondpod/rsscore/Configuration;->_BeyondPodPrivateStorageRoot:Ljava/io/File;

    if-nez v0, :cond_0

    .line 379
    sget-object v0, Lmobi/beyondpod/rsscore/Configuration;->_Context:Landroid/content/Context;

    const-string v1, "beyondpod"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    sput-object v0, Lmobi/beyondpod/rsscore/Configuration;->_BeyondPodPrivateStorageRoot:Ljava/io/File;

    .line 382
    :cond_0
    sget-object v0, Lmobi/beyondpod/rsscore/Configuration;->_BeyondPodPrivateStorageRoot:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static beyondPodPublicAPIRoot()Ljava/lang/String;
    .locals 1

    const-string v0, "http://www.beyondpod.mobi/api"

    return-object v0
.end method

.method public static beyondPodPublicStorageRootPath()Ljava/lang/String;
    .locals 1

    .line 373
    sget-object v0, Lmobi/beyondpod/rsscore/Configuration;->_BeyondPodPublicStorageRoot:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static beyondPodPublicWebSite()Ljava/lang/String;
    .locals 1

    const-string v0, "http://www.beyondpod.mobi"

    return-object v0
.end method

.method private static buildHelpURL(Ljava/lang/String;)Landroid/net/Uri;
    .locals 6

    const-string v0, "NA"

    .line 564
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UTF8"

    invoke-static {v1, v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    :catch_0
    const-string v1, "NA"

    .line 573
    :try_start_1
    sget-object v2, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    const-string v3, "UTF8"

    invoke-static {v2, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v1, v2

    .line 579
    :catch_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->beyondPodPublicWebSite()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/Android/HelpDispatcher.aspx?t=%s&k=%s&v=%s&l=%s&a=%s&d=%s"

    const/4 v4, 0x6

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p0, v4, v5

    const/4 p0, 0x1

    .line 581
    invoke-static {}, Lmobi/beyondpod/BeyondPodApplication;->getInstance()Lmobi/beyondpod/BeyondPodApplication;

    move-result-object v5

    invoke-virtual {v5}, Lmobi/beyondpod/BeyondPodApplication;->appKind()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, p0

    const/4 p0, 0x2

    .line 582
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->productVersion()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, p0

    const/4 p0, 0x3

    .line 583
    invoke-static {}, Lmobi/beyondpod/rsscore/rss/LicenseManager;->getShortLicenseKind()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, p0

    const/4 p0, 0x4

    aput-object v1, v4, p0

    const/4 p0, 0x5

    aput-object v0, v4, p0

    .line 579
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method public static checkForNetworkConnectivity()Z
    .locals 3

    .line 1844
    sget-object v0, Lmobi/beyondpod/rsscore/Configuration;->_preferences:Landroid/content/SharedPreferences;

    const-string v1, "checkForNetworkConnectivity"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static clearGCMRegistrationId()V
    .locals 4

    .line 2530
    invoke-static {}, Lmobi/beyondpod/rsscore/ConfigWriteHelper;->getInstance()Lmobi/beyondpod/rsscore/ConfigWriteHelper;

    move-result-object v0

    sget-object v1, Lmobi/beyondpod/rsscore/Configuration;->_preferences:Landroid/content/SharedPreferences;

    const-string v2, "GCMRegistrationId"

    const-string v3, ""

    invoke-virtual {v0, v1, v2, v3}, Lmobi/beyondpod/rsscore/ConfigWriteHelper;->putString(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)V

    .line 2531
    invoke-static {}, Lmobi/beyondpod/rsscore/ConfigWriteHelper;->getInstance()Lmobi/beyondpod/rsscore/ConfigWriteHelper;

    move-result-object v0

    sget-object v1, Lmobi/beyondpod/rsscore/Configuration;->_preferences:Landroid/content/SharedPreferences;

    const-string v2, "GCMRegistrationAppVersion"

    const/high16 v3, -0x80000000

    invoke-virtual {v0, v1, v2, v3}, Lmobi/beyondpod/rsscore/ConfigWriteHelper;->putInt(Landroid/content/SharedPreferences;Ljava/lang/String;I)V

    return-void
.end method

.method public static clearIsFirstRun()V
    .locals 1

    const/4 v0, 0x0

    .line 362
    sput-boolean v0, Lmobi/beyondpod/rsscore/Configuration;->_IsFirstRun:Z

    return-void
.end method

.method public static clearStatusNotificationAtTheEndOfUpdate()Z
    .locals 3

    .line 1580
    sget-object v0, Lmobi/beyondpod/rsscore/Configuration;->_preferences:Landroid/content/SharedPreferences;

    const-string v1, "ClearStatusNotificationAtTheEndOfUpdate"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static configureDefaults()V
    .locals 13

    const/4 v0, 0x0

    .line 1332
    invoke-static {v0}, Lmobi/beyondpod/rsscore/Configuration;->setFeedsSortOrder(I)V

    const/4 v1, 0x3

    .line 1333
    invoke-static {v1}, Lmobi/beyondpod/rsscore/Configuration;->setPodcastsSortOrder(I)V

    .line 1334
    invoke-static {v0}, Lmobi/beyondpod/rsscore/Configuration;->setGatherAnalyticsData(Z)V

    .line 1337
    invoke-static {v0}, Lmobi/beyondpod/rsscore/Configuration;->setMediaEndAction(I)V

    .line 1338
    invoke-static {v0}, Lmobi/beyondpod/rsscore/Configuration;->setPlaylistEndAction(I)V

    const/16 v1, 0x1e

    .line 1339
    invoke-static {v1}, Lmobi/beyondpod/rsscore/Configuration;->setForwardSkipInterval(I)V

    const/16 v1, 0xa

    .line 1340
    invoke-static {v1}, Lmobi/beyondpod/rsscore/Configuration;->setBackwardSkipInterval(I)V

    const-string v1, "3gp,mp4,m4v,h264.mp4,m4a,mp3,mid,xmf,mxmf,rtttl,rtx,ota,imy,ogg,wav,jpg,gif,png,bmp"

    .line 1341
    invoke-static {v1}, Lmobi/beyondpod/rsscore/Configuration;->setInternalPlayerSupportedFileExtensions(Ljava/lang/String;)V

    .line 1342
    invoke-static {v0}, Lmobi/beyondpod/rsscore/Configuration;->setSharePodcasts(Z)V

    const/4 v1, 0x1

    .line 1343
    invoke-static {v1}, Lmobi/beyondpod/rsscore/Configuration;->setBTRemoteButtonAction(I)V

    .line 1344
    invoke-static {v1}, Lmobi/beyondpod/rsscore/Configuration;->setEnableHeadsetButton(Z)V

    .line 1345
    invoke-static {v1}, Lmobi/beyondpod/rsscore/Configuration;->setPauseOnHeadsetDisconnect(Z)V

    .line 1346
    invoke-static {v0}, Lmobi/beyondpod/rsscore/Configuration;->setHideUnsupportedFileTypes(Z)V

    .line 1347
    invoke-static {v0}, Lmobi/beyondpod/rsscore/Configuration;->setPlayerIntegrationType(I)V

    const-string v2, "medium"

    .line 1350
    invoke-static {v2}, Lmobi/beyondpod/rsscore/Configuration;->setDefaultDocFontSize(Ljava/lang/String;)V

    .line 1351
    invoke-static {v1}, Lmobi/beyondpod/rsscore/Configuration;->setLoadContentViewImagesAutomatically(Z)V

    .line 1352
    invoke-static {v1}, Lmobi/beyondpod/rsscore/Configuration;->setMarkAsReadOnOpen(I)V

    .line 1353
    invoke-static {v1}, Lmobi/beyondpod/rsscore/Configuration;->setSetAsDownloadedOnMarkRead(Z)V

    .line 1356
    invoke-static {v1}, Lmobi/beyondpod/rsscore/Configuration;->setIsCellularConnectionAllowed(Z)V

    .line 1357
    invoke-static {v0}, Lmobi/beyondpod/rsscore/Configuration;->setTurnWiFiDuringUpdate(Z)V

    .line 1358
    invoke-static {v0}, Lmobi/beyondpod/rsscore/Configuration;->setUpdateOnFeedOpen(Z)V

    .line 1359
    invoke-static {v1}, Lmobi/beyondpod/rsscore/Configuration;->setClearStatusNotificationAtTheEndOfUpdate(Z)V

    .line 1362
    invoke-static {v1}, Lmobi/beyondpod/rsscore/Configuration;->setGlobalDefaultNumberPodcastsToDownload(I)V

    const/4 v0, 0x5

    .line 1363
    invoke-static {v0}, Lmobi/beyondpod/rsscore/Configuration;->setGlobalDefaultKeepAtMostPodcasts(I)V

    .line 1364
    new-instance v0, Lmobi/beyondpod/rsscore/helpers/TimeSpan;

    const-wide/32 v3, 0x1869f

    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x0

    const-wide/16 v9, 0x0

    const-wide/16 v11, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v12}, Lmobi/beyondpod/rsscore/helpers/TimeSpan;-><init>(JJJJJ)V

    invoke-static {v0}, Lmobi/beyondpod/rsscore/Configuration;->setGlobalDefaultMaximumPodcastAge(Lmobi/beyondpod/rsscore/helpers/TimeSpan;)V

    .line 1367
    invoke-static {v1}, Lmobi/beyondpod/rsscore/Configuration;->setAutoPlaylistEnabled(Z)V

    .line 1368
    invoke-static {v1}, Lmobi/beyondpod/rsscore/Configuration;->setRemovePlayedFromPlaylist(Z)V

    .line 1371
    invoke-static {v1}, Lmobi/beyondpod/rsscore/Configuration;->setAreSettingsInitialized(Z)V

    return-void
.end method

.method public static constructBeyondPodRootIn(Ljava/lang/String;)Ljava/io/File;
    .locals 2

    .line 347
    new-instance v0, Ljava/io/File;

    const-string v1, "BeyondPod"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static constructEnclosureDownloadRoot(Ljava/io/File;)Ljava/io/File;
    .locals 2

    .line 352
    new-instance v0, Ljava/io/File;

    const-string v1, "Podcasts"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public static contentTheme()Ljava/lang/String;
    .locals 3

    .line 910
    sget-object v0, Lmobi/beyondpod/rsscore/Configuration;->_preferences:Landroid/content/SharedPreferences;

    const-string v1, "contentTheme"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static contentThemeBackgroundColor()Ljava/lang/Integer;
    .locals 4

    .line 923
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->contentTheme()Ljava/lang/String;

    move-result-object v0

    .line 924
    invoke-static {v0}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return-object v2

    .line 927
    :cond_0
    sget-object v1, Lmobi/beyondpod/rsscore/Configuration;->colorRegex:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 928
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 930
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->groupCount()I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_1

    .line 934
    :try_start_0
    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    return-object v2

    :cond_1
    return-object v2
.end method

.method public static currentAppStore()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public static currentProductVersion()Lmobi/beyondpod/rsscore/helpers/Version;
    .locals 3

    .line 695
    sget-object v0, Lmobi/beyondpod/rsscore/Configuration;->_CurrentVersion:Lmobi/beyondpod/rsscore/helpers/Version;

    if-nez v0, :cond_0

    .line 698
    sget-object v0, Lmobi/beyondpod/rsscore/Configuration;->_Context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x0

    .line 701
    :try_start_0
    invoke-static {}, Lmobi/beyondpod/BeyondPodApplication;->getInstance()Lmobi/beyondpod/BeyondPodApplication;

    move-result-object v2

    invoke-virtual {v2}, Lmobi/beyondpod/BeyondPodApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 702
    new-instance v2, Lmobi/beyondpod/rsscore/helpers/Version;

    invoke-direct {v2, v0}, Lmobi/beyondpod/rsscore/helpers/Version;-><init>(Ljava/lang/String;)V

    sput-object v2, Lmobi/beyondpod/rsscore/Configuration;->_CurrentVersion:Lmobi/beyondpod/rsscore/helpers/Version;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 706
    :catch_0
    new-instance v0, Lmobi/beyondpod/rsscore/helpers/Version;

    invoke-direct {v0, v1, v1, v1, v1}, Lmobi/beyondpod/rsscore/helpers/Version;-><init>(IIII)V

    sput-object v0, Lmobi/beyondpod/rsscore/Configuration;->_CurrentVersion:Lmobi/beyondpod/rsscore/helpers/Version;

    .line 710
    :cond_0
    :goto_0
    sget-object v0, Lmobi/beyondpod/rsscore/Configuration;->_CurrentVersion:Lmobi/beyondpod/rsscore/helpers/Version;

    return-object v0
.end method

.method public static currentProductVersionCode()I
    .locals 3

    const/4 v0, 0x0

    .line 742
    :try_start_0
    sget-object v1, Lmobi/beyondpod/rsscore/Configuration;->_Context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    sget-object v2, Lmobi/beyondpod/rsscore/Configuration;->_Context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    return v0
.end method

.method public static customSDCardLocation()Ljava/lang/String;
    .locals 3

    .line 1231
    sget-object v0, Lmobi/beyondpod/rsscore/Configuration;->_preferences:Landroid/content/SharedPreferences;

    const-string v1, "customSDCardLocation"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static databaseBackupFilePath()Ljava/lang/String;
    .locals 2

    .line 500
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->beyondPodPublicStorageRootPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "beyondpod.db.autobak"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static databaseBackupManagerFilePath()Ljava/lang/String;
    .locals 2

    .line 505
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->backupManagerBackupPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "beyondpod.db.autobak"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static debugDownloadProgress()Z
    .locals 3

    .line 1638
    sget-object v0, Lmobi/beyondpod/rsscore/Configuration;->_preferences:Landroid/content/SharedPreferences;

    const-string v1, "debugDownloadProgress"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static defaultBackupPath()Ljava/lang/String;
    .locals 3

    .line 2282
    sget-object v0, Lmobi/beyondpod/rsscore/Configuration;->_preferences:Landroid/content/SharedPreferences;

    const-string v1, "defaultBackupPath"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2284
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2285
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2286
    invoke-static {v2}, Lmobi/beyondpod/rsscore/Configuration;->setDefaultBackupPath(Ljava/lang/String;)V

    .line 2289
    :cond_0
    sget-object v0, Lmobi/beyondpod/rsscore/Configuration;->_preferences:Landroid/content/SharedPreferences;

    const-string v1, "defaultBackupPath"

    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->defaultBackupsStorageRoot()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static defaultBackupsStorageRoot()Ljava/lang/String;
    .locals 2

    .line 395
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->beyondPodPublicStorageRootPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/Backups"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static defaultDeviceWakeLock()I
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .line 1808
    invoke-static {}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->apiLevel()I

    move-result v0

    const/16 v1, 0x13

    if-le v0, v1, :cond_0

    const/16 v0, 0x20

    goto :goto_0

    :cond_0
    const/4 v0, 0x6

    .line 1812
    :goto_0
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->keepScreenOnWhenUpdatingOverWiFi()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1813
    invoke-static {}, Lmobi/beyondpod/BeyondPodApplication;->isWiFiEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->turnWiFiDuringUpdate()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    const/high16 v1, 0x10000000

    or-int/2addr v0, v1

    return v0

    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method public static defaultDownloadPath()Ljava/lang/String;
    .locals 2

    .line 530
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->beyondPodPublicStorageRootPath()Ljava/lang/String;

    move-result-object v0

    const-string v1, "/Downloads"

    invoke-static {v0, v1}, Lmobi/beyondpod/rsscore/helpers/Path;->combine(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static defaultPlaybackSpeed()F
    .locals 3

    .line 1912
    sget-object v0, Lmobi/beyondpod/rsscore/Configuration;->_preferences:Landroid/content/SharedPreferences;

    const-string v1, "defaultPlaybackSpeed"

    const-string v2, "1.0"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, v1}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->safeParseFloat(Ljava/lang/String;F)F

    move-result v0

    return v0
.end method

.method public static defaultUserAgent()Ljava/lang/String;
    .locals 3

    .line 1214
    sget-object v0, Lmobi/beyondpod/rsscore/Configuration;->_preferences:Landroid/content/SharedPreferences;

    const-string v1, "defaultUserAgent"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1215
    invoke-static {v0}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1216
    sget-object v0, Lmobi/beyondpod/rsscore/Configuration;->BP_USER_AGENT:Ljava/lang/String;

    return-object v0

    :cond_0
    const-string v1, "ie"

    .line 1217
    invoke-static {v1, v0}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->equalsIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1218
    sget-object v0, Lmobi/beyondpod/rsscore/Configuration;->IE_USER_AGENT:Ljava/lang/String;

    return-object v0

    :cond_1
    const-string v1, "mo"

    .line 1219
    invoke-static {v1, v0}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->equalsIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1220
    sget-object v0, Lmobi/beyondpod/rsscore/Configuration;->MO_USER_AGENT:Ljava/lang/String;

    return-object v0

    :cond_2
    const-string v1, "ma"

    .line 1221
    invoke-static {v1, v0}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->equalsIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1222
    sget-object v0, Lmobi/beyondpod/rsscore/Configuration;->MA_USER_AGENT:Ljava/lang/String;

    return-object v0

    :cond_3
    const-string v1, "it"

    .line 1223
    invoke-static {v1, v0}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->equalsIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1224
    sget-object v0, Lmobi/beyondpod/rsscore/Configuration;->IT_USER_AGENT:Ljava/lang/String;

    return-object v0

    :cond_4
    return-object v0
.end method

.method public static defferAutoSyncSmartPlay()Z
    .locals 3

    .line 2049
    sget-object v0, Lmobi/beyondpod/rsscore/Configuration;->_preferences:Landroid/content/SharedPreferences;

    const-string v1, "defferAutoSyncSmartPlay"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static dnsFilePath()Ljava/lang/String;
    .locals 2

    .line 455
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->beyondPodPrivateStorageRootPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/DNSCache.bin"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static downloadEnclosuresOnWiFiOnly()Z
    .locals 3

    .line 1565
    sget-object v0, Lmobi/beyondpod/rsscore/Configuration;->_preferences:Landroid/content/SharedPreferences;

    const-string v1, "DownloadEnclosuresOnWiFiOnly"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static downloadEnclosuresWhenChargingOnly()Z
    .locals 3

    .line 1575
    sget-object v0, Lmobi/beyondpod/rsscore/Configuration;->_preferences:Landroid/content/SharedPreferences;

    const-string v1, "DownloadEnclosuresWhenChargingOnly"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static enableAudioPlugins()Z
    .locals 3

    .line 1954
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->isSpeedAlterationSupportedOnAppStore()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 1957
    :cond_0
    sget-object v0, Lmobi/beyondpod/rsscore/Configuration;->_preferences:Landroid/content/SharedPreferences;

    const-string v1, "EnableAudioPlugins"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static enableBrowserPlugins()Z
    .locals 3

    .line 1489
    sget-object v0, Lmobi/beyondpod/rsscore/Configuration;->_preferences:Landroid/content/SharedPreferences;

    const-string v1, "EnableBrowserPlugins"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static enableFadeInOnPlaybackStart()Z
    .locals 3

    .line 1944
    sget-object v0, Lmobi/beyondpod/rsscore/Configuration;->_preferences:Landroid/content/SharedPreferences;

    const-string v1, "EnableFadeInOnPlaybackStart"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static enableHeadsetButton()Z
    .locals 3

    .line 1416
    sget-object v0, Lmobi/beyondpod/rsscore/Configuration;->_preferences:Landroid/content/SharedPreferences;

    const-string v1, "EnableHeadsetButton"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static enableLoggingInProduction()Z
    .locals 3

    .line 1519
    sget-object v0, Lmobi/beyondpod/rsscore/Configuration;->_preferences:Landroid/content/SharedPreferences;

    const-string v1, "EnableLoggingInProduction"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static enablePresto()Z
    .locals 3

    .line 1949
    sget-object v0, Lmobi/beyondpod/rsscore/Configuration;->_preferences:Landroid/content/SharedPreferences;

    const-string v1, "EnablePresto"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static enableQuickNetworkCheck()Z
    .locals 3

    .line 2405
    sget-object v0, Lmobi/beyondpod/rsscore/Configuration;->_preferences:Landroid/content/SharedPreferences;

    const-string v1, "httpConnectionTimeout"

    const-string v2, "20"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x14

    .line 2407
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->tryParseIntFromString(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-gez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static enableSonicAudioPlugin()Z
    .locals 3

    .line 1972
    sget-object v0, Lmobi/beyondpod/rsscore/Configuration;->_preferences:Landroid/content/SharedPreferences;

    const-string v1, "EnableSonicAudioPlugin"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static enclosureDownloadHistoryBackupFilePath()Ljava/lang/String;
    .locals 2

    .line 465
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->beyondPodPublicStorageRootPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "BeyondPodHistory.bin.autobak"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static enclosureDownloadHistoryBackupManagerFilePath()Ljava/lang/String;
    .locals 2

    .line 470
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->backupManagerBackupPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "BeyondPodHistory.bin.autobak"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static enclosureDownloadHistoryFilePath()Ljava/lang/String;
    .locals 2

    .line 410
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->beyondPodPrivateStorageRootPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/BeyondPodHistory.bin"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static enclosureDownloadQueueFilePath()Ljava/lang/String;
    .locals 2

    .line 415
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->beyondPodPrivateStorageRootPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/EnclosureDownloadQueue.bin"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static enclosureDownloadRoot()Ljava/lang/String;
    .locals 1

    .line 755
    sget-object v0, Lmobi/beyondpod/rsscore/Configuration;->_EnclosureDownloadRootPath:Ljava/lang/String;

    return-object v0
.end method

.method public static episodeCardSize()I
    .locals 3

    .line 2651
    sget-object v0, Lmobi/beyondpod/rsscore/Configuration;->_preferences:Landroid/content/SharedPreferences;

    const-string v1, "episodeCardSize"

    const-string v2, "1"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->safeParseInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static faqFileURL()Landroid/net/Uri;
    .locals 1

    const-string v0, "FAQ"

    .line 604
    invoke-static {v0}, Lmobi/beyondpod/rsscore/Configuration;->buildHelpURL(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static faqIntroSmartPlayURL()Landroid/net/Uri;
    .locals 1

    const-string v0, "FAQSmartPlay"

    .line 634
    invoke-static {v0}, Lmobi/beyondpod/rsscore/Configuration;->buildHelpURL(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static faqLiteProURL()Landroid/net/Uri;
    .locals 1

    const-string v0, "GoPro"

    .line 609
    invoke-static {v0}, Lmobi/beyondpod/rsscore/Configuration;->buildHelpURL(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static faqVideoPlayerHelpURL()Landroid/net/Uri;
    .locals 1

    const-string v0, "FAQVideoPlaybackIssues"

    .line 629
    invoke-static {v0}, Lmobi/beyondpod/rsscore/Configuration;->buildHelpURL(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static feedURLErrorHelpURL(Ljava/lang/String;)Landroid/net/Uri;
    .locals 3

    .line 639
    invoke-static {p0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->safeEncodeUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 640
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->beyondPodPublicWebSite()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/Android/help/FeedRssLookupHelp.aspx?u="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 641
    invoke-static {p0}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string v0, ""

    :cond_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 640
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method public static feedUpdateLogFilePath()Ljava/lang/String;
    .locals 2

    .line 520
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->beyondPodPublicStorageRootPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/FeedUpdateLog.htm"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static feedUpdateQueueFilePath()Ljava/lang/String;
    .locals 2

    .line 460
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->beyondPodPrivateStorageRootPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/FeedUpdateQueue.bin"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static findAndroidReportedExternalStorage()Ljava/io/File;
    .locals 8
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    const/4 v0, 0x0

    .line 283
    :try_start_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    .line 284
    invoke-static {}, Lmobi/beyondpod/BeyondPodApplication;->getInstance()Lmobi/beyondpod/BeyondPodApplication;

    move-result-object v2

    invoke-virtual {v2, v0}, Lmobi/beyondpod/BeyondPodApplication;->getExternalFilesDirs(Ljava/lang/String;)[Ljava/io/File;

    move-result-object v2

    .line 285
    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_2

    aget-object v5, v2, v4

    if-eqz v5, :cond_1

    .line 288
    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v6, :cond_0

    goto :goto_1

    :cond_0
    return-object v5

    :cond_1
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "Configuration"

    .line 296
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to get Android reported SD card! reason: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeLogEntry(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-object v0
.end method

.method public static findFeedByIdInTempOrRepository(Ljava/util/UUID;)Lmobi/beyondpod/rsscore/Feed;
    .locals 1

    .line 2334
    invoke-static {p0}, Lmobi/beyondpod/rsscore/repository/FeedRepository;->getFeedById(Ljava/util/UUID;)Lmobi/beyondpod/rsscore/Feed;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2336
    sget-object v0, Lmobi/beyondpod/rsscore/Configuration;->TempFeedHolder:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Lmobi/beyondpod/rsscore/Feed;

    :cond_0
    return-object v0
.end method

.method public static freeAuto()Z
    .locals 5

    const-string v0, "free-auto"

    .line 2720
    invoke-static {v0}, Lmobi/beyondpod/rsscore/Configuration;->getContainerLongValue(Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static freeCDS()Z
    .locals 5

    const-string v0, "free-cds"

    .line 2735
    invoke-static {v0}, Lmobi/beyondpod/rsscore/Configuration;->getContainerLongValue(Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static freeChromecast()Z
    .locals 5

    const-string v0, "free-chromecast"

    .line 2725
    invoke-static {v0}, Lmobi/beyondpod/rsscore/Configuration;->getContainerLongValue(Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static freeMultiDownloads()Z
    .locals 5

    const-string v0, "free-multidownloads"

    .line 2705
    invoke-static {v0}, Lmobi/beyondpod/rsscore/Configuration;->getContainerLongValue(Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static freeScheduling()Z
    .locals 5

    const-string v0, "free-scheduling"

    .line 2710
    invoke-static {v0}, Lmobi/beyondpod/rsscore/Configuration;->getContainerLongValue(Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static freeSpeed()Z
    .locals 5

    const-string v0, "free-playback-speed"

    .line 2730
    invoke-static {v0}, Lmobi/beyondpod/rsscore/Configuration;->getContainerLongValue(Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static gatherAnalyticsData()Z
    .locals 3

    .line 1665
    sget-object v0, Lmobi/beyondpod/rsscore/Configuration;->_preferences:Landroid/content/SharedPreferences;

    const-string v1, "GatherAnalyticsData"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 1666
    invoke-static {}, Lmobi/beyondpod/rsscore/rss/LicenseManager;->currentLicenseKind()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-static {v0}, Lmobi/beyondpod/rsscore/Configuration;->setGatherAnalyticsData(Z)V

    .line 1668
    :cond_1
    sget-object v0, Lmobi/beyondpod/rsscore/Configuration;->_preferences:Landroid/content/SharedPreferences;

    const-string v2, "GatherAnalyticsData"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private static generateFeedPasswordKey(Ljava/util/UUID;)Ljava/lang/String;
    .locals 3

    const-string v0, "PRIVATE_FEED_DATA:%s"

    const/4 v1, 0x1

    .line 1454
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getActiveFeedCategory()Lmobi/beyondpod/rsscore/categories/FeedCategory;
    .locals 3

    .line 1001
    sget-object v0, Lmobi/beyondpod/rsscore/Configuration;->_ActiveFeedCategory:Lmobi/beyondpod/rsscore/categories/FeedCategory;

    if-eqz v0, :cond_0

    sget-object v0, Lmobi/beyondpod/rsscore/Configuration;->_ActiveFeedCategory:Lmobi/beyondpod/rsscore/categories/FeedCategory;

    sget-object v1, Lmobi/beyondpod/rsscore/categories/CategoryManager;->CategoryNull:Lmobi/beyondpod/rsscore/categories/FeedCategory;

    if-eq v0, v1, :cond_0

    sget-object v0, Lmobi/beyondpod/rsscore/Configuration;->_ActiveFeedCategory:Lmobi/beyondpod/rsscore/categories/FeedCategory;

    .line 1002
    invoke-static {v0}, Lmobi/beyondpod/rsscore/categories/CategoryManager;->hasCategory(Lmobi/beyondpod/rsscore/categories/FeedCategory;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1004
    :cond_0
    sget-object v0, Lmobi/beyondpod/rsscore/Configuration;->_ActiveFeedCategory:Lmobi/beyondpod/rsscore/categories/FeedCategory;

    if-eqz v0, :cond_1

    sget-object v0, Lmobi/beyondpod/rsscore/Configuration;->_ActiveFeedCategory:Lmobi/beyondpod/rsscore/categories/FeedCategory;

    sget-object v1, Lmobi/beyondpod/rsscore/categories/CategoryManager;->CategoryNull:Lmobi/beyondpod/rsscore/categories/FeedCategory;

    if-eq v0, v1, :cond_1

    const-string v0, "Configuration"

    .line 1005
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "!!! Found non existing category "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lmobi/beyondpod/rsscore/Configuration;->_ActiveFeedCategory:Lmobi/beyondpod/rsscore/categories/FeedCategory;

    invoke-virtual {v2}, Lmobi/beyondpod/rsscore/categories/FeedCategory;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 1007
    :cond_1
    sget-object v0, Lmobi/beyondpod/rsscore/Configuration;->_preferences:Landroid/content/SharedPreferences;

    const-string v1, "ActiveCategory"

    sget-object v2, Lmobi/beyondpod/rsscore/categories/CategoryManager;->CategoryHome:Lmobi/beyondpod/rsscore/categories/FeedCategory;

    invoke-virtual {v2}, Lmobi/beyondpod/rsscore/categories/FeedCategory;->value()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1008
    invoke-static {v0}, Lmobi/beyondpod/rsscore/categories/CategoryManager;->getCategoryByValue(Ljava/lang/String;)Lmobi/beyondpod/rsscore/categories/FeedCategory;

    move-result-object v0

    sput-object v0, Lmobi/beyondpod/rsscore/Configuration;->_ActiveFeedCategory:Lmobi/beyondpod/rsscore/categories/FeedCategory;

    .line 1011
    :cond_2
    sget-object v0, Lmobi/beyondpod/rsscore/Configuration;->_ActiveFeedCategory:Lmobi/beyondpod/rsscore/categories/FeedCategory;

    return-object v0
.end method

.method public static getActiveFeedFilter()Lmobi/beyondpod/rsscore/Feed;
    .locals 3

    .line 1109
    sget-object v0, Lmobi/beyondpod/rsscore/Configuration;->_LastSelectedFeed:Lmobi/beyondpod/rsscore/Feed;

    if-nez v0, :cond_0

    .line 1111
    sget-object v0, Lmobi/beyondpod/rsscore/Configuration;->_preferences:Landroid/content/SharedPreferences;

    const-string v1, "ActiveFeedFilter"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1112
    invoke-static {v0}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1116
    :try_start_0
    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    .line 1117
    invoke-static {v0}, Lmobi/beyondpod/rsscore/repository/FeedRepository;->getFeedById(Ljava/util/UUID;)Lmobi/beyondpod/rsscore/Feed;

    move-result-object v0

    sput-object v0, Lmobi/beyondpod/rsscore/Configuration;->_LastSelectedFeed:Lmobi/beyondpod/rsscore/Feed;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Configuration"

    const-string v2, "Unable to load last ActiveFeedFilter"

    .line 1121
    invoke-static {v1, v2, v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->logException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1126
    :cond_0
    :goto_0
    sget-object v0, Lmobi/beyondpod/rsscore/Configuration;->_LastSelectedFeed:Lmobi/beyondpod/rsscore/Feed;

    return-object v0
.end method

.method public static getActiveMediaFilter()I
    .locals 3

    .line 1194
    sget-object v0, Lmobi/beyondpod/rsscore/Configuration;->_preferences:Landroid/content/SharedPreferences;

    const-string v1, "ActiveMediaFilter"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getAllowAutoTrackDeletions()Z
    .locals 3

    .line 1099
    sget-object v0, Lmobi/beyondpod/rsscore/Configuration;->_preferences:Landroid/content/SharedPreferences;

    const-string v1, "AllowAutoTrackDeletions"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static getAppContext()Landroid/content/Context;
    .locals 1

    .line 135
    invoke-static {}, Lmobi/beyondpod/BeyondPodApplication;->getInstance()Lmobi/beyondpod/BeyondPodApplication;

    move-result-object v0

    invoke-virtual {v0}, Lmobi/beyondpod/BeyondPodApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public static getBackwardSkipInterval()I
    .locals 3

    .line 821
    sget-object v0, Lmobi/beyondpod/rsscore/Configuration;->_preferences:Landroid/content/SharedPreferences;

    const-string v1, "BackwardSkipInterval"

    const-string v2, "11"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xb

    invoke-static {v0, v1}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->safeParseInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private static getContainerLongValue(Ljava/lang/String;)J
    .locals 4

    const-wide/16 v0, -0x1

    .line 2683
    :try_start_0
    sget-object v2, Lmobi/beyondpod/rsscore/Configuration;->_TagManagerContainerHolder:Lcom/google/android/gms/tagmanager/ContainerHolder;

    if-eqz v2, :cond_0

    .line 2685
    sget-object v2, Lmobi/beyondpod/rsscore/Configuration;->_TagManagerContainerHolder:Lcom/google/android/gms/tagmanager/ContainerHolder;

    invoke-interface {v2}, Lcom/google/android/gms/tagmanager/ContainerHolder;->getContainer()Lcom/google/android/gms/tagmanager/Container;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2687
    invoke-virtual {v2, p0}, Lcom/google/android/gms/tagmanager/Container;->getLong(Ljava/lang/String;)J

    move-result-wide v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v2

    :cond_0
    return-wide v0

    :catch_0
    return-wide v0
.end method

.method public static getContentViewColor()Ljava/lang/String;
    .locals 3

    .line 1459
    sget-object v0, Lmobi/beyondpod/rsscore/Configuration;->_preferences:Landroid/content/SharedPreferences;

    const-string v1, "ContentViewColor"

    const-string v2, "#6699CC"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getDebugProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 2484
    sget-object v0, Lmobi/beyondpod/rsscore/Configuration;->_preferences:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    return-object p1

    .line 2487
    :cond_0
    sget-object v0, Lmobi/beyondpod/rsscore/Configuration;->_preferences:Landroid/content/SharedPreferences;

    const-string v1, "DebugSettings"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2488
    invoke-static {v0}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-object p1

    .line 2491
    :cond_1
    new-instance v1, Ljava/util/Properties;

    invoke-direct {v1}, Ljava/util/Properties;-><init>()V

    .line 2494
    :try_start_0
    new-instance v2, Ljava/io/StringReader;

    invoke-direct {v2, v0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/Properties;->load(Ljava/io/Reader;)V

    .line 2495
    invoke-virtual {v1, p0, p1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    return-object p1
.end method

.method public static getDefaultDocFontSize()Ljava/lang/String;
    .locals 3

    .line 895
    sget-object v0, Lmobi/beyondpod/rsscore/Configuration;->_preferences:Landroid/content/SharedPreferences;

    const-string v1, "ContentFontSize"

    const-string v2, "medium"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getDefaultSendToMailAddress()Ljava/lang/String;
    .locals 3

    .line 1246
    sget-object v0, Lmobi/beyondpod/rsscore/Configuration;->_preferences:Landroid/content/SharedPreferences;

    const-string v1, "DefaultSendToEmails"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getExpandedCategories()Ljava/lang/String;
    .locals 3

    .line 2564
    sget-object v0, Lmobi/beyondpod/rsscore/Configuration;->_preferences:Landroid/content/SharedPreferences;

    const-string v1, "ExpandedCategories"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getFeedPrivateData(Ljava/util/UUID;)Ljava/lang/String;
    .locals 2

    .line 1444
    sget-object v0, Lmobi/beyondpod/rsscore/Configuration;->_preferences:Landroid/content/SharedPreferences;

    invoke-static {p0}, Lmobi/beyondpod/rsscore/Configuration;->generateFeedPasswordKey(Ljava/util/UUID;)Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getFeedSelectedAction()I
    .locals 3

    .line 2604
    sget-object v0, Lmobi/beyondpod/rsscore/Configuration;->_preferences:Landroid/content/SharedPreferences;

    const-string v1, "FeedSelectedAction"

    const-string v2, "0"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->safeParseInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getFeedUpdateLogURL()Landroid/net/Uri;
    .locals 2

    .line 689
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->beyondPodContentUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/BeyondPodStorageRootPath/FeedUpdateLog.htm"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static getFeedsSortOrder()I
    .locals 3

    .line 868
    sget-object v0, Lmobi/beyondpod/rsscore/Configuration;->_preferences:Landroid/content/SharedPreferences;

    const-string v1, "FeedsSortOrder"

    const-string v2, "0"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->safeParseInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getForwardSkipInterval()I
    .locals 3

    .line 805
    sget-object v0, Lmobi/beyondpod/rsscore/Configuration;->_preferences:Landroid/content/SharedPreferences;

    const-string v1, "ForwardSkipInterval"

    const-string v2, "31"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x1f

    invoke-static {v0, v1}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->safeParseInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getGlobalDefaultKeepAtMostPodcasts()I
    .locals 3

    .line 1051
    sget-object v0, Lmobi/beyondpod/rsscore/Configuration;->_preferences:Landroid/content/SharedPreferences;

    const-string v1, "DefaultKeepAtMostPodcasts"

    const-string v2, "10"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xa

    invoke-static {v0, v1}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->safeParseInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getGlobalDefaultMaximumGReaderItemsToGet()I
    .locals 3

    .line 1083
    sget-object v0, Lmobi/beyondpod/rsscore/Configuration;->_preferences:Landroid/content/SharedPreferences;

    const-string v1, "DefaultMaximumGReaderItemsToGet"

    const-string v2, "20"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x14

    invoke-static {v0, v1}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->safeParseInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getGlobalDefaultMaximumPodcastAge()Lmobi/beyondpod/rsscore/helpers/TimeSpan;
    .locals 12

    .line 1061
    new-instance v11, Lmobi/beyondpod/rsscore/helpers/TimeSpan;

    sget-object v0, Lmobi/beyondpod/rsscore/Configuration;->_preferences:Landroid/content/SharedPreferences;

    const-string v1, "DefaultMaximumPodcastAge"

    const v2, 0x1869f

    .line 1063
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    .line 1062
    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1061
    invoke-static {v0, v2}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->safeParseInt(Ljava/lang/String;I)I

    move-result v0

    int-to-long v1, v0

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x0

    const-wide/16 v9, 0x0

    move-object v0, v11

    invoke-direct/range {v0 .. v10}, Lmobi/beyondpod/rsscore/helpers/TimeSpan;-><init>(JJJJJ)V

    return-object v11
.end method

.method public static getGlobalDefaultNumberPodcastsToDownload()I
    .locals 3

    .line 1040
    sget-object v0, Lmobi/beyondpod/rsscore/Configuration;->_preferences:Landroid/content/SharedPreferences;

    const-string v1, "DefaultNumberPodcastsToDownload"

    const-string v2, "3"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->safeParseInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getGlobalDefaultPodcastDownloadAction()I
    .locals 4

    .line 1025
    sget-object v0, Lmobi/beyondpod/rsscore/Configuration;->_preferences:Landroid/content/SharedPreferences;

    const-string v1, "DefaultPodcastDownloadAction"

    const/4 v2, 0x1

    .line 1027
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    .line 1026
    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1025
    invoke-static {v0, v2}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->safeParseInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getGroupByFeedIfShowingCategoryTracks()Z
    .locals 3

    .line 972
    sget-object v0, Lmobi/beyondpod/rsscore/Configuration;->_preferences:Landroid/content/SharedPreferences;

    const-string v1, "GroupByFeedIfShowingCategoryTracks"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static getHideReadFeeds()Z
    .locals 3

    .line 958
    sget-object v0, Lmobi/beyondpod/rsscore/Configuration;->_preferences:Landroid/content/SharedPreferences;

    const-string v1, "HideReadFeeds"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static getHideUnsupportedFileTypes()Z
    .locals 3

    .line 850
    sget-object v0, Lmobi/beyondpod/rsscore/Configuration;->_preferences:Landroid/content/SharedPreferences;

    const-string v1, "HideUnsupportedFileTypes"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static getInternalPlayerSupportedFileExtensions()Ljava/lang/String;
    .locals 3

    .line 1088
    sget-object v0, Lmobi/beyondpod/rsscore/Configuration;->_preferences:Landroid/content/SharedPreferences;

    const-string v1, "PlayerSupportedFileExtensions"

    const-string v2, "3gp,mp4,m4v,h264.mp4,m4a,mp3,mid,xmf,mxmf,rtttl,rtx,ota,imy,ogg,wav,jpg,gif,png,bmp"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getItemFilter()I
    .locals 3

    .line 948
    sget-object v0, Lmobi/beyondpod/rsscore/Configuration;->_preferences:Landroid/content/SharedPreferences;

    const-string v1, "ItemFilter"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getLastInstalledVersionCode()I
    .locals 3

    .line 1529
    sget-object v0, Lmobi/beyondpod/rsscore/Configuration;->_preferences:Landroid/content/SharedPreferences;

    const-string v1, "LastInstalledVersion"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getLastTipNotificationTime()Ljava/util/Date;
    .locals 5

    .line 774
    sget-object v0, Lmobi/beyondpod/rsscore/Configuration;->_preferences:Landroid/content/SharedPreferences;

    const-string v1, "LastTipNotificationTime"

    const-wide/16 v2, -0x1

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 778
    :cond_0
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, v0, v1}, Ljava/util/Date;-><init>(J)V

    return-object v2
.end method

.method public static getLastUpdateAndDownloadManagerRunTime()Ljava/util/Date;
    .locals 5

    .line 788
    sget-object v0, Lmobi/beyondpod/rsscore/Configuration;->_preferences:Landroid/content/SharedPreferences;

    const-string v1, "LastUpdateAndDownloadManagerRunTime"

    const-wide/16 v2, -0x1

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 792
    :cond_0
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, v0, v1}, Ljava/util/Date;-><init>(J)V

    return-object v2
.end method

.method public static getMediaEndAction()I
    .locals 3

    .line 837
    sget-object v0, Lmobi/beyondpod/rsscore/Configuration;->_preferences:Landroid/content/SharedPreferences;

    const-string v1, "MediaEndAction"

    const-string v2, "0"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->safeParseInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getNextNotificationTime()Ljava/util/Date;
    .locals 5

    .line 760
    sget-object v0, Lmobi/beyondpod/rsscore/Configuration;->_preferences:Landroid/content/SharedPreferences;

    const-string v1, "NextNotificationTime"

    const-wide/16 v2, -0x1

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    .line 762
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    return-object v0

    .line 764
    :cond_0
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, v0, v1}, Ljava/util/Date;-><init>(J)V

    return-object v2
.end method

.method public static getPodcastsSortOrder()I
    .locals 3

    .line 883
    sget-object v0, Lmobi/beyondpod/rsscore/Configuration;->_preferences:Landroid/content/SharedPreferences;

    const-string v1, "PodcastsSortOrder"

    const-string v2, "0"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->safeParseInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getRecentFeeds()Ljava/util/LinkedList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedList<",
            "Lmobi/beyondpod/rsscore/Feed;",
            ">;"
        }
    .end annotation

    .line 1141
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 1142
    sget-object v1, Lmobi/beyondpod/rsscore/Configuration;->_preferences:Landroid/content/SharedPreferences;

    const-string v2, "RecentFeedsList"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1143
    invoke-static {v1}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    :try_start_0
    const-string v2, "\\|"

    .line 1147
    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 1149
    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 1151
    invoke-static {v4}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v4

    .line 1152
    invoke-static {v4}, Lmobi/beyondpod/rsscore/repository/FeedRepository;->getFeedById(Ljava/util/UUID;)Lmobi/beyondpod/rsscore/Feed;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 1154
    invoke-virtual {v0, v4}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "Configuration"

    const-string v3, "Unable to load recent feeds"

    .line 1159
    invoke-static {v2, v3, v1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->logException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    return-object v0
.end method

.method public static getRepoMovedPath()Ljava/lang/String;
    .locals 3

    .line 2395
    sget-object v0, Lmobi/beyondpod/rsscore/Configuration;->_preferences:Landroid/content/SharedPreferences;

    const-string v1, "RepoMovedPath"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getTrialStartDate()Ljava/util/Date;
    .locals 5

    .line 1539
    sget-object v0, Lmobi/beyondpod/rsscore/Configuration;->_preferences:Landroid/content/SharedPreferences;

    const-string v1, "trialStartDate"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 1544
    :cond_0
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, v0, v1}, Ljava/util/Date;-><init>(J)V

    return-object v2
.end method

.method public static getUnlocKeyAppStoreIntent()Landroid/net/Uri;
    .locals 2

    .line 310
    invoke-static {}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->isRunningOnARC()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 312
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->unlockURL()Landroid/net/Uri;

    move-result-object v0

    return-object v0

    .line 315
    :cond_0
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->currentAppStore()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const-string v0, "market://details?id=mobi.beyondpod.unlockkey"

    .line 321
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0

    :cond_1
    const-string v0, "http://www.amazon.com/gp/mas/dl/android?p=mobi.beyondpod.unlockkey"

    .line 318
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static getUpdateOnFeedOpen()Z
    .locals 3

    .line 988
    sget-object v0, Lmobi/beyondpod/rsscore/Configuration;->_preferences:Landroid/content/SharedPreferences;

    const-string v1, "UpdateOnFeedOpen"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static googleSyncInitialized()Z
    .locals 3

    .line 1469
    sget-object v0, Lmobi/beyondpod/rsscore/Configuration;->_preferences:Landroid/content/SharedPreferences;

    const-string v1, "googleSyncInitialized"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static hasCustomUserAgent()Z
    .locals 3

    .line 1241
    sget-object v0, Lmobi/beyondpod/rsscore/Configuration;->_preferences:Landroid/content/SharedPreferences;

    const-string v1, "defaultUserAgent"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public static helpFileCDSURL()Landroid/net/Uri;
    .locals 1

    const-string v0, "CDSHelp"

    .line 594
    invoke-static {v0}, Lmobi/beyondpod/rsscore/Configuration;->buildHelpURL(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static helpFileURL()Landroid/net/Uri;
    .locals 1

    const-string v0, "HelpHome"

    .line 551
    invoke-static {v0}, Lmobi/beyondpod/rsscore/Configuration;->buildHelpURL(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static httpConnectionTimeout()I
    .locals 3

    .line 1630
    sget-object v0, Lmobi/beyondpod/rsscore/Configuration;->_preferences:Landroid/content/SharedPreferences;

    const-string v1, "HttpConnectionTimeout"

    const-string v2, "20"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x14

    .line 1632
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v2}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->tryParseIntFromString(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-gez v0, :cond_0

    move v0, v1

    :cond_0
    return v0
.end method

.method public static ignoreGoogleReaderReadStatus()Z
    .locals 3

    .line 2237
    sget-object v0, Lmobi/beyondpod/rsscore/Configuration;->_preferences:Landroid/content/SharedPreferences;

    const-string v1, "IgnoreGoogleReaderReadStatus"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static indexOfCurrentPlaylistTrackInPlaylist()I
    .locals 3

    .line 1600
    sget-object v0, Lmobi/beyondpod/rsscore/Configuration;->_preferences:Landroid/content/SharedPreferences;

    const-string v1, "indexOfCurrentPlaylistTrackInPlaylist"

    const/4 v2, -0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static initialize(Landroid/content/Context;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 139
    sput-object v0, Lmobi/beyondpod/rsscore/Configuration;->_LastSelectedFeed:Lmobi/beyondpod/rsscore/Feed;

    .line 140
    sput-object v0, Lmobi/beyondpod/rsscore/Configuration;->_ActiveFeedCategory:Lmobi/beyondpod/rsscore/categories/FeedCategory;

    const/4 v1, 0x0

    .line 141
    sput v1, Lmobi/beyondpod/rsscore/Configuration;->ConfigurationInitErrorType:I

    .line 142
    sput-object v0, Lmobi/beyondpod/rsscore/Configuration;->ConfigurationInitErrorMsg:Ljava/lang/String;

    .line 143
    sput-object p0, Lmobi/beyondpod/rsscore/Configuration;->_Context:Landroid/content/Context;

    const-string v0, "Settings"

    .line 144
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lmobi/beyondpod/rsscore/Configuration;->_preferences:Landroid/content/SharedPreferences;

    .line 146
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->initializeStorageFolders()Z

    move-result v0

    if-nez v0, :cond_0

    return v1

    .line 149
    :cond_0
    invoke-static {}, Lmobi/beyondpod/rsscore/repository/DatabaseHelper;->dataBaseExists()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 150
    sput-boolean v1, Lmobi/beyondpod/rsscore/Configuration;->_IsFirstRun:Z

    .line 152
    :cond_1
    new-instance v0, Lmobi/beyondpod/rsscore/StartupContentBuilder;

    invoke-direct {v0}, Lmobi/beyondpod/rsscore/StartupContentBuilder;-><init>()V

    sget-boolean v2, Lmobi/beyondpod/rsscore/Configuration;->_IsFirstRun:Z

    invoke-virtual {v0, v2}, Lmobi/beyondpod/rsscore/StartupContentBuilder;->checkAndCreateStartupContent(Z)V

    .line 154
    invoke-static {}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->truncateLogFileIfNecessary()V

    .line 158
    invoke-static {p0}, Lmobi/beyondpod/rsscore/Configuration;->initializeTagManager(Landroid/content/Context;)V

    return v1
.end method

.method private static initializeStorageFolders()Z
    .locals 5

    .line 215
    invoke-static {}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->externalStorageDirectory()Ljava/io/File;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_7

    .line 216
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    goto/16 :goto_0

    .line 224
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lmobi/beyondpod/rsscore/Configuration;->constructBeyondPodRootIn(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    sput-object v2, Lmobi/beyondpod/rsscore/Configuration;->_BeyondPodPublicStorageRoot:Ljava/io/File;

    .line 227
    sget-object v2, Lmobi/beyondpod/rsscore/Configuration;->_BeyondPodPublicStorageRoot:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lmobi/beyondpod/rsscore/helpers/PermissionUtil;->needsStoragePermissionForPath(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    # PATCH: Permission not yet granted - fall back to app-specific external dir (never needs permission)
    sget-object v0, Lmobi/beyondpod/rsscore/Configuration;->_Context:Landroid/content/Context;

    if-eqz v0, :perm_error

    invoke-virtual {v0, v1}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    if-eqz v0, :perm_error

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lmobi/beyondpod/rsscore/Configuration;->constructBeyondPodRootIn(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    sput-object v2, Lmobi/beyondpod/rsscore/Configuration;->_BeyondPodPublicStorageRoot:Ljava/io/File;

    goto :cond_1

    :perm_error
    const/4 v0, -0x4

    .line 229
    sput v0, Lmobi/beyondpod/rsscore/Configuration;->ConfigurationInitErrorType:I

    .line 230
    invoke-static {}, Lmobi/beyondpod/BeyondPodApplication;->getInstance()Lmobi/beyondpod/BeyondPodApplication;

    move-result-object v0

    sget v2, Lmobi/beyondpod/R$string;->error_root_needs_permission:I

    new-array v3, v3, [Ljava/lang/Object;

    sget-object v4, Lmobi/beyondpod/rsscore/Configuration;->_BeyondPodPublicStorageRoot:Ljava/io/File;

    .line 231
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    .line 230
    invoke-virtual {v0, v2, v3}, Lmobi/beyondpod/BeyondPodApplication;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmobi/beyondpod/rsscore/Configuration;->ConfigurationInitErrorMsg:Ljava/lang/String;

    return v1

    .line 235
    :cond_1
    sget-object v2, Lmobi/beyondpod/rsscore/Configuration;->_BeyondPodPublicStorageRoot:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_2

    .line 237
    sget-object v2, Lmobi/beyondpod/rsscore/Configuration;->_BeyondPodPublicStorageRoot:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 240
    :cond_2
    sget-object v2, Lmobi/beyondpod/rsscore/Configuration;->_BeyondPodPublicStorageRoot:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_3

    const/4 v0, -0x3

    .line 242
    sput v0, Lmobi/beyondpod/rsscore/Configuration;->ConfigurationInitErrorType:I

    .line 243
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget v2, Lmobi/beyondpod/R$string;->error_CantCreateRootFolder:I

    .line 244
    invoke-static {v2}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->loadResourceString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n\n Unable to create folder: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lmobi/beyondpod/rsscore/Configuration;->_BeyondPodPublicStorageRoot:Ljava/io/File;

    .line 245
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lmobi/beyondpod/R$string;->error_CantCreateRootFolderWorkaround:I

    .line 246
    invoke-static {v2}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->loadResourceString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmobi/beyondpod/rsscore/Configuration;->ConfigurationInitErrorMsg:Ljava/lang/String;

    return v1

    .line 250
    :cond_3
    sget-object v2, Lmobi/beyondpod/rsscore/Configuration;->_BeyondPodPublicStorageRoot:Ljava/io/File;

    invoke-static {v2}, Lmobi/beyondpod/rsscore/Configuration;->constructEnclosureDownloadRoot(Ljava/io/File;)Ljava/io/File;

    move-result-object v2

    .line 251
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_4

    .line 252
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 254
    :cond_4
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_5

    const/4 v0, -0x2

    .line 256
    sput v0, Lmobi/beyondpod/rsscore/Configuration;->ConfigurationInitErrorType:I

    .line 257
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget v3, Lmobi/beyondpod/R$string;->error_CantCreateRootFolder:I

    .line 258
    invoke-static {v3}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->loadResourceString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\n\n Unable to create folder: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 259
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lmobi/beyondpod/R$string;->error_CantCreateRootFolderWorkaround:I

    .line 260
    invoke-static {v2}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->loadResourceString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmobi/beyondpod/rsscore/Configuration;->ConfigurationInitErrorMsg:Ljava/lang/String;

    return v1

    .line 265
    :cond_5
    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lmobi/beyondpod/rsscore/Configuration;->setEnclosureDownloadRoot(Ljava/lang/String;)V

    .line 268
    new-instance v1, Ljava/io/File;

    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->rssImageCachePath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 269
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_6

    .line 270
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 272
    :cond_6
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmobi/beyondpod/rsscore/Configuration;->setLastSDCardRootPath(Ljava/lang/String;)V

    return v3

    :cond_7
    :goto_0
    const/4 v2, -0x1

    .line 218
    sput v2, Lmobi/beyondpod/rsscore/Configuration;->ConfigurationInitErrorType:I

    .line 219
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget v3, Lmobi/beyondpod/R$string;->error_SDCardError:I

    invoke-static {v3}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->loadResourceString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\n\n Unable to find path: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmobi/beyondpod/rsscore/Configuration;->ConfigurationInitErrorMsg:Ljava/lang/String;

    return v1
.end method

.method private static initializeTagManager(Landroid/content/Context;)V
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    .line 168
    invoke-static {p0}, Lcom/google/android/gms/tagmanager/TagManager;->getInstance(Landroid/content/Context;)Lcom/google/android/gms/tagmanager/TagManager;

    move-result-object p0

    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->DBGTagContainerID()Ljava/lang/String;

    move-result-object v0

    sget v1, Lmobi/beyondpod/R$raw;->gtm_default_container:I

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/tagmanager/TagManager;->loadContainerPreferNonDefault(Ljava/lang/String;I)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object p0

    .line 171
    new-instance v0, Lmobi/beyondpod/rsscore/Configuration$1;

    invoke-direct {v0}, Lmobi/beyondpod/rsscore/Configuration$1;-><init>()V

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x2

    invoke-virtual {p0, v0, v2, v3, v1}, Lcom/google/android/gms/common/api/PendingResult;->setResultCallback(Lcom/google/android/gms/common/api/ResultCallback;JLjava/util/concurrent/TimeUnit;)V

    return-void
.end method

.method public static isAdSupported()Z
    .locals 5

    const-string v0, "enable-ads"

    .line 2700
    invoke-static {v0}, Lmobi/beyondpod/rsscore/Configuration;->getContainerLongValue(Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isBetaVersion()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public static isCellularConnectionAllowed()Z
    .locals 3

    .line 1204
    sget-object v0, Lmobi/beyondpod/rsscore/Configuration;->_preferences:Landroid/content/SharedPreferences;

    const-string v1, "AllowCellularConnections"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isCurrentPlaylistManuallyModified()Z
    .locals 3

    .line 1620
    sget-object v0, Lmobi/beyondpod/rsscore/Configuration;->_preferences:Landroid/content/SharedPreferences;

    const-string v1, "isCurrentPlaylistManuallyModified"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isExpirationWarningShownInThisSession()Z
    .locals 1

    .line 2385
    sget-boolean v0, Lmobi/beyondpod/rsscore/Configuration;->_IsExpirationWarningShownInThisSession:Z

    return v0
.end method

.method public static isFirstRun()Z
    .locals 1

    .line 357
    sget-boolean v0, Lmobi/beyondpod/rsscore/Configuration;->_IsFirstRun:Z

    return v0
.end method

.method public static isInstalledOnSDCard()Z
    .locals 4

    .line 1922
    invoke-static {}, Lmobi/beyondpod/BeyondPodApplication;->getInstance()Lmobi/beyondpod/BeyondPodApplication;

    move-result-object v0

    invoke-virtual {v0}, Lmobi/beyondpod/BeyondPodApplication;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/high16 v1, 0x40000

    const/4 v2, 0x0

    .line 1926
    :try_start_0
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->packageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 1927
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 1928
    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2

    :catch_0
    move-exception v0

    const-string v1, "Configuration"

    const-string v3, "failed to check BeyondPod install location"

    .line 1932
    invoke-static {v1, v3, v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->logException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return v2
.end method

.method public static isRegisteredOnServer()Z
    .locals 3

    .line 2541
    sget-object v0, Lmobi/beyondpod/rsscore/Configuration;->_preferences:Landroid/content/SharedPreferences;

    const-string v1, "GCMRegisteredOnServer"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isSonicSpeedAlterationSupported()Z
    .locals 2

    .line 342
    invoke-static {}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->apiLevel()I

    move-result v0

    const/4 v1, 0x7

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isSpeedAlterationSupportedOnAppStore()Z
    .locals 2

    .line 327
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->isSonicSpeedAlterationSupported()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 330
    :cond_0
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->currentAppStore()I

    move-result v0

    if-eq v0, v1, :cond_1

    const/4 v0, 0x0

    return v0

    :cond_1
    return v1
.end method

.method public static itemHistoryBackupFilePath()Ljava/lang/String;
    .locals 2

    .line 480
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->beyondPodPublicStorageRootPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "BeyondPodItemHistory.bin.autobak"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static itemHistoryBackupManagerFilePath()Ljava/lang/String;
    .locals 2

    .line 495
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->backupManagerBackupPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "BeyondPodItemHistory.bin.autobak"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static itemHistoryFilePath()Ljava/lang/String;
    .locals 2

    .line 475
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->beyondPodPrivateStorageRootPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/BeyondPodItemHistory.bin"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static keepCurrentEpisodeForClearPlaylist()Z
    .locals 3

    .line 2343
    sget-object v0, Lmobi/beyondpod/rsscore/Configuration;->_preferences:Landroid/content/SharedPreferences;

    const-string v1, "KeepCurrentEpisodeForClearPlaylist"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static keepCurrentEpisodeForDefferAutoSyncSmartPlay()Z
    .locals 3

    .line 2054
    sget-object v0, Lmobi/beyondpod/rsscore/Configuration;->_preferences:Landroid/content/SharedPreferences;

    const-string v1, "KeepCurrentEpisodeForDefferAutoSyncSmartPlay"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static keepMetadataForMissingEpisodes()Z
    .locals 3

    .line 2329
    sget-object v0, Lmobi/beyondpod/rsscore/Configuration;->_preferences:Landroid/content/SharedPreferences;

    const-string v1, "keepMetadataForMissingEpisodes"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static keepScreenOnWhenUpdatingOverWiFi()Z
    .locals 2

    .line 1821
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->screenPowerStateDuringWiFiUpdates()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public static lastRemoteChangeTimeStamp()J
    .locals 4

    .line 2084
    sget-object v0, Lmobi/beyondpod/rsscore/Configuration;->_preferences:Landroid/content/SharedPreferences;

    const-string v1, "lastRemoteChangeTimeStamp"

    const-wide/16 v2, -0x1

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static lastSDCardRootPath()Ljava/lang/String;
    .locals 3

    .line 2309
    sget-object v0, Lmobi/beyondpod/rsscore/Configuration;->_preferences:Landroid/content/SharedPreferences;

    const-string v1, "lastSDCardRootPath"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static lastSyncTimeStamp()J
    .locals 4

    .line 2074
    sget-object v0, Lmobi/beyondpod/rsscore/Configuration;->_preferences:Landroid/content/SharedPreferences;

    const-string v1, "lastSyncTimeStamp"

    const-wide/16 v2, -0x1

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static lastUsedSmartplayId()I
    .locals 3

    .line 2584
    sget-object v0, Lmobi/beyondpod/rsscore/Configuration;->_preferences:Landroid/content/SharedPreferences;

    const-string v1, "lastUsedSmartplayId"

    const/4 v2, -0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static licenseTypeString()Ljava/lang/String;
    .locals 3

    .line 1590
    sget-object v0, Lmobi/beyondpod/rsscore/Configuration;->_preferences:Landroid/content/SharedPreferences;

    const-string v1, "licenseTypeString"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static loadContentViewImagesAutomatically()Z
    .locals 3

    .line 1406
    sget-object v0, Lmobi/beyondpod/rsscore/Configuration;->_preferences:Landroid/content/SharedPreferences;

    const-string v1, "loadContentViewImagesAutomatically"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static logFilePath()Ljava/lang/String;
    .locals 2

    .line 510
    # PATCH: Write log to Downloads folder for easy access
    const-string v0, "Downloads"

    invoke-static {v0}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/BeyondPodLog.txt"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static logcatFilePath()Ljava/lang/String;
    .locals 2

    .line 525
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->beyondPodPublicStorageRootPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/LogcatLog.txt"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static markAsReadOnOpen()I
    .locals 4

    .line 1653
    sget-object v0, Lmobi/beyondpod/rsscore/Configuration;->_preferences:Landroid/content/SharedPreferences;

    const-string v1, "MarkAsReadOnOpen"

    const/4 v2, 0x2

    .line 1654
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1653
    invoke-static {v0, v2}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->safeParseInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static nextSmartPlayShortcutId()I
    .locals 3

    .line 2619
    sget-object v0, Lmobi/beyondpod/rsscore/Configuration;->_preferences:Landroid/content/SharedPreferences;

    const-string v1, "nextSmartPlayShortcutId"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static notifyForBetaReleases()Z
    .locals 3

    .line 2252
    sget-object v0, Lmobi/beyondpod/rsscore/Configuration;->_preferences:Landroid/content/SharedPreferences;

    const-string v1, "NotifyForBetaReleases"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static orientationLock()I
    .locals 4

    .line 1737
    sget-object v0, Lmobi/beyondpod/rsscore/Configuration;->_preferences:Landroid/content/SharedPreferences;

    const-string v1, "OrientationLock"

    const/4 v2, 0x0

    .line 1738
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1737
    invoke-static {v0, v2}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->safeParseInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static packageName()Ljava/lang/String;
    .locals 1

    .line 1939
    invoke-static {}, Lmobi/beyondpod/BeyondPodApplication;->getInstance()Lmobi/beyondpod/BeyondPodApplication;

    move-result-object v0

    invoke-virtual {v0}, Lmobi/beyondpod/BeyondPodApplication;->getPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static patchVideoFilesForMediaScanner()Z
    .locals 3

    .line 1744
    sget-object v0, Lmobi/beyondpod/rsscore/Configuration;->_preferences:Landroid/content/SharedPreferences;

    const-string v1, "patchVideoFilesForMediaScanner"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static pauseOnHeadsetDisconnect()Z
    .locals 3

    .line 1426
    sget-object v0, Lmobi/beyondpod/rsscore/Configuration;->_preferences:Landroid/content/SharedPreferences;

    const-string v1, "PauseOnHeadsetDisconnect"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 1427
    invoke-static {v1}, Lmobi/beyondpod/rsscore/Configuration;->setPauseOnHeadsetDisconnect(Z)V

    .line 1429
    :cond_0
    sget-object v0, Lmobi/beyondpod/rsscore/Configuration;->_preferences:Landroid/content/SharedPreferences;

    const-string v2, "PauseOnHeadsetDisconnect"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static pauseOnNotification()Z
    .locals 3

    .line 1723
    sget-object v0, Lmobi/beyondpod/rsscore/Configuration;->_preferences:Landroid/content/SharedPreferences;

    const-string v1, "PauseOnNotification"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static pauseOnPowerDisconnect()Z
    .locals 3

    .line 1439
    sget-object v0, Lmobi/beyondpod/rsscore/Configuration;->_preferences:Landroid/content/SharedPreferences;

    const-string v1, "PauseOnPowerDisconnect"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static playbackSpeed1()F
    .locals 3

    .line 2002
    sget-object v0, Lmobi/beyondpod/rsscore/Configuration;->_preferences:Landroid/content/SharedPreferences;

    const-string v1, "playbackSpeed1"

    const-string v2, "1.5f"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/high16 v1, 0x3fc00000    # 1.5f

    invoke-static {v0, v1}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->safeParseFloat(Ljava/lang/String;F)F

    move-result v0

    return v0
.end method

.method public static playbackSpeed2()F
    .locals 3

    .line 2012
    sget-object v0, Lmobi/beyondpod/rsscore/Configuration;->_preferences:Landroid/content/SharedPreferences;

    const-string v1, "playbackSpeed2"

    const-string v2, "2.0f"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v0, v1}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->safeParseFloat(Ljava/lang/String;F)F

    move-result v0

    return v0
.end method

.method public static playbackSpeedNormal()F
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    return v0
.end method

.method public static playerCarModeVisible()Z
    .locals 3

    .line 2594
    sget-object v0, Lmobi/beyondpod/rsscore/Configuration;->_preferences:Landroid/content/SharedPreferences;

    const-string v1, "playerCarModeVisible"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static playerIntegrationType()I
    .locals 4

    .line 1678
    sget-object v0, Lmobi/beyondpod/rsscore/Configuration;->_preferences:Landroid/content/SharedPreferences;

    const-string v1, "PlayerIntegrationType"

    const/4 v2, 0x0

    .line 1680
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    .line 1679
    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1678
    invoke-static {v0, v2}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->safeParseInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static playerPlaybackScreenPowerState()I
    .locals 4

    .line 1728
    sget-object v0, Lmobi/beyondpod/rsscore/Configuration;->_preferences:Landroid/content/SharedPreferences;

    const-string v1, "PlayerPlaybackScreenPowerState"

    const/4 v2, 0x0

    .line 1730
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    .line 1729
    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1728
    invoke-static {v0, v2}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->safeParseInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static playerSleepTimeout()I
    .locals 3

    .line 1754
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->playerSleepTimeouts()[I

    move-result-object v0

    const/4 v1, 0x0

    .line 1755
    array-length v2, v0

    if-lez v2, :cond_0

    aget v2, v0, v1

    if-lez v2, :cond_0

    .line 1756
    aget v0, v0, v1

    return v0

    :cond_0
    return v1
.end method

.method public static playerSleepTimeouts()[I
    .locals 6

    .line 1763
    sget-object v0, Lmobi/beyondpod/rsscore/Configuration;->_preferences:Landroid/content/SharedPreferences;

    const-string v1, "PlayerSleepTimeout"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1764
    invoke-static {v0}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 1765
    new-array v0, v2, [I

    return-object v0

    :cond_0
    const/4 v1, 0x7

    .line 1767
    new-array v1, v1, [I

    .line 1768
    sget-object v3, Lmobi/beyondpod/rsscore/Configuration;->_SleepTimes:Ljava/util/regex/Pattern;

    invoke-virtual {v3, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    move v3, v2

    .line 1770
    :cond_1
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1772
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v2}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->safeParseInt(Ljava/lang/String;I)I

    move-result v4

    if-lez v4, :cond_2

    const/16 v5, 0x2710

    if-ge v4, v5, :cond_2

    add-int/lit8 v5, v3, 0x1

    .line 1774
    aput v4, v1, v3

    move v3, v5

    .line 1776
    :cond_2
    array-length v4, v1

    add-int/lit8 v4, v4, -0x1

    if-le v3, v4, :cond_1

    .line 1781
    :cond_3
    new-array v0, v3, [I

    :goto_0
    if-eq v2, v3, :cond_4

    .line 1783
    aget v4, v1, v2

    aput v4, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    return-object v0
.end method

.method public static playlistBackupFilePath()Ljava/lang/String;
    .locals 2

    .line 440
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->beyondPodPublicStorageRootPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "PlayList.bin.autobak"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static playlistBackupManagerFilePath()Ljava/lang/String;
    .locals 2

    .line 445
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->backupManagerBackupPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "PlayList.bin.autobak"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static playlistEndAction()I
    .locals 3

    .line 1790
    sget-object v0, Lmobi/beyondpod/rsscore/Configuration;->_preferences:Landroid/content/SharedPreferences;

    const-string v1, "PlaylistEndAction"

    const-string v2, "1"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->safeParseInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static playlistFilePath()Ljava/lang/String;
    .locals 2

    .line 435
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->beyondPodPrivateStorageRootPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/PlayList.bin"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static playlistM3UFilePath()Ljava/lang/String;
    .locals 2

    .line 450
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->beyondPodPublicStorageRootPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/BeyondPod.m3u"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static playlistSizeOnSave()I
    .locals 3

    .line 1610
    sget-object v0, Lmobi/beyondpod/rsscore/Configuration;->_preferences:Landroid/content/SharedPreferences;

    const-string v1, "playlistSizeOnSave"

    const/4 v2, -0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static podcastNamingScheme()I
    .locals 3

    .line 1855
    sget-object v0, Lmobi/beyondpod/rsscore/Configuration;->_preferences:Landroid/content/SharedPreferences;

    const-string v1, "podcastNamingScheme"

    const-string v2, "0"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->safeParseInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static preferLastSDCardRoot()Z
    .locals 3

    .line 2319
    sget-object v0, Lmobi/beyondpod/rsscore/Configuration;->_preferences:Landroid/content/SharedPreferences;

    const-string v1, "PreferLastSDCardRoot"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static primarySmartplayId()I
    .locals 3

    .line 2574
    sget-object v0, Lmobi/beyondpod/rsscore/Configuration;->_preferences:Landroid/content/SharedPreferences;

    const-string v1, "primarySmartplayId"

    const/4 v2, -0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static productVersion()Ljava/lang/String;
    .locals 1

    .line 715
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->currentProductVersion()Lmobi/beyondpod/rsscore/helpers/Version;

    move-result-object v0

    invoke-virtual {v0}, Lmobi/beyondpod/rsscore/helpers/Version;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static productVersionAsString()Ljava/lang/String;
    .locals 4

    const-string v0, "BeyondPod %s %s"

    const/4 v1, 0x2

    .line 720
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->productVersion()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->isBetaVersion()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "BETA"

    goto :goto_0

    :cond_0
    const-string v2, ""

    :goto_0
    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static productVersionAsString(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    .line 726
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    .line 727
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xf

    if-le v0, v1, :cond_0

    .line 728
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-string p0, ""

    .line 732
    :goto_0
    invoke-static {}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->isDebugBuild()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 733
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " DBG"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_1
    const-string v0, "v%s %s"

    const/4 v1, 0x2

    .line 735
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->productVersion()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p0, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static publishedEpisodeCardSize()I
    .locals 3

    .line 2661
    sget-object v0, Lmobi/beyondpod/rsscore/Configuration;->_preferences:Landroid/content/SharedPreferences;

    const-string v1, "publishedEpisodeCardSize"

    const-string v2, "1"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->safeParseInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static refreshTagManager()V
    .locals 2

    .line 199
    sget-object v0, Lmobi/beyondpod/rsscore/Configuration;->_TagManagerContainerHolder:Lcom/google/android/gms/tagmanager/ContainerHolder;

    if-eqz v0, :cond_0

    const-string v0, "Configuration"

    const-string v1, "Refreshing tag container..."

    .line 201
    invoke-static {v0, v1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    sget-object v0, Lmobi/beyondpod/rsscore/Configuration;->_TagManagerContainerHolder:Lcom/google/android/gms/tagmanager/ContainerHolder;

    invoke-interface {v0}, Lcom/google/android/gms/tagmanager/ContainerHolder;->refresh()V

    :cond_0
    return-void
.end method

.method public static removePlayedFromPlaylist()Z
    .locals 3

    .line 2272
    sget-object v0, Lmobi/beyondpod/rsscore/Configuration;->_preferences:Landroid/content/SharedPreferences;

    const-string v1, "RemovePlayedFromPlaylist"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static resumeReplayDuration()I
    .locals 3

    .line 2358
    sget-object v0, Lmobi/beyondpod/rsscore/Configuration;->_preferences:Landroid/content/SharedPreferences;

    const-string v1, "ResumeReplayDuration"

    const-string v2, "0"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->safeParseInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static rssCachePath()Ljava/lang/String;
    .locals 2

    .line 535
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->beyondPodPublicStorageRootPath()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RSSCache"

    invoke-static {v0, v1}, Lmobi/beyondpod/rsscore/helpers/Path;->combine(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static rssImageCachePath()Ljava/lang/String;
    .locals 2

    .line 540
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->rssCachePath()Ljava/lang/String;

    move-result-object v0

    const-string v1, "img"

    invoke-static {v0, v1}, Lmobi/beyondpod/rsscore/helpers/Path;->combine(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static rssTemplatesImagePath()Ljava/lang/String;
    .locals 2

    .line 684
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->beyondPodContentUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/BeyondPodImagePath"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static scheduledUpdatesURL()Landroid/net/Uri;
    .locals 1

    const-string v0, "ScheduledUpdates"

    .line 619
    invoke-static {v0}, Lmobi/beyondpod/rsscore/Configuration;->buildHelpURL(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static screenPowerStateDuringWiFiUpdates()I
    .locals 4

    .line 1826
    sget-object v0, Lmobi/beyondpod/rsscore/Configuration;->_preferences:Landroid/content/SharedPreferences;

    const-string v1, "ScreenPowerStateDuringWiFiUpdates"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 1828
    sget-object v0, Lmobi/beyondpod/rsscore/Configuration;->_preferences:Landroid/content/SharedPreferences;

    const-string v2, "keepScreenOnWhenUpdatingOverWiFi"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    :goto_0
    invoke-static {v0}, Lmobi/beyondpod/rsscore/Configuration;->setScreenPowerStateDuringWiFiUpdates(I)V

    .line 1832
    :cond_1
    sget-object v0, Lmobi/beyondpod/rsscore/Configuration;->_preferences:Landroid/content/SharedPreferences;

    const-string v2, "ScreenPowerStateDuringWiFiUpdates"

    const-string v3, "0"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->safeParseInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static scrobbleEnabled()Z
    .locals 3

    .line 1692
    sget-object v0, Lmobi/beyondpod/rsscore/Configuration;->_preferences:Landroid/content/SharedPreferences;

    const-string v1, "ScrobbleEnabled"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static setActiveFeedCategory(Lmobi/beyondpod/rsscore/categories/FeedCategory;)V
    .locals 3

    .line 1016
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->getActiveFeedCategory()Lmobi/beyondpod/rsscore/categories/FeedCategory;

    move-result-object v0

    invoke-virtual {v0, p0}, Lmobi/beyondpod/rsscore/categories/FeedCategory;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1019
    :cond_0
    sput-object p0, Lmobi/beyondpod/rsscore/Configuration;->_ActiveFeedCategory:Lmobi/beyondpod/rsscore/categories/FeedCategory;

    .line 1020
    invoke-static {}, Lmobi/beyondpod/rsscore/ConfigWriteHelper;->getInstance()Lmobi/beyondpod/rsscore/ConfigWriteHelper;

    move-result-object v0

    sget-object v1, Lmobi/beyondpod/rsscore/Configuration;->_preferences:Landroid/content/SharedPreferences;

    const-string v2, "ActiveCategory"

    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/categories/FeedCategory;->value()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, v2, p0}, Lmobi/beyondpod/rsscore/ConfigWriteHelper;->putString(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static setActiveFeedFilter(Lmobi/beyondpod/rsscore/Feed;)V
    .locals 4

    .line 1131
    sput-object p0, Lmobi/beyondpod/rsscore/Configuration;->_LastSelectedFeed:Lmobi/beyondpod/rsscore/Feed;

    .line 1133
    invoke-static {}, Lmobi/beyondpod/rsscore/ConfigWriteHelper;->getInstance()Lmobi/beyondpod/rsscore/ConfigWriteHelper;

    move-result-object v0

    sget-object v1, Lmobi/beyondpod/rsscore/Configuration;->_preferences:Landroid/content/SharedPreferences;

    const-string v2, "ActiveFeedFilter"

    if-nez p0, :cond_0

    const-string v3, ""

    goto :goto_0

    .line 1134
    :cond_0
    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/Feed;->id()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1133
    :goto_0
    invoke-virtual {v0, v1, v2, v3}, Lmobi/beyondpod/rsscore/ConfigWriteHelper;->putString(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)V

    .line 1136
    invoke-static {p0}, Lmobi/beyondpod/rsscore/Configuration;->addRecentFeed(Lmobi/beyondpod/rsscore/Feed;)V

    return-void
.end method

.method public static setActiveMediaFilter(I)V
    .locals 3

    .line 1199
    invoke-static {}, Lmobi/beyondpod/rsscore/ConfigWriteHelper;->getInstance()Lmobi/beyondpod/rsscore/ConfigWriteHelper;

    move-result-object v0

    sget-object v1, Lmobi/beyondpod/rsscore/Configuration;->_preferences:Landroid/content/SharedPreferences;

    const-string v2, "ActiveMediaFilter"

    invoke-virtual {v0, v1, v2, p0}, Lmobi/beyondpod/rsscore/ConfigWriteHelper;->putInt(Landroid/content/SharedPreferences;Ljava/lang/String;I)V

    return-void
.end method

.method public static setAllowAutoTrackDeletions(Z)V
    .locals 3

    .line 1104
    invoke-static {}, Lmobi/beyondpod/rsscore/ConfigWriteHelper;->getInstance()Lmobi/beyondpod/rsscore/ConfigWriteHelper;

    move-result-object v0

    sget-object v1, Lmobi/beyondpod/rsscore/Configuration;->_preferences:Landroid/content/SharedPreferences;

    const-string v2, "AllowAutoTrackDeletions"

    invoke-virtual {v0, v1, v2, p0}, Lmobi/beyondpod/rsscore/ConfigWriteHelper;->putBoolean(Landroid/content/SharedPreferences;Ljava/lang/String;Z)V

    return-void
.end method

.method public static setAllowHidingRead(Z)V
    .locals 3

    .line 2559
    invoke-static {}, Lmobi/beyondpod/rsscore/ConfigWriteHelper;->getInstance()Lmobi/beyondpod/rsscore/ConfigWriteHelper;

    move-result-object v0

    sget-object v1, Lmobi/beyondpod/rsscore/Configuration;->_preferences:Landroid/content/SharedPreferences;

    const-string v2, "AllowHidingRead"

    invoke-virtual {v0, v1, v2, p0}, Lmobi/beyondpod/rsscore/ConfigWriteHelper;->putBoolean(Landroid/content/SharedPreferences;Ljava/lang/String;Z)V

    return-void
.end method

.method public static setAllowPullToRefresh(Z)V
    .locals 3

    .line 2373
    invoke-static {}, Lmobi/beyondpod/rsscore/ConfigWriteHelper;->getInstance()Lmobi/beyondpod/rsscore/ConfigWriteHelper;

    move-result-object v0

    sget-object v1, Lmobi/beyondpod/rsscore/Configuration;->_preferences:Landroid/content/SharedPreferences;

    const-string v2, "AllowPullToRefresh"

    invoke-virtual {v0, v1, v2, p0}, Lmobi/beyondpod/rsscore/ConfigWriteHelper;->putBoolean(Landroid/content/SharedPreferences;Ljava/lang/String;Z)V

    return-void
.end method

.method public static setAllowVideosInPlaylist(Z)V
    .locals 3

    .line 2069
    invoke-static {}, Lmobi/beyondpod/rsscore/ConfigWriteHelper;->getInstance()Lmobi/beyondpod/rsscore/ConfigWriteHelper;

    move-result-object v0

    sget-object v1, Lmobi/beyondpod/rsscore/Configuration;->_preferences:Landroid/content/SharedPreferences;

    const-string v2, "allowVideosInPlaylist"

    invoke-virtual {v0, v1, v2, p0}, Lmobi/beyondpod/rsscore/ConfigWriteHelper;->putBoolean(Landroid/content/SharedPreferences;Ljava/lang/String;Z)V

    return-void
.end method

.method public static setAndroidBackupRestored(I)V
    .locals 3

    .line 2304
    invoke-static {}, Lmobi/beyondpod/rsscore/ConfigWriteHelper;->getInstance()Lmobi/beyondpod/rsscore/ConfigWriteHelper;

    move-result-object v0

    sget-object v1, Lmobi/beyondpod/rsscore/Configuration;->_preferences:Landroid/content/SharedPreferences;

    const-string v2, "androidBackupRestored"

    invoke-virtual {v0, v1, v2, p0}, Lmobi/beyondpod/rsscore/ConfigWriteHelper;->putInt(Landroid/content/SharedPreferences;Ljava/lang/String;I)V

    return-void
.end method

.method public static setAreSettingsInitialized(Z)V
    .locals 3

    .line 1381
    invoke-static {}, Lmobi/beyondpod/rsscore/ConfigWriteHelper;->getInstance()Lmobi/beyondpod/rsscore/ConfigWriteHelper;

    move-result-object v0

    sget-object v1, Lmobi/beyondpod/rsscore/Configuration;->_preferences:Landroid/content/SharedPreferences;

    const-string v2, "DefaultSettingsInitialized"

    invoke-virtual {v0, v1, v2, p0}, Lmobi/beyondpod/rsscore/ConfigWriteHelper;->putBoolean(Landroid/content/SharedPreferences;Ljava/lang/String;Z)V

    return-void
.end method

.method public static setAsDownloadedOnMarkRead()Z
    .locals 3

    .line 1702
    sget-object v0, Lmobi/beyondpod/rsscore/Configuration;->_preferences:Landroid/content/SharedPreferences;

    const-string v1, "SetAsDownloadedOnMarkRead"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static setAsPlayedOnMarkRead()Z
    .locals 3

    .line 1712
    sget-object v0, Lmobi/beyondpod/rsscore/Configuration;->_preferences:Landroid/content/SharedPreferences;

    const-string v1, "SetAsPlayedOnMarkRead"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static setAttachDownloadedPodcastsWhenSharing(Z)V
    .locals 3

    .line 1504
    invoke-static {}, Lmobi/beyondpod/rsscore/ConfigWriteHelper;->getInstance()Lmobi/beyondpod/rsscore/ConfigWriteHelper;

    move-result-object v0

    sget-object v1, Lmobi/beyondpod/rsscore/Configuration;->_preferences:Landroid/content/SharedPreferences;

    const-string v2, "AttachDownloadedPodcastsWhenSharing"

    invoke-virtual {v0, v1, v2, p0}, Lmobi/beyondpod/rsscore/ConfigWriteHelper;->putBoolean(Landroid/content/SharedPreferences;Ljava/lang/String;Z)V

    return-void
.end method

.method public static setAutoPlaylistEnabled(Z)V
    .locals 3

    .line 2257
    invoke-static {}, Lmobi/beyondpod/rsscore/ConfigWriteHelper;->getInstance()Lmobi/beyondpod/rsscore/ConfigWriteHelper;

    move-result-object v0

    sget-object v1, Lmobi/beyondpod/rsscore/Configuration;->_preferences:Landroid/content/SharedPreferences;

    const-string v2, "AutoPlaylistEnabled"

    invoke-virtual {v0, v1, v2, p0}, Lmobi/beyondpod/rsscore/ConfigWriteHelper;->putBoolean(Landroid/content/SharedPreferences;Ljava/lang/String;Z)V

    return-void
.end method

.method public static setAutomaticallyReDownloadPartialEpisodes(Z)V
    .locals 3

    .line 2676
    invoke-static {}, Lmobi/beyondpod/rsscore/ConfigWriteHelper;->getInstance()Lmobi/beyondpod/rsscore/ConfigWriteHelper;

    move-result-object v0

    sget-object v1, Lmobi/beyondpod/rsscore/Configuration;->_preferences:Landroid/content/SharedPreferences;

    const-string v2, "AutomaticallyReDownloadPartialEpisodes"

    invoke-virtual {v0, v1, v2, p0}, Lmobi/beyondpod/rsscore/ConfigWriteHelper;->putBoolean(Landroid/content/SharedPreferences;Ljava/lang/String;Z)V

    return-void
.end method

.method public static setBTRemoteButtonAction(I)V
    .locals 3

    .line 1560
    invoke-static {}, Lmobi/beyondpod/rsscore/ConfigWriteHelper;->getInstance()Lmobi/beyondpod/rsscore/ConfigWriteHelper;

    move-result-object v0

    sget-object v1, Lmobi/beyondpod/rsscore/Configuration;->_preferences:Landroid/content/SharedPreferences;

    const-string v2, "BTRemoteButtonAction"

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, v2, p0}, Lmobi/beyondpod/rsscore/ConfigWriteHelper;->putString(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static setBackwardSkipInterval(I)V
    .locals 3

    .line 826
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->getBackwardSkipInterval()I

    move-result v0

    if-ne v0, p0, :cond_0

    return-void

    .line 829
    :cond_0
    invoke-static {}, Lmobi/beyondpod/rsscore/ConfigWriteHelper;->getInstance()Lmobi/beyondpod/rsscore/ConfigWriteHelper;

    move-result-object v0

    sget-object v1, Lmobi/beyondpod/rsscore/Configuration;->_preferences:Landroid/content/SharedPreferences;

    const-string v2, "BackwardSkipInterval"

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, v2, p0}, Lmobi/beyondpod/rsscore/ConfigWriteHelper;->putString(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static setCDSAllowRemoteEpisodeDeletions(Z)V
    .locals 3

    .line 2192
    invoke-static {}, Lmobi/beyondpod/rsscore/ConfigWriteHelper;->getInstance()Lmobi/beyondpod/rsscore/ConfigWriteHelper;

    move-result-object v0

    sget-object v1, Lmobi/beyondpod/rsscore/Configuration;->_preferences:Landroid/content/SharedPreferences;

    const-string v2, "CDSAllowRemoteEpisodeDeletions"

    invoke-virtual {v0, v1, v2, p0}, Lmobi/beyondpod/rsscore/ConfigWriteHelper;->putBoolean(Landroid/content/SharedPreferences;Ljava/lang/String;Z)V

    return-void
.end method

.method public static setCDSAllowRemoteFeeds(I)V
    .locals 3

    .line 2202
    invoke-static {}, Lmobi/beyondpod/rsscore/ConfigWriteHelper;->getInstance()Lmobi/beyondpod/rsscore/ConfigWriteHelper;

    move-result-object v0

    sget-object v1, Lmobi/beyondpod/rsscore/Configuration;->_preferences:Landroid/content/SharedPreferences;

    const-string v2, "CDSAllowRemoteFeeds"

    invoke-virtual {v0, v1, v2, p0}, Lmobi/beyondpod/rsscore/ConfigWriteHelper;->putInt(Landroid/content/SharedPreferences;Ljava/lang/String;I)V

    return-void
.end method

.method public static setCDSDeviceID(Ljava/lang/String;)V
    .locals 3

    .line 2139
    invoke-static {}, Lmobi/beyondpod/rsscore/ConfigWriteHelper;->getInstance()Lmobi/beyondpod/rsscore/ConfigWriteHelper;

    move-result-object v0

    sget-object v1, Lmobi/beyondpod/rsscore/Configuration;->_preferences:Landroid/content/SharedPreferences;

    const-string v2, "CDSDeviceID"

    invoke-virtual {v0, v1, v2, p0}, Lmobi/beyondpod/rsscore/ConfigWriteHelper;->putString(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static setCDSEnabled(Z)V
    .locals 3

    .line 2099
    invoke-static {}, Lmobi/beyondpod/rsscore/ConfigWriteHelper;->getInstance()Lmobi/beyondpod/rsscore/ConfigWriteHelper;

    move-result-object v0

    sget-object v1, Lmobi/beyondpod/rsscore/Configuration;->_preferences:Landroid/content/SharedPreferences;

    const-string v2, "CDSEnabled"

    invoke-virtual {v0, v1, v2, p0}, Lmobi/beyondpod/rsscore/ConfigWriteHelper;->putBoolean(Landroid/content/SharedPreferences;Ljava/lang/String;Z)V

    return-void
.end method

.method public static setCDSPassword(Ljava/lang/String;)V
    .locals 3

    .line 2119
    invoke-static {}, Lmobi/beyondpod/rsscore/ConfigWriteHelper;->getInstance()Lmobi/beyondpod/rsscore/ConfigWriteHelper;

    move-result-object v0

    sget-object v1, Lmobi/beyondpod/rsscore/Configuration;->_preferences:Landroid/content/SharedPreferences;

    const-string v2, "CDSPassword"

    invoke-virtual {v0, v1, v2, p0}, Lmobi/beyondpod/rsscore/ConfigWriteHelper;->putString(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static setCDSSyncFurthestPlayedPositionOnly(Z)V
    .locals 3

    .line 2212
    invoke-static {}, Lmobi/beyondpod/rsscore/ConfigWriteHelper;->getInstance()Lmobi/beyondpod/rsscore/ConfigWriteHelper;

    move-result-object v0

    sget-object v1, Lmobi/beyondpod/rsscore/Configuration;->_preferences:Landroid/content/SharedPreferences;

    const-string v2, "CDSSyncFurthestPlayedPositionOnly"

    invoke-virtual {v0, v1, v2, p0}, Lmobi/beyondpod/rsscore/ConfigWriteHelper;->putBoolean(Landroid/content/SharedPreferences;Ljava/lang/String;Z)V

    return-void
.end method

.method public static setCDSSyncRetryInterval(I)V
    .locals 3

    .line 2222
    invoke-static {}, Lmobi/beyondpod/rsscore/ConfigWriteHelper;->getInstance()Lmobi/beyondpod/rsscore/ConfigWriteHelper;

    move-result-object v0

    sget-object v1, Lmobi/beyondpod/rsscore/Configuration;->_preferences:Landroid/content/SharedPreferences;

    const-string v2, "CDSSyncRetryInterval"

    invoke-virtual {v0, v1, v2, p0}, Lmobi/beyondpod/rsscore/ConfigWriteHelper;->putInt(Landroid/content/SharedPreferences;Ljava/lang/String;I)V

    return-void
.end method

.method public static setCDSToken(Ljava/lang/String;)V
    .locals 3

    .line 2129
    invoke-static {}, Lmobi/beyondpod/rsscore/ConfigWriteHelper;->getInstance()Lmobi/beyondpod/rsscore/ConfigWriteHelper;

    move-result-object v0

    sget-object v1, Lmobi/beyondpod/rsscore/Configuration;->_preferences:Landroid/content/SharedPreferences;

    const-string v2, "CDSToken"

    invoke-virtual {v0, v1, v2, p0}, Lmobi/beyondpod/rsscore/ConfigWriteHelper;->putString(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static setCDSTokenExpiration(Ljava/util/Date;)V
    .locals 5

    .line 2153
    invoke-static {}, Lmobi/beyondpod/rsscore/ConfigWriteHelper;->getInstance()Lmobi/beyondpod/rsscore/ConfigWriteHelper;

    move-result-object v0

    sget-object v1, Lmobi/beyondpod/rsscore/Configuration;->_preferences:Landroid/content/SharedPreferences;

    const-string v2, "CDSTokenExpiration"

    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    invoke-virtual {v0, v1, v2, v3, v4}, Lmobi/beyondpod/rsscore/ConfigWriteHelper;->putLong(Landroid/content/SharedPreferences;Ljava/lang/String;J)V

    return-void
.end method

.method public static setCDSUserName(Ljava/lang/String;)V
    .locals 3

    .line 2109
    invoke-static {}, Lmobi/beyondpod/rsscore/ConfigWriteHelper;->getInstance()Lmobi/beyondpod/rsscore/ConfigWriteHelper;

    move-result-object v0

    sget-object v1, Lmobi/beyondpod/rsscore/Configuration;->_preferences:Landroid/content/SharedPreferences;

    const-string v2, "CDSUserName"

    invoke-virtual {v0, v1, v2, p0}, Lmobi/beyondpod/rsscore/ConfigWriteHelper;->putString(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static setClearStatusNotificationAtTheEndOfUpdate(Z)V
    .locals 3

    .line 1585
    invoke-static {}, Lmobi/beyondpod/rsscore/ConfigWriteHelper;->getInstance()Lmobi/beyondpod/rsscore/ConfigWriteHelper;

    move-result-object v0

    sget-object v1, Lmobi/beyondpod/rsscore/Configuration;->_preferences:Landroid/content/SharedPreferences;

    const-string v2, "ClearStatusNotificationAtTheEndOfUpdate"

    invoke-virtual {v0, v1, v2, p0}, Lmobi/beyondpod/rsscore/ConfigWriteHelper;->putBoolean(Landroid/content/SharedPreferences;Ljava/lang/String;Z)V

    return-void
.end method

.method public static setContentTheme(Ljava/lang/String;)V
    .locals 3

    .line 915
    invoke-static {}, Lmobi/beyondpod/rsscore/ConfigWriteHelper;->getInstance()Lmobi/beyondpod/rsscore/ConfigWriteHelper;

    move-result-object v0

    sget-object v1, Lmobi/beyondpod/rsscore/Configuration;->_preferences:Landroid/content/SharedPreferences;

    const-string v2, "contentTheme"

    invoke-virtual {v0, v1, v2, p0}, Lmobi/beyondpod/rsscore/ConfigWriteHelper;->putString(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static setContentViewColor(Ljava/lang/String;)V
    .locals 3

    .line 1464
    invoke-static {}, Lmobi/beyondpod/rsscore/ConfigWriteHelper;->getInstance()Lmobi/beyondpod/rsscore/ConfigWriteHelper;

    move-result-object v0

    sget-object v1, Lmobi/beyondpod/rsscore/Configuration;->_preferences:Landroid/content/SharedPreferences;

    const-string v2, "ContentViewColor"

    invoke-virtual {v0, v1, v2, p0}, Lmobi/beyondpod/rsscore/ConfigWriteHelper;->putString(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static setCustomSDCardLocation(Ljava/lang/String;)V
    .locals 3

    .line 1236
    invoke-static {}, Lmobi/beyondpod/rsscore/ConfigWriteHelper;->getInstance()Lmobi/beyondpod/rsscore/ConfigWriteHelper;

    move-result-object v0

    sget-object v1, Lmobi/beyondpod/rsscore/Configuration;->_preferences:Landroid/content/SharedPreferences;

    const-string v2, "customSDCardLocation"

    invoke-virtual {v0, v1, v2, p0}, Lmobi/beyondpod/rsscore/ConfigWriteHelper;->putString(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static setDefaultBackupPath(Ljava/lang/String;)V
    .locals 3

    .line 2294
    invoke-static {}, Lmobi/beyondpod/rsscore/ConfigWriteHelper;->getInstance()Lmobi/beyondpod/rsscore/ConfigWriteHelper;

    move-result-object v0

    sget-object v1, Lmobi/beyondpod/rsscore/Configuration;->_preferences:Landroid/content/SharedPreferences;

    const-string v2, "defaultBackupPath"

    invoke-virtual {v0, v1, v2, p0}, Lmobi/beyondpod/rsscore/ConfigWriteHelper;->putString(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static setDefaultDocFontSize(Ljava/lang/String;)V
    .locals 3

    .line 900
    invoke-static {}, Lmobi/beyondpod/rsscore/ConfigWriteHelper;->getInstance()Lmobi/beyondpod/rsscore/ConfigWriteHelper;

    move-result-object v0

    sget-object v1, Lmobi/beyondpod/rsscore/Configuration;->_preferences:Landroid/content/SharedPreferences;

    const-string v2, "ContentFontSize"

    invoke-virtual {v0, v1, v2, p0}, Lmobi/beyondpod/rsscore/ConfigWriteHelper;->putString(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static setDefaultPlaybackSpeed(F)V
    .locals 3

    .line 1917
    invoke-static {}, Lmobi/beyondpod/rsscore/ConfigWriteHelper;->getInstance()Lmobi/beyondpod/rsscore/ConfigWriteHelper;

    move-result-object v0

    sget-object v1, Lmobi/beyondpod/rsscore/Configuration;->_preferences:Landroid/content/SharedPreferences;

    const-string v2, "defaultPlaybackSpeed"

    invoke-static {p0}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, v2, p0}, Lmobi/beyondpod/rsscore/ConfigWriteHelper;->putString(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static setDefferAutoSyncSmartPlay(Z)V
    .locals 3

    .line 2059
    invoke-static {}, Lmobi/beyondpod/rsscore/ConfigWriteHelper;->getInstance()Lmobi/beyondpod/rsscore/ConfigWriteHelper;

    move-result-object v0

    sget-object v1, Lmobi/beyondpod/rsscore/Configuration;->_preferences:Landroid/content/SharedPreferences;

    const-string v2, "defferAutoSyncSmartPlay"

    invoke-virtual {v0, v1, v2, p0}, Lmobi/beyondpod/rsscore/ConfigWriteHelper;->putBoolean(Landroid/content/SharedPreferences;Ljava/lang/String;Z)V

    return-void
.end method

.method public static setDownloadEnclosuresOnWiFiOnly(Z)V
    .locals 3

    .line 1570
    invoke-static {}, Lmobi/beyondpod/rsscore/ConfigWriteHelper;->getInstance()Lmobi/beyondpod/rsscore/ConfigWriteHelper;

    move-result-object v0

    sget-object v1, Lmobi/beyondpod/rsscore/Configuration;->_preferences:Landroid/content/SharedPreferences;

    const-string v2, "DownloadEnclosuresOnWiFiOnly"

    invoke-virtual {v0, v1, v2, p0}, Lmobi/beyondpod/rsscore/ConfigWriteHelper;->putBoolean(Landroid/content/SharedPreferences;Ljava/lang/String;Z)V

    return-void
.end method

.method public static setEnableAudioPlugins(Z)V
    .locals 3

    .line 1962
    invoke-static {}, Lmobi/beyondpod/rsscore/ConfigWriteHelper;->getInstance()Lmobi/beyondpod/rsscore/ConfigWriteHelper;

    move-result-object v0

    sget-object v1, Lmobi/beyondpod/rsscore/Configuration;->_preferences:Landroid/content/SharedPreferences;

    const-string v2, "EnableAudioPlugins"

    invoke-virtual {v0, v1, v2, p0}, Lmobi/beyondpod/rsscore/ConfigWriteHelper;->putBoolean(Landroid/content/SharedPreferences;Ljava/lang/String;Z)V

    return-void
.end method

.method public static setEnableBrowserPlugins(Z)V
    .locals 3

    .line 1494
    invoke-static {}, Lmobi/beyondpod/rsscore/ConfigWriteHelper;->getInstance()Lmobi/beyondpod/rsscore/ConfigWriteHelper;

    move-result-object v0

    sget-object v1, Lmobi/beyondpod/rsscore/Configuration;->_preferences:Landroid/content/SharedPreferences;

    const-string v2, "EnableBrowserPlugins"

    invoke-virtual {v0, v1, v2, p0}, Lmobi/beyondpod/rsscore/ConfigWriteHelper;->putBoolean(Landroid/content/SharedPreferences;Ljava/lang/String;Z)V

    return-void
.end method

.method public static setEnableHeadsetButton(Z)V
    .locals 3

    .line 1421
    invoke-static {}, Lmobi/beyondpod/rsscore/ConfigWriteHelper;->getInstance()Lmobi/beyondpod/rsscore/ConfigWriteHelper;

    move-result-object v0

    sget-object v1, Lmobi/beyondpod/rsscore/Configuration;->_preferences:Landroid/content/SharedPreferences;

    const-string v2, "EnableHeadsetButton"

    invoke-virtual {v0, v1, v2, p0}, Lmobi/beyondpod/rsscore/ConfigWriteHelper;->putBoolean(Landroid/content/SharedPreferences;Ljava/lang/String;Z)V

    return-void
.end method

.method public static setEnableLoggingInProduction(Z)V
    .locals 3

    .line 1524
    invoke-static {}, Lmobi/beyondpod/rsscore/ConfigWriteHelper;->getInstance()Lmobi/beyondpod/rsscore/ConfigWriteHelper;

    move-result-object v0

    sget-object v1, Lmobi/beyondpod/rsscore/Configuration;->_preferences:Landroid/content/SharedPreferences;

    const-string v2, "EnableLoggingInProduction"

    invoke-virtual {v0, v1, v2, p0}, Lmobi/beyondpod/rsscore/ConfigWriteHelper;->putBoolean(Landroid/content/SharedPreferences;Ljava/lang/String;Z)V

    return-void
.end method

.method public static setEnableSonicAudioPlugin(Z)V
    .locals 3

    .line 1977
    invoke-static {}, Lmobi/beyondpod/rsscore/ConfigWriteHelper;->getInstance()Lmobi/beyondpod/rsscore/ConfigWriteHelper;

    move-result-object v0

    sget-object v1, Lmobi/beyondpod/rsscore/Configuration;->_preferences:Landroid/content/SharedPreferences;

    const-string v2, "EnableSonicAudioPlugin"

    invoke-virtual {v0, v1, v2, p0}, Lmobi/beyondpod/rsscore/ConfigWriteHelper;->putBoolean(Landroid/content/SharedPreferences;Ljava/lang/String;Z)V

    return-void
.end method

.method public static setEnclosureDownloadRoot(Ljava/lang/String;)V
    .locals 0

    .line 368
    sput-object p0, Lmobi/beyondpod/rsscore/Configuration;->_EnclosureDownloadRootPath:Ljava/lang/String;

    return-void
.end method

.method public static setEpisodeCardSize(I)V
    .locals 3

    .line 2656
    invoke-static {}, Lmobi/beyondpod/rsscore/ConfigWriteHelper;->getInstance()Lmobi/beyondpod/rsscore/ConfigWriteHelper;

    move-result-object v0

    sget-object v1, Lmobi/beyondpod/rsscore/Configuration;->_preferences:Landroid/content/SharedPreferences;

    const-string v2, "episodeCardSize"

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, v2, p0}, Lmobi/beyondpod/rsscore/ConfigWriteHelper;->putString(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static setExpandedCategories(Ljava/lang/String;)V
    .locals 3

    .line 2569
    invoke-static {}, Lmobi/beyondpod/rsscore/ConfigWriteHelper;->getInstance()Lmobi/beyondpod/rsscore/ConfigWriteHelper;

    move-result-object v0

    sget-object v1, Lmobi/beyondpod/rsscore/Configuration;->_preferences:Landroid/content/SharedPreferences;

    const-string v2, "ExpandedCategories"

    invoke-virtual {v0, v1, v2, p0}, Lmobi/beyondpod/rsscore/ConfigWriteHelper;->putString(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static setExpirationWarningShownInThisSession()V
    .locals 1

    const/4 v0, 0x1

    .line 2390
    sput-boolean v0, Lmobi/beyondpod/rsscore/Configuration;->_IsExpirationWarningShownInThisSession:Z

    return-void
.end method

.method public static setFeedSelectedAction(I)V
    .locals 3

    .line 2609
    invoke-static {}, Lmobi/beyondpod/rsscore/ConfigWriteHelper;->getInstance()Lmobi/beyondpod/rsscore/ConfigWriteHelper;

    move-result-object v0

    sget-object v1, Lmobi/beyondpod/rsscore/Configuration;->_preferences:Landroid/content/SharedPreferences;

    const-string v2, "FeedSelectedAction"

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, v2, p0}, Lmobi/beyondpod/rsscore/ConfigWriteHelper;->putString(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static setFeedsSortOrder(I)V
    .locals 3

    .line 873
    invoke-static {}, Lmobi/beyondpod/rsscore/ConfigWriteHelper;->getInstance()Lmobi/beyondpod/rsscore/ConfigWriteHelper;

    move-result-object v0

    sget-object v1, Lmobi/beyondpod/rsscore/Configuration;->_preferences:Landroid/content/SharedPreferences;

    const-string v2, "FeedsSortOrder"

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, v2, p0}, Lmobi/beyondpod/rsscore/ConfigWriteHelper;->putString(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static setForwardSkipInterval(I)V
    .locals 3

    .line 810
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->getForwardSkipInterval()I

    move-result v0

    if-ne v0, p0, :cond_0

    return-void

    .line 813
    :cond_0
    invoke-static {}, Lmobi/beyondpod/rsscore/ConfigWriteHelper;->getInstance()Lmobi/beyondpod/rsscore/ConfigWriteHelper;

    move-result-object v0

    sget-object v1, Lmobi/beyondpod/rsscore/Configuration;->_preferences:Landroid/content/SharedPreferences;

    const-string v2, "ForwardSkipInterval"

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, v2, p0}, Lmobi/beyondpod/rsscore/ConfigWriteHelper;->putString(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static setGCMRegistrationId(Ljava/lang/String;)V
    .locals 3

    .line 2524
    invoke-static {}, Lmobi/beyondpod/rsscore/ConfigWriteHelper;->getInstance()Lmobi/beyondpod/rsscore/ConfigWriteHelper;

    move-result-object v0

    sget-object v1, Lmobi/beyondpod/rsscore/Configuration;->_preferences:Landroid/content/SharedPreferences;

    const-string v2, "GCMRegistrationId"

    invoke-virtual {v0, v1, v2, p0}, Lmobi/beyondpod/rsscore/ConfigWriteHelper;->putString(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)V

    .line 2525
    invoke-static {}, Lmobi/beyondpod/rsscore/ConfigWriteHelper;->getInstance()Lmobi/beyondpod/rsscore/ConfigWriteHelper;

    move-result-object p0

    sget-object v0, Lmobi/beyondpod/rsscore/Configuration;->_preferences:Landroid/content/SharedPreferences;

    const-string v1, "GCMRegistrationAppVersion"

    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->currentProductVersionCode()I

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Lmobi/beyondpod/rsscore/ConfigWriteHelper;->putInt(Landroid/content/SharedPreferences;Ljava/lang/String;I)V

    return-void
.end method

.method public static setGReaderAccountName(Ljava/lang/String;)V
    .locals 3

    .line 1326
    invoke-static {}, Lmobi/beyondpod/rsscore/ConfigWriteHelper;->getInstance()Lmobi/beyondpod/rsscore/ConfigWriteHelper;

    move-result-object v0

    sget-object v1, Lmobi/beyondpod/rsscore/Configuration;->_preferences:Landroid/content/SharedPreferences;

    const-string v2, "GReaderAccountName"

    invoke-virtual {v0, v1, v2, p0}, Lmobi/beyondpod/rsscore/ConfigWriteHelper;->putString(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static setGReaderAuthValue(Ljava/lang/String;)V
    .locals 3

    .line 1265
    sput-object p0, Lmobi/beyondpod/rsscore/Configuration;->_GReaderAuthValue:Ljava/lang/String;

    .line 1266
    invoke-static {}, Lmobi/beyondpod/rsscore/ConfigWriteHelper;->getInstance()Lmobi/beyondpod/rsscore/ConfigWriteHelper;

    move-result-object v0

    sget-object v1, Lmobi/beyondpod/rsscore/Configuration;->_preferences:Landroid/content/SharedPreferences;

    const-string v2, "GReaderAuthValue"

    invoke-virtual {v0, v1, v2, p0}, Lmobi/beyondpod/rsscore/ConfigWriteHelper;->putString(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static setGReaderCookie(Ljava/lang/String;)V
    .locals 3

    .line 1251
    sput-object p0, Lmobi/beyondpod/rsscore/Configuration;->_GReaderCookie:Ljava/lang/String;

    .line 1252
    invoke-static {}, Lmobi/beyondpod/rsscore/ConfigWriteHelper;->getInstance()Lmobi/beyondpod/rsscore/ConfigWriteHelper;

    move-result-object v0

    sget-object v1, Lmobi/beyondpod/rsscore/Configuration;->_preferences:Landroid/content/SharedPreferences;

    const-string v2, "GReaderCookie"

    invoke-virtual {v0, v1, v2, p0}, Lmobi/beyondpod/rsscore/ConfigWriteHelper;->putString(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static setGatherAnalyticsData(Z)V
    .locals 3

    .line 1673
    invoke-static {}, Lmobi/beyondpod/rsscore/ConfigWriteHelper;->getInstance()Lmobi/beyondpod/rsscore/ConfigWriteHelper;

    move-result-object v0

    sget-object v1, Lmobi/beyondpod/rsscore/Configuration;->_preferences:Landroid/content/SharedPreferences;

    const-string v2, "GatherAnalyticsData"

    invoke-virtual {v0, v1, v2, p0}, Lmobi/beyondpod/rsscore/ConfigWriteHelper;->putBoolean(Landroid/content/SharedPreferences;Ljava/lang/String;Z)V

    return-void
.end method

.method public static setGlobalDefaultKeepAtMostPodcasts(I)V
    .locals 3

    .line 1056
    invoke-static {}, Lmobi/beyondpod/rsscore/ConfigWriteHelper;->getInstance()Lmobi/beyondpod/rsscore/ConfigWriteHelper;

    move-result-object v0

    sget-object v1, Lmobi/beyondpod/rsscore/Configuration;->_preferences:Landroid/content/SharedPreferences;

    const-string v2, "DefaultKeepAtMostPodcasts"

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, v2, p0}, Lmobi/beyondpod/rsscore/ConfigWriteHelper;->putString(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static setGlobalDefaultMaximumGReaderItemsToGet(I)V
    .locals 3

    .line 1077
    invoke-static {}, Lmobi/beyondpod/rsscore/ConfigWriteHelper;->getInstance()Lmobi/beyondpod/rsscore/ConfigWriteHelper;

    move-result-object v0

    sget-object v1, Lmobi/beyondpod/rsscore/Configuration;->_preferences:Landroid/content/SharedPreferences;

    const-string v2, "DefaultMaximumGReaderItemsToGet"

    .line 1078
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    .line 1077
    invoke-virtual {v0, v1, v2, p0}, Lmobi/beyondpod/rsscore/ConfigWriteHelper;->putString(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static setGlobalDefaultMaximumPodcastAge(Lmobi/beyondpod/rsscore/helpers/TimeSpan;)V
    .locals 5

    .line 1071
    invoke-static {}, Lmobi/beyondpod/rsscore/ConfigWriteHelper;->getInstance()Lmobi/beyondpod/rsscore/ConfigWriteHelper;

    move-result-object v0

    sget-object v1, Lmobi/beyondpod/rsscore/Configuration;->_preferences:Landroid/content/SharedPreferences;

    const-string v2, "DefaultMaximumPodcastAge"

    .line 1072
    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/helpers/TimeSpan;->getTotalDays()D

    move-result-wide v3

    double-to-int p0, v3

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    .line 1071
    invoke-virtual {v0, v1, v2, p0}, Lmobi/beyondpod/rsscore/ConfigWriteHelper;->putString(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static setGlobalDefaultNumberPodcastsToDownload(I)V
    .locals 3

    .line 1045
    invoke-static {}, Lmobi/beyondpod/rsscore/ConfigWriteHelper;->getInstance()Lmobi/beyondpod/rsscore/ConfigWriteHelper;

    move-result-object v0

    sget-object v1, Lmobi/beyondpod/rsscore/Configuration;->_preferences:Landroid/content/SharedPreferences;

    const-string v2, "DefaultNumberPodcastsToDownload"

    .line 1046
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    .line 1045
    invoke-virtual {v0, v1, v2, p0}, Lmobi/beyondpod/rsscore/ConfigWriteHelper;->putString(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static setGlobalDefaultPodcastDownloadAction(I)V
    .locals 3

    .line 1034
    invoke-static {}, Lmobi/beyondpod/rsscore/ConfigWriteHelper;->getInstance()Lmobi/beyondpod/rsscore/ConfigWriteHelper;

    move-result-object v0

    sget-object v1, Lmobi/beyondpod/rsscore/Configuration;->_preferences:Landroid/content/SharedPreferences;

    const-string v2, "DefaultPodcastDownloadAction"

    .line 1035
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, v2, p0}, Lmobi/beyondpod/rsscore/ConfigWriteHelper;->putString(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static setGoogleSyncInitialized(Z)V
    .locals 3

    .line 1474
    invoke-static {}, Lmobi/beyondpod/rsscore/ConfigWriteHelper;->getInstance()Lmobi/beyondpod/rsscore/ConfigWriteHelper;

    move-result-object v0

    sget-object v1, Lmobi/beyondpod/rsscore/Configuration;->_preferences:Landroid/content/SharedPreferences;

    const-string v2, "googleSyncInitialized"

    invoke-virtual {v0, v1, v2, p0}, Lmobi/beyondpod/rsscore/ConfigWriteHelper;->putBoolean(Landroid/content/SharedPreferences;Ljava/lang/String;Z)V

    return-void
.end method

.method public static setGroupByFeedIfShowingCategoryTracks(Z)V
    .locals 3

    .line 977
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->getGroupByFeedIfShowingCategoryTracks()Z

    move-result v0

    if-ne v0, p0, :cond_0

    return-void

    .line 980
    :cond_0
    invoke-static {}, Lmobi/beyondpod/rsscore/ConfigWriteHelper;->getInstance()Lmobi/beyondpod/rsscore/ConfigWriteHelper;

    move-result-object v0

    sget-object v1, Lmobi/beyondpod/rsscore/Configuration;->_preferences:Landroid/content/SharedPreferences;

    const-string v2, "GroupByFeedIfShowingCategoryTracks"

    invoke-virtual {v0, v1, v2, p0}, Lmobi/beyondpod/rsscore/ConfigWriteHelper;->putBoolean(Landroid/content/SharedPreferences;Ljava/lang/String;Z)V

    return-void
.end method

.method public static setHideReadFeeds(Z)V
    .locals 3

    .line 963
    invoke-static {}, Lmobi/beyondpod/rsscore/ConfigWriteHelper;->getInstance()Lmobi/beyondpod/rsscore/ConfigWriteHelper;

    move-result-object v0

    sget-object v1, Lmobi/beyondpod/rsscore/Configuration;->_preferences:Landroid/content/SharedPreferences;

    const-string v2, "HideReadFeeds"

    invoke-virtual {v0, v1, v2, p0}, Lmobi/beyondpod/rsscore/ConfigWriteHelper;->putBoolean(Landroid/content/SharedPreferences;Ljava/lang/String;Z)V

    return-void
.end method

.method public static setHideUnsupportedFileTypes(Z)V
    .locals 3

    .line 855
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->getHideUnsupportedFileTypes()Z

    move-result v0

    if-ne v0, p0, :cond_0

    return-void

    .line 858
    :cond_0
    invoke-static {}, Lmobi/beyondpod/rsscore/ConfigWriteHelper;->getInstance()Lmobi/beyondpod/rsscore/ConfigWriteHelper;

    move-result-object v0

    sget-object v1, Lmobi/beyondpod/rsscore/Configuration;->_preferences:Landroid/content/SharedPreferences;

    const-string v2, "HideUnsupportedFileTypes"

    invoke-virtual {v0, v1, v2, p0}, Lmobi/beyondpod/rsscore/ConfigWriteHelper;->putBoolean(Landroid/content/SharedPreferences;Ljava/lang/String;Z)V

    return-void
.end method

.method public static setIndexOfCurrentPlaylistTrackInPlaylist(I)V
    .locals 3

    .line 1605
    invoke-static {}, Lmobi/beyondpod/rsscore/ConfigWriteHelper;->getInstance()Lmobi/beyondpod/rsscore/ConfigWriteHelper;

    move-result-object v0

    sget-object v1, Lmobi/beyondpod/rsscore/Configuration;->_preferences:Landroid/content/SharedPreferences;

    const-string v2, "indexOfCurrentPlaylistTrackInPlaylist"

    invoke-virtual {v0, v1, v2, p0}, Lmobi/beyondpod/rsscore/ConfigWriteHelper;->putInt(Landroid/content/SharedPreferences;Ljava/lang/String;I)V

    return-void
.end method

.method public static setInternalPlayerSupportedFileExtensions(Ljava/lang/String;)V
    .locals 5

    .line 1093
    invoke-static {}, Lmobi/beyondpod/rsscore/ConfigWriteHelper;->getInstance()Lmobi/beyondpod/rsscore/ConfigWriteHelper;

    move-result-object v0

    sget-object v1, Lmobi/beyondpod/rsscore/Configuration;->_preferences:Landroid/content/SharedPreferences;

    const-string v2, "PlayerSupportedFileExtensions"

    .line 1094
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    const-string v3, "  "

    const-string v4, " "

    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    const-string v3, "."

    const-string v4, ""

    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    const-string v3, " ,"

    const-string v4, ","

    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 1093
    invoke-virtual {v0, v1, v2, p0}, Lmobi/beyondpod/rsscore/ConfigWriteHelper;->putString(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static setIsCellularConnectionAllowed(Z)V
    .locals 3

    .line 1209
    invoke-static {}, Lmobi/beyondpod/rsscore/ConfigWriteHelper;->getInstance()Lmobi/beyondpod/rsscore/ConfigWriteHelper;

    move-result-object v0

    sget-object v1, Lmobi/beyondpod/rsscore/Configuration;->_preferences:Landroid/content/SharedPreferences;

    const-string v2, "AllowCellularConnections"

    invoke-virtual {v0, v1, v2, p0}, Lmobi/beyondpod/rsscore/ConfigWriteHelper;->putBoolean(Landroid/content/SharedPreferences;Ljava/lang/String;Z)V

    return-void
.end method

.method public static setIsCurrentPlaylistManuallyModified(Z)V
    .locals 3

    .line 1625
    invoke-static {}, Lmobi/beyondpod/rsscore/ConfigWriteHelper;->getInstance()Lmobi/beyondpod/rsscore/ConfigWriteHelper;

    move-result-object v0

    sget-object v1, Lmobi/beyondpod/rsscore/Configuration;->_preferences:Landroid/content/SharedPreferences;

    const-string v2, "isCurrentPlaylistManuallyModified"

    invoke-virtual {v0, v1, v2, p0}, Lmobi/beyondpod/rsscore/ConfigWriteHelper;->putBoolean(Landroid/content/SharedPreferences;Ljava/lang/String;Z)V

    return-void
.end method

.method public static setItemFilter(I)V
    .locals 3

    .line 953
    invoke-static {}, Lmobi/beyondpod/rsscore/ConfigWriteHelper;->getInstance()Lmobi/beyondpod/rsscore/ConfigWriteHelper;

    move-result-object v0

    sget-object v1, Lmobi/beyondpod/rsscore/Configuration;->_preferences:Landroid/content/SharedPreferences;

    const-string v2, "ItemFilter"

    invoke-virtual {v0, v1, v2, p0}, Lmobi/beyondpod/rsscore/ConfigWriteHelper;->putInt(Landroid/content/SharedPreferences;Ljava/lang/String;I)V

    return-void
.end method

.method public static setLastRemoteChangeTimeStamp(J)V
    .locals 3

    .line 2089
    invoke-static {}, Lmobi/beyondpod/rsscore/ConfigWriteHelper;->getInstance()Lmobi/beyondpod/rsscore/ConfigWriteHelper;

    move-result-object v0

    sget-object v1, Lmobi/beyondpod/rsscore/Configuration;->_preferences:Landroid/content/SharedPreferences;

    const-string v2, "lastRemoteChangeTimeStamp"

    invoke-virtual {v0, v1, v2, p0, p1}, Lmobi/beyondpod/rsscore/ConfigWriteHelper;->putLong(Landroid/content/SharedPreferences;Ljava/lang/String;J)V

    return-void
.end method

.method public static setLastSDCardRootPath(Ljava/lang/String;)V
    .locals 3

    .line 2314
    invoke-static {}, Lmobi/beyondpod/rsscore/ConfigWriteHelper;->getInstance()Lmobi/beyondpod/rsscore/ConfigWriteHelper;

    move-result-object v0

    sget-object v1, Lmobi/beyondpod/rsscore/Configuration;->_preferences:Landroid/content/SharedPreferences;

    const-string v2, "lastSDCardRootPath"

    invoke-virtual {v0, v1, v2, p0}, Lmobi/beyondpod/rsscore/ConfigWriteHelper;->putString(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static setLastSyncTimeStamp(J)V
    .locals 3

    .line 2079
    invoke-static {}, Lmobi/beyondpod/rsscore/ConfigWriteHelper;->getInstance()Lmobi/beyondpod/rsscore/ConfigWriteHelper;

    move-result-object v0

    sget-object v1, Lmobi/beyondpod/rsscore/Configuration;->_preferences:Landroid/content/SharedPreferences;

    const-string v2, "lastSyncTimeStamp"

    invoke-virtual {v0, v1, v2, p0, p1}, Lmobi/beyondpod/rsscore/ConfigWriteHelper;->putLong(Landroid/content/SharedPreferences;Ljava/lang/String;J)V

    return-void
.end method

.method public static setLastTipNotificationTime(Ljava/util/Date;)V
    .locals 5

    .line 783
    invoke-static {}, Lmobi/beyondpod/rsscore/ConfigWriteHelper;->getInstance()Lmobi/beyondpod/rsscore/ConfigWriteHelper;

    move-result-object v0

    sget-object v1, Lmobi/beyondpod/rsscore/Configuration;->_preferences:Landroid/content/SharedPreferences;

    const-string v2, "LastTipNotificationTime"

    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    invoke-virtual {v0, v1, v2, v3, v4}, Lmobi/beyondpod/rsscore/ConfigWriteHelper;->putLong(Landroid/content/SharedPreferences;Ljava/lang/String;J)V

    return-void
.end method

.method public static setLastUpdateAndDownloadManagerRunTime(Ljava/util/Date;)V
    .locals 5

    .line 797
    invoke-static {}, Lmobi/beyondpod/rsscore/ConfigWriteHelper;->getInstance()Lmobi/beyondpod/rsscore/ConfigWriteHelper;

    move-result-object v0

    sget-object v1, Lmobi/beyondpod/rsscore/Configuration;->_preferences:Landroid/content/SharedPreferences;

    const-string v2, "LastUpdateAndDownloadManagerRunTime"

    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    invoke-virtual {v0, v1, v2, v3, v4}, Lmobi/beyondpod/rsscore/ConfigWriteHelper;->putLong(Landroid/content/SharedPreferences;Ljava/lang/String;J)V

    return-void
.end method

.method public static setLastUsedSmartplayId(I)V
    .locals 3

    .line 2589
    invoke-static {}, Lmobi/beyondpod/rsscore/ConfigWriteHelper;->getInstance()Lmobi/beyondpod/rsscore/ConfigWriteHelper;

    move-result-object v0

    sget-object v1, Lmobi/beyondpod/rsscore/Configuration;->_preferences:Landroid/content/SharedPreferences;

    const-string v2, "lastUsedSmartplayId"

    invoke-virtual {v0, v1, v2, p0}, Lmobi/beyondpod/rsscore/ConfigWriteHelper;->putInt(Landroid/content/SharedPreferences;Ljava/lang/String;I)V

    return-void
.end method

.method public static setLicenseTypeString(Ljava/lang/String;)V
    .locals 3

    .line 1595
    invoke-static {}, Lmobi/beyondpod/rsscore/ConfigWriteHelper;->getInstance()Lmobi/beyondpod/rsscore/ConfigWriteHelper;

    move-result-object v0

    sget-object v1, Lmobi/beyondpod/rsscore/Configuration;->_preferences:Landroid/content/SharedPreferences;

    const-string v2, "licenseTypeString"

    invoke-virtual {v0, v1, v2, p0}, Lmobi/beyondpod/rsscore/ConfigWriteHelper;->putString(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static setLoadContentViewImagesAutomatically(Z)V
    .locals 3

    .line 1411
    invoke-static {}, Lmobi/beyondpod/rsscore/ConfigWriteHelper;->getInstance()Lmobi/beyondpod/rsscore/ConfigWriteHelper;

    move-result-object v0

    sget-object v1, Lmobi/beyondpod/rsscore/Configuration;->_preferences:Landroid/content/SharedPreferences;

    const-string v2, "loadContentViewImagesAutomatically"

    invoke-virtual {v0, v1, v2, p0}, Lmobi/beyondpod/rsscore/ConfigWriteHelper;->putBoolean(Landroid/content/SharedPreferences;Ljava/lang/String;Z)V

    return-void
.end method

.method public static setMarkAsReadOnOpen(I)V
    .locals 3

    .line 1660
    invoke-static {}, Lmobi/beyondpod/rsscore/ConfigWriteHelper;->getInstance()Lmobi/beyondpod/rsscore/ConfigWriteHelper;

    move-result-object v0

    sget-object v1, Lmobi/beyondpod/rsscore/Configuration;->_preferences:Landroid/content/SharedPreferences;

    const-string v2, "MarkAsReadOnOpen"

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, v2, p0}, Lmobi/beyondpod/rsscore/ConfigWriteHelper;->putString(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static setMediaEndAction(I)V
    .locals 3

    .line 842
    invoke-static {}, Lmobi/beyondpod/rsscore/ConfigWriteHelper;->getInstance()Lmobi/beyondpod/rsscore/ConfigWriteHelper;

    move-result-object v0

    sget-object v1, Lmobi/beyondpod/rsscore/Configuration;->_preferences:Landroid/content/SharedPreferences;

    const-string v2, "MediaEndAction"

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, v2, p0}, Lmobi/beyondpod/rsscore/ConfigWriteHelper;->putString(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static setNextNotificationTime(Ljava/util/Date;)V
    .locals 5

    .line 769
    invoke-static {}, Lmobi/beyondpod/rsscore/ConfigWriteHelper;->getInstance()Lmobi/beyondpod/rsscore/ConfigWriteHelper;

    move-result-object v0

    sget-object v1, Lmobi/beyondpod/rsscore/Configuration;->_preferences:Landroid/content/SharedPreferences;

    const-string v2, "NextNotificationTime"

    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    invoke-virtual {v0, v1, v2, v3, v4}, Lmobi/beyondpod/rsscore/ConfigWriteHelper;->putLong(Landroid/content/SharedPreferences;Ljava/lang/String;J)V

    return-void
.end method

.method public static setNextSmartPlayShortcutId(I)V
    .locals 3

    .line 2624
    invoke-static {}, Lmobi/beyondpod/rsscore/ConfigWriteHelper;->getInstance()Lmobi/beyondpod/rsscore/ConfigWriteHelper;

    move-result-object v0

    sget-object v1, Lmobi/beyondpod/rsscore/Configuration;->_preferences:Landroid/content/SharedPreferences;

    const-string v2, "nextSmartPlayShortcutId"

    invoke-virtual {v0, v1, v2, p0}, Lmobi/beyondpod/rsscore/ConfigWriteHelper;->putInt(Landroid/content/SharedPreferences;Ljava/lang/String;I)V

    return-void
.end method

.method public static setOAuthAccessToken(Ljava/lang/String;)V
    .locals 3

    .line 1279
    invoke-static {}, Lmobi/beyondpod/rsscore/ConfigWriteHelper;->getInstance()Lmobi/beyondpod/rsscore/ConfigWriteHelper;

    move-result-object v0

    sget-object v1, Lmobi/beyondpod/rsscore/Configuration;->_preferences:Landroid/content/SharedPreferences;

    const-string v2, "OAuthToken"

    invoke-virtual {v0, v1, v2, p0}, Lmobi/beyondpod/rsscore/ConfigWriteHelper;->putString(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static setOAuthAccessTokenExpiration(Ljava/util/Date;)V
    .locals 5

    .line 1315
    invoke-static {}, Lmobi/beyondpod/rsscore/ConfigWriteHelper;->getInstance()Lmobi/beyondpod/rsscore/ConfigWriteHelper;

    move-result-object v0

    sget-object v1, Lmobi/beyondpod/rsscore/Configuration;->_preferences:Landroid/content/SharedPreferences;

    const-string v2, "OAuthAccessTokenExpiration"

    if-nez p0, :cond_0

    const-wide/16 v3, 0x1

    goto :goto_0

    .line 1316
    :cond_0
    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    .line 1315
    :goto_0
    invoke-virtual {v0, v1, v2, v3, v4}, Lmobi/beyondpod/rsscore/ConfigWriteHelper;->putLong(Landroid/content/SharedPreferences;Ljava/lang/String;J)V

    return-void
.end method

.method public static setOAuthRefreshToken(Ljava/lang/String;)V
    .locals 3

    .line 1299
    invoke-static {}, Lmobi/beyondpod/rsscore/ConfigWriteHelper;->getInstance()Lmobi/beyondpod/rsscore/ConfigWriteHelper;

    move-result-object v0

    sget-object v1, Lmobi/beyondpod/rsscore/Configuration;->_preferences:Landroid/content/SharedPreferences;

    const-string v2, "OAuthRefreshToken"

    invoke-virtual {v0, v1, v2, p0}, Lmobi/beyondpod/rsscore/ConfigWriteHelper;->putString(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static setOAuthUser(Ljava/lang/String;)V
    .locals 3

    .line 1289
    invoke-static {}, Lmobi/beyondpod/rsscore/ConfigWriteHelper;->getInstance()Lmobi/beyondpod/rsscore/ConfigWriteHelper;

    move-result-object v0

    sget-object v1, Lmobi/beyondpod/rsscore/Configuration;->_preferences:Landroid/content/SharedPreferences;

    const-string v2, "OAuthUser"

    invoke-virtual {v0, v1, v2, p0}, Lmobi/beyondpod/rsscore/ConfigWriteHelper;->putString(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static setPauseOnHeadsetDisconnect(Z)V
    .locals 3

    .line 1434
    invoke-static {}, Lmobi/beyondpod/rsscore/ConfigWriteHelper;->getInstance()Lmobi/beyondpod/rsscore/ConfigWriteHelper;

    move-result-object v0

    sget-object v1, Lmobi/beyondpod/rsscore/Configuration;->_preferences:Landroid/content/SharedPreferences;

    const-string v2, "PauseOnHeadsetDisconnect"

    invoke-virtual {v0, v1, v2, p0}, Lmobi/beyondpod/rsscore/ConfigWriteHelper;->putBoolean(Landroid/content/SharedPreferences;Ljava/lang/String;Z)V

    return-void
.end method

.method public static setPlaybackSpeed1(F)V
    .locals 3

    .line 2007
    invoke-static {}, Lmobi/beyondpod/rsscore/ConfigWriteHelper;->getInstance()Lmobi/beyondpod/rsscore/ConfigWriteHelper;

    move-result-object v0

    sget-object v1, Lmobi/beyondpod/rsscore/Configuration;->_preferences:Landroid/content/SharedPreferences;

    const-string v2, "playbackSpeed1"

    invoke-static {p0}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, v2, p0}, Lmobi/beyondpod/rsscore/ConfigWriteHelper;->putString(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static setPlaybackSpeed2(F)V
    .locals 3

    .line 2017
    invoke-static {}, Lmobi/beyondpod/rsscore/ConfigWriteHelper;->getInstance()Lmobi/beyondpod/rsscore/ConfigWriteHelper;

    move-result-object v0

    sget-object v1, Lmobi/beyondpod/rsscore/Configuration;->_preferences:Landroid/content/SharedPreferences;

    const-string v2, "playbackSpeed2"

    invoke-static {p0}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, v2, p0}, Lmobi/beyondpod/rsscore/ConfigWriteHelper;->putString(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static setPlayerCarModeVisible(Z)V
    .locals 3

    .line 2599
    invoke-static {}, Lmobi/beyondpod/rsscore/ConfigWriteHelper;->getInstance()Lmobi/beyondpod/rsscore/ConfigWriteHelper;

    move-result-object v0

    sget-object v1, Lmobi/beyondpod/rsscore/Configuration;->_preferences:Landroid/content/SharedPreferences;

    const-string v2, "playerCarModeVisible"

    invoke-virtual {v0, v1, v2, p0}, Lmobi/beyondpod/rsscore/ConfigWriteHelper;->putBoolean(Landroid/content/SharedPreferences;Ljava/lang/String;Z)V

    return-void
.end method

.method public static setPlayerIntegrationType(I)V
    .locals 3

    .line 1687
    invoke-static {}, Lmobi/beyondpod/rsscore/ConfigWriteHelper;->getInstance()Lmobi/beyondpod/rsscore/ConfigWriteHelper;

    move-result-object v0

    sget-object v1, Lmobi/beyondpod/rsscore/Configuration;->_preferences:Landroid/content/SharedPreferences;

    const-string v2, "PlayerIntegrationType"

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, v2, p0}, Lmobi/beyondpod/rsscore/ConfigWriteHelper;->putString(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static setPlaylistEndAction(I)V
    .locals 3

    .line 1795
    invoke-static {}, Lmobi/beyondpod/rsscore/ConfigWriteHelper;->getInstance()Lmobi/beyondpod/rsscore/ConfigWriteHelper;

    move-result-object v0

    sget-object v1, Lmobi/beyondpod/rsscore/Configuration;->_preferences:Landroid/content/SharedPreferences;

    const-string v2, "PlaylistEndAction"

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, v2, p0}, Lmobi/beyondpod/rsscore/ConfigWriteHelper;->putString(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static setPlaylistSizeOnSave(I)V
    .locals 3

    .line 1615
    invoke-static {}, Lmobi/beyondpod/rsscore/ConfigWriteHelper;->getInstance()Lmobi/beyondpod/rsscore/ConfigWriteHelper;

    move-result-object v0

    sget-object v1, Lmobi/beyondpod/rsscore/Configuration;->_preferences:Landroid/content/SharedPreferences;

    const-string v2, "playlistSizeOnSave"

    invoke-virtual {v0, v1, v2, p0}, Lmobi/beyondpod/rsscore/ConfigWriteHelper;->putInt(Landroid/content/SharedPreferences;Ljava/lang/String;I)V

    return-void
.end method

.method public static setPodcastNamingScheme(I)V
    .locals 3

    .line 1861
    invoke-static {}, Lmobi/beyondpod/rsscore/ConfigWriteHelper;->getInstance()Lmobi/beyondpod/rsscore/ConfigWriteHelper;

    move-result-object v0

    sget-object v1, Lmobi/beyondpod/rsscore/Configuration;->_preferences:Landroid/content/SharedPreferences;

    const-string v2, "podcastNamingScheme"

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, v2, p0}, Lmobi/beyondpod/rsscore/ConfigWriteHelper;->putString(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static setPodcastsSortOrder(I)V
    .locals 3

    .line 888
    invoke-static {}, Lmobi/beyondpod/rsscore/ConfigWriteHelper;->getInstance()Lmobi/beyondpod/rsscore/ConfigWriteHelper;

    move-result-object v0

    sget-object v1, Lmobi/beyondpod/rsscore/Configuration;->_preferences:Landroid/content/SharedPreferences;

    const-string v2, "PodcastsSortOrder"

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, v2, p0}, Lmobi/beyondpod/rsscore/ConfigWriteHelper;->putString(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static setPreferLastSDCardRoot(Z)V
    .locals 3

    .line 2324
    invoke-static {}, Lmobi/beyondpod/rsscore/ConfigWriteHelper;->getInstance()Lmobi/beyondpod/rsscore/ConfigWriteHelper;

    move-result-object v0

    sget-object v1, Lmobi/beyondpod/rsscore/Configuration;->_preferences:Landroid/content/SharedPreferences;

    const-string v2, "PreferLastSDCardRoot"

    invoke-virtual {v0, v1, v2, p0}, Lmobi/beyondpod/rsscore/ConfigWriteHelper;->putBoolean(Landroid/content/SharedPreferences;Ljava/lang/String;Z)V

    return-void
.end method

.method public static setPrimarySmartplayId(I)V
    .locals 3

    .line 2579
    invoke-static {}, Lmobi/beyondpod/rsscore/ConfigWriteHelper;->getInstance()Lmobi/beyondpod/rsscore/ConfigWriteHelper;

    move-result-object v0

    sget-object v1, Lmobi/beyondpod/rsscore/Configuration;->_preferences:Landroid/content/SharedPreferences;

    const-string v2, "primarySmartplayId"

    invoke-virtual {v0, v1, v2, p0}, Lmobi/beyondpod/rsscore/ConfigWriteHelper;->putInt(Landroid/content/SharedPreferences;Ljava/lang/String;I)V

    return-void
.end method

.method public static setPublishedEpisodeCardSize(I)V
    .locals 3

    .line 2666
    invoke-static {}, Lmobi/beyondpod/rsscore/ConfigWriteHelper;->getInstance()Lmobi/beyondpod/rsscore/ConfigWriteHelper;

    move-result-object v0

    sget-object v1, Lmobi/beyondpod/rsscore/Configuration;->_preferences:Landroid/content/SharedPreferences;

    const-string v2, "publishedEpisodeCardSize"

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, v2, p0}, Lmobi/beyondpod/rsscore/ConfigWriteHelper;->putString(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static setRegisteredOnServer(Z)V
    .locals 3

    .line 2536
    invoke-static {}, Lmobi/beyondpod/rsscore/ConfigWriteHelper;->getInstance()Lmobi/beyondpod/rsscore/ConfigWriteHelper;

    move-result-object v0

    sget-object v1, Lmobi/beyondpod/rsscore/Configuration;->_preferences:Landroid/content/SharedPreferences;

    const-string v2, "GCMRegisteredOnServer"

    invoke-virtual {v0, v1, v2, p0}, Lmobi/beyondpod/rsscore/ConfigWriteHelper;->putBoolean(Landroid/content/SharedPreferences;Ljava/lang/String;Z)V

    return-void
.end method

.method public static setRemovePlayedFromPlaylist(Z)V
    .locals 3

    .line 2277
    invoke-static {}, Lmobi/beyondpod/rsscore/ConfigWriteHelper;->getInstance()Lmobi/beyondpod/rsscore/ConfigWriteHelper;

    move-result-object v0

    sget-object v1, Lmobi/beyondpod/rsscore/Configuration;->_preferences:Landroid/content/SharedPreferences;

    const-string v2, "RemovePlayedFromPlaylist"

    invoke-virtual {v0, v1, v2, p0}, Lmobi/beyondpod/rsscore/ConfigWriteHelper;->putBoolean(Landroid/content/SharedPreferences;Ljava/lang/String;Z)V

    return-void
.end method

.method public static setRepoMovedPath(Ljava/lang/String;)V
    .locals 3

    .line 2400
    invoke-static {}, Lmobi/beyondpod/rsscore/ConfigWriteHelper;->getInstance()Lmobi/beyondpod/rsscore/ConfigWriteHelper;

    move-result-object v0

    sget-object v1, Lmobi/beyondpod/rsscore/Configuration;->_preferences:Landroid/content/SharedPreferences;

    const-string v2, "RepoMovedPath"

    invoke-virtual {v0, v1, v2, p0}, Lmobi/beyondpod/rsscore/ConfigWriteHelper;->putString(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static setScreenPowerStateDuringWiFiUpdates(I)V
    .locals 3

    .line 1838
    invoke-static {}, Lmobi/beyondpod/rsscore/ConfigWriteHelper;->getInstance()Lmobi/beyondpod/rsscore/ConfigWriteHelper;

    move-result-object v0

    sget-object v1, Lmobi/beyondpod/rsscore/Configuration;->_preferences:Landroid/content/SharedPreferences;

    const-string v2, "ScreenPowerStateDuringWiFiUpdates"

    .line 1839
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    .line 1838
    invoke-virtual {v0, v1, v2, p0}, Lmobi/beyondpod/rsscore/ConfigWriteHelper;->putString(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static setScrobbleEnabled(Z)V
    .locals 3

    .line 1697
    invoke-static {}, Lmobi/beyondpod/rsscore/ConfigWriteHelper;->getInstance()Lmobi/beyondpod/rsscore/ConfigWriteHelper;

    move-result-object v0

    sget-object v1, Lmobi/beyondpod/rsscore/Configuration;->_preferences:Landroid/content/SharedPreferences;

    const-string v2, "ScrobbleEnabled"

    invoke-virtual {v0, v1, v2, p0}, Lmobi/beyondpod/rsscore/ConfigWriteHelper;->putBoolean(Landroid/content/SharedPreferences;Ljava/lang/String;Z)V

    return-void
.end method

.method public static setSetAsDownloadedOnMarkRead(Z)V
    .locals 3

    .line 1707
    invoke-static {}, Lmobi/beyondpod/rsscore/ConfigWriteHelper;->getInstance()Lmobi/beyondpod/rsscore/ConfigWriteHelper;

    move-result-object v0

    sget-object v1, Lmobi/beyondpod/rsscore/Configuration;->_preferences:Landroid/content/SharedPreferences;

    const-string v2, "SetAsDownloadedOnMarkRead"

    invoke-virtual {v0, v1, v2, p0}, Lmobi/beyondpod/rsscore/ConfigWriteHelper;->putBoolean(Landroid/content/SharedPreferences;Ljava/lang/String;Z)V

    return-void
.end method

.method public static setSetAsPlayedOnMarkRead(Z)V
    .locals 3

    .line 1717
    invoke-static {}, Lmobi/beyondpod/rsscore/ConfigWriteHelper;->getInstance()Lmobi/beyondpod/rsscore/ConfigWriteHelper;

    move-result-object v0

    sget-object v1, Lmobi/beyondpod/rsscore/Configuration;->_preferences:Landroid/content/SharedPreferences;

    const-string v2, "SetAsPlayedOnMarkRead"

    invoke-virtual {v0, v1, v2, p0}, Lmobi/beyondpod/rsscore/ConfigWriteHelper;->putBoolean(Landroid/content/SharedPreferences;Ljava/lang/String;Z)V

    return-void
.end method

.method public static setSharePodcasts(Z)V
    .locals 3

    .line 1514
    invoke-static {}, Lmobi/beyondpod/rsscore/ConfigWriteHelper;->getInstance()Lmobi/beyondpod/rsscore/ConfigWriteHelper;

    move-result-object v0

    sget-object v1, Lmobi/beyondpod/rsscore/Configuration;->_preferences:Landroid/content/SharedPreferences;

    const-string v2, "SharePodcasts"

    invoke-virtual {v0, v1, v2, p0}, Lmobi/beyondpod/rsscore/ConfigWriteHelper;->putBoolean(Landroid/content/SharedPreferences;Ljava/lang/String;Z)V

    return-void
.end method

.method public static setShowCDSSettings(Z)V
    .locals 3

    .line 2232
    invoke-static {}, Lmobi/beyondpod/rsscore/ConfigWriteHelper;->getInstance()Lmobi/beyondpod/rsscore/ConfigWriteHelper;

    move-result-object v0

    sget-object v1, Lmobi/beyondpod/rsscore/Configuration;->_preferences:Landroid/content/SharedPreferences;

    const-string v2, "showCDSSettings"

    invoke-virtual {v0, v1, v2, p0}, Lmobi/beyondpod/rsscore/ConfigWriteHelper;->putBoolean(Landroid/content/SharedPreferences;Ljava/lang/String;Z)V

    return-void
.end method

.method public static setShowContentListPostImages(Z)V
    .locals 3

    .line 1987
    invoke-static {}, Lmobi/beyondpod/rsscore/ConfigWriteHelper;->getInstance()Lmobi/beyondpod/rsscore/ConfigWriteHelper;

    move-result-object v0

    sget-object v1, Lmobi/beyondpod/rsscore/Configuration;->_preferences:Landroid/content/SharedPreferences;

    const-string v2, "ShowContentListPostImages"

    invoke-virtual {v0, v1, v2, p0}, Lmobi/beyondpod/rsscore/ConfigWriteHelper;->putBoolean(Landroid/content/SharedPreferences;Ljava/lang/String;Z)V

    return-void
.end method

.method public static setShowPlayerPausedNotication(Z)V
    .locals 3

    .line 2353
    invoke-static {}, Lmobi/beyondpod/rsscore/ConfigWriteHelper;->getInstance()Lmobi/beyondpod/rsscore/ConfigWriteHelper;

    move-result-object v0

    sget-object v1, Lmobi/beyondpod/rsscore/Configuration;->_preferences:Landroid/content/SharedPreferences;

    const-string v2, "EnhancedPlayerNotication"

    invoke-virtual {v0, v1, v2, p0}, Lmobi/beyondpod/rsscore/ConfigWriteHelper;->putBoolean(Landroid/content/SharedPreferences;Ljava/lang/String;Z)V

    return-void
.end method

.method public static setSkipToEndButtonClickType(I)V
    .locals 3

    .line 2247
    invoke-static {}, Lmobi/beyondpod/rsscore/ConfigWriteHelper;->getInstance()Lmobi/beyondpod/rsscore/ConfigWriteHelper;

    move-result-object v0

    sget-object v1, Lmobi/beyondpod/rsscore/Configuration;->_preferences:Landroid/content/SharedPreferences;

    const-string v2, "SkipToEndButtonClickType"

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, v2, p0}, Lmobi/beyondpod/rsscore/ConfigWriteHelper;->putString(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static setTrialExpirationWarningDays(I)V
    .locals 3

    .line 2634
    invoke-static {}, Lmobi/beyondpod/rsscore/ConfigWriteHelper;->getInstance()Lmobi/beyondpod/rsscore/ConfigWriteHelper;

    move-result-object v0

    sget-object v1, Lmobi/beyondpod/rsscore/Configuration;->_preferences:Landroid/content/SharedPreferences;

    const-string v2, "trialExpirationWarningDays"

    invoke-virtual {v0, v1, v2, p0}, Lmobi/beyondpod/rsscore/ConfigWriteHelper;->putInt(Landroid/content/SharedPreferences;Ljava/lang/String;I)V

    return-void
.end method

.method public static setTrialStartDate(Ljava/util/Date;)V
    .locals 4

    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    .line 1549
    :cond_0
    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    .line 1550
    :goto_0
    invoke-static {}, Lmobi/beyondpod/rsscore/ConfigWriteHelper;->getInstance()Lmobi/beyondpod/rsscore/ConfigWriteHelper;

    move-result-object p0

    sget-object v2, Lmobi/beyondpod/rsscore/Configuration;->_preferences:Landroid/content/SharedPreferences;

    const-string v3, "trialStartDate"

    invoke-virtual {p0, v2, v3, v0, v1}, Lmobi/beyondpod/rsscore/ConfigWriteHelper;->putLong(Landroid/content/SharedPreferences;Ljava/lang/String;J)V

    return-void
.end method

.method public static setTurnWiFiDuringUpdate(Z)V
    .locals 3

    .line 1391
    invoke-static {}, Lmobi/beyondpod/rsscore/ConfigWriteHelper;->getInstance()Lmobi/beyondpod/rsscore/ConfigWriteHelper;

    move-result-object v0

    sget-object v1, Lmobi/beyondpod/rsscore/Configuration;->_preferences:Landroid/content/SharedPreferences;

    const-string v2, "TurnWiFiDuringUpdate"

    invoke-virtual {v0, v1, v2, p0}, Lmobi/beyondpod/rsscore/ConfigWriteHelper;->putBoolean(Landroid/content/SharedPreferences;Ljava/lang/String;Z)V

    return-void
.end method

.method public static setUnableToEstablishWiFiConnectionInThisSession(Z)V
    .locals 0

    .line 1401
    sput-boolean p0, Lmobi/beyondpod/rsscore/Configuration;->_UnableToEstablishWiFiConnectionInThisSession:Z

    return-void
.end method

.method public static setUpdateOnFeedOpen(Z)V
    .locals 3

    .line 993
    invoke-static {}, Lmobi/beyondpod/rsscore/ConfigWriteHelper;->getInstance()Lmobi/beyondpod/rsscore/ConfigWriteHelper;

    move-result-object v0

    sget-object v1, Lmobi/beyondpod/rsscore/Configuration;->_preferences:Landroid/content/SharedPreferences;

    const-string v2, "UpdateOnFeedOpen"

    invoke-virtual {v0, v1, v2, p0}, Lmobi/beyondpod/rsscore/ConfigWriteHelper;->putBoolean(Landroid/content/SharedPreferences;Ljava/lang/String;Z)V

    return-void
.end method

.method public static setUseExternalBrowser(Z)V
    .locals 3

    .line 1484
    invoke-static {}, Lmobi/beyondpod/rsscore/ConfigWriteHelper;->getInstance()Lmobi/beyondpod/rsscore/ConfigWriteHelper;

    move-result-object v0

    sget-object v1, Lmobi/beyondpod/rsscore/Configuration;->_preferences:Landroid/content/SharedPreferences;

    const-string v2, "UseExternalBrowser"

    invoke-virtual {v0, v1, v2, p0}, Lmobi/beyondpod/rsscore/ConfigWriteHelper;->putBoolean(Landroid/content/SharedPreferences;Ljava/lang/String;Z)V

    return-void
.end method

.method public static setUserNotificationPreferences(Ljava/lang/String;)V
    .locals 3

    .line 1648
    invoke-static {}, Lmobi/beyondpod/rsscore/ConfigWriteHelper;->getInstance()Lmobi/beyondpod/rsscore/ConfigWriteHelper;

    move-result-object v0

    sget-object v1, Lmobi/beyondpod/rsscore/Configuration;->_preferences:Landroid/content/SharedPreferences;

    const-string v2, "userNotificationPreferences"

    invoke-virtual {v0, v1, v2, p0}, Lmobi/beyondpod/rsscore/ConfigWriteHelper;->putString(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static setWidgetBackgroundColor(I)V
    .locals 3

    .line 2039
    invoke-static {}, Lmobi/beyondpod/rsscore/ConfigWriteHelper;->getInstance()Lmobi/beyondpod/rsscore/ConfigWriteHelper;

    move-result-object v0

    sget-object v1, Lmobi/beyondpod/rsscore/Configuration;->_preferences:Landroid/content/SharedPreferences;

    const-string v2, "widgetBackgroundColor"

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, v2, p0}, Lmobi/beyondpod/rsscore/ConfigWriteHelper;->putString(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static settingsBackupManagerFilePath()Ljava/lang/String;
    .locals 2

    .line 490
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->backupManagerBackupPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "Settings.xml.autobak"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static settingsFilePath()Ljava/lang/String;
    .locals 2

    .line 485
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lmobi/beyondpod/rsscore/Configuration;->_Context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/shared_prefs/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "Settings"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".xml"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static sharePodcasts()Z
    .locals 3

    .line 1509
    sget-object v0, Lmobi/beyondpod/rsscore/Configuration;->_preferences:Landroid/content/SharedPreferences;

    const-string v1, "SharePodcasts"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static shouldAutoOpenPlayer(Z)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public static showCDSSettings()Z
    .locals 3

    .line 2227
    sget-object v0, Lmobi/beyondpod/rsscore/Configuration;->_preferences:Landroid/content/SharedPreferences;

    const-string v1, "showCDSSettings"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static showContentListPostImages()Z
    .locals 3

    .line 1982
    sget-object v0, Lmobi/beyondpod/rsscore/Configuration;->_preferences:Landroid/content/SharedPreferences;

    const-string v1, "ShowContentListPostImages"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static showPlayerPausedNotication()Z
    .locals 3

    .line 2348
    sget-object v0, Lmobi/beyondpod/rsscore/Configuration;->_preferences:Landroid/content/SharedPreferences;

    const-string v1, "EnhancedPlayerNotication"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static skipToEndButtonClickType()I
    .locals 3

    .line 2242
    sget-object v0, Lmobi/beyondpod/rsscore/Configuration;->_preferences:Landroid/content/SharedPreferences;

    const-string v1, "SkipToEndButtonClickType"

    const-string v2, "3"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->safeParseInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static smartPlaylistBackupFilePath()Ljava/lang/String;
    .locals 2

    .line 425
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->beyondPodPublicStorageRootPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "SmartPlayList.bin.autobak"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static smartPlaylistBackupManagerFilePath()Ljava/lang/String;
    .locals 2

    .line 430
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->backupManagerBackupPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "SmartPlayList.bin.autobak"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static smartPlaylistFilePath()Ljava/lang/String;
    .locals 2

    .line 420
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->beyondPodPrivateStorageRootPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/SmartPlayList.bin"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static storeFeedPrivateData(Ljava/util/UUID;Ljava/lang/String;)V
    .locals 2

    .line 1449
    invoke-static {}, Lmobi/beyondpod/rsscore/ConfigWriteHelper;->getInstance()Lmobi/beyondpod/rsscore/ConfigWriteHelper;

    move-result-object v0

    sget-object v1, Lmobi/beyondpod/rsscore/Configuration;->_preferences:Landroid/content/SharedPreferences;

    invoke-static {p0}, Lmobi/beyondpod/rsscore/Configuration;->generateFeedPasswordKey(Ljava/util/UUID;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, p0, p1}, Lmobi/beyondpod/rsscore/ConfigWriteHelper;->putString(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static syncLogFilePath()Ljava/lang/String;
    .locals 2

    .line 515
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->beyondPodPublicStorageRootPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/BeyondPodSyncLog.txt"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static tagManagerVersion()Ljava/lang/String;
    .locals 4

    .line 208
    sget-object v0, Lmobi/beyondpod/rsscore/Configuration;->_TagManagerContainerHolder:Lcom/google/android/gms/tagmanager/ContainerHolder;

    if-eqz v0, :cond_0

    const-string v0, "%s v%s"

    const/4 v1, 0x2

    .line 209
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    sget-object v3, Lmobi/beyondpod/rsscore/Configuration;->_TagManagerContainerHolder:Lcom/google/android/gms/tagmanager/ContainerHolder;

    invoke-interface {v3}, Lcom/google/android/gms/tagmanager/ContainerHolder;->getContainer()Lcom/google/android/gms/tagmanager/Container;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/tagmanager/Container;->getContainerId()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    sget-object v3, Lmobi/beyondpod/rsscore/Configuration;->_TagManagerContainerVersion:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "N/A"

    return-object v0
.end method

.method public static trackStateBackupManagerPath()Ljava/lang/String;
    .locals 2

    .line 405
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->backupManagerBackupPath()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TrackState.xml.autobak"

    invoke-static {v0, v1}, Lmobi/beyondpod/rsscore/helpers/Path;->combine(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static trackStateBackupPath()Ljava/lang/String;
    .locals 2

    .line 400
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->beyondPodPublicStorageRootPath()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TrackState.xml.autobak"

    invoke-static {v0, v1}, Lmobi/beyondpod/rsscore/helpers/Path;->combine(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static trialExpirationWarningDays()I
    .locals 3

    .line 2629
    sget-object v0, Lmobi/beyondpod/rsscore/Configuration;->_preferences:Landroid/content/SharedPreferences;

    const-string v1, "trialExpirationWarningDays"

    const/4 v2, -0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static turnWiFiDuringUpdate()Z
    .locals 3

    .line 1386
    sget-object v0, Lmobi/beyondpod/rsscore/Configuration;->_preferences:Landroid/content/SharedPreferences;

    const-string v1, "TurnWiFiDuringUpdate"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static unableToEstablishWiFiConnectionInThisSession()Z
    .locals 1

    .line 1396
    sget-boolean v0, Lmobi/beyondpod/rsscore/Configuration;->_UnableToEstablishWiFiConnectionInThisSession:Z

    return v0
.end method

.method public static unlockURL()Landroid/net/Uri;
    .locals 1

    const-string v0, "Unlock"

    .line 614
    invoke-static {v0}, Lmobi/beyondpod/rsscore/Configuration;->buildHelpURL(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static updateAndDownloadHelpFileURL()Landroid/net/Uri;
    .locals 1

    const-string v0, "UpdateAndDownload"

    .line 589
    invoke-static {v0}, Lmobi/beyondpod/rsscore/Configuration;->buildHelpURL(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static useAudioPluginForConfiguredFeedsOnly()Z
    .locals 3

    .line 1967
    sget-object v0, Lmobi/beyondpod/rsscore/Configuration;->_preferences:Landroid/content/SharedPreferences;

    const-string v1, "UseAudioPluginForConfiguredFeedsOnly"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static useExternalBrowser()Z
    .locals 3

    .line 1479
    sget-object v0, Lmobi/beyondpod/rsscore/Configuration;->_preferences:Landroid/content/SharedPreferences;

    const-string v1, "UseExternalBrowser"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static useFeedAlbumArtForEpisodes()Z
    .locals 3

    .line 1992
    sget-object v0, Lmobi/beyondpod/rsscore/Configuration;->_preferences:Landroid/content/SharedPreferences;

    const-string v1, "UseFeedAlbumArtForEpisodes"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static userHomeScreen()I
    .locals 3

    .line 2614
    sget-object v0, Lmobi/beyondpod/rsscore/Configuration;->_preferences:Landroid/content/SharedPreferences;

    const-string v1, "UserHomeScreen"

    const-string v2, "0"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->safeParseInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static userNotificationPreferences()Ljava/lang/String;
    .locals 3

    .line 1643
    sget-object v0, Lmobi/beyondpod/rsscore/Configuration;->_preferences:Landroid/content/SharedPreferences;

    const-string v1, "userNotificationPreferences"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static versionInfoPath()Ljava/lang/String;
    .locals 2

    .line 545
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->rssCachePath()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VerInfo.bin"

    invoke-static {v0, v1}, Lmobi/beyondpod/rsscore/helpers/Path;->combine(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static versionUpgradeNotesURL()Landroid/net/Uri;
    .locals 2

    .line 624
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->beyondPodPublicWebSite()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/Android/VersionUpgrade.aspx"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static voiceHelpURL()Landroid/net/Uri;
    .locals 1

    const-string v0, "VoiceHelp"

    .line 556
    invoke-static {v0}, Lmobi/beyondpod/rsscore/Configuration;->buildHelpURL(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static volumeControlsNavigationType()I
    .locals 3

    .line 1849
    sget-object v0, Lmobi/beyondpod/rsscore/Configuration;->_preferences:Landroid/content/SharedPreferences;

    const-string v1, "VolumeControlsNavigationType"

    const-string v2, "0"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->safeParseInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static welcomeLiteFileURI()Landroid/net/Uri;
    .locals 1

    const-string v0, "file:///android_asset/Welcome.htm"

    .line 651
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static welcomeProFileURI()Landroid/net/Uri;
    .locals 1

    const-string v0, "file:///android_asset/WelcomePro.htm"

    .line 646
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static whatIsNewFileURI()Landroid/net/Uri;
    .locals 1

    const-string v0, "file:///android_asset/WhatIsNew.htm"

    .line 656
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static widgetBackgroundColor()I
    .locals 4

    .line 2032
    sget-object v0, Lmobi/beyondpod/rsscore/Configuration;->_preferences:Landroid/content/SharedPreferences;

    const-string v1, "widgetBackgroundColor"

    const/4 v2, 0x1

    .line 2033
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2032
    invoke-static {v0, v2}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->safeParseInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static writeLastInstalledVersionCode()V
    .locals 4

    .line 1534
    invoke-static {}, Lmobi/beyondpod/rsscore/ConfigWriteHelper;->getInstance()Lmobi/beyondpod/rsscore/ConfigWriteHelper;

    move-result-object v0

    sget-object v1, Lmobi/beyondpod/rsscore/Configuration;->_preferences:Landroid/content/SharedPreferences;

    const-string v2, "LastInstalledVersion"

    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->currentProductVersionCode()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lmobi/beyondpod/rsscore/ConfigWriteHelper;->putInt(Landroid/content/SharedPreferences;Ljava/lang/String;I)V

    return-void
.end method
