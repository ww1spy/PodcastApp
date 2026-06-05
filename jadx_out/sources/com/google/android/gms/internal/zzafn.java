package com.google.android.gms.internal;

import android.content.Context;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;

/* loaded from: classes.dex */
final class zzafn implements Runnable {
    private /* synthetic */ zzkk zzaps;
    private /* synthetic */ zzwi zzdai;
    private /* synthetic */ zzafl zzdaj;
    private /* synthetic */ zzaft zzdak;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzafn(zzafl zzaflVar, zzwi zzwiVar, zzkk zzkkVar, zzaft zzaftVar) {
        this.zzdaj = zzaflVar;
        this.zzdai = zzwiVar;
        this.zzaps = zzkkVar;
        this.zzdak = zzaftVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        Context context;
        String str;
        try {
            zzwi zzwiVar = this.zzdai;
            context = this.zzdaj.mContext;
            IObjectWrapper zzz = com.google.android.gms.dynamic.zzn.zzz(context);
            zzkk zzkkVar = this.zzaps;
            zzaft zzaftVar = this.zzdak;
            str = this.zzdaj.zzdac;
            zzwiVar.zza(zzz, zzkkVar, (String) null, zzaftVar, str);
        } catch (RemoteException e) {
            String valueOf = String.valueOf(this.zzdaj.zzcip);
            zzahw.zzc(valueOf.length() != 0 ? "Fail to initialize adapter ".concat(valueOf) : new String("Fail to initialize adapter "), e);
            this.zzdaj.zza(this.zzdaj.zzcip, 0);
        }
    }
}
