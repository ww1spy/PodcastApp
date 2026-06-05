.class public Lmobi/beyondpod/rsscore/rss/ItemStateHistory$ItemStatus;
.super Ljava/lang/Object;
.source "ItemStateHistory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobi/beyondpod/rsscore/rss/ItemStateHistory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ItemStatus"
.end annotation


# static fields
.field static READ:I = 0x1

.field static READ_SYNCED:I = 0x20

.field static SHARED:I = 0x4

.field static STARRED:I = 0x2

.field static STAR_SYNCED:I = 0x40


# instance fields
.field private volatile _Data:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 59
    iput v0, p0, Lmobi/beyondpod/rsscore/rss/ItemStateHistory$ItemStatus;->_Data:I

    return-void
.end method

.method public constructor <init>(ZZZZ)V
    .locals 1

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 59
    iput v0, p0, Lmobi/beyondpod/rsscore/rss/ItemStateHistory$ItemStatus;->_Data:I

    if-eqz p3, :cond_0

    .line 74
    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/rss/ItemStateHistory$ItemStatus;->setRead()V

    :cond_0
    if-eqz p4, :cond_1

    .line 77
    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/rss/ItemStateHistory$ItemStatus;->setStarred()V

    :cond_1
    if-eqz p1, :cond_2

    .line 80
    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/rss/ItemStateHistory$ItemStatus;->setReadSynced()V

    :cond_2
    if-eqz p2, :cond_3

    .line 83
    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/rss/ItemStateHistory$ItemStatus;->setStarSynced()V

    :cond_3
    return-void
.end method


# virtual methods
.method public declared-synchronized clearRead()V
    .locals 2

    monitor-enter p0

    .line 122
    :try_start_0
    iget v0, p0, Lmobi/beyondpod/rsscore/rss/ItemStateHistory$ItemStatus;->_Data:I

    sget v1, Lmobi/beyondpod/rsscore/rss/ItemStateHistory$ItemStatus;->READ:I

    xor-int/lit8 v1, v1, -0x1

    and-int/2addr v0, v1

    iput v0, p0, Lmobi/beyondpod/rsscore/rss/ItemStateHistory$ItemStatus;->_Data:I

    .line 123
    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/rss/ItemStateHistory$ItemStatus;->clearReadSynced()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 124
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    .line 121
    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized clearReadSynced()V
    .locals 2

    monitor-enter p0

    .line 155
    :try_start_0
    iget v0, p0, Lmobi/beyondpod/rsscore/rss/ItemStateHistory$ItemStatus;->_Data:I

    sget v1, Lmobi/beyondpod/rsscore/rss/ItemStateHistory$ItemStatus;->READ_SYNCED:I

    xor-int/lit8 v1, v1, -0x1

    and-int/2addr v0, v1

    iput v0, p0, Lmobi/beyondpod/rsscore/rss/ItemStateHistory$ItemStatus;->_Data:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 156
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    .line 154
    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized clearShared()V
    .locals 2

    monitor-enter p0

    .line 145
    :try_start_0
    iget v0, p0, Lmobi/beyondpod/rsscore/rss/ItemStateHistory$ItemStatus;->_Data:I

    sget v1, Lmobi/beyondpod/rsscore/rss/ItemStateHistory$ItemStatus;->SHARED:I

    xor-int/lit8 v1, v1, -0x1

    and-int/2addr v0, v1

    iput v0, p0, Lmobi/beyondpod/rsscore/rss/ItemStateHistory$ItemStatus;->_Data:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 146
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    .line 144
    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized clearStarSynced()V
    .locals 2

    monitor-enter p0

    .line 165
    :try_start_0
    iget v0, p0, Lmobi/beyondpod/rsscore/rss/ItemStateHistory$ItemStatus;->_Data:I

    sget v1, Lmobi/beyondpod/rsscore/rss/ItemStateHistory$ItemStatus;->STAR_SYNCED:I

    xor-int/lit8 v1, v1, -0x1

    and-int/2addr v0, v1

    iput v0, p0, Lmobi/beyondpod/rsscore/rss/ItemStateHistory$ItemStatus;->_Data:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 166
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    .line 164
    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized clearStarred()V
    .locals 2

    monitor-enter p0

    .line 134
    :try_start_0
    iget v0, p0, Lmobi/beyondpod/rsscore/rss/ItemStateHistory$ItemStatus;->_Data:I

    sget v1, Lmobi/beyondpod/rsscore/rss/ItemStateHistory$ItemStatus;->STARRED:I

    xor-int/lit8 v1, v1, -0x1

    and-int/2addr v0, v1

    iput v0, p0, Lmobi/beyondpod/rsscore/rss/ItemStateHistory$ItemStatus;->_Data:I

    .line 135
    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/rss/ItemStateHistory$ItemStatus;->clearStarSynced()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 136
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    .line 133
    monitor-exit p0

    throw v0
.end method

