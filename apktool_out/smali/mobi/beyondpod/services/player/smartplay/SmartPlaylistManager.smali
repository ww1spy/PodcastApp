.class public Lmobi/beyondpod/services/player/smartplay/SmartPlaylistManager;
.super Ljava/lang/Object;
.source "SmartPlaylistManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SmartPlaylistManager"

.field private static _PlaylistSorter:Ljava/util/Comparator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lmobi/beyondpod/services/player/smartplay/SmartPlaylist;",
            ">;"
        }
    .end annotation
.end field

.field private static final _Playlists:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lmobi/beyondpod/services/player/smartplay/SmartPlaylist;",
            ">;"
        }
    .end annotation
.end field

.field private static _SaveToDBRunnable:Ljava/lang/Runnable; = null

.field private static _SavingEntries:Z = false


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lmobi/beyondpod/services/player/smartplay/SmartPlaylistManager;->_Playlists:Ljava/util/ArrayList;

    .line 32
    new-instance v0, Lmobi/beyondpod/services/player/smartplay/SmartPlaylistManager$1;

    invoke-direct {v0}, Lmobi/beyondpod/services/player/smartplay/SmartPlaylistManager$1;-><init>()V

    sput-object v0, Lmobi/beyondpod/services/player/smartplay/SmartPlaylistManager;->_PlaylistSorter:Ljava/util/Comparator;

    .line 49
    new-instance v0, Lmobi/beyondpod/services/player/smartplay/SmartPlaylistManager$2;

    invoke-direct {v0}, Lmobi/beyondpod/services/player/smartplay/SmartPlaylistManager$2;-><init>()V

    sput-object v0, Lmobi/beyondpod/services/player/smartplay/SmartPlaylistManager;->_SaveToDBRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .line 26
    invoke-static {}, Lmobi/beyondpod/services/player/smartplay/SmartPlaylistManager;->saveToDatabaseInternal()Z

    move-result v0

    return v0
.end method

.method public static addSmartPlaylist()Lmobi/beyondpod/services/player/smartplay/SmartPlaylist;
    .locals 4

    .line 393
    new-instance v0, Lmobi/beyondpod/services/player/smartplay/SmartPlaylist;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Lmobi/beyondpod/services/player/smartplay/SmartPlaylistManager;->getNextPlaylistId()I

    move-result v2

    invoke-static {}, Lmobi/beyondpod/services/player/smartplay/SmartPlaylistManager;->getNextPlaylistName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lmobi/beyondpod/services/player/smartplay/SmartPlaylist;-><init>(Ljava/util/ArrayList;ILjava/lang/String;)V

    .line 394
    sget-object v1, Lmobi/beyondpod/services/player/smartplay/SmartPlaylistManager;->_Playlists:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public static deleteSmartPlaylist(Lmobi/beyondpod/services/player/smartplay/SmartPlaylist;)V
    .locals 0

    .line 118
    invoke-virtual {p0}, Lmobi/beyondpod/services/player/smartplay/SmartPlaylist;->markForDeletion()V

    .line 119
    invoke-static {}, Lmobi/beyondpod/services/player/smartplay/SmartPlaylistManager;->saveToDatabase()V

    return-void
.end method

