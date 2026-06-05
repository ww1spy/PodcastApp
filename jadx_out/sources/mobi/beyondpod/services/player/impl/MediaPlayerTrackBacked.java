package mobi.beyondpod.services.player.impl;

import android.content.Context;
import android.net.Uri;
import java.io.IOException;
import mobi.beyondpod.BeyondPodApplication;
import mobi.beyondpod.rsscore.Track;
import mobi.beyondpod.rsscore.helpers.CoreHelper;
import mobi.beyondpod.services.player.PlayList;
import mobi.beyondpod.services.player.impl.IMediaPlayerImpl;

/* loaded from: classes.dex */
public class MediaPlayerTrackBacked implements IMediaPlayerImpl {
    private static final String TAG = "MediaPlayerTrackBacked";
    Context _Context;
    Track _CurrentTrack;

    @Override // mobi.beyondpod.services.player.impl.IMediaPlayerImpl
    public boolean canSetPitch() {
        return false;
    }

    @Override // mobi.beyondpod.services.player.impl.IMediaPlayerImpl
    public boolean canSetSpeed() {
        return false;
    }

    @Override // mobi.beyondpod.services.player.impl.IMediaPlayerImpl
    public float getCurrentSpeedMultiplier() {
        return 1.0f;
    }

    @Override // mobi.beyondpod.services.player.impl.IMediaPlayerImpl
    public boolean isPlaying() {
        return false;
    }

    @Override // mobi.beyondpod.services.player.impl.IMediaPlayerImpl
    public boolean isSpeedAlterationLibraryInstalled() {
        return false;
    }

    @Override // mobi.beyondpod.services.player.impl.IMediaPlayerImpl
    public void pause() {
    }

    @Override // mobi.beyondpod.services.player.impl.IMediaPlayerImpl
    public int playerType() {
        return 2;
    }

    @Override // mobi.beyondpod.services.player.impl.IMediaPlayerImpl
    public void prepare() throws IllegalStateException, IOException {
    }

    @Override // mobi.beyondpod.services.player.impl.IMediaPlayerImpl
    public void prepareAsync() {
    }

    @Override // mobi.beyondpod.services.player.impl.IMediaPlayerImpl
    public void release() {
    }

    @Override // mobi.beyondpod.services.player.impl.IMediaPlayerImpl
    public void reset() {
    }

    @Override // mobi.beyondpod.services.player.impl.IMediaPlayerImpl
    public void setAudioStreamType(int i) {
    }

    @Override // mobi.beyondpod.services.player.impl.IMediaPlayerImpl
    public void setDataSource(Context context, Uri uri) throws IllegalArgumentException, IllegalStateException, IOException {
    }

    @Override // mobi.beyondpod.services.player.impl.IMediaPlayerImpl
    public void setDataSource(String str) throws IllegalArgumentException, IllegalStateException, IOException {
    }

    @Override // mobi.beyondpod.services.player.impl.IMediaPlayerImpl
    public void setDataSource(IMediaPlayerImpl.TrackMetadata trackMetadata) throws IllegalArgumentException, IllegalStateException, IOException {
    }

    @Override // mobi.beyondpod.services.player.impl.IMediaPlayerImpl
    public void setOnBufferingUpdateListener(IMediaPlayerImpl.OnBufferingUpdateListener onBufferingUpdateListener) {
    }

    @Override // mobi.beyondpod.services.player.impl.IMediaPlayerImpl
    public void setOnCompletionListener(IMediaPlayerImpl.OnCompletionListener onCompletionListener) {
    }

    @Override // mobi.beyondpod.services.player.impl.IMediaPlayerImpl
    public void setOnErrorListener(IMediaPlayerImpl.OnErrorListener onErrorListener) {
    }

    @Override // mobi.beyondpod.services.player.impl.IMediaPlayerImpl
    public void setOnInfoListener(IMediaPlayerImpl.OnInfoListener onInfoListener) {
    }

    @Override // mobi.beyondpod.services.player.impl.IMediaPlayerImpl
    public void setOnPreparedListener(IMediaPlayerImpl.OnPreparedListener onPreparedListener) {
    }

    @Override // mobi.beyondpod.services.player.impl.IMediaPlayerImpl
    public void setOnSeekCompleteListener(IMediaPlayerImpl.OnSeekCompleteListener onSeekCompleteListener) {
    }

    @Override // mobi.beyondpod.services.player.impl.IMediaPlayerImpl
    public void setPlaybackPitch(float f) {
    }

    @Override // mobi.beyondpod.services.player.impl.IMediaPlayerImpl
    public void setPlaybackSpeed(float f) {
    }

    @Override // mobi.beyondpod.services.player.impl.IMediaPlayerImpl
    public void setVolume(float f, float f2) {
    }

    @Override // mobi.beyondpod.services.player.impl.IMediaPlayerImpl
    public void setVolumeBoost(float f) {
    }

    @Override // mobi.beyondpod.services.player.impl.IMediaPlayerImpl
    public void setWakeMode(Context context, int i) {
    }

    @Override // mobi.beyondpod.services.player.impl.IMediaPlayerImpl
    public void stop() {
    }

    @Override // mobi.beyondpod.services.player.impl.IMediaPlayerImpl
    public boolean supportsFileFormatFor(String str, String str2) {
        return true;
    }

    @Override // mobi.beyondpod.services.player.impl.IMediaPlayerImpl
    public boolean supportsSpeedAlteration() {
        return false;
    }

    public MediaPlayerTrackBacked(Context context, Track track) {
        CoreHelper.writeTraceEntry(TAG, "Created TrackBacked MediaPlayer");
        this._CurrentTrack = track;
        this._Context = context;
    }

    @Override // mobi.beyondpod.services.player.impl.IMediaPlayerImpl
    public int getCurrentPosition() {
        return (int) (this._CurrentTrack.getPlayedTime() * 1000);
    }

    @Override // mobi.beyondpod.services.player.impl.IMediaPlayerImpl
    public int getDuration() {
        return (int) (this._CurrentTrack.getTotalTime() * 1000);
    }

    @Override // mobi.beyondpod.services.player.impl.IMediaPlayerImpl
    public void seekTo(int i) throws IllegalStateException {
        this._CurrentTrack.setPlayedTime(i / 1000);
    }

    @Override // mobi.beyondpod.services.player.impl.IMediaPlayerImpl
    public void start() {
        if (!PlayList.allowStreaming(this._CurrentTrack)) {
            CoreHelper.writeTraceEntry(TAG, "Trying to play a streamed track when streaming is not allowed! Ignoring...");
            this._CurrentTrack.setCurrentPlayState(8);
            return;
        }
        BeyondPodApplication.getInstance().startVideoPlayback(this._CurrentTrack);
        CoreHelper.writeTraceEntry(TAG, "=========> Mock Video Player - Started Playback of: " + this._CurrentTrack.getName());
    }
}
