package com.google.android.gms.internal;

import com.google.android.gms.ads.VideoController;
import com.google.android.gms.common.internal.Hide;

@Hide
/* loaded from: classes.dex */
public final class zznr extends zzmq {
    private final VideoController.VideoLifecycleCallbacks zzamb;

    public zznr(VideoController.VideoLifecycleCallbacks videoLifecycleCallbacks) {
        this.zzamb = videoLifecycleCallbacks;
    }

    @Override // com.google.android.gms.internal.zzmp
    public final void onVideoEnd() {
        this.zzamb.onVideoEnd();
    }

    @Override // com.google.android.gms.internal.zzmp
    public final void onVideoMute(boolean z) {
        this.zzamb.onVideoMute(z);
    }

    @Override // com.google.android.gms.internal.zzmp
    public final void onVideoPause() {
        this.zzamb.onVideoPause();
    }

    @Override // com.google.android.gms.internal.zzmp
    public final void onVideoPlay() {
        this.zzamb.onVideoPlay();
    }

    @Override // com.google.android.gms.internal.zzmp
    public final void onVideoStart() {
        this.zzamb.onVideoStart();
    }
}