.method public static findSmartPlayByName(Ljava/lang/String;)Lmobi/beyondpod/services/player/smartplay/SmartPlaylist;
    .locals 4

    .line 185
    invoke-static {p0}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 189
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    const/16 v0, 0xa

    invoke-static {p0, v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object p0

    .line 191
    invoke-static {}, Lmobi/beyondpod/services/player/smartplay/SmartPlaylistManager;->getPlaylistsForDiaplay()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmobi/beyondpod/services/player/smartplay/SmartPlaylist;

    .line 193
    invoke-virtual {v2}, Lmobi/beyondpod/services/player/smartplay/SmartPlaylist;->name()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Lmobi/beyondpod/services/player/smartplay/SmartPlaylist;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_1

    return-object v2

    :cond_2
    return-object v1
.end method

.method private static getNextPlaylistId()I
    .locals 4

    .line 400
    sget-object v0, Lmobi/beyondpod/services/player/smartplay/SmartPlaylistManager;->_Playlists:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/high16 v0, -0x80000000

    const/4 v2, 0x0

    .line 404
    :goto_0
    sget-object v3, Lmobi/beyondpod/services/player/smartplay/SmartPlaylistManager;->_Playlists:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-eq v2, v3, :cond_2

    .line 406
    sget-object v3, Lmobi/beyondpod/services/player/smartplay/SmartPlaylistManager;->_Playlists:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmobi/beyondpod/services/player/smartplay/SmartPlaylist;

    invoke-virtual {v3}, Lmobi/beyondpod/services/player/smartplay/SmartPlaylist;->id()I

    move-result v3

    if-le v3, v0, :cond_1

    move v0, v3

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    add-int/2addr v0, v1

    return v0
.end method

.method public static getNextPlaylistName()Ljava/lang/String;
    .locals 4

    .line 416
    sget-object v0, Lmobi/beyondpod/services/player/smartplay/SmartPlaylistManager;->_Playlists:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "SmartPlay"

    return-object v0

    :cond_0
    const-string v0, "%s %s"

    const/4 v1, 0x2

    .line 419
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "SmartPlay"

    aput-object v3, v1, v2

    sget-object v2, Lmobi/beyondpod/services/player/smartplay/SmartPlaylistManager;->_Playlists:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    add-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getPlaylistsForDiaplay()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lmobi/beyondpod/services/player/smartplay/SmartPlaylist;",
            ">;"
        }
    .end annotation

    .line 431
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 433
    :goto_0
    sget-object v2, Lmobi/beyondpod/services/player/smartplay/SmartPlaylistManager;->_Playlists:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-eq v1, v2, :cond_1

    .line 435
    sget-object v2, Lmobi/beyondpod/services/player/smartplay/SmartPlaylistManager;->_Playlists:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmobi/beyondpod/services/player/smartplay/SmartPlaylist;

    invoke-virtual {v2}, Lmobi/beyondpod/services/player/smartplay/SmartPlaylist;->isMarkedForDeletion()Z

    move-result v2

    if-nez v2, :cond_0

    .line 436
    sget-object v2, Lmobi/beyondpod/services/player/smartplay/SmartPlaylistManager;->_Playlists:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 439
    :cond_1
    sget-object v1, Lmobi/beyondpod/services/player/smartplay/SmartPlaylistManager;->_PlaylistSorter:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-object v0
.end method

.method public static getSmartPlaylist(I)Lmobi/beyondpod/services/player/smartplay/SmartPlaylist;
    .locals 2

    const/4 v0, 0x0

    .line 159
    :goto_0
    sget-object v1, Lmobi/beyondpod/services/player/smartplay/SmartPlaylistManager;->_Playlists:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 161
    sget-object v1, Lmobi/beyondpod/services/player/smartplay/SmartPlaylistManager;->_Playlists:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmobi/beyondpod/services/player/smartplay/SmartPlaylist;

    invoke-virtual {v1}, Lmobi/beyondpod/services/player/smartplay/SmartPlaylist;->id()I

    move-result v1

    if-ne v1, p0, :cond_0

    .line 162
    sget-object p0, Lmobi/beyondpod/services/player/smartplay/SmartPlaylistManager;->_Playlists:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lmobi/beyondpod/services/player/smartplay/SmartPlaylist;

    return-object p0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getSmartPlaylistByName(Ljava/lang/String;)Lmobi/beyondpod/services/player/smartplay/SmartPlaylist;
    .locals 3

    .line 170
    invoke-static {p0}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    const/4 v0, 0x0

    .line 173
    :goto_0
    sget-object v2, Lmobi/beyondpod/services/player/smartplay/SmartPlaylistManager;->_Playlists:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-eq v0, v2, :cond_2

    .line 175
    sget-object v2, Lmobi/beyondpod/services/player/smartplay/SmartPlaylistManager;->_Playlists:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmobi/beyondpod/services/player/smartplay/SmartPlaylist;

    invoke-virtual {v2}, Lmobi/beyondpod/services/player/smartplay/SmartPlaylist;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 176
    sget-object p0, Lmobi/beyondpod/services/player/smartplay/SmartPlaylistManager;->_Playlists:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lmobi/beyondpod/services/player/smartplay/SmartPlaylist;

    return-object p0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-object v1
.end method

.method public static initialize()V
    .locals 3

    .line 424
    invoke-static {}, Lmobi/beyondpod/services/player/smartplay/SmartPlaylistManager;->loadSmartPlaylists()V

    .line 425
    sget-object v0, Lmobi/beyondpod/services/player/smartplay/SmartPlaylistManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Loaded "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lmobi/beyondpod/services/player/smartplay/SmartPlaylistManager;->_Playlists:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " Smart Playlists"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 426
    sget-object v0, Lmobi/beyondpod/services/player/smartplay/SmartPlaylistManager;->_Playlists:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-static {v0}, Lmobi/beyondpod/rsscore/helpers/AnalyticsTracker;->onSmartPlaylistLoaded(I)V

    return-void
.end method

