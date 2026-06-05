package com.google.android.gms.internal;

import android.support.annotation.NonNull;
import android.text.TextUtils;

/* loaded from: classes.dex */
public class zzbdo {
    private final String zzeqz;
    protected final zzbei zzeui;
    private zzbem zzfmb;

    /* JADX INFO: Access modifiers changed from: protected */
    public zzbdo(String str, String str2, String str3) {
        zzbdw.zzfv(str);
        this.zzeqz = str;
        this.zzeui = new zzbei(str2);
        setSessionLabel(str3);
    }

    public final String getNamespace() {
        return this.zzeqz;
    }

    public final void setSessionLabel(String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        this.zzeui.zzga(str);
    }

    public final void zza(zzbem zzbemVar) {
        this.zzfmb = zzbemVar;
        if (this.zzfmb == null) {
            zzagm();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void zza(String str, long j, String str2) throws IllegalStateException {
        Object[] objArr = {str, null};
        this.zzfmb.zza(this.zzeqz, str, j, null);
    }

    public void zzagm() {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final long zzagn() {
        return this.zzfmb.zzadw();
    }

    public void zzc(long j, int i) {
    }

    public void zzfu(@NonNull String str) {
    }
}
