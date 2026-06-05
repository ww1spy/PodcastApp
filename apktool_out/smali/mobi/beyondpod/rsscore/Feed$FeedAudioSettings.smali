.class public Lmobi/beyondpod/rsscore/Feed$FeedAudioSettings;
.super Ljava/lang/Object;
.source "Feed.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobi/beyondpod/rsscore/Feed;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FeedAudioSettings"
.end annotation


# instance fields
.field private _Modified:Z

.field _VolumeBoost:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 114
    iput-boolean v0, p0, Lmobi/beyondpod/rsscore/Feed$FeedAudioSettings;->_Modified:Z

    .line 126
    iput v0, p0, Lmobi/beyondpod/rsscore/Feed$FeedAudioSettings;->_VolumeBoost:I

    return-void
.end method

.method public static deserialize(Ljava/lang/String;)Lmobi/beyondpod/rsscore/Feed$FeedAudioSettings;
    .locals 3

    .line 130
    new-instance v0, Lmobi/beyondpod/rsscore/Feed$FeedAudioSettings;

    invoke-direct {v0}, Lmobi/beyondpod/rsscore/Feed$FeedAudioSettings;-><init>()V

    .line 132
    invoke-static {p0}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_0
    const-string v1, "\\|"

    .line 135
    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    .line 136
    array-length v2, p0

    if-lez v2, :cond_1

    .line 137
    aget-object p0, p0, v1

    invoke-static {p0, v1}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->safeParseInt(Ljava/lang/String;I)I

    move-result p0

    invoke-virtual {v0, p0}, Lmobi/beyondpod/rsscore/Feed$FeedAudioSettings;->setVolumeBoost(I)V

    .line 139
    :cond_1
    iput-boolean v1, v0, Lmobi/beyondpod/rsscore/Feed$FeedAudioSettings;->_Modified:Z

    return-object v0
.end method


# virtual methods
.method public getVolumeBoost()I
    .locals 1

    .line 117
    iget v0, p0, Lmobi/beyondpod/rsscore/Feed$FeedAudioSettings;->_VolumeBoost:I

    return v0
.end method

.method public isModified()Z
    .locals 1

    .line 145
    iget-boolean v0, p0, Lmobi/beyondpod/rsscore/Feed$FeedAudioSettings;->_Modified:Z

    return v0
.end method

.method public serialize()Ljava/lang/String;
    .locals 2

    .line 155
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/Feed$FeedAudioSettings;->getVolumeBoost()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setIsModified(Z)V
    .locals 0

    .line 150
    iput-boolean p1, p0, Lmobi/beyondpod/rsscore/Feed$FeedAudioSettings;->_Modified:Z

    return-void
.end method

.method public setVolumeBoost(I)V
    .locals 0

    .line 122
    iput p1, p0, Lmobi/beyondpod/rsscore/Feed$FeedAudioSettings;->_VolumeBoost:I

    const/4 p1, 0x1

    .line 123
    iput-boolean p1, p0, Lmobi/beyondpod/rsscore/Feed$FeedAudioSettings;->_Modified:Z

    return-void
.end method
