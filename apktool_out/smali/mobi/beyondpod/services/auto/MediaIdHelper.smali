.class public Lmobi/beyondpod/services/auto/MediaIdHelper;
.super Ljava/lang/Object;
.source "MediaIdHelper.java"


# static fields
.field public static final AUTO_MEDIA_ID_CATEGORIES:Ljava/lang/String; = "__CATEGORIES__"

.field public static final AUTO_MEDIA_ID_CATEGORY_ID:Ljava/lang/String; = "CATEGORY-id"

.field public static final AUTO_MEDIA_ID_CATEGORY_SCHEMA:Ljava/lang/String;

.field public static final AUTO_MEDIA_ID_EPISODE_TRACKPATH:Ljava/lang/String; = "EPISODE-TRACKPATH"

.field public static final AUTO_MEDIA_ID_FEEDS:Ljava/lang/String; = "__FEEDS__"

.field public static final AUTO_MEDIA_ID_FEED_ID:Ljava/lang/String; = "FEED-id"

.field public static final AUTO_MEDIA_ID_FEED_SCHEMA:Ljava/lang/String;

.field public static final AUTO_MEDIA_ID_ROOT:Ljava/lang/String; = "__ROOT__"

.field public static final AUTO_MEDIA_ID_SEPERATOR:Ljava/lang/String; = "|"

.field public static final AUTO_MEDIA_ID_SMARTPLAYS:Ljava/lang/String; = "__SMARTPLAYS__"

.field public static final AUTO_MEDIA_ID_SMARTPLAYS_ID:Ljava/lang/String; = "SMARTPLAYS-id"

.field public static final AUTO_MEDIA_ID_SMARTPLAYS_SCHEMA:Ljava/lang/String;

.field public static final AUTO_MEDIA_ID_TRIAL_EXPIRED:Ljava/lang/String; = "___TRIALEXPIRED___"

