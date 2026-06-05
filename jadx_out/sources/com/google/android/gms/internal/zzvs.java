package com.google.android.gms.internal;

import android.support.annotation.Nullable;
import com.google.android.gms.common.internal.Hide;

@Hide
@zzabh
/* loaded from: classes.dex */
public final class zzvs extends zzwm {
    private final Object mLock = new Object();
    private zzvx zzcin;
    private zzvr zzcio;

    @Override // com.google.android.gms.internal.zzwl
    public final void onAdClicked() {
        synchronized (this.mLock) {
            if (this.zzcio != null) {
                this.zzcio.zzci();
            }
        }
    }

    @Override // com.google.android.gms.internal.zzwl
    public final void onAdClosed() {
        synchronized (this.mLock) {
            if (this.zzcio != null) {
                this.zzcio.zzcj();
            }
        }
    }

    @Override // com.google.android.gms.internal.zzwl
    public final void onAdFailedToLoad(int i) {
        synchronized (this.mLock) {
            if (this.zzcin != null) {
                this.zzcin.zzv(i == 3 ? 1 : 2);
                this.zzcin = null;
            }
        }
    }

    @Override // com.google.android.gms.internal.zzwl
    public final void onAdImpression() {
        synchronized (this.mLock) {
            if (this.zzcio != null) {
                this.zzcio.zzcn();
            }
        }
    }

    @Override // com.google.android.gms.internal.zzwl
    public final void onAdLeftApplication() {
        synchronized (this.mLock) {
            if (this.zzcio != null) {
                this.zzcio.zzck();
            }
        }
    }

    @Override // com.google.android.gms.internal.zzwl
    public final void onAdLoaded() {
        synchronized (this.mLock) {
            if (this.zzcin != null) {
                this.zzcin.zzv(0);
                this.zzcin = null;
            } else {
                if (this.zzcio != null) {
                    this.zzcio.zzcm();
                }
            }
        }
    }

    @Override // com.google.android.gms.internal.zzwl
    public final void onAdOpened() {
        synchronized (this.mLock) {
            if (this.zzcio != null) {
                this.zzcio.zzcl();
            }
        }
    }

    @Override // com.google.android.gms.internal.zzwl
    public final void onAppEvent(String str, String str2) {
        synchronized (this.mLock) {
            if (this.zzcio != null) {
                this.zzcio.zzc(str, str2);
            }
        }
    }

    @Override // com.google.android.gms.internal.zzwl
    public final void onVideoEnd() {
        synchronized (this.mLock) {
            if (this.zzcio != null) {
                this.zzcio.zzch();
            }
        }
    }

    public final void zza(@Nullable zzvr zzvrVar) {
        synchronized (this.mLock) {
            this.zzcio = zzvrVar;
        }
    }

    public final void zza(zzvx zzvxVar) {
        synchronized (this.mLock) {
            this.zzcin = zzvxVar;
        }
    }

    @Override // com.google.android.gms.internal.zzwl
    public final void zza(zzwo zzwoVar) {
        synchronized (this.mLock) {
            if (this.zzcin != null) {
                this.zzcin.zza(0, zzwoVar);
                this.zzcin = null;
            } else {
                if (this.zzcio != null) {
                    this.zzcio.zzcm();
                }
            }
        }
    }

    @Override // com.google.android.gms.internal.zzwl
    public final void zzb(zzro zzroVar, String str) {
        synchronized (this.mLock) {
            if (this.zzcio != null) {
                this.zzcio.zza(zzroVar, str);
            }
        }
    }
}
