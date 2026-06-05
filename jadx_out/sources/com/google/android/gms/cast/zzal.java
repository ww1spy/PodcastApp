package com.google.android.gms.cast;

import com.google.android.gms.internal.zzbek;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzal implements zzbek {
    private /* synthetic */ RemoteMediaPlayer zzexz;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzal(RemoteMediaPlayer remoteMediaPlayer) {
        this.zzexz = remoteMediaPlayer;
    }

    @Override // com.google.android.gms.internal.zzbek
    public final void onAdBreakStatusUpdated() {
    }

    @Override // com.google.android.gms.internal.zzbek
    public final void onMetadataUpdated() {
        this.zzexz.onMetadataUpdated();
    }

    @Override // com.google.android.gms.internal.zzbek
    public final void onPreloadStatusUpdated() {
        this.zzexz.onPreloadStatusUpdated();
    }

    @Override // com.google.android.gms.internal.zzbek
    public final void onQueueStatusUpdated() {
        this.zzexz.onQueueStatusUpdated();
    }

    @Override // com.google.android.gms.internal.zzbek
    public final void onStatusUpdated() {
        this.zzexz.onStatusUpdated();
    }
}
