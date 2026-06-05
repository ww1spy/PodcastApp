.class public abstract Lmobi/beyondpod/sync/TrackedChangeBase;
.super Ljava/lang/Object;
.source "TrackedChangeBase.java"


# static fields
.field public static final CHANGE_TYPE_ENCLOSURE_MARKED_AS_DOWNLOADED:I = 0x5

.field public static final CHANGE_TYPE_ENCLOSURE_MARKED_AS_NOT_DOWNLOADED:I = 0x6

.field public static final CHANGE_TYPE_ENCLOSURE_STREAMABLE_TRACK_ADDED:I = 0x4

.field public static final CHANGE_TYPE_EPISODE_DELETED:I = 0x9

.field public static final CHANGE_TYPE_EPISODE_DOWNLOADED:I = 0x7

.field public static final CHANGE_TYPE_EPISODE_PLAYED:I = 0x8

.field public static final CHANGE_TYPE_EPISODE_UPDATED:I = 0xf

.field public static final CHANGE_TYPE_FEED_ADDED:I = 0x1

.field public static final CHANGE_TYPE_FEED_DELETED:I = 0x2

.field public static final CHANGE_TYPE_FEED_MODIFIED:I = 0x3

.field public static final CHANGE_TYPE_FEED_PUSH:I = 0xe

.field public static final CHANGE_TYPE_POST_READ:I = 0xc

.field public static final CHANGE_TYPE_POST_STARRED:I = 0xa

.field public static final CHANGE_TYPE_POST_UNREAD:I = 0xd

.field public static final CHANGE_TYPE_POST_UNSTARRED:I = 0xb

.field public static final SYNC_STATUS_SYNC_DOWN_APPLIED:I = 0x4

.field public static final SYNC_STATUS_SYNC_DOWN_PENDING:I = 0x3

.field public static final SYNC_STATUS_SYNC_UP_PENDING:I = 0x2

.field public static final SYNC_STATUS_SYNC_UP_SYNCED:I = 0x1

.field public static final SYNC_STATUS_UNKNOWN:I = 0x0

.field public static TimestampComparator:Ljava/util/Comparator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lmobi/beyondpod/sync/TrackedChangeBase;",
            ">;"
        }
    .end annotation
.end field

.field protected static final _BlobDelimiter:Ljava/lang/String; = "|$*|"


# instance fields
.field protected _Blob:Ljava/lang/String;

.field protected _ChangeType:I

.field private _Deleted:Z

.field private _IsModified:Z

.field protected _MessageId:Ljava/lang/String;

.field private _StorageRowID:Ljava/lang/Long;

.field private _SyncStatus:I

.field protected _TimeStamp:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 265
    new-instance v0, Lmobi/beyondpod/sync/TrackedChangeBase$1;

    invoke-direct {v0}, Lmobi/beyondpod/sync/TrackedChangeBase$1;-><init>()V

    sput-object v0, Lmobi/beyondpod/sync/TrackedChangeBase;->TimestampComparator:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 63
    iput v0, p0, Lmobi/beyondpod/sync/TrackedChangeBase;->_SyncStatus:I

    .line 65
    iput-boolean v0, p0, Lmobi/beyondpod/sync/TrackedChangeBase;->_IsModified:Z

    const/4 v1, 0x0

    .line 67
    iput-object v1, p0, Lmobi/beyondpod/sync/TrackedChangeBase;->_StorageRowID:Ljava/lang/Long;

    .line 68
    iput-boolean v0, p0, Lmobi/beyondpod/sync/TrackedChangeBase;->_Deleted:Z

    .line 141
    iput p1, p0, Lmobi/beyondpod/sync/TrackedChangeBase;->_ChangeType:I

    .line 142
    new-instance p1, Ljava/util/Date;

    invoke-direct {p1}, Ljava/util/Date;-><init>()V

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    iput-wide v0, p0, Lmobi/beyondpod/sync/TrackedChangeBase;->_TimeStamp:J

    return-void
.end method

.method public constructor <init>(Ljava/lang/Long;JIILjava/lang/String;)V
    .locals 2

    .line 147
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 63
    iput v0, p0, Lmobi/beyondpod/sync/TrackedChangeBase;->_SyncStatus:I

    .line 65
    iput-boolean v0, p0, Lmobi/beyondpod/sync/TrackedChangeBase;->_IsModified:Z

    const/4 v1, 0x0

    .line 67
    iput-object v1, p0, Lmobi/beyondpod/sync/TrackedChangeBase;->_StorageRowID:Ljava/lang/Long;

    .line 68
    iput-boolean v0, p0, Lmobi/beyondpod/sync/TrackedChangeBase;->_Deleted:Z

    .line 148
    iput-wide p2, p0, Lmobi/beyondpod/sync/TrackedChangeBase;->_TimeStamp:J

    .line 149
    iput p4, p0, Lmobi/beyondpod/sync/TrackedChangeBase;->_ChangeType:I

    .line 150
    iput p5, p0, Lmobi/beyondpod/sync/TrackedChangeBase;->_SyncStatus:I

    .line 151
    iput-object p1, p0, Lmobi/beyondpod/sync/TrackedChangeBase;->_StorageRowID:Ljava/lang/Long;

    .line 152
    iput-object p6, p0, Lmobi/beyondpod/sync/TrackedChangeBase;->_Blob:Ljava/lang/String;

    return-void
