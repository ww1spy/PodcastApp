package com.google.android.gms.internal;

import android.os.RemoteException;
import android.support.annotation.Nullable;
import java.util.HashMap;
import java.util.Map;
import mobi.beyondpod.services.player.MediaPlaybackService;
import mobi.beyondpod.ui.views.notifications.NotificationPreferences;

@zzabh
/* loaded from: classes.dex */
public final class zzaou extends zzmn {
    private boolean zzbko;
    private boolean zzbkp;
    private zzmp zzcjx;
    private final zzann zzdly;
    private final boolean zzdrn;
    private final boolean zzdro;
    private final float zzdrp;
    private int zzdrq;
    private boolean zzdrr;
    private float zzdrt;
    private float zzdru;
    private final Object lock = new Object();
    private boolean zzdrs = true;
    private boolean zzbkn = true;

    public zzaou(zzann zzannVar, float f, boolean z, boolean z2) {
        this.zzdly = zzannVar;
        this.zzdrp = f;
        this.zzdrn = z;
        this.zzdro = z2;
    }

    private final void zzc(String str, @Nullable Map<String, String> map) {
        final HashMap hashMap = map == null ? new HashMap() : new HashMap(map);
        hashMap.put("action", str);
        zzaly.zzdjt.execute(new Runnable(this, hashMap) { // from class: com.google.android.gms.internal.zzaov
            private final Map zzbzh;
            private final zzaou zzdrv;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.zzdrv = this;
                this.zzbzh = hashMap;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.zzdrv.zzr(this.zzbzh);
            }
        });
    }

    @Override // com.google.android.gms.internal.zzmm
    public final float getAspectRatio() {
        float f;
        synchronized (this.lock) {
            f = this.zzdru;
        }
        return f;
    }

    @Override // com.google.android.gms.internal.zzmm
    public final int getPlaybackState() {
        int i;
        synchronized (this.lock) {
            i = this.zzdrq;
        }
        return i;
    }

    @Override // com.google.android.gms.internal.zzmm
    public final boolean isClickToExpandEnabled() {
        boolean z;
        boolean isCustomControlsEnabled = isCustomControlsEnabled();
        synchronized (this.lock) {
            if (!isCustomControlsEnabled) {
                try {
                    z = this.zzbkp && this.zzdro;
                } finally {
                }
            }
        }
        return z;
    }

    @Override // com.google.android.gms.internal.zzmm
    public final boolean isCustomControlsEnabled() {
        boolean z;
        synchronized (this.lock) {
            z = this.zzdrn && this.zzbko;
        }
        return z;
    }

    @Override // com.google.android.gms.internal.zzmm
    public final boolean isMuted() {
        boolean z;
        synchronized (this.lock) {
            z = this.zzdrs;
        }
        return z;
    }

    @Override // com.google.android.gms.internal.zzmm
    public final void mute(boolean z) {
        zzc(z ? "mute" : "unmute", null);
    }

    @Override // com.google.android.gms.internal.zzmm
    public final void pause() {
        zzc(MediaPlaybackService.CMDPAUSE, null);
    }

    @Override // com.google.android.gms.internal.zzmm
    public final void play() {
        zzc(MediaPlaybackService.CMDOPTIONPLAY, null);
    }

    public final void zza(float f, final int i, final boolean z, float f2) {
        final boolean z2;
        final int i2;
        synchronized (this.lock) {
            this.zzdrt = f;
            z2 = this.zzdrs;
            this.zzdrs = z;
            i2 = this.zzdrq;
            this.zzdrq = i;
            float f3 = this.zzdru;
            this.zzdru = f2;
            if (Math.abs(this.zzdru - f3) > 1.0E-4f) {
                this.zzdly.getView().invalidate();
            }
        }
        zzaly.zzdjt.execute(new Runnable(this, i2, i, z2, z) { // from class: com.google.android.gms.internal.zzaow
            private final zzaou zzdrv;
            private final int zzdrw;
            private final int zzdrx;
            private final boolean zzdry;
            private final boolean zzdrz;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.zzdrv = this;
                this.zzdrw = i2;
                this.zzdrx = i;
                this.zzdry = z2;
                this.zzdrz = z;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.zzdrv.zza(this.zzdrw, this.zzdrx, this.zzdry, this.zzdrz);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void zza(int i, int i2, boolean z, boolean z2) {
        synchronized (this.lock) {
            boolean z3 = i != i2;
            boolean z4 = !this.zzdrr && i2 == 1;
            boolean z5 = z3 && i2 == 1;
            boolean z6 = z3 && i2 == 2;
            boolean z7 = z3 && i2 == 3;
            boolean z8 = z != z2;
            this.zzdrr = this.zzdrr || z4;
            if (this.zzcjx == null) {
                return;
            }
            if (z4) {
                try {
                    this.zzcjx.onVideoStart();
                } catch (RemoteException e) {
                    zzahw.zzc("Unable to call onVideoStart()", e);
                }
            }
            if (z5) {
                try {
                    this.zzcjx.onVideoPlay();
                } catch (RemoteException e2) {
                    zzahw.zzc("Unable to call onVideoPlay()", e2);
                }
            }
            if (z6) {
                try {
                    this.zzcjx.onVideoPause();
                } catch (RemoteException e3) {
                    zzahw.zzc("Unable to call onVideoPause()", e3);
                }
            }
            if (z7) {
                try {
                    this.zzcjx.onVideoEnd();
                } catch (RemoteException e4) {
                    zzahw.zzc("Unable to call onVideoEnd()", e4);
                }
            }
            if (z8) {
                try {
                    this.zzcjx.onVideoMute(z2);
                } catch (RemoteException e5) {
                    zzahw.zzc("Unable to call onVideoMute()", e5);
                }
            }
        }
    }

    @Override // com.google.android.gms.internal.zzmm
    public final void zza(zzmp zzmpVar) {
        synchronized (this.lock) {
            this.zzcjx = zzmpVar;
        }
    }

    public final void zzb(zzns zznsVar) {
        synchronized (this.lock) {
            this.zzbkn = zznsVar.zzbkn;
            this.zzbko = zznsVar.zzbko;
            this.zzbkp = zznsVar.zzbkp;
        }
        zzc("initialState", com.google.android.gms.common.util.zzf.zza("muteStart", zznsVar.zzbkn ? NotificationPreferences.YES : NotificationPreferences.NO, "customControlsRequested", zznsVar.zzbko ? NotificationPreferences.YES : NotificationPreferences.NO, "clickToExpandRequested", zznsVar.zzbkp ? NotificationPreferences.YES : NotificationPreferences.NO));
    }

    @Override // com.google.android.gms.internal.zzmm
    public final float zziq() {
        return this.zzdrp;
    }

    @Override // com.google.android.gms.internal.zzmm
    public final float zzir() {
        float f;
        synchronized (this.lock) {
            f = this.zzdrt;
        }
        return f;
    }

    @Override // com.google.android.gms.internal.zzmm
    public final zzmp zzis() throws RemoteException {
        zzmp zzmpVar;
        synchronized (this.lock) {
            zzmpVar = this.zzcjx;
        }
        return zzmpVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void zzr(Map map) {
        this.zzdly.zza("pubVideoCmd", map);
    }
}
