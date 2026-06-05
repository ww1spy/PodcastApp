package com.google.android.gms.internal;

import android.text.TextUtils;
import com.google.android.gms.ads.identifier.AdvertisingIdClient;
import com.google.android.gms.common.internal.Hide;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.math.BigInteger;
import java.security.MessageDigest;
import java.util.Locale;

@Hide
/* loaded from: classes.dex */
public final class zzaqy extends zzari {
    private static boolean zzdyb;
    private AdvertisingIdClient.Info zzdyc;
    private final zzatp zzdyd;
    private String zzdye;
    private boolean zzdyf;
    private final Object zzdyg;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzaqy(zzark zzarkVar) {
        super(zzarkVar);
        this.zzdyf = false;
        this.zzdyg = new Object();
        this.zzdyd = new zzatp(zzarkVar.zzxx());
    }

    private final boolean zza(AdvertisingIdClient.Info info, AdvertisingIdClient.Info info2) {
        String str = null;
        String id = info2 == null ? null : info2.getId();
        if (TextUtils.isEmpty(id)) {
            return true;
        }
        String zzzp = zzyg().zzzp();
        synchronized (this.zzdyg) {
            if (!this.zzdyf) {
                this.zzdye = zzxq();
                this.zzdyf = true;
            } else if (TextUtils.isEmpty(this.zzdye)) {
                if (info != null) {
                    str = info.getId();
                }
                if (str == null) {
                    String valueOf = String.valueOf(id);
                    String valueOf2 = String.valueOf(zzzp);
                    return zzdz(valueOf2.length() != 0 ? valueOf.concat(valueOf2) : new String(valueOf));
                }
                String valueOf3 = String.valueOf(str);
                String valueOf4 = String.valueOf(zzzp);
                this.zzdye = zzdy(valueOf4.length() != 0 ? valueOf3.concat(valueOf4) : new String(valueOf3));
            }
            String valueOf5 = String.valueOf(id);
            String valueOf6 = String.valueOf(zzzp);
            String zzdy = zzdy(valueOf6.length() != 0 ? valueOf5.concat(valueOf6) : new String(valueOf5));
            if (TextUtils.isEmpty(zzdy)) {
                return false;
            }
            if (zzdy.equals(this.zzdye)) {
                return true;
            }
            if (!TextUtils.isEmpty(this.zzdye)) {
                zzea("Resetting the client id because Advertising Id changed.");
                zzzp = zzyg().zzzq();
                zza("New client Id", zzzp);
            }
            String valueOf7 = String.valueOf(id);
            String valueOf8 = String.valueOf(zzzp);
            return zzdz(valueOf8.length() != 0 ? valueOf7.concat(valueOf8) : new String(valueOf7));
        }
    }

    private static String zzdy(String str) {
        MessageDigest zzeq = zzatt.zzeq("MD5");
        if (zzeq == null) {
            return null;
        }
        return String.format(Locale.US, "%032X", new BigInteger(1, zzeq.digest(str.getBytes())));
    }

    private final boolean zzdz(String str) {
        try {
            String zzdy = zzdy(str);
            zzea("Storing hashed adid.");
            FileOutputStream openFileOutput = getContext().openFileOutput("gaClientIdData", 0);
            openFileOutput.write(zzdy.getBytes());
            openFileOutput.close();
            this.zzdye = zzdy;
            return true;
        } catch (IOException e) {
            zze("Error creating hash file", e);
            return false;
        }
    }

    private final synchronized AdvertisingIdClient.Info zzxo() {
        if (this.zzdyd.zzu(1000L)) {
            this.zzdyd.start();
            AdvertisingIdClient.Info zzxp = zzxp();
            if (!zza(this.zzdyc, zzxp)) {
                zzee("Failed to reset client id on adid change. Not using adid");
                zzxp = new AdvertisingIdClient.Info("", false);
            }
            this.zzdyc = zzxp;
        }
        return this.zzdyc;
    }

    private final AdvertisingIdClient.Info zzxp() {
        try {
            return AdvertisingIdClient.getAdvertisingIdInfo(getContext());
        } catch (IllegalStateException unused) {
            zzed("IllegalStateException getting Ad Id Info. If you would like to see Audience reports, please ensure that you have added '<meta-data android:name=\"com.google.android.gms.version\" android:value=\"@integer/google_play_services_version\" />' to your application manifest file. See http://goo.gl/naFqQk for details.");
            return null;
        } catch (Throwable th) {
            if (zzdyb) {
                return null;
            }
            zzdyb = true;
            zzd("Error getting advertiser id", th);
            return null;
        }
    }

    private final String zzxq() {
        String str = null;
        try {
            FileInputStream openFileInput = getContext().openFileInput("gaClientIdData");
            byte[] bArr = new byte[128];
            int read = openFileInput.read(bArr, 0, 128);
            if (openFileInput.available() > 0) {
                zzed("Hash file seems corrupted, deleting it.");
                openFileInput.close();
                getContext().deleteFile("gaClientIdData");
                return null;
            }
            if (read <= 0) {
                zzea("Hash file is empty.");
                openFileInput.close();
                return null;
            }
            String str2 = new String(bArr, 0, read);
            try {
                openFileInput.close();
            } catch (FileNotFoundException unused) {
            } catch (IOException e) {
                e = e;
                str = str2;
                zzd("Error reading Hash file, deleting it", e);
                getContext().deleteFile("gaClientIdData");
                return str;
            }
            return str2;
        } catch (FileNotFoundException unused2) {
            return str;
        } catch (IOException e2) {
            e = e2;
        }
    }

    @Override // com.google.android.gms.internal.zzari
    protected final void zzwk() {
    }

    public final boolean zzxg() {
        zzyk();
        AdvertisingIdClient.Info zzxo = zzxo();
        return (zzxo == null || zzxo.isLimitAdTrackingEnabled()) ? false : true;
    }

    public final String zzxn() {
        zzyk();
        AdvertisingIdClient.Info zzxo = zzxo();
        String id = zzxo != null ? zzxo.getId() : null;
        if (TextUtils.isEmpty(id)) {
            return null;
        }
        return id;
    }
}