.method public isRead()Z
    .locals 2

    .line 88
    iget v0, p0, Lmobi/beyondpod/rsscore/rss/ItemStateHistory$ItemStatus;->_Data:I

    sget v1, Lmobi/beyondpod/rsscore/rss/ItemStateHistory$ItemStatus;->READ:I

    and-int/2addr v0, v1

    sget v1, Lmobi/beyondpod/rsscore/rss/ItemStateHistory$ItemStatus;->READ:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isReadSynced()Z
    .locals 3

    .line 103
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->ignoreGoogleReaderReadStatus()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 106
    :cond_0
    iget v0, p0, Lmobi/beyondpod/rsscore/rss/ItemStateHistory$ItemStatus;->_Data:I

    sget v2, Lmobi/beyondpod/rsscore/rss/ItemStateHistory$ItemStatus;->READ_SYNCED:I

    and-int/2addr v0, v2

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isShared()Z
    .locals 2

    .line 98
    iget v0, p0, Lmobi/beyondpod/rsscore/rss/ItemStateHistory$ItemStatus;->_Data:I

    sget v1, Lmobi/beyondpod/rsscore/rss/ItemStateHistory$ItemStatus;->SHARED:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isStarSynced()Z
    .locals 2

    .line 111
    iget v0, p0, Lmobi/beyondpod/rsscore/rss/ItemStateHistory$ItemStatus;->_Data:I

    sget v1, Lmobi/beyondpod/rsscore/rss/ItemStateHistory$ItemStatus;->STAR_SYNCED:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isStarred()Z
    .locals 2

    .line 93
    iget v0, p0, Lmobi/beyondpod/rsscore/rss/ItemStateHistory$ItemStatus;->_Data:I

    sget v1, Lmobi/beyondpod/rsscore/rss/ItemStateHistory$ItemStatus;->STARRED:I

    and-int/2addr v0, v1

    sget v1, Lmobi/beyondpod/rsscore/rss/ItemStateHistory$ItemStatus;->STARRED:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public read(Ljava/io/DataInputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 175
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result p1

    iput p1, p0, Lmobi/beyondpod/rsscore/rss/ItemStateHistory$ItemStatus;->_Data:I

    return-void
.end method

.method public declared-synchronized setRead()V
    .locals 2

    monitor-enter p0

    .line 116
    :try_start_0
    iget v0, p0, Lmobi/beyondpod/rsscore/rss/ItemStateHistory$ItemStatus;->_Data:I

    sget v1, Lmobi/beyondpod/rsscore/rss/ItemStateHistory$ItemStatus;->READ:I

    or-int/2addr v0, v1

    iput v0, p0, Lmobi/beyondpod/rsscore/rss/ItemStateHistory$ItemStatus;->_Data:I

    .line 117
    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/rss/ItemStateHistory$ItemStatus;->clearReadSynced()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 118
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    .line 115
    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setReadSynced()V
    .locals 2

    monitor-enter p0

    .line 150
    :try_start_0
    iget v0, p0, Lmobi/beyondpod/rsscore/rss/ItemStateHistory$ItemStatus;->_Data:I

    sget v1, Lmobi/beyondpod/rsscore/rss/ItemStateHistory$ItemStatus;->READ_SYNCED:I

    or-int/2addr v0, v1

    iput v0, p0, Lmobi/beyondpod/rsscore/rss/ItemStateHistory$ItemStatus;->_Data:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 151
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    .line 149
    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setShared()V
    .locals 2

    monitor-enter p0

    .line 140
    :try_start_0
    iget v0, p0, Lmobi/beyondpod/rsscore/rss/ItemStateHistory$ItemStatus;->_Data:I

    sget v1, Lmobi/beyondpod/rsscore/rss/ItemStateHistory$ItemStatus;->SHARED:I

    or-int/2addr v0, v1

    iput v0, p0, Lmobi/beyondpod/rsscore/rss/ItemStateHistory$ItemStatus;->_Data:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 141
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    .line 139
    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setStarSynced()V
    .locals 2

    monitor-enter p0

    .line 160
    :try_start_0
    iget v0, p0, Lmobi/beyondpod/rsscore/rss/ItemStateHistory$ItemStatus;->_Data:I

    sget v1, Lmobi/beyondpod/rsscore/rss/ItemStateHistory$ItemStatus;->STAR_SYNCED:I

    or-int/2addr v0, v1

    iput v0, p0, Lmobi/beyondpod/rsscore/rss/ItemStateHistory$ItemStatus;->_Data:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 161
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    .line 159
    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setStarred()V
    .locals 2

    monitor-enter p0

    .line 128
    :try_start_0
    iget v0, p0, Lmobi/beyondpod/rsscore/rss/ItemStateHistory$ItemStatus;->_Data:I

    sget v1, Lmobi/beyondpod/rsscore/rss/ItemStateHistory$ItemStatus;->STARRED:I

    or-int/2addr v0, v1

    iput v0, p0, Lmobi/beyondpod/rsscore/rss/ItemStateHistory$ItemStatus;->_Data:I

    .line 129
    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/rss/ItemStateHistory$ItemStatus;->clearStarSynced()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 130
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    .line 127
    monitor-exit p0

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    const-string v0, "RS:%s, SS:%s - R:%s, S:%s"

    const/4 v1, 0x4

    .line 181
    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/rss/ItemStateHistory$ItemStatus;->isReadSynced()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/rss/ItemStateHistory$ItemStatus;->isStarSynced()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/rss/ItemStateHistory$ItemStatus;->isRead()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/rss/ItemStateHistory$ItemStatus;->isStarred()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x3

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public write(Ljava/io/DataOutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 170
    iget v0, p0, Lmobi/beyondpod/rsscore/rss/ItemStateHistory$ItemStatus;->_Data:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    return-void
.end method