.end method

.method public static logSyncEvent(Ljava/lang/String;Ljava/lang/String;Lmobi/beyondpod/sync/TrackedChangeBase;)V
    .locals 0

    .line 308
    invoke-static {p0, p1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 311
    invoke-static {}, Lmobi/beyondpod/rsscore/repository/RepositoryPersistence;->repositoryHandler()Landroid/os/Handler;

    move-result-object p0

    new-instance p2, Lmobi/beyondpod/sync/TrackedChangeBase$2;

    invoke-direct {p2, p1}, Lmobi/beyondpod/sync/TrackedChangeBase$2;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private storageType()Ljava/lang/String;
    .locals 1

    .line 248
    iget-object v0, p0, Lmobi/beyondpod/sync/TrackedChangeBase;->_StorageRowID:Ljava/lang/Long;

    if-nez v0, :cond_0

    const-string v0, "+"

    return-object v0

    .line 251
    :cond_0
    invoke-virtual {p0}, Lmobi/beyondpod/sync/TrackedChangeBase;->isMarkedForDeletion()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "-"

    return-object v0

    .line 254
    :cond_1
    invoke-virtual {p0}, Lmobi/beyondpod/sync/TrackedChangeBase;->isModified()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "*"

    return-object v0

    :cond_2
    const-string v0, "_"

    return-object v0
.end method

.method private syncStatusName()Ljava/lang/String;
    .locals 1

    .line 228
    iget v0, p0, Lmobi/beyondpod/sync/TrackedChangeBase;->_SyncStatus:I

    packed-switch v0, :pswitch_data_0

    const-string v0, "NA"

    return-object v0

    :pswitch_0
    const-string v0, "DS"

    return-object v0

    :pswitch_1
    const-string v0, "DP"

    return-object v0

    :pswitch_2
    const-string v0, "UP"

    return-object v0

    :pswitch_3
    const-string v0, "US"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public abstract applyRemoteChange()V
.end method

.method public blob()Ljava/lang/String;
    .locals 1

    .line 262
    iget-object v0, p0, Lmobi/beyondpod/sync/TrackedChangeBase;->_Blob:Ljava/lang/String;

    return-object v0
.end method

.method public changeName()Ljava/lang/String;
    .locals 1

    .line 175
    iget v0, p0, Lmobi/beyondpod/sync/TrackedChangeBase;->_ChangeType:I

    packed-switch v0, :pswitch_data_0

    const-string v0, "UNKNOWN"

    return-object v0

    :pswitch_0
    const-string v0, "EP_UPDATED"

    return-object v0

    :pswitch_1
    const-string v0, "FEED_PUSH"

    return-object v0

    :pswitch_2
    const-string v0, "POST_UNREAD"

    return-object v0

    :pswitch_3
    const-string v0, "POST_READ"

    return-object v0

    :pswitch_4
    const-string v0, "POST_UNSTARRED"

    return-object v0

    :pswitch_5
    const-string v0, "POST_STARRED"

    return-object v0

    :pswitch_6
    const-string v0, "EP_DELETED"

    return-object v0

    :pswitch_7
    const-string v0, "EP_PLAYED"

    return-object v0

    :pswitch_8
    const-string v0, "EP_DOWNLOADED"

    return-object v0

    :pswitch_9
    const-string v0, "ENCL_MARKED_AS_NOT_DOWNLOADED"

    return-object v0

    :pswitch_a
    const-string v0, "ENCL_MARKED_AS_DOWNLOADED"

    return-object v0

    :pswitch_b
    const-string v0, "EP_ADDED"

    return-object v0

    :pswitch_c
    const-string v0, "FEED_MODIFIED"

    return-object v0

    :pswitch_d
    const-string v0, "FEED_DELETED"

    return-object v0

    :pswitch_e
    const-string v0, "FEED_ADDED"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public changeType()I
    .locals 1

    .line 124
    iget v0, p0, Lmobi/beyondpod/sync/TrackedChangeBase;->_ChangeType:I

    return v0
.end method

.method public abstract friendlyName()Ljava/lang/String;
.end method

.method public initRowID(Ljava/lang/Long;)V
    .locals 0

    .line 82
    iput-object p1, p0, Lmobi/beyondpod/sync/TrackedChangeBase;->_StorageRowID:Ljava/lang/Long;

    return-void
.end method

.method public isMarkedForDeletion()Z
    .locals 1

    .line 92
    iget-boolean v0, p0, Lmobi/beyondpod/sync/TrackedChangeBase;->_Deleted:Z

    return v0
.end method

.method public isModified()Z
    .locals 1

    .line 157
    iget-boolean v0, p0, Lmobi/beyondpod/sync/TrackedChangeBase;->_IsModified:Z

    return v0
.end method

.method public isNew()Z
    .locals 1

    .line 87
    iget-object v0, p0, Lmobi/beyondpod/sync/TrackedChangeBase;->_StorageRowID:Ljava/lang/Long;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected abstract isValid()Z
.end method

.method public markDeleted()V
    .locals 1

    const/4 v0, 0x1

    .line 97
    iput-boolean v0, p0, Lmobi/beyondpod/sync/TrackedChangeBase;->_Deleted:Z

    return-void
.end method

.method public abstract messageId()Ljava/lang/String;
.end method

.method protected parseBlob()[Ljava/lang/String;
    .locals 2

    .line 300
    iget-object v0, p0, Lmobi/beyondpod/sync/TrackedChangeBase;->_Blob:Ljava/lang/String;

    invoke-static {v0}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 301
    new-array v0, v0, [Ljava/lang/String;

    return-object v0

    .line 303
    :cond_0
    iget-object v0, p0, Lmobi/beyondpod/sync/TrackedChangeBase;->_Blob:Ljava/lang/String;

    const-string v1, "\\|\\$\\*\\|"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public abstract prepareForSave()V
.end method

.method public rowID()Ljava/lang/Long;
    .locals 1

    .line 77
    iget-object v0, p0, Lmobi/beyondpod/sync/TrackedChangeBase;->_StorageRowID:Ljava/lang/Long;

    return-object v0
.end method

.method protected varargs saveToBlob([Ljava/lang/String;)V
    .locals 5

    .line 283
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    .line 284
    :goto_0
    array-length v2, p1

    if-eq v1, v2, :cond_2

    .line 286
    aget-object v2, p1, v1

    if-eqz v2, :cond_0

    const-string v3, "|$*|"

    const-string v4, " "

    .line 288
    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 291
    :cond_0
    array-length v2, p1

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_1

    const-string v2, "|$*|"

    .line 292
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 295
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lmobi/beyondpod/sync/TrackedChangeBase;->_Blob:Ljava/lang/String;

    return-void
.end method

.method public setIsModified(Z)V
    .locals 0

    .line 162
    iput-boolean p1, p0, Lmobi/beyondpod/sync/TrackedChangeBase;->_IsModified:Z

    return-void
.end method

.method public setSyncStatus(I)V
    .locals 1

    const/4 v0, 0x1

    .line 134
    iput-boolean v0, p0, Lmobi/beyondpod/sync/TrackedChangeBase;->_IsModified:Z

    .line 135
    iput p1, p0, Lmobi/beyondpod/sync/TrackedChangeBase;->_SyncStatus:I

    return-void
.end method

.method public syncStatus()I
    .locals 1

    .line 129
    iget v0, p0, Lmobi/beyondpod/sync/TrackedChangeBase;->_SyncStatus:I

    return v0
.end method

.method public timeStamp()J
    .locals 2

    .line 72
    iget-wide v0, p0, Lmobi/beyondpod/sync/TrackedChangeBase;->_TimeStamp:J

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 168
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "St:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lmobi/beyondpod/sync/TrackedChangeBase;->storageType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", Sync:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lmobi/beyondpod/sync/TrackedChangeBase;->syncStatusName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/util/Date;

    .line 169
    invoke-virtual {p0}, Lmobi/beyondpod/sync/TrackedChangeBase;->timeStamp()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " => "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lmobi/beyondpod/sync/TrackedChangeBase;->changeName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    invoke-virtual {p0}, Lmobi/beyondpod/sync/TrackedChangeBase;->isValid()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "V"

    goto :goto_0

    :cond_0
    const-string v1, "I"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ") "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lmobi/beyondpod/sync/TrackedChangeBase;->friendlyName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public updateSyncStatusTo(I)V
    .locals 0

    .line 102
    iput p1, p0, Lmobi/beyondpod/sync/TrackedChangeBase;->_SyncStatus:I

    const/4 p1, 0x1

    .line 103
    iput-boolean p1, p0, Lmobi/beyondpod/sync/TrackedChangeBase;->_IsModified:Z

    return-void
.end method

.method public updateTo(Lmobi/beyondpod/sync/TrackedChangeBase;)V
    .locals 2

    .line 118
    invoke-virtual {p1}, Lmobi/beyondpod/sync/TrackedChangeBase;->timeStamp()J

    move-result-wide v0

    iput-wide v0, p0, Lmobi/beyondpod/sync/TrackedChangeBase;->_TimeStamp:J

    const/4 p1, 0x1

    .line 119
    iput-boolean p1, p0, Lmobi/beyondpod/sync/TrackedChangeBase;->_IsModified:Z

    return-void
.end method
