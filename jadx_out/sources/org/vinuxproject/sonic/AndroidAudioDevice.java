package org.vinuxproject.sonic;

import android.media.AudioTrack;
import android.os.Build;
import mobi.beyondpod.rsscore.Configuration;
import mobi.beyondpod.rsscore.helpers.CoreHelper;

/* loaded from: classes.dex */
public class AndroidAudioDevice {
    private static int MIN_BUFFER_SIZE_MULTIPLIER = 4;
    private static final String TAG = "AndroidAudioDevice";
    AudioTrack mTrack;
    int mSampleRate = -1;
    int mChannels = -1;

    private static int findFormatFromChannels(int i) {
        switch (i) {
            case 1:
                return 4;
            case 2:
                return 12;
            default:
                return -1;
        }
    }

    public void setAudioStreamType(int i) {
    }

    public AndroidAudioDevice(int i, int i2) {
        MIN_BUFFER_SIZE_MULTIPLIER = Configuration.DBGAudioTrackBufferMultiplier();
        createInternal(i, i2);
    }

    private void createInternal(int i, int i2) {
        if (this.mSampleRate == i && this.mChannels == i2) {
            return;
        }
        if (this.mTrack != null) {
            release();
        }
        boolean z = this.mSampleRate < 0;
        this.mSampleRate = i;
        this.mChannels = i2;
        int findFormatFromChannels = findFormatFromChannels(this.mChannels);
        int minBufferSize = AudioTrack.getMinBufferSize(this.mSampleRate, findFormatFromChannels, 2);
        boolean z2 = false;
        int i3 = MIN_BUFFER_SIZE_MULTIPLIER;
        do {
            this.mTrack = new AudioTrack(3, this.mSampleRate, findFormatFromChannels, 2, minBufferSize * i3, 1);
            if (this.mTrack.getState() != 0 || i3 < 2) {
                z2 = true;
            } else {
                int i4 = i3 - 2;
                if (i4 < 1) {
                    i4 = 1;
                }
                CoreHelper.writeTraceEntry(TAG, "AudioTrack failed to initialize with multiplier: " + i3 + "! Trying with: " + i4 + "...");
                i3 = i4;
            }
        } while (!z2);
        if (this.mTrack.getState() == 0) {
            StringBuilder sb = new StringBuilder();
            sb.append("AudioTrack failed to initialize for media format");
            sb.append(z ? ":" : " updated:");
            sb.append(" Rate: ");
            sb.append(this.mSampleRate);
            sb.append(", Channels: ");
            sb.append(this.mChannels);
            sb.append(", minBuffer: ");
            sb.append(minBufferSize);
            sb.append(", buffer multiplier:");
            sb.append(i3);
            CoreHelper.writeTraceEntry(TAG, sb.toString());
            return;
        }
        this.mTrack.setPlaybackRate(this.mSampleRate);
        StringBuilder sb2 = new StringBuilder();
        sb2.append("AudioTrack initialized with media format");
        sb2.append(z ? ":" : " updated:");
        sb2.append(" Rate: ");
        sb2.append(this.mSampleRate);
        sb2.append(", Channels: ");
        sb2.append(this.mChannels);
        sb2.append(", minBuffer: ");
        sb2.append(minBufferSize);
        sb2.append(", buffer multiplier:");
        sb2.append(i3);
        CoreHelper.writeTraceEntry(TAG, sb2.toString());
    }

    public boolean isInitialized() {
        return this.mTrack != null && this.mTrack.getState() == 1;
    }

    public void flush() {
        try {
            this.mTrack.stop();
            this.mTrack.flush();
        } catch (IllegalStateException unused) {
        }
    }

    public void release() {
        flush();
        this.mTrack.release();
        CoreHelper.writeTraceEntry(TAG, "AudioTrack released!");
    }

    public int writeSamples(byte[] bArr, int i) {
        return this.mTrack.write(bArr, 0, i);
    }

    public void pause() {
        this.mTrack.pause();
    }

    public void play() {
        this.mTrack.play();
    }

    public boolean isPlaying() {
        return this.mTrack.getPlayState() == 3;
    }

    public void stop() {
        flush();
    }

    public void setVolume(float f, float f2) {
        if (Build.VERSION.SDK_INT >= 21) {
            if (f <= 0.0f && f2 > 0.0f) {
                f = f2;
            }
            this.mTrack.setVolume(f);
            return;
        }
        this.mTrack.setStereoVolume(f, f2);
    }

    public void setRateAndChannels(int i, int i2) {
        if (i == this.mSampleRate && i2 == this.mChannels) {
            return;
        }
        boolean isPlaying = isPlaying();
        createInternal(i, i2);
        if (isPlaying) {
            play();
        }
    }

    public int getHeadPosition() {
        return this.mTrack.getPlaybackHeadPosition();
    }
}