.method public static isConfigured()Z
    .locals 2

    .line 124
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->primarySmartplayId()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static lastUsedSmartplay()Lmobi/beyondpod/services/player/smartplay/SmartPlaylist;
    .locals 3

    .line 456
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->lastUsedSmartplayId()I

    move-result v0

    invoke-static {v0}, Lmobi/beyondpod/services/player/smartplay/SmartPlaylistManager;->getSmartPlaylist(I)Lmobi/beyondpod/services/player/smartplay/SmartPlaylist;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 458
    invoke-virtual {v0}, Lmobi/beyondpod/services/player/smartplay/SmartPlaylist;->isMarkedForDeletion()Z

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    .line 462
    :cond_0
    sget-object v0, Lmobi/beyondpod/services/player/smartplay/SmartPlaylistManager;->_Playlists:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmobi/beyondpod/services/player/smartplay/SmartPlaylist;

    .line 464
    invoke-virtual {v1}, Lmobi/beyondpod/services/player/smartplay/SmartPlaylist;->isMarkedForDeletion()Z

    move-result v2

    if-nez v2, :cond_1

    .line 466
    invoke-virtual {v1}, Lmobi/beyondpod/services/player/smartplay/SmartPlaylist;->id()I

    move-result v0

    invoke-static {v0}, Lmobi/beyondpod/rsscore/Configuration;->setLastUsedSmartplayId(I)V

    return-object v1

    :cond_2
    const/4 v0, 0x1

    .line 471
    invoke-static {v0}, Lmobi/beyondpod/rsscore/Configuration;->setLastUsedSmartplayId(I)V

    const/4 v0, 0x0

    return-object v0
.end method

