package com.google.android.gms.iid;

import android.content.Context;
import android.content.pm.PackageManager;
import android.os.Bundle;
import android.os.Looper;
import android.support.v4.util.ArrayMap;
import android.util.Base64;
import android.util.Log;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.internal.Hide;
import java.io.IOException;
import java.security.KeyPair;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Map;
import mobi.beyondpod.services.auto.MediaIdHelper;
import mobi.beyondpod.ui.views.notifications.NotificationPreferences;

/* loaded from: classes.dex */
public class InstanceID {
    public static final String ERROR_MAIN_THREAD = "MAIN_THREAD";
    public static final String ERROR_MISSING_INSTANCEID_SERVICE = "MISSING_INSTANCEID_SERVICE";
    public static final String ERROR_SERVICE_NOT_AVAILABLE = "SERVICE_NOT_AVAILABLE";
    public static final String ERROR_TIMEOUT = "TIMEOUT";
    private static Map<String, InstanceID> zzimu = new ArrayMap();
    private static zzaf zzimv;
    private static zzaa zzimw;
    private static String zzina;
    private Context mContext;
    private KeyPair zzimx;
    private String zzimy;
    private long zzimz;

    @Hide
    private InstanceID(Context context, String str) {
        this.zzimy = "";
        this.mContext = context.getApplicationContext();
        this.zzimy = str;
    }

    public static InstanceID getInstance(Context context) {
        return getInstance(context, null);
    }

