package com.google.android.gms.common.internal;

import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.RemoteException;
import android.support.annotation.BinderThread;
import android.util.Log;
import com.google.android.gms.common.ConnectionResult;

@Hide
/* loaded from: classes.dex */
public final class zzn extends zze {
    private /* synthetic */ zzd zzgfk;
    private IBinder zzgfo;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    @BinderThread
    public zzn(zzd zzdVar, int i, IBinder iBinder, Bundle bundle) {
        super(zzdVar, i, bundle);
        this.zzgfk = zzdVar;
        this.zzgfo = iBinder;
    }

    @Override // com.google.android.gms.common.internal.zze
    protected final boolean zzama() {
        boolean zza;
        zzf zzfVar;
        zzf zzfVar2;
        boolean zza2;
        try {
            String interfaceDescriptor = this.zzgfo.getInterfaceDescriptor();
            if (!this.zzgfk.zzhn().equals(interfaceDescriptor)) {
                String zzhn = this.zzgfk.zzhn();
                StringBuilder sb = new StringBuilder(34 + String.valueOf(zzhn).length() + String.valueOf(interfaceDescriptor).length());
                sb.append("service descriptor mismatch: ");
                sb.append(zzhn);
                sb.append(" vs. ");
                sb.append(interfaceDescriptor);
                Log.e("GmsClient", sb.toString());
                return false;
            }
            IInterface zzd = this.zzgfk.zzd(this.zzgfo);
            if (zzd == null) {
                return false;
            }
            zza = this.zzgfk.zza(2, 4, (int) zzd);
            if (!zza) {
                zza2 = this.zzgfk.zza(3, 4, (int) zzd);
                if (!zza2) {
                    return false;
                }
            }
            this.zzgfk.zzgff = null;
            Bundle zzagp = this.zzgfk.zzagp();
            zzfVar = this.zzgfk.zzgfb;
            if (zzfVar != null) {
                zzfVar2 = this.zzgfk.zzgfb;
                zzfVar2.onConnected(zzagp);
            }
            return true;
        } catch (RemoteException unused) {
            Log.w("GmsClient", "service probably died");
            return false;
        }
    }

    @Override // com.google.android.gms.common.internal.zze
    protected final void zzj(ConnectionResult connectionResult) {
        zzg zzgVar;
        zzg zzgVar2;
        zzgVar = this.zzgfk.zzgfc;
        if (zzgVar != null) {
            zzgVar2 = this.zzgfk.zzgfc;
            zzgVar2.onConnectionFailed(connectionResult);
        }
        this.zzgfk.onConnectionFailed(connectionResult);
    }
}
