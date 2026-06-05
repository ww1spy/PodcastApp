package com.google.android.gms.ads;

import android.os.RemoteException;
import android.support.annotation.Nullable;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.internal.Hide;
import com.google.android.gms.common.internal.zzbq;
import com.google.android.gms.internal.zzabh;
import com.google.android.gms.internal.zzaky;
import com.google.android.gms.internal.zzmm;
import com.google.android.gms.internal.zznr;

@zzabh
/* loaded from: classes.dex */
public final class VideoController {

    @Hide
    @KeepForSdk
    public static final int PLAYBACK_STATE_ENDED = 3;

    @Hide
    @KeepForSdk
    public static final int PLAYBACK_STATE_PAUSED = 2;

    @Hide
    @KeepForSdk
    public static final int PLAYBACK_STATE_PLAYING = 1;

    @Hide
    @KeepForSdk
    public static final int PLAYBACK_STATE_READY = 5;

    @Hide
    @KeepForSdk
    public static final int PLAYBACK_STATE_UNKNOWN = 0;
    private final Object mLock = new Object();

    @Nullable
    private zzmm zzama;

    @Nullable
    private VideoLifecycleCallbacks zzamb;

    /* loaded from: classes.dex */
    public static abstract class VideoLifecycleCallbacks {
        public void onVideoEnd() {
        }

        public void onVideoMute(boolean z) {
        }

        public void onVideoPause() {
        }

        public void onVideoPlay() {
        }

        public void onVideoStart() {
        }
    }

    @Hide
    public VideoController() {
    }

    public final float getAspectRatio() {
        synchronized (this.mLock) {
            if (this.zzama == null) {
                return 0.0f;
            }
            try {
                return this.zzama.getAspectRatio();
            } catch (RemoteException e) {
                zzaky.zzb("Unable to call getAspectRatio on video controller.", e);
                return 0.0f;
            }
        }
    }

    @Hide
    @KeepForSdk
    public final int getPlaybackState() {
        synchronized (this.mLock) {
            if (this.zzama == null) {
                return 0;
            }
            try {
                return this.zzama.getPlaybackState();
            } catch (RemoteException e) {
                zzaky.zzb("Unable to call getPlaybackState on video controller.", e);
                return 0;
            }
        }
    }

    @Nullable
    public final VideoLifecycleCallbacks getVideoLifecycleCallbacks() {
        VideoLifecycleCallbacks videoLifecycleCallbacks;
        synchronized (this.mLock) {
            videoLifecycleCallbacks = this.zzamb;
        }
        return videoLifecycleCallbacks;
    }

    public final boolean hasVideoContent() {
        boolean z;
        synchronized (this.mLock) {
            z = this.zzama != null;
        }
        return z;
    }

    @Hide
    @KeepForSdk
    public final boolean isClickToExpandEnabled() {
        synchronized (this.mLock) {
            if (this.zzama == null) {
                return false;
            }
            try {
                return this.zzama.isClickToExpandEnabled();
            } catch (RemoteException e) {
                zzaky.zzb("Unable to call isClickToExpandEnabled.", e);
                return false;
            }
        }
    }

    @Hide
    @KeepForSdk
    public final boolean isCustomControlsEnabled() {
        synchronized (this.mLock) {
            if (this.zzama == null) {
                return false;
            }
            try {
                return this.zzama.isCustomControlsEnabled();
            } catch (RemoteException e) {
                zzaky.zzb("Unable to call isUsingCustomPlayerControls.", e);
                return false;
            }
        }
    }

    @Hide
    @KeepForSdk
    public final boolean isMuted() {
        synchronized (this.mLock) {
            if (this.zzama == null) {
                return true;
            }
            try {
                return this.zzama.isMuted();
            } catch (RemoteException e) {
                zzaky.zzb("Unable to call isMuted on video controller.", e);
                return true;
            }
        }
    }

    @Hide
    @KeepForSdk
    public final void mute(boolean z) {
        synchronized (this.mLock) {
            if (this.zzama == null) {
                return;
            }
            try {
                this.zzama.mute(z);
            } catch (RemoteException e) {
                zzaky.zzb("Unable to call mute on video controller.", e);
            }
        }
    }

    @Hide
    @KeepForSdk
    public final void pause() {
        synchronized (this.mLock) {
            if (this.zzama == null) {
                return;
            }
            try {
                this.zzama.pause();
            } catch (RemoteException e) {
                zzaky.zzb("Unable to call pause on video controller.", e);
            }
        }
    }

    @Hide
    @KeepForSdk
    public final void play() {
        synchronized (this.mLock) {
            if (this.zzama == null) {
                return;
            }
            try {
                this.zzama.play();
            } catch (RemoteException e) {
                zzaky.zzb("Unable to call play on video controller.", e);
            }
        }
    }

    public final void setVideoLifecycleCallbacks(VideoLifecycleCallbacks videoLifecycleCallbacks) {
        zzbq.checkNotNull(videoLifecycleCallbacks, "VideoLifecycleCallbacks may not be null.");
        synchronized (this.mLock) {
            this.zzamb = videoLifecycleCallbacks;
            if (this.zzama == null) {
                return;
            }
            try {
                this.zzama.zza(new zznr(videoLifecycleCallbacks));
            } catch (RemoteException e) {
                zzaky.zzb("Unable to call setVideoLifecycleCallbacks on video controller.", e);
            }
        }
    }

    @Hide
    public final void zza(zzmm zzmmVar) {
        synchronized (this.mLock) {
            this.zzama = zzmmVar;
            if (this.zzamb != null) {
                setVideoLifecycleCallbacks(this.zzamb);
            }
        }
    }

    @Hide
    public final zzmm zzbh() {
        zzmm zzmmVar;
        synchronized (this.mLock) {
            zzmmVar = this.zzama;
        }
        return zzmmVar;
    }
}
