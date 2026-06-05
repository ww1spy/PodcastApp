package mobi.beyondpod.services.player.impl;

import android.content.Context;
import com.aocate.media.MediaPlayer;
import mobi.beyondpod.rsscore.Configuration;
import mobi.beyondpod.rsscore.rss.PolicyManager;

/* loaded from: classes.dex */
public class MediaPlayerFactory {
    public static IMediaPlayerImpl createPlayer(Context context) {
        if (ChromecastDevice.isConnected()) {
            return new MediaPlayerChromecast(context);
        }
        IMediaPlayerImpl speedCapableMediaPlayer = (Configuration.enableAudioPlugins() && isSpeedAlterationPlayerInstalled(context) && !Configuration.useAudioPluginForConfiguredFeedsOnly()) ? getSpeedCapableMediaPlayer(context) : null;
        return speedCapableMediaPlayer != null ? speedCapableMediaPlayer : new MediaPlayerAndroid(context);
    }

    public static boolean isSpeedAlterationPlayerInstalled(Context context) {
        return SonicPlayer.isSonicLibraryInstalled() || (Configuration.enablePresto() && MediaPlayer.isPrestoLibraryInstalled(context));
    }

    public static IMediaPlayerImpl switchToStreamingPlayerIfNeeded(IMediaPlayerImpl iMediaPlayerImpl, Context context, int i) {
        if (iMediaPlayerImpl.playerType() == 0) {
            return iMediaPlayerImpl;
        }
        iMediaPlayerImpl.release();
        MediaPlayerAndroid mediaPlayerAndroid = new MediaPlayerAndroid(context);
        mediaPlayerAndroid.setWakeMode(context, i);
        return mediaPlayerAndroid;
    }

    public static IMediaPlayerImpl switchToLocalPlayerIfNeeded(IMediaPlayerImpl iMediaPlayerImpl, float f, Context context, int i, String str, String str2) {
        boolean isSpeedAlterationPlayerInstalled = isSpeedAlterationPlayerInstalled(context);
        boolean z = f == 1.0f && Configuration.useAudioPluginForConfiguredFeedsOnly();
        if (!iMediaPlayerImpl.supportsSpeedAlteration() && isSpeedAlterationPlayerInstalled && Configuration.enableAudioPlugins() && !z) {
            iMediaPlayerImpl.release();
            IMediaPlayerImpl speedCapableMediaPlayer = getSpeedCapableMediaPlayer(context);
            if (speedCapableMediaPlayer == null || !speedCapableMediaPlayer.supportsFileFormatFor(str, str2)) {
                if (speedCapableMediaPlayer != null) {
                    speedCapableMediaPlayer.release();
                }
                speedCapableMediaPlayer = new MediaPlayerAndroid(context);
            }
            speedCapableMediaPlayer.setWakeMode(context, i);
            return speedCapableMediaPlayer;
        }
        if (!iMediaPlayerImpl.supportsFileFormatFor(str, str2)) {
            z = true;
        }
        if (iMediaPlayerImpl.playerType() == 0 || (Configuration.enableAudioPlugins() && isSpeedAlterationPlayerInstalled && !z)) {
            return iMediaPlayerImpl;
        }
        iMediaPlayerImpl.release();
        MediaPlayerAndroid mediaPlayerAndroid = new MediaPlayerAndroid(context);
        mediaPlayerAndroid.setWakeMode(context, i);
        return mediaPlayerAndroid;
    }

    private static IMediaPlayerImpl getSpeedCapableMediaPlayer(Context context) {
        if (Configuration.enablePresto() && MediaPlayer.isPrestoLibraryInstalled(context)) {
            return new MediaPlayerOSPlay(context);
        }
        if (!PolicyManager.ifPlaybackSpeedRestricted() && SonicPlayer.isSonicLibraryInstalled()) {
            return new MediaPlayerSonic(context);
        }
        return null;
    }

    public static IMediaPlayerImpl switchToChromecastPlayerIfNeeded(IMediaPlayerImpl iMediaPlayerImpl, Context context, int i) {
        if (iMediaPlayerImpl.playerType() == 5) {
            return iMediaPlayerImpl;
        }
        iMediaPlayerImpl.release();
        MediaPlayerChromecast mediaPlayerChromecast = new MediaPlayerChromecast(context);
        mediaPlayerChromecast.setWakeMode(context, i);
        return mediaPlayerChromecast;
    }
}
