package com.google.android.gms.tagmanager;

import android.util.Log;
import com.google.android.gms.common.internal.Hide;

@Hide
/* loaded from: classes.dex */
public final class zzba implements zzdk {
    private int zzebd = 5;

    @Override // com.google.android.gms.tagmanager.zzdk
    public final void e(String str) {
        if (this.zzebd <= 6) {
            Log.e("GoogleTagManager", str);
        }
    }

    @Override // com.google.android.gms.tagmanager.zzdk
    public final void setLogLevel(int i) {
        this.zzebd = i;
    }

    @Override // com.google.android.gms.tagmanager.zzdk
    public final void v(String str) {
        if (this.zzebd <= 2) {
            Log.v("GoogleTagManager", str);
        }
    }

    @Override // com.google.android.gms.tagmanager.zzdk
    public final void zzb(String str, Throwable th) {
        if (this.zzebd <= 6) {
            Log.e("GoogleTagManager", str, th);
        }
    }

    @Override // com.google.android.gms.tagmanager.zzdk
    public final void zzby(String str) {
        if (this.zzebd <= 3) {
            Log.d("GoogleTagManager", str);
        }
    }

    @Override // com.google.android.gms.tagmanager.zzdk
    public final void zzc(String str, Throwable th) {
        if (this.zzebd <= 5) {
            Log.w("GoogleTagManager", str, th);
        }
    }

    @Override // com.google.android.gms.tagmanager.zzdk
    public final void zzcy(String str) {
        if (this.zzebd <= 4) {
            Log.i("GoogleTagManager", str);
        }
    }

    @Override // com.google.android.gms.tagmanager.zzdk
    public final void zzcz(String str) {
        if (this.zzebd <= 5) {
            Log.w("GoogleTagManager", str);
        }
    }
}