    @Hide
    @KeepForSdk
    public static synchronized InstanceID getInstance(Context context, Bundle bundle) {
        String string;
        InstanceID instanceID;
        synchronized (InstanceID.class) {
            if (bundle == null) {
                string = "";
            } else {
                try {
                    string = bundle.getString("subtype");
                } catch (Throwable th) {
                    throw th;
                }
            }
            if (string == null) {
                string = "";
            }
            Context applicationContext = context.getApplicationContext();
            if (zzimv == null) {
                zzimv = new zzaf(applicationContext);
                zzimw = new zzaa(applicationContext);
            }
            zzina = Integer.toString(zzdo(applicationContext));
            instanceID = zzimu.get(string);
            if (instanceID == null) {
                instanceID = new InstanceID(applicationContext, string);
                zzimu.put(string, instanceID);
            }
        }
        return instanceID;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String zza(KeyPair keyPair) {
        try {
            byte[] digest = MessageDigest.getInstance("SHA1").digest(keyPair.getPublic().getEncoded());
            digest[0] = (byte) (112 + (digest[0] & 15));
            return Base64.encodeToString(digest, 0, 8, 11);
        } catch (NoSuchAlgorithmException unused) {
            Log.w("InstanceID", "Unexpected error, device missing required algorithms");
            return null;
        }
    }

    private final KeyPair zzawp() {
        if (this.zzimx == null) {
            this.zzimx = zzimv.zzii(this.zzimy);
        }
        if (this.zzimx == null) {
            this.zzimz = System.currentTimeMillis();
            this.zzimx = zzimv.zzc(this.zzimy, this.zzimz);
        }
        return this.zzimx;
    }

    @Hide
    public static zzaf zzawr() {
        return zzimv;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int zzdo(Context context) {
        try {
            return context.getPackageManager().getPackageInfo(context.getPackageName(), 0).versionCode;
        } catch (PackageManager.NameNotFoundException e) {
            String valueOf = String.valueOf(e);
            StringBuilder sb = new StringBuilder(38 + String.valueOf(valueOf).length());
            sb.append("Never happens: can't find own package ");
            sb.append(valueOf);
            Log.w("InstanceID", sb.toString());
            return 0;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String zzdp(Context context) {
        try {
            return context.getPackageManager().getPackageInfo(context.getPackageName(), 0).versionName;
        } catch (PackageManager.NameNotFoundException e) {
            String valueOf = String.valueOf(e);
            StringBuilder sb = new StringBuilder(38 + String.valueOf(valueOf).length());
            sb.append("Never happens: can't find own package ");
            sb.append(valueOf);
            Log.w("InstanceID", sb.toString());
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String zzp(byte[] bArr) {
        return Base64.encodeToString(bArr, 11);
    }

    public void deleteInstanceID() throws IOException {
        zza("*", "*", null);
        zzawq();
    }

    public void deleteToken(String str, String str2) throws IOException {
        zza(str, str2, null);
    }

    public long getCreationTime() {
        String str;
        if (this.zzimz == 0 && (str = zzimv.get(this.zzimy, "cre")) != null) {
            this.zzimz = Long.parseLong(str);
        }
        return this.zzimz;
    }

    public String getId() {
        return zza(zzawp());
    }

    @Hide
    @KeepForSdk
    public String getSubtype() {
        return this.zzimy;
    }

    public String getToken(String str, String str2) throws IOException {
        return getToken(str, str2, null);
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x0054  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0060 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:19:0x0061  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x0056  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.String getToken(java.lang.String r10, java.lang.String r11, android.os.Bundle r12) throws java.io.IOException {
        /*
            r9 = this;
            android.os.Looper r0 = android.os.Looper.getMainLooper()
            android.os.Looper r1 = android.os.Looper.myLooper()
            if (r0 != r1) goto L12
            java.io.IOException r10 = new java.io.IOException
            java.lang.String r11 = "MAIN_THREAD"
            r10.<init>(r11)
            throw r10
        L12:
            com.google.android.gms.iid.zzaf r0 = com.google.android.gms.iid.InstanceID.zzimv
            java.lang.String r1 = "appVersion"
            java.lang.String r0 = r0.get(r1)
            r1 = 0
            r2 = 1
            if (r0 == 0) goto L51
            java.lang.String r3 = com.google.android.gms.iid.InstanceID.zzina
            boolean r0 = r0.equals(r3)
            if (r0 != 0) goto L27
            goto L51
        L27:
            com.google.android.gms.iid.zzaf r0 = com.google.android.gms.iid.InstanceID.zzimv
            java.lang.String r3 = "lastToken"
            java.lang.String r0 = r0.get(r3)
            if (r0 != 0) goto L32
            goto L51
        L32:
            long r3 = java.lang.Long.parseLong(r0)
            java.lang.Long r0 = java.lang.Long.valueOf(r3)
            long r3 = java.lang.System.currentTimeMillis()
            r5 = 1000(0x3e8, double:4.94E-321)
            long r3 = r3 / r5
            long r5 = r0.longValue()
            long r7 = r3 - r5
            r3 = 604800(0x93a80, double:2.98811E-318)
            int r0 = (r7 > r3 ? 1 : (r7 == r3 ? 0 : -1))
            if (r0 <= 0) goto L4f
            goto L51
        L4f:
            r0 = r1
            goto L52
        L51:
            r0 = r2
        L52:
            if (r0 == 0) goto L56
            r0 = 0
            goto L5e
        L56:
            com.google.android.gms.iid.zzaf r0 = com.google.android.gms.iid.InstanceID.zzimv
            java.lang.String r3 = r9.zzimy
            java.lang.String r0 = r0.zzf(r3, r10, r11)
        L5e:
            if (r0 == 0) goto L61
            return r0
        L61:
            if (r12 != 0) goto L68
            android.os.Bundle r12 = new android.os.Bundle
            r12.<init>()
        L68:
            java.lang.String r0 = "ttl"
            java.lang.String r0 = r12.getString(r0)
            if (r0 == 0) goto L71
            r2 = r1
        L71:
            java.lang.String r0 = "jwt"
            java.lang.String r3 = "type"
            java.lang.String r3 = r12.getString(r3)
            boolean r0 = r0.equals(r3)
            if (r0 == 0) goto L80
            goto L81
        L80:
            r1 = r2
        L81:
            java.lang.String r12 = r9.zzb(r10, r11, r12)
            if (r12 == 0) goto L95
            if (r1 == 0) goto L95
            com.google.android.gms.iid.zzaf r2 = com.google.android.gms.iid.InstanceID.zzimv
            java.lang.String r3 = r9.zzimy
            java.lang.String r7 = com.google.android.gms.iid.InstanceID.zzina
            r4 = r10
            r5 = r11
            r6 = r12
            r2.zza(r3, r4, r5, r6, r7)
        L95:
            return r12
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.iid.InstanceID.getToken(java.lang.String, java.lang.String, android.os.Bundle):java.lang.String");
    }

    @Hide
    public final void zza(String str, String str2, Bundle bundle) throws IOException {
        if (Looper.getMainLooper() == Looper.myLooper()) {
            throw new IOException("MAIN_THREAD");
        }
        zzimv.zzg(this.zzimy, str, str2);
        if (bundle == null) {
            bundle = new Bundle();
        }
        bundle.putString("sender", str);
        if (str2 != null) {
            bundle.putString("scope", str2);
        }
        bundle.putString("subscription", str);
        bundle.putString("delete", NotificationPreferences.YES);
        bundle.putString("X-delete", NotificationPreferences.YES);
        bundle.putString("subtype", "".equals(this.zzimy) ? str : this.zzimy);
        if (!"".equals(this.zzimy)) {
            str = this.zzimy;
        }
        bundle.putString("X-subtype", str);
        zzaa.zzy(zzimw.zza(bundle, zzawp()));
    }

    @Hide
    public final void zzawq() {
        this.zzimz = 0L;
        zzimv.zzih(String.valueOf(this.zzimy).concat(MediaIdHelper.AUTO_MEDIA_ID_SEPERATOR));
        this.zzimx = null;
    }

    @Hide
    public final String zzb(String str, String str2, Bundle bundle) throws IOException {
        if (str2 != null) {
            bundle.putString("scope", str2);
        }
        bundle.putString("sender", str);
        String str3 = "".equals(this.zzimy) ? str : this.zzimy;
        if (!bundle.containsKey("legacy.register")) {
            bundle.putString("subscription", str);
            bundle.putString("subtype", str3);
            bundle.putString("X-subscription", str);
            bundle.putString("X-subtype", str3);
        }
        String zzy = zzaa.zzy(zzimw.zza(bundle, zzawp()));
        if (!"RST".equals(zzy) && !zzy.startsWith("RST|")) {
            return zzy;
        }
        InstanceIDListenerService.zza(this.mContext, zzimv);
        throw new IOException("SERVICE_NOT_AVAILABLE");
    }
}