.method private static loadFromFile()Lmobi/beyondpod/services/player/smartplay/SmartPlaylist;
    .locals 8

    .line 204
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 206
    new-instance v1, Ljava/io/File;

    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->smartPlaylistFilePath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 207
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    .line 209
    sget-object v2, Lmobi/beyondpod/services/player/smartplay/SmartPlaylistManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Smart Playlist File exists! Size: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, "bytes"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 215
    :try_start_1
    new-instance v1, Ljava/io/DataInputStream;

    invoke-direct {v1, v2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 221
    :cond_0
    :goto_0
    :try_start_2
    invoke-static {v1}, Lmobi/beyondpod/services/player/smartplay/SmartPlaylist$SmartPlaylistEntry;->deserialize(Ljava/io/DataInputStream;)Lmobi/beyondpod/services/player/smartplay/SmartPlaylist$SmartPlaylistEntry;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 223
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/io/EOFException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    .line 232
    :catch_0
    :try_start_3
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v2, :cond_3

    .line 244
    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_4

    :catch_1
    move-exception v1

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object v2, v3

    goto :goto_2

    :catch_2
    move-exception v1

    move-object v2, v3

    .line 236
    :goto_1
    :try_start_5
    sget-object v4, Lmobi/beyondpod/services/player/smartplay/SmartPlaylistManager;->TAG:Ljava/lang/String;

    const-string v5, "Unable to load Smart Playlist file. reason: "

    invoke-static {v4, v5, v1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->logException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-eqz v2, :cond_3

    .line 244
    :try_start_6
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_4

    :catch_3
    move-exception v1

    .line 248
    sget-object v2, Lmobi/beyondpod/services/player/smartplay/SmartPlaylistManager;->TAG:Ljava/lang/String;

    const-string v4, "Unable to load Smart Playlist file. reason: "

    invoke-static {v2, v4, v1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->logException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_4

    :catchall_1
    move-exception v0

    :goto_2
    if-eqz v2, :cond_1

    .line 244
    :try_start_7
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4

    goto :goto_3

    :catch_4
    move-exception v1

    .line 248
    sget-object v2, Lmobi/beyondpod/services/player/smartplay/SmartPlaylistManager;->TAG:Ljava/lang/String;

    const-string v3, "Unable to load Smart Playlist file. reason: "

    invoke-static {v2, v3, v1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->logException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 249
    :cond_1
    :goto_3
    throw v0

    .line 255
    :cond_2
    sget-object v1, Lmobi/beyondpod/services/player/smartplay/SmartPlaylistManager;->TAG:Ljava/lang/String;

    const-string v2, "Smart Playlist File DOES NOT exist!"

    invoke-static {v1, v2}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeLogEntryInProduction(Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    :cond_3
    :goto_4
    sget-object v1, Lmobi/beyondpod/services/player/smartplay/SmartPlaylistManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Loaded "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " rules from the Smart Playlist file..."

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    invoke-static {}, Lmobi/beyondpod/services/player/smartplay/SmartPlaylistManager;->getNextPlaylistId()I

    move-result v1

    .line 261
    invoke-static {}, Lmobi/beyondpod/services/player/smartplay/SmartPlaylistManager;->getNextPlaylistName()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    .line 262
    :goto_5
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_5

    .line 264
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lmobi/beyondpod/services/player/smartplay/SmartPlaylist$SmartPlaylistEntry;

    .line 265
    invoke-virtual {v5}, Lmobi/beyondpod/services/player/smartplay/SmartPlaylist$SmartPlaylistEntry;->getPlaylistId()I

    move-result v6

    const/4 v7, -0x1

    if-ne v6, v7, :cond_4

    .line 267
    invoke-virtual {v5, v1}, Lmobi/beyondpod/services/player/smartplay/SmartPlaylist$SmartPlaylistEntry;->setPlaylistId(I)V

    .line 268
    invoke-virtual {v5, v4}, Lmobi/beyondpod/services/player/smartplay/SmartPlaylist$SmartPlaylistEntry;->setSortID(I)V

    .line 269
    invoke-virtual {v5, v2}, Lmobi/beyondpod/services/player/smartplay/SmartPlaylist$SmartPlaylistEntry;->setPlaylistName(Ljava/lang/String;)V

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 273
    :cond_5
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_6

    .line 274
    new-instance v3, Lmobi/beyondpod/services/player/smartplay/SmartPlaylist;

    invoke-direct {v3, v0, v1, v2}, Lmobi/beyondpod/services/player/smartplay/SmartPlaylist;-><init>(Ljava/util/ArrayList;ILjava/lang/String;)V

    return-object v3

    :cond_6
    return-object v3
.end method

.method private static loadSmartPlaylists()V
    .locals 7

    .line 61
    sget-object v0, Lmobi/beyondpod/services/player/smartplay/SmartPlaylistManager;->_Playlists:Ljava/util/ArrayList;

    monitor-enter v0

    .line 63
    :try_start_0
    sget-object v1, Lmobi/beyondpod/services/player/smartplay/SmartPlaylistManager;->_Playlists:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    const/4 v1, 0x0

    .line 65
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 66
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 70
    :try_start_1
    new-instance v4, Lmobi/beyondpod/rsscore/repository/DatabaseHelper;

    invoke-static {}, Lmobi/beyondpod/BeyondPodApplication;->getInstance()Lmobi/beyondpod/BeyondPodApplication;

    move-result-object v5

    invoke-virtual {v5}, Lmobi/beyondpod/BeyondPodApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Lmobi/beyondpod/rsscore/repository/DatabaseHelper;-><init>(Landroid/content/Context;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 71
    :try_start_2
    invoke-virtual {v4, v2}, Lmobi/beyondpod/rsscore/repository/DatabaseHelper;->loadSmartPlaylist(Ljava/util/ArrayList;)V

    .line 72
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmobi/beyondpod/services/player/smartplay/SmartPlaylist$SmartPlaylistEntry;

    .line 74
    invoke-virtual {v2}, Lmobi/beyondpod/services/player/smartplay/SmartPlaylist$SmartPlaylistEntry;->getPlaylistId()I

    move-result v5

    .line 75
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 77
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 78
    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 79
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v3, v2, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 82
    :cond_0
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    :cond_1
    if-eqz v4, :cond_2

    .line 93
    :goto_1
    :try_start_3
    invoke-virtual {v4}, Lmobi/beyondpod/rsscore/repository/DatabaseHelper;->cleanup()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_3

    :catch_0
    move-exception v1

    goto :goto_2

    :catchall_0
    move-exception v2

    move-object v4, v1

    move-object v1, v2

    goto :goto_5

    :catch_1
    move-exception v2

    move-object v4, v1

    move-object v1, v2

    .line 88
    :goto_2
    :try_start_4
    sget-object v2, Lmobi/beyondpod/services/player/smartplay/SmartPlaylistManager;->TAG:Ljava/lang/String;

    const-string v5, "Unable to load the user history from database"

    invoke-static {v2, v5, v1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->logException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-eqz v4, :cond_2

    goto :goto_1

    .line 96
    :cond_2
    :goto_3
    :try_start_5
    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v1

    if-lez v1, :cond_3

    .line 98
    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 99
    sget-object v3, Lmobi/beyondpod/services/player/smartplay/SmartPlaylistManager;->_Playlists:Ljava/util/ArrayList;

    new-instance v4, Lmobi/beyondpod/services/player/smartplay/SmartPlaylist;

    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lmobi/beyondpod/services/player/smartplay/SmartPlaylist$SmartPlaylistEntry;

    invoke-virtual {v6}, Lmobi/beyondpod/services/player/smartplay/SmartPlaylist$SmartPlaylistEntry;->getPlaylistId()I

    move-result v6

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lmobi/beyondpod/services/player/smartplay/SmartPlaylist$SmartPlaylistEntry;

    invoke-virtual {v5}, Lmobi/beyondpod/services/player/smartplay/SmartPlaylist$SmartPlaylistEntry;->getPlaylistName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v2, v6, v5}, Lmobi/beyondpod/services/player/smartplay/SmartPlaylist;-><init>(Ljava/util/ArrayList;ILjava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 103
    :cond_3
    invoke-static {}, Lmobi/beyondpod/services/player/smartplay/SmartPlaylistManager;->loadFromFile()Lmobi/beyondpod/services/player/smartplay/SmartPlaylist;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 105
    sget-object v2, Lmobi/beyondpod/services/player/smartplay/SmartPlaylistManager;->_Playlists:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 107
    :cond_4
    invoke-static {}, Lmobi/beyondpod/services/player/smartplay/SmartPlaylistManager;->saveToDatabaseInternal()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 109
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->smartPlaylistFilePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lmobi/beyondpod/rsscore/helpers/FileUtils;->deleteFileIfExists(Ljava/lang/String;)Z

    .line 110
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->smartPlaylistBackupFilePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lmobi/beyondpod/rsscore/helpers/FileUtils;->deleteFileIfExists(Ljava/lang/String;)Z

    .line 113
    :cond_5
    monitor-exit v0

    return-void

    :catchall_1
    move-exception v1

    :goto_5
    if-eqz v4, :cond_6

    .line 93
    invoke-virtual {v4}, Lmobi/beyondpod/rsscore/repository/DatabaseHelper;->cleanup()V

    :cond_6
    throw v1

    :catchall_2
    move-exception v1

    .line 113
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v1
.end method

.method public static numVisiblePlaylists()I
    .locals 1

    .line 508
    invoke-static {}, Lmobi/beyondpod/services/player/smartplay/SmartPlaylistManager;->getPlaylistsForDiaplay()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public static onCategoryDeleted(Lmobi/beyondpod/rsscore/categories/FeedCategory;)V
    .locals 2

    const/4 v0, 0x0

    .line 129
    :goto_0
    sget-object v1, Lmobi/beyondpod/services/player/smartplay/SmartPlaylistManager;->_Playlists:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 131
    sget-object v1, Lmobi/beyondpod/services/player/smartplay/SmartPlaylistManager;->_Playlists:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmobi/beyondpod/services/player/smartplay/SmartPlaylist;

    invoke-virtual {v1, p0}, Lmobi/beyondpod/services/player/smartplay/SmartPlaylist;->onCategoryDeleted(Lmobi/beyondpod/rsscore/categories/FeedCategory;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 134
    :cond_0
    invoke-static {}, Lmobi/beyondpod/services/player/smartplay/SmartPlaylistManager;->saveToDatabase()V

    return-void
.end method

.method public static onCategoryRenamed(Lmobi/beyondpod/rsscore/categories/FeedCategory;)V
    .locals 2

    const/4 v0, 0x0

    .line 139
    :goto_0
    sget-object v1, Lmobi/beyondpod/services/player/smartplay/SmartPlaylistManager;->_Playlists:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 141
    sget-object v1, Lmobi/beyondpod/services/player/smartplay/SmartPlaylistManager;->_Playlists:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmobi/beyondpod/services/player/smartplay/SmartPlaylist;

    invoke-virtual {v1, p0}, Lmobi/beyondpod/services/player/smartplay/SmartPlaylist;->onCategoryRenamed(Lmobi/beyondpod/rsscore/categories/FeedCategory;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 144
    :cond_0
    invoke-static {}, Lmobi/beyondpod/services/player/smartplay/SmartPlaylistManager;->saveToDatabase()V

    return-void
.end method

.method public static onFeedDeleted(Lmobi/beyondpod/rsscore/Feed;)V
    .locals 2

    const/4 v0, 0x0

    .line 149
    :goto_0
    sget-object v1, Lmobi/beyondpod/services/player/smartplay/SmartPlaylistManager;->_Playlists:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 151
    sget-object v1, Lmobi/beyondpod/services/player/smartplay/SmartPlaylistManager;->_Playlists:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmobi/beyondpod/services/player/smartplay/SmartPlaylist;

    invoke-virtual {v1, p0}, Lmobi/beyondpod/services/player/smartplay/SmartPlaylist;->onFeedDeleted(Lmobi/beyondpod/rsscore/Feed;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 154
    :cond_0
    invoke-static {}, Lmobi/beyondpod/services/player/smartplay/SmartPlaylistManager;->saveToDatabase()V

    return-void
.end method

.method public static primarySmartPlay()Lmobi/beyondpod/services/player/smartplay/SmartPlaylist;
    .locals 3

    .line 482
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->primarySmartplayId()I

    move-result v0

    invoke-static {v0}, Lmobi/beyondpod/services/player/smartplay/SmartPlaylistManager;->getSmartPlaylist(I)Lmobi/beyondpod/services/player/smartplay/SmartPlaylist;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 484
    invoke-virtual {v0}, Lmobi/beyondpod/services/player/smartplay/SmartPlaylist;->isMarkedForDeletion()Z

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    .line 488
    :cond_0
    sget-object v0, Lmobi/beyondpod/services/player/smartplay/SmartPlaylistManager;->_Playlists:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmobi/beyondpod/services/player/smartplay/SmartPlaylist;

    .line 490
    invoke-virtual {v1}, Lmobi/beyondpod/services/player/smartplay/SmartPlaylist;->isMarkedForDeletion()Z

    move-result v2

    if-nez v2, :cond_1

    .line 492
    invoke-virtual {v1}, Lmobi/beyondpod/services/player/smartplay/SmartPlaylist;->id()I

    move-result v0

    invoke-static {v0}, Lmobi/beyondpod/rsscore/Configuration;->setPrimarySmartplayId(I)V

    return-object v1

    :cond_2
    const/4 v0, -0x1

    .line 497
    invoke-static {v0}, Lmobi/beyondpod/rsscore/Configuration;->setPrimarySmartplayId(I)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public static saveToDatabase()V
    .locals 4

    .line 281
    invoke-static {}, Lmobi/beyondpod/rsscore/repository/RepositoryPersistence;->repositoryHandler()Landroid/os/Handler;

    move-result-object v0

    sget-object v1, Lmobi/beyondpod/services/player/smartplay/SmartPlaylistManager;->_SaveToDBRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 282
    invoke-static {}, Lmobi/beyondpod/rsscore/repository/RepositoryPersistence;->repositoryHandler()Landroid/os/Handler;

    move-result-object v0

    sget-object v1, Lmobi/beyondpod/services/player/smartplay/SmartPlaylistManager;->_SaveToDBRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private static saveToDatabaseInternal()Z
    .locals 12

    .line 287
    sget-boolean v0, Lmobi/beyondpod/services/player/smartplay/SmartPlaylistManager;->_SavingEntries:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 290
    :cond_0
    sget-object v0, Lmobi/beyondpod/services/player/smartplay/SmartPlaylistManager;->_Playlists:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    return v2

    .line 295
    :cond_1
    sget-object v0, Lmobi/beyondpod/services/player/smartplay/SmartPlaylistManager;->_Playlists:Ljava/util/ArrayList;

    monitor-enter v0

    .line 297
    :try_start_0
    sput-boolean v2, Lmobi/beyondpod/services/player/smartplay/SmartPlaylistManager;->_SavingEntries:Z

    .line 299
    sget-object v3, Lmobi/beyondpod/services/player/smartplay/SmartPlaylistManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SmartPlay save starting for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Lmobi/beyondpod/services/player/smartplay/SmartPlaylistManager;->_Playlists:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " playlists..."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const/4 v3, 0x0

    .line 304
    :try_start_1
    new-instance v4, Lmobi/beyondpod/rsscore/repository/DatabaseHelper;

    invoke-static {}, Lmobi/beyondpod/BeyondPodApplication;->getInstance()Lmobi/beyondpod/BeyondPodApplication;

    move-result-object v5

    invoke-virtual {v5}, Lmobi/beyondpod/BeyondPodApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Lmobi/beyondpod/rsscore/repository/DatabaseHelper;-><init>(Landroid/content/Context;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 305
    :try_start_2
    invoke-virtual {v4}, Lmobi/beyondpod/rsscore/repository/DatabaseHelper;->beginTransaction()V

    .line 307
    sget-object v3, Lmobi/beyondpod/services/player/smartplay/SmartPlaylistManager;->_Playlists:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lmobi/beyondpod/services/player/smartplay/SmartPlaylist;

    .line 309
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 310
    invoke-virtual {v5}, Lmobi/beyondpod/services/player/smartplay/SmartPlaylist;->updateEntriesNameIds()V

    .line 313
    invoke-virtual {v5}, Lmobi/beyondpod/services/player/smartplay/SmartPlaylist;->entries()Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move v8, v1

    :cond_2
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lmobi/beyondpod/services/player/smartplay/SmartPlaylist$SmartPlaylistEntry;

    .line 315
    invoke-virtual {v9}, Lmobi/beyondpod/services/player/smartplay/SmartPlaylist$SmartPlaylistEntry;->isNew()Z

    move-result v10

    if-nez v10, :cond_3

    invoke-virtual {v9}, Lmobi/beyondpod/services/player/smartplay/SmartPlaylist$SmartPlaylistEntry;->isModified()Z

    move-result v10

    if-eqz v10, :cond_4

    :cond_3
    add-int/lit8 v8, v8, 0x1

    .line 318
    invoke-virtual {v4, v9}, Lmobi/beyondpod/rsscore/repository/DatabaseHelper;->saveSmartPlaylistEntry(Lmobi/beyondpod/services/player/smartplay/SmartPlaylist$SmartPlaylistEntry;)V

    .line 321
    :cond_4
    invoke-virtual {v9}, Lmobi/beyondpod/services/player/smartplay/SmartPlaylist$SmartPlaylistEntry;->isMarkedForDeletion()Z

    move-result v10

    if-eqz v10, :cond_2

    add-int/lit8 v8, v8, 0x1

    .line 324
    invoke-virtual {v4, v9}, Lmobi/beyondpod/rsscore/repository/DatabaseHelper;->deleteSmartPlayEntry(Lmobi/beyondpod/services/player/smartplay/SmartPlaylist$SmartPlaylistEntry;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 325
    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 330
    :cond_5
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_6

    .line 332
    invoke-virtual {v5}, Lmobi/beyondpod/services/player/smartplay/SmartPlaylist;->entries()Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 333
    sget-object v7, Lmobi/beyondpod/services/player/smartplay/SmartPlaylistManager;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  Removed: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " smartplay entries"

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    if-lez v8, :cond_7

    .line 337
    sget-object v6, Lmobi/beyondpod/services/player/smartplay/SmartPlaylistManager;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "  Saved smart playlist "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lmobi/beyondpod/services/player/smartplay/SmartPlaylist;->name()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ", ("

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lmobi/beyondpod/services/player/smartplay/SmartPlaylist;->id()I

    move-result v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ")! Made: "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " changes. It now has:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lmobi/beyondpod/services/player/smartplay/SmartPlaylist;->entries()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " entries!"

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 339
    :cond_7
    sget-object v6, Lmobi/beyondpod/services/player/smartplay/SmartPlaylistManager;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "  Smart playlist "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lmobi/beyondpod/services/player/smartplay/SmartPlaylist;->name()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ", ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lmobi/beyondpod/services/player/smartplay/SmartPlaylist;->id()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ")! has NO changes! ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lmobi/beyondpod/services/player/smartplay/SmartPlaylist;->entries()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " entries)"

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0

    .line 343
    :cond_8
    :try_start_3
    invoke-virtual {v4}, Lmobi/beyondpod/rsscore/repository/DatabaseHelper;->setTransactionSuccessful()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v4, :cond_9

    .line 354
    :try_start_4
    invoke-virtual {v4}, Lmobi/beyondpod/rsscore/repository/DatabaseHelper;->endTransaction()V

    .line 355
    invoke-virtual {v4}, Lmobi/beyondpod/rsscore/repository/DatabaseHelper;->cleanup()V

    .line 357
    :cond_9
    sput-boolean v1, Lmobi/beyondpod/services/player/smartplay/SmartPlaylistManager;->_SavingEntries:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_4

    :catch_0
    move-exception v3

    move-object v11, v4

    move v4, v2

    move-object v2, v3

    move-object v3, v11

    goto :goto_3

    :catchall_0
    move-exception v2

    goto/16 :goto_7

    :catch_1
    move-exception v2

    move-object v3, v4

    goto :goto_2

    :catchall_1
    move-exception v2

    move-object v4, v3

    goto/16 :goto_7

    :catch_2
    move-exception v2

    :goto_2
    move v4, v1

    .line 348
    :goto_3
    :try_start_5
    sget-object v5, Lmobi/beyondpod/services/player/smartplay/SmartPlaylistManager;->TAG:Ljava/lang/String;

    const-string v6, "!!!failed to save smart playlist entry to the database!"

    invoke-static {v5, v6, v2}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->logException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-eqz v3, :cond_a

    .line 354
    :try_start_6
    invoke-virtual {v3}, Lmobi/beyondpod/rsscore/repository/DatabaseHelper;->endTransaction()V

    .line 355
    invoke-virtual {v3}, Lmobi/beyondpod/rsscore/repository/DatabaseHelper;->cleanup()V

    .line 357
    :cond_a
    sput-boolean v1, Lmobi/beyondpod/services/player/smartplay/SmartPlaylistManager;->_SavingEntries:Z

    move v2, v4

    .line 359
    :goto_4
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    if-eqz v2, :cond_f

    .line 364
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 365
    sget-object v1, Lmobi/beyondpod/services/player/smartplay/SmartPlaylistManager;->_Playlists:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_b
    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmobi/beyondpod/services/player/smartplay/SmartPlaylist;

    .line 367
    invoke-virtual {v3}, Lmobi/beyondpod/services/player/smartplay/SmartPlaylist;->isMarkedForDeletion()Z

    move-result v4

    if-eqz v4, :cond_b

    .line 368
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 371
    :cond_c
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_d

    .line 373
    sget-object v1, Lmobi/beyondpod/services/player/smartplay/SmartPlaylistManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Removed "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " deleted smart playlists"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 374
    sget-object v1, Lmobi/beyondpod/services/player/smartplay/SmartPlaylistManager;->_Playlists:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 377
    :cond_d
    sget-object v0, Lmobi/beyondpod/services/player/smartplay/SmartPlaylistManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SmartPlay save complete! We have now "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lmobi/beyondpod/services/player/smartplay/SmartPlaylistManager;->_Playlists:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " playlists"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 379
    invoke-static {}, Lmobi/beyondpod/services/player/smartplay/SmartPlaylistManager;->primarySmartPlay()Lmobi/beyondpod/services/player/smartplay/SmartPlaylist;

    move-result-object v0

    if-eqz v0, :cond_e

    .line 381
    sget-object v1, Lmobi/beyondpod/services/player/smartplay/SmartPlaylistManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Default SmartPlay is set to: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lmobi/beyondpod/services/player/smartplay/SmartPlaylist;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    .line 383
    :cond_e
    sget-object v0, Lmobi/beyondpod/services/player/smartplay/SmartPlaylistManager;->TAG:Ljava/lang/String;

    const-string v1, "There is no Default SmartPlay!"

    invoke-static {v0, v1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 385
    :goto_6
    invoke-static {}, Lmobi/beyondpod/rsscore/StartupContentBuilder;->backupRepositoriesAsync()V

    :cond_f
    return v2

    :goto_7
    if-eqz v4, :cond_10

    .line 354
    :try_start_7
    invoke-virtual {v4}, Lmobi/beyondpod/rsscore/repository/DatabaseHelper;->endTransaction()V

    .line 355
    invoke-virtual {v4}, Lmobi/beyondpod/rsscore/repository/DatabaseHelper;->cleanup()V

    .line 357
    :cond_10
    sput-boolean v1, Lmobi/beyondpod/services/player/smartplay/SmartPlaylistManager;->_SavingEntries:Z

    throw v2

    :catchall_2
    move-exception v1

    .line 359
    monitor-exit v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    throw v1
.end method

.method public static setDefaultSmartPlay(Lmobi/beyondpod/services/player/smartplay/SmartPlaylist;)V
    .locals 0

    .line 503
    invoke-virtual {p0}, Lmobi/beyondpod/services/player/smartplay/SmartPlaylist;->id()I

    move-result p0

    invoke-static {p0}, Lmobi/beyondpod/rsscore/Configuration;->setPrimarySmartplayId(I)V

    return-void
.end method

.method public static setLastUsedSmartPlay(Lmobi/beyondpod/services/player/smartplay/SmartPlaylist;)V
    .locals 0

    .line 477
    invoke-virtual {p0}, Lmobi/beyondpod/services/player/smartplay/SmartPlaylist;->id()I

    move-result p0

    invoke-static {p0}, Lmobi/beyondpod/rsscore/Configuration;->setLastUsedSmartplayId(I)V

    return-void
.end method

.method public static updateSmartplayTo(Lmobi/beyondpod/services/player/smartplay/SmartPlaylist;)V
    .locals 2

    .line 446
    invoke-virtual {p0}, Lmobi/beyondpod/services/player/smartplay/SmartPlaylist;->id()I

    move-result v0

    invoke-static {v0}, Lmobi/beyondpod/services/player/smartplay/SmartPlaylistManager;->getSmartPlaylist(I)Lmobi/beyondpod/services/player/smartplay/SmartPlaylist;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 450
    :cond_0
    sget-object v1, Lmobi/beyondpod/services/player/smartplay/SmartPlaylistManager;->_Playlists:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 451
    sget-object v0, Lmobi/beyondpod/services/player/smartplay/SmartPlaylistManager;->_Playlists:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method
