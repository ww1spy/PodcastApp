.class public interface abstract Lmobi/beyondpod/services/player/impl/IMediaPlayerImpl;
.super Ljava/lang/Object;
.source "IMediaPlayerImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmobi/beyondpod/services/player/impl/IMediaPlayerImpl$OnSeekCompleteListener;,
        Lmobi/beyondpod/services/player/impl/IMediaPlayerImpl$OnPreparedListener;,
        Lmobi/beyondpod/services/player/impl/IMediaPlayerImpl$OnInfoListener;,
        Lmobi/beyondpod/services/player/impl/IMediaPlayerImpl$OnErrorListener;,
        Lmobi/beyondpod/services/player/impl/IMediaPlayerImpl$OnCompletionListener;,
        Lmobi/beyondpod/services/player/impl/IMediaPlayerImpl$OnBufferingUpdateListener;,
        Lmobi/beyondpod/services/player/impl/IMediaPlayerImpl$TrackMetadata;
    }
.end annotation


# static fields
.field public static final PLAYER_TYPE_3RD_PARTY:I = 0x1

.field public static final PLAYER_TYPE_ANDROID:I = 0x0

.field public static final PLAYER_TYPE_CHROMECAST:I = 0x5

.field public static final PLAYER_TYPE_MPG123:I = 0x4

.field public static final PLAYER_TYPE_SONIC:I = 0x3

.field public static final PLAYER_TYPE_TRACK_BACKED:I = 0x2

.field public static final PLAYER_TYPE_UNKNOWN:I = -0x1


# virtual methods
.method public abstract canSetPitch()Z
.end method

.method public abstract canSetSpeed()Z
.end method

.method public abstract getCurrentPosition()I
.end method

.method public abstract getCurrentSpeedMultiplier()F
.end method

.method public abstract getDuration()I
.end method

.method public abstract isPlaying()Z
.end method

.method public abstract isSpeedAlterationLibraryInstalled()Z
.end method

.method public abstract pause()V
.end method

.method public abstract playerType()I
.end method

.method public abstract prepare()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract prepareAsync()V
.end method

.method public abstract release()V
.end method

.method public abstract reset()V
.end method

.method public abstract seekTo(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method public abstract setAudioStreamType(I)V
.end method

.method public abstract setDataSource(Landroid/content/Context;Landroid/net/Uri;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract setDataSource(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract setDataSource(Lmobi/beyondpod/services/player/impl/IMediaPlayerImpl$TrackMetadata;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract setOnBufferingUpdateListener(Lmobi/beyondpod/services/player/impl/IMediaPlayerImpl$OnBufferingUpdateListener;)V
.end method

.method public abstract setOnCompletionListener(Lmobi/beyondpod/services/player/impl/IMediaPlayerImpl$OnCompletionListener;)V
.end method

.method public abstract setOnErrorListener(Lmobi/beyondpod/services/player/impl/IMediaPlayerImpl$OnErrorListener;)V
.end method

.method public abstract setOnInfoListener(Lmobi/beyondpod/services/player/impl/IMediaPlayerImpl$OnInfoListener;)V
.end method

.method public abstract setOnPreparedListener(Lmobi/beyondpod/services/player/impl/IMediaPlayerImpl$OnPreparedListener;)V
.end method

.method public abstract setOnSeekCompleteListener(Lmobi/beyondpod/services/player/impl/IMediaPlayerImpl$OnSeekCompleteListener;)V
.end method

.method public abstract setPlaybackPitch(F)V
.end method

.method public abstract setPlaybackSpeed(F)V
.end method

.method public abstract setVolume(FF)V
.end method

.method public abstract setVolumeBoost(F)V
.end method

.method public abstract setWakeMode(Landroid/content/Context;I)V
.end method

.method public abstract start()V
.end method

.method public abstract stop()V
.end method

.method public abstract supportsFileFormatFor(Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method public abstract supportsSpeedAlteration()Z
.end method
