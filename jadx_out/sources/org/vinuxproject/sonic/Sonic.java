package org.vinuxproject.sonic;

/* loaded from: classes.dex */
public class Sonic {
    long sonicID;

    private native int availableBytesNative(long j);

    private native void closeNative(long j);

    private native void flushNative(long j);

    private native boolean getChordPitchNative(long j);

    private native int getNumChannelsNative(long j);

    private native float getPitchNative(long j);

    private native float getRateNative(long j);

    private native int getSampleRateNative(long j);

    private native float getSpeedNative(long j);

    private native float getVolumeNative(long j);

    private native long initNative(int i, int i2);

    private float mapVolumeBoost2VolumeScale(float f) {
        if (f == 0.0f) {
            return 1.0f;
        }
        if (f == 1.0f) {
            return 1.5f;
        }
        if (f == 2.0f) {
            return 2.0f;
        }
        if (f == 3.0f) {
            return 3.0f;
        }
        if (f == 4.0f) {
            return 4.0f;
        }
        if (f == 5.0f) {
            return 5.0f;
        }
        if (f == 6.0f) {
            return 6.0f;
        }
        if (f == 7.0f) {
            return 7.0f;
        }
        if (f == 8.0f) {
            return 8.0f;
        }
        if (f >= 9.0f) {
            return 9.0f;
        }
        if (f == -1.0f) {
            return 0.9f;
        }
        if (f == -2.0f) {
            return 0.8f;
        }
        if (f == -3.0f) {
            return 0.7f;
        }
        if (f == -4.0f) {
            return 0.6f;
        }
        if (f == -5.0f) {
            return 0.5f;
        }
        if (f == -6.0f) {
            return 0.4f;
        }
        if (f == -7.0f) {
            return 0.3f;
        }
        if (f == -8.0f) {
            return 0.2f;
        }
        return f <= -9.0f ? 0.1f : 1.0f;
    }

    private native boolean putBytesNative(long j, byte[] bArr, int i);

    private native int receiveBytesNative(long j, byte[] bArr, int i);

    private native void setChordPitchNative(long j, boolean z);

    private native void setNumChannelsNative(long j, int i);

    private native void setPitchNative(long j, float f);

    private native void setRateNative(long j, float f);

    private native void setSampleRateNative(long j, int i);

    private native void setSpeedNative(long j, float f);

    private native void setVolumeNative(long j, float f);

    public Sonic(int i, int i2) {
        this.sonicID = 0L;
        close();
        this.sonicID = initNative(i, i2);
    }

    public void close() {
        if (this.sonicID != 0) {
            closeNative(this.sonicID);
            this.sonicID = 0L;
        }
    }

    protected void finalize() throws Throwable {
        super.finalize();
        close();
    }

    public void flush() {
        flushNative(this.sonicID);
    }

    public void setSampleRate(int i) {
        setSampleRateNative(this.sonicID, i);
    }

    public int getSampleRate() {
        return getSampleRateNative(this.sonicID);
    }

    public void setNumChannels(int i) {
        setNumChannelsNative(this.sonicID, i);
    }

    public int getNumChannels() {
        return getNumChannelsNative(this.sonicID);
    }

    public void setPitch(float f) {
        setPitchNative(this.sonicID, f);
    }

    public float getPitch() {
        return getPitchNative(this.sonicID);
    }

    public void setSpeed(float f) {
        setSpeedNative(this.sonicID, f);
    }

    public float getSpeed() {
        return getSpeedNative(this.sonicID);
    }

    public void setRate(float f) {
        setRateNative(this.sonicID, f);
    }

    public float getRate() {
        return getRateNative(this.sonicID);
    }

    public void setChordPitch(boolean z) {
        setChordPitchNative(this.sonicID, z);
    }

    public boolean getChordPitch() {
        return getChordPitchNative(this.sonicID);
    }

    public boolean putBytes(byte[] bArr, int i) {
        return putBytesNative(this.sonicID, bArr, i);
    }

    public int receiveBytes(byte[] bArr, int i) {
        return receiveBytesNative(this.sonicID, bArr, i);
    }

    public int availableBytes() {
        return availableBytesNative(this.sonicID);
    }

    public void setVolume(float f) {
        setVolumeNative(this.sonicID, mapVolumeBoost2VolumeScale(f));
    }

    public float getVolume() {
        return getVolumeNative(this.sonicID);
    }

    static {
        System.loadLibrary("sonic");
    }
}
