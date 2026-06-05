package com.google.android.gms.common;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.util.Log;
import com.google.android.gms.common.internal.Hide;
import com.google.android.gms.common.internal.zzbq;
import com.google.android.gms.internal.zzbih;

@Hide
/* loaded from: classes.dex */
public class zzt {
    private static zzt zzfrx;
    private final Context mContext;

    private zzt(Context context) {
        this.mContext = context.getApplicationContext();
    }

    @Hide
    private static zzh zza(PackageInfo packageInfo, zzh... zzhVarArr) {
        if (packageInfo.signatures == null) {
            return null;
        }
        if (packageInfo.signatures.length != 1) {
            Log.w("GoogleSignatureVerifier", "Package has more than one signature.");
            return null;
        }
        zzi zziVar = new zzi(packageInfo.signatures[0].toByteArray());
        for (int i = 0; i < zzhVarArr.length; i++) {
            if (zzhVarArr[i].equals(zziVar)) {
                return zzhVarArr[i];
            }
        }
        return null;
    }

    @Hide
    public static boolean zza(PackageInfo packageInfo, boolean z) {
        if (packageInfo != null && packageInfo.signatures != null) {
            if (zza(packageInfo, z ? zzk.zzfrh : new zzh[]{zzk.zzfrh[0]}) != null) {
                return true;
            }
        }
        return false;
    }

    public static zzt zzcj(Context context) {
        zzbq.checkNotNull(context);
        synchronized (zzt.class) {
            if (zzfrx == null) {
                zzg.zzch(context);
                zzfrx = new zzt(context);
            }
        }
        return zzfrx;
    }

    private final zzp zzgh(String str) {
        String str2;
        try {
            PackageInfo packageInfo = zzbih.zzdd(this.mContext).getPackageInfo(str, 64);
            boolean zzci = zzs.zzci(this.mContext);
            if (packageInfo == null) {
                str2 = "null pkg";
            } else if (packageInfo.signatures.length != 1) {
                str2 = "single cert required";
            } else {
                zzi zziVar = new zzi(packageInfo.signatures[0].toByteArray());
                String str3 = packageInfo.packageName;
                zzp zza = zzg.zza(str3, zziVar, zzci);
                if (!zza.zzfrm || packageInfo.applicationInfo == null || (packageInfo.applicationInfo.flags & 2) == 0 || (zzci && !zzg.zza(str3, zziVar, false).zzfrm)) {
                    return zza;
                }
                str2 = "debuggable release cert app rejected";
            }
            return zzp.zzgg(str2);
        } catch (PackageManager.NameNotFoundException unused) {
            String valueOf = String.valueOf(str);
            return zzp.zzgg(valueOf.length() != 0 ? "no pkg ".concat(valueOf) : new String("no pkg "));
        }
    }

    @Hide
    public final boolean zza(PackageInfo packageInfo) {
        if (packageInfo == null) {
            return false;
        }
        if (zza(packageInfo, false)) {
            return true;
        }
        if (zza(packageInfo, true)) {
            if (zzs.zzci(this.mContext)) {
                return true;
            }
            Log.w("GoogleSignatureVerifier", "Test-keys aren't accepted on this build.");
        }
        return false;
    }

    @Hide
    public final boolean zzbp(int i) {
        zzp zzgg;
        String[] packagesForUid = zzbih.zzdd(this.mContext).getPackagesForUid(i);
        if (packagesForUid == null || packagesForUid.length == 0) {
            zzgg = zzp.zzgg("no pkgs");
        } else {
            zzgg = null;
            for (String str : packagesForUid) {
                zzgg = zzgh(str);
                if (zzgg.zzfrm) {
                    break;
                }
            }
        }
        if (!zzgg.zzfrm) {
            if (zzgg.cause != null) {
                Log.d("GoogleCertificatesRslt", zzgg.getErrorMessage(), zzgg.cause);
            } else {
                Log.d("GoogleCertificatesRslt", zzgg.getErrorMessage());
            }
        }
        return zzgg.zzfrm;
    }
}
