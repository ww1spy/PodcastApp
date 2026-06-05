package com.google.android.gms.tagmanager;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import com.google.android.gms.internal.zzdkh;
import com.google.android.gms.internal.zzdks;
import com.google.android.gms.internal.zzdkt;
import com.google.android.gms.internal.zzdku;
import com.google.android.gms.internal.zzfls;
import com.google.android.gms.tagmanager.zzei;
import java.io.ByteArrayOutputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;

/* loaded from: classes.dex */
final class zzes implements Runnable {
    private final Context mContext;
    private final String zzknc;
    private volatile String zzkoa;
    private final zzdkt zzkrz;
    private final String zzksa;
    private zzdi<com.google.android.gms.internal.zzbs> zzksb;
    private volatile zzal zzksc;
    private volatile String zzksd;

    private zzes(Context context, String str, zzdkt zzdktVar, zzal zzalVar) {
        this.mContext = context;
        this.zzkrz = zzdktVar;
        this.zzknc = str;
        this.zzksc = zzalVar;
        String valueOf = String.valueOf("/r?id=");
        String valueOf2 = String.valueOf(str);
        this.zzksa = valueOf2.length() != 0 ? valueOf.concat(valueOf2) : new String(valueOf);
        this.zzkoa = this.zzksa;
        this.zzksd = null;
    }

    public zzes(Context context, String str, zzal zzalVar) {
        this(context, str, new zzdkt(), zzalVar);
    }

    @Override // java.lang.Runnable
    public final void run() {
        boolean z;
        if (this.zzksb == null) {
            throw new IllegalStateException("callback must be set before execute");
        }
        this.zzksb.zzbfu();
        NetworkInfo activeNetworkInfo = ((ConnectivityManager) this.mContext.getSystemService("connectivity")).getActiveNetworkInfo();
        if (activeNetworkInfo == null || !activeNetworkInfo.isConnected()) {
            zzdj.v("...no network connectivity");
            z = false;
        } else {
            z = true;
        }
        if (!z) {
            this.zzksb.zzex(zzda.zzkqn);
            return;
        }
        zzdj.v("Start loading resource from network ...");
        String zzbgb = this.zzksc.zzbgb();
        String str = this.zzkoa;
        StringBuilder sb = new StringBuilder(12 + String.valueOf(zzbgb).length() + String.valueOf(str).length());
        sb.append(zzbgb);
        sb.append(str);
        sb.append("&v=a65833898");
        String sb2 = sb.toString();
        if (this.zzksd != null && !this.zzksd.trim().equals("")) {
            String valueOf = String.valueOf(sb2);
            String str2 = this.zzksd;
            StringBuilder sb3 = new StringBuilder(4 + String.valueOf(valueOf).length() + String.valueOf(str2).length());
            sb3.append(valueOf);
            sb3.append("&pv=");
            sb3.append(str2);
            sb2 = sb3.toString();
        }
        if (zzei.zzbhh().zzbhi().equals(zzei.zza.CONTAINER_DEBUG)) {
            String valueOf2 = String.valueOf(sb2);
            String valueOf3 = String.valueOf("&gtm_debug=x");
            sb2 = valueOf3.length() != 0 ? valueOf2.concat(valueOf3) : new String(valueOf2);
        }
        zzdks zzblc = zzdkt.zzblc();
        InputStream inputStream = null;
        try {
            try {
                try {
                    inputStream = zzblc.zzne(sb2);
                } catch (FileNotFoundException unused) {
                    String str3 = this.zzknc;
                    StringBuilder sb4 = new StringBuilder(79 + String.valueOf(sb2).length() + String.valueOf(str3).length());
                    sb4.append("No data is retrieved from the given url: ");
                    sb4.append(sb2);
                    sb4.append(". Make sure container_id: ");
                    sb4.append(str3);
                    sb4.append(" is correct.");
                    zzdj.zzcz(sb4.toString());
                    this.zzksb.zzex(zzda.zzkqp);
                    zzblc.close();
                    return;
                }
            } catch (zzdku unused2) {
                String valueOf4 = String.valueOf(sb2);
                zzdj.zzcz(valueOf4.length() != 0 ? "Error when loading resource for url: ".concat(valueOf4) : new String("Error when loading resource for url: "));
                this.zzksb.zzex(zzda.zzkqq);
            } catch (IOException e) {
                String message = e.getMessage();
                StringBuilder sb5 = new StringBuilder(40 + String.valueOf(sb2).length() + String.valueOf(message).length());
                sb5.append("Error when loading resources from url: ");
                sb5.append(sb2);
                sb5.append(" ");
                sb5.append(message);
                zzdj.zzc(sb5.toString(), e);
                this.zzksb.zzex(zzda.zzkqo);
                zzblc.close();
                return;
            }
            try {
                ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                zzdkh.zzb(inputStream, byteArrayOutputStream);
                com.google.android.gms.internal.zzbs zzbsVar = (com.google.android.gms.internal.zzbs) zzfls.zza(new com.google.android.gms.internal.zzbs(), byteArrayOutputStream.toByteArray());
                String valueOf5 = String.valueOf(zzbsVar);
                StringBuilder sb6 = new StringBuilder(43 + String.valueOf(valueOf5).length());
                sb6.append("Successfully loaded supplemented resource: ");
                sb6.append(valueOf5);
                zzdj.v(sb6.toString());
                if (zzbsVar.zzyi == null && zzbsVar.zzyh.length == 0) {
                    String valueOf6 = String.valueOf(this.zzknc);
                    zzdj.v(valueOf6.length() != 0 ? "No change for container: ".concat(valueOf6) : new String("No change for container: "));
                }
                this.zzksb.onSuccess(zzbsVar);
                zzblc.close();
                zzdj.v("Load resource from network finished.");
            } catch (IOException e2) {
                String message2 = e2.getMessage();
                StringBuilder sb7 = new StringBuilder(51 + String.valueOf(sb2).length() + String.valueOf(message2).length());
                sb7.append("Error when parsing downloaded resources from url: ");
                sb7.append(sb2);
                sb7.append(" ");
                sb7.append(message2);
                zzdj.zzc(sb7.toString(), e2);
                this.zzksb.zzex(zzda.zzkqp);
                zzblc.close();
            }
        } catch (Throwable th) {
            zzblc.close();
            throw th;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void zza(zzdi<com.google.android.gms.internal.zzbs> zzdiVar) {
        this.zzksb = zzdiVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void zzll(String str) {
        if (str == null) {
            str = this.zzksa;
        } else {
            String valueOf = String.valueOf(str);
            zzdj.zzby(valueOf.length() != 0 ? "Setting CTFE URL path: ".concat(valueOf) : new String("Setting CTFE URL path: "));
        }
        this.zzkoa = str;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void zzmb(String str) {
        String valueOf = String.valueOf(str);
        zzdj.zzby(valueOf.length() != 0 ? "Setting previous container version: ".concat(valueOf) : new String("Setting previous container version: "));
        this.zzksd = str;
    }
}
