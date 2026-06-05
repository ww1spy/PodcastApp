package com.google.android.gms.tagmanager;

import android.content.Context;
import com.google.android.gms.ads.identifier.AdvertisingIdClient;
import com.google.android.gms.common.GooglePlayServicesNotAvailableException;
import com.google.android.gms.common.GooglePlayServicesRepairableException;
import java.io.IOException;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzb implements zzd {
    private /* synthetic */ zza zzkms;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzb(zza zzaVar) {
        this.zzkms = zzaVar;
    }

    @Override // com.google.android.gms.tagmanager.zzd
    public final AdvertisingIdClient.Info zzbfg() {
        String str;
        Context context;
        try {
            context = this.zzkms.mContext;
            return AdvertisingIdClient.getAdvertisingIdInfo(context);
        } catch (GooglePlayServicesNotAvailableException e) {
            e = e;
            this.zzkms.close();
            str = "GooglePlayServicesNotAvailableException getting Advertising Id Info";
            zzdj.zzc(str, e);
            return null;
        } catch (GooglePlayServicesRepairableException e2) {
            e = e2;
            str = "GooglePlayServicesRepairableException getting Advertising Id Info";
            zzdj.zzc(str, e);
            return null;
        } catch (IOException e3) {
            e = e3;
            str = "IOException getting Ad Id Info";
            zzdj.zzc(str, e);
            return null;
        } catch (IllegalStateException e4) {
            e = e4;
            str = "IllegalStateException getting Advertising Id Info";
            zzdj.zzc(str, e);
            return null;
        } catch (Exception e5) {
            e = e5;
            str = "Unknown exception. Could not get the Advertising Id Info.";
            zzdj.zzc(str, e);
            return null;
        }
    }
}
