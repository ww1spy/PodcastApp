package com.google.android.gms.internal;

import android.content.Context;
import com.google.android.gms.common.internal.Hide;

@Hide
@zzabh
/* loaded from: classes.dex */
public class zzzo extends zzzg implements zzapv {
    /* JADX INFO: Access modifiers changed from: package-private */
    public zzzo(Context context, zzahe zzaheVar, zzaof zzaofVar, zzzn zzznVar) {
        super(context, zzaheVar, zzaofVar, zzznVar);
    }

    @Override // com.google.android.gms.internal.zzzg
    protected final void zznr() {
        if (this.zzcoc.errorCode != -2) {
            return;
        }
        this.zzcct.zzua().zza(this);
        zznt();
        zzahw.zzby("Loading HTML in WebView.");
        this.zzcct.zzc(this.zzcoc.zzcno, this.zzcoc.body, null);
    }

    protected void zznt() {
    }
}
