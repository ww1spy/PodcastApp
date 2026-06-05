package com.google.android.gms.common;

import android.support.annotation.NonNull;
import com.google.android.gms.common.internal.Hide;

/* JADX INFO: Access modifiers changed from: package-private */
@Hide
/* loaded from: classes.dex */
public class zzp {
    private static final zzp zzfrl = new zzp(true, null, null);
    final Throwable cause;
    final boolean zzfrm;
    private String zzfrn;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzp(boolean z, String str, Throwable th) {
        this.zzfrm = z;
        this.zzfrn = str;
        this.cause = th;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static zzp zza(String str, zzh zzhVar, boolean z, boolean z2) {
        return new zzr(str, zzhVar, z, z2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static zzp zzahj() {
        return zzfrl;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static zzp zzd(@NonNull String str, @NonNull Throwable th) {
        return new zzp(false, str, th);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static zzp zzgg(@NonNull String str) {
        return new zzp(false, str, null);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public String getErrorMessage() {
        return this.zzfrn;
    }
}
