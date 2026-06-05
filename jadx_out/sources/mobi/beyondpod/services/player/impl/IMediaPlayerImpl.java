package mobi.beyondpod.services.player.impl;

import android.content.Context;
import android.net.Uri;
import java.io.IOException;
import java.util.Date;

/* loaded from: classes.dex */
public interface IMediaPlayerImpl {
    public static final int PLAYER_TYPE_3RD_PARTY = 1;
    public static final int PLAYER_TYPE_ANDROID = 0;
    public static final int PLAYER_TYPE_CHROMECAST = 5;
    public static final int PLAYER_TYPE_MPG123 = 4;
    public static final int PLAYER_TYPE_SONIC = 3;
    public static final int PLAYER_TYPE_TRACK_BACKED = 2;
    public static final int PLAYER_TYPE_UNKNOWN = -1;

    /* loaded from: classes.dex */
    public interface OnBufferingUpdateListener {
        void onBufferingUpdate(IMediaPlayerImpl iMediaPlayerImpl, int i);
    }

    /* loaded from: classes.dex */
    public interface OnCompletionListener {
        void onCompletion(IMediaPlayerImpl iMediaPlayerImpl);
    }

    /* loaded from: classes.dex */
    public interface OnErrorListener {
        boolean onError(IMediaPlayerImpl iMediaPlayerImpl, int i, int i2);
    }

    /* loaded from: classes.dex */
    public interface OnInfoListener {
        boolean onInfo(IMediaPlayerImpl iMediaPlayerImpl, int i, int i2);
    }

    /* loaded from: classes.dex */
    public interface OnPreparedListener {
        void onPrepared(IMediaPlayerImpl iMediaPlayerImpl);
    }

    /* loaded from: classes.dex */
    public interface OnSeekCompleteListener {
        void onSeekComplete(IMediaPlayerImpl iMediaPlayerImpl);
    }

    boolean canSetPitch();

    boolean canSetSpeed();

    int getCurrentPosition();

    float getCurrentSpeedMultiplier();

    int getDuration();

    boolean isPlaying();

    boolean isSpeedAlterationLibraryInstalled();

    void pause();

    int playerType();

    void prepare() throws IllegalStateException, IOException;

    void prepareAsync();

    void release();

    void reset();

    void seekTo(int i) throws IllegalStateException;

    void setAudioStreamType(int i);

    void setDataSource(Context context, Uri uri) throws IllegalArgumentException, IllegalStateException, IOException;

    void setDataSource(String str) throws IllegalArgumentException, IllegalStateException, IOException;

    void setDataSource(TrackMetadata trackMetadata) throws IllegalArgumentException, IllegalStateException, IOException;

    void setOnBufferingUpdateListener(OnBufferingUpdateListener onBufferingUpdateListener);

    void setOnCompletionListener(OnCompletionListener onCompletionListener);

    void setOnErrorListener(OnErrorListener onErrorListener);

    void setOnInfoListener(OnInfoListener onInfoListener);

    void setOnPreparedListener(OnPreparedListener onPreparedListener);

    void setOnSeekCompleteListener(OnSeekCompleteListener onSeekCompleteListener);

    void setPlaybackPitch(float f);

    void setPlaybackSpeed(float f);

    void setVolume(float f, float f2);

    void setVolumeBoost(float f);

    void setWakeMode(Context context, int i);

    void start();

    void stop();

    boolean supportsFileFormatFor(String str, String str2);

    boolean supportsSpeedAlteration();

    /* loaded from: classes.dex */
    public static class TrackMetadata {
        public String FeedName;
        public String MimeType;
        public Date TrackDate;
        public String TrackImageUrl;
        public String TrackName;
        public String TrackURL;

        public TrackMetadata(String str, String str2, String str3, String str4, String str5, Date date) {
            this.TrackURL = str;
            this.TrackName = str2;
            this.MimeType = str3;
            this.TrackImageUrl = str4;
            this.FeedName = str5;
            this.TrackDate = date;
        }
    }
}