.field public static MAX_QUEUE_WINDOW:I = 0xf


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "__SMARTPLAYS__"

    const-string v1, "|"

    .line 39
    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "SMARTPLAYS-id"

    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "|"

    .line 41
    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "EPISODE-TRACKPATH"

    .line 42
    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmobi/beyondpod/services/auto/MediaIdHelper;->AUTO_MEDIA_ID_SMARTPLAYS_SCHEMA:Ljava/lang/String;

    const-string v0, "__FEEDS__"

    const-string v1, "|"

    .line 44
    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "FEED-id"

    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "|"

    .line 46
    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "EPISODE-TRACKPATH"

    .line 47
    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmobi/beyondpod/services/auto/MediaIdHelper;->AUTO_MEDIA_ID_FEED_SCHEMA:Ljava/lang/String;

    const-string v0, "__CATEGORIES__"

    const-string v1, "|"

    .line 49
    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "CATEGORY-id"

    .line 50
    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "|"

    .line 51
    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "EPISODE-TRACKPATH"

    .line 52
    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmobi/beyondpod/services/auto/MediaIdHelper;->AUTO_MEDIA_ID_CATEGORY_SCHEMA:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static allowBrowsingFeedsAndCategories()Z
    .locals 1

    .line 36
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->DBGAutoBrowsable()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static buildCategoryMediaId(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 110
    sget-object v0, Lmobi/beyondpod/services/auto/MediaIdHelper;->AUTO_MEDIA_ID_CATEGORY_SCHEMA:Ljava/lang/String;

    const-string v1, "CATEGORY-id"

    invoke-virtual {v0, v1, p0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "EPISODE-TRACKPATH"

    invoke-virtual {p0, v0, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static buildFeedMediaId(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 73
    sget-object v0, Lmobi/beyondpod/services/auto/MediaIdHelper;->AUTO_MEDIA_ID_FEED_SCHEMA:Ljava/lang/String;

    const-string v1, "FEED-id"

    invoke-virtual {v0, v1, p0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "EPISODE-TRACKPATH"

    invoke-virtual {p0, v0, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static buildSmartplayMediaId(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 56
    sget-object v0, Lmobi/beyondpod/services/auto/MediaIdHelper;->AUTO_MEDIA_ID_SMARTPLAYS_SCHEMA:Ljava/lang/String;

    const-string v1, "SMARTPLAYS-id"

    invoke-virtual {v0, v1, p0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "EPISODE-TRACKPATH"

    invoke-virtual {p0, v0, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getCategoryIdFromMediaId(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 115
    sget-object v0, Lmobi/beyondpod/services/auto/MediaIdHelper;->AUTO_MEDIA_ID_CATEGORY_SCHEMA:Ljava/lang/String;

    invoke-static {v0, p0}, Lmobi/beyondpod/services/auto/MediaIdHelper;->getMapFromSchema(Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object p0

    const-string v0, "CATEGORY-id"

    .line 116
    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public static getCategoryNameFromMediaId(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "__CATEGORIES__"

    const-string v1, ""

    .line 121
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getCategoryTrackPathFromMediaId(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 126
    sget-object v0, Lmobi/beyondpod/services/auto/MediaIdHelper;->AUTO_MEDIA_ID_CATEGORY_SCHEMA:Ljava/lang/String;

    invoke-static {v0, p0}, Lmobi/beyondpod/services/auto/MediaIdHelper;->getMapFromSchema(Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object p0

    const-string v0, "EPISODE-TRACKPATH"

    .line 127
    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public static getFeedIdFromMediaId(Ljava/lang/String;)Ljava/util/UUID;
    .locals 1

    .line 90
    sget-object v0, Lmobi/beyondpod/services/auto/MediaIdHelper;->AUTO_MEDIA_ID_FEED_SCHEMA:Ljava/lang/String;

    invoke-static {v0, p0}, Lmobi/beyondpod/services/auto/MediaIdHelper;->getMapFromSchema(Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object p0

    :try_start_0
    const-string v0, "FEED-id"

    .line 94
    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getFeedTrackPathFromMediaId(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 104
    sget-object v0, Lmobi/beyondpod/services/auto/MediaIdHelper;->AUTO_MEDIA_ID_FEED_SCHEMA:Ljava/lang/String;

    invoke-static {v0, p0}, Lmobi/beyondpod/services/auto/MediaIdHelper;->getMapFromSchema(Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object p0

    const-string v0, "EPISODE-TRACKPATH"

    .line 105
    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public static getFeedUIDFromMediaId(Ljava/lang/String;)Ljava/util/UUID;
    .locals 2

    :try_start_0
    const-string v0, "__FEEDS__"

    const-string v1, ""

    .line 80
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private static getMapFromSchema(Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 132
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "\\|"

    .line 133
    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    const-string v1, "\\|"

    .line 134
    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    .line 135
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    .line 139
    :try_start_0
    aget-object v2, p0, v1

    aget-object v3, p1, v1

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 143
    :catch_0
    aget-object v2, p0, v1

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static getSmartplayIdFromMediaId(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 67
    sget-object v0, Lmobi/beyondpod/services/auto/MediaIdHelper;->AUTO_MEDIA_ID_SMARTPLAYS_SCHEMA:Ljava/lang/String;

    invoke-static {v0, p0}, Lmobi/beyondpod/services/auto/MediaIdHelper;->getMapFromSchema(Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object p0

    const-string v0, "SMARTPLAYS-id"

    .line 68
    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public static getSmartplayTrackPathFromMediaId(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 61
    sget-object v0, Lmobi/beyondpod/services/auto/MediaIdHelper;->AUTO_MEDIA_ID_SMARTPLAYS_SCHEMA:Ljava/lang/String;

    invoke-static {v0, p0}, Lmobi/beyondpod/services/auto/MediaIdHelper;->getMapFromSchema(Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object p0

    const-string v0, "EPISODE-TRACKPATH"

    .line 62
    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public static maxListSize()I
    .locals 1

    .line 31
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->DBGAutoMaxListSize()I

    move-result v0

    return v0
.end method
