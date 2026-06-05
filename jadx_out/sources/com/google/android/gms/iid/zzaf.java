package com.google.android.gms.iid;

import android.content.Context;
import android.content.SharedPreferences;
import android.util.Base64;
import android.util.Log;
import com.google.android.gms.common.internal.Hide;
import java.io.File;
import java.io.IOException;
import java.security.KeyFactory;
import java.security.KeyPair;
import java.security.NoSuchAlgorithmException;
import java.security.spec.InvalidKeySpecException;
import java.security.spec.PKCS8EncodedKeySpec;
import java.security.spec.X509EncodedKeySpec;
import mobi.beyondpod.services.auto.MediaIdHelper;

@Hide
/* loaded from: classes.dex */
public final class zzaf {
    private Context zzaiq;
    private SharedPreferences zzioc;

    public zzaf(Context context) {
        this(context, "com.google.android.gms.appid");
    }

    private zzaf(Context context, String str) {
        this.zzaiq = context;
        this.zzioc = context.getSharedPreferences(str, 0);
        String valueOf = String.valueOf(str);
        String valueOf2 = String.valueOf("-no-backup");
        File file = new File(com.google.android.gms.common.util.zzx.getNoBackupFilesDir(this.zzaiq), valueOf2.length() != 0 ? valueOf.concat(valueOf2) : new String(valueOf));
        if (file.exists()) {
            return;
        }
        try {
            if (!file.createNewFile() || isEmpty()) {
                return;
            }
            Log.i("InstanceID/Store", "App restored, clearing state");
            InstanceIDListenerService.zza(this.zzaiq, this);
        } catch (IOException e) {
            if (Log.isLoggable("InstanceID/Store", 3)) {
                String valueOf3 = String.valueOf(e.getMessage());
                Log.d("InstanceID/Store", valueOf3.length() != 0 ? "Error creating file in no backup dir: ".concat(valueOf3) : new String("Error creating file in no backup dir: "));
            }
        }
    }

    private final synchronized void zza(SharedPreferences.Editor editor, String str, String str2, String str3) {
        StringBuilder sb = new StringBuilder(3 + String.valueOf(str).length() + String.valueOf(str2).length());
        sb.append(str);
        sb.append("|S|");
        sb.append(str2);
        editor.putString(sb.toString(), str3);
    }

    private static String zze(String str, String str2, String str3) {
        StringBuilder sb = new StringBuilder(4 + String.valueOf(str).length() + String.valueOf(str2).length() + String.valueOf(str3).length());
        sb.append(str);
        sb.append("|T|");
        sb.append(str2);
        sb.append(MediaIdHelper.AUTO_MEDIA_ID_SEPERATOR);
        sb.append(str3);
        return sb.toString();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final synchronized String get(String str) {
        return this.zzioc.getString(str, null);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final synchronized String get(String str, String str2) {
        SharedPreferences sharedPreferences;
        StringBuilder sb;
        sharedPreferences = this.zzioc;
        sb = new StringBuilder(3 + String.valueOf(str).length() + String.valueOf(str2).length());
        sb.append(str);
        sb.append("|S|");
        sb.append(str2);
        return sharedPreferences.getString(sb.toString(), null);
    }

    @Hide
    public final boolean isEmpty() {
        return this.zzioc.getAll().isEmpty();
    }

    public final synchronized void zza(String str, String str2, String str3, String str4, String str5) {
        String zze = zze(str, str2, str3);
        SharedPreferences.Editor edit = this.zzioc.edit();
        edit.putString(zze, str4);
        edit.putString("appVersion", str5);
        edit.putString("lastToken", Long.toString(System.currentTimeMillis() / 1000));
        edit.commit();
    }

    public final synchronized void zzawz() {
        this.zzioc.edit().clear().commit();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final synchronized KeyPair zzc(String str, long j) {
        KeyPair zzawn;
        zzawn = zza.zzawn();
        SharedPreferences.Editor edit = this.zzioc.edit();
        zza(edit, str, "|P|", InstanceID.zzp(zzawn.getPublic().getEncoded()));
        zza(edit, str, "|K|", InstanceID.zzp(zzawn.getPrivate().getEncoded()));
        zza(edit, str, "cre", Long.toString(j));
        edit.commit();
        return zzawn;
    }

    public final synchronized String zzf(String str, String str2, String str3) {
        return this.zzioc.getString(zze(str, str2, str3), null);
    }

    public final synchronized void zzg(String str, String str2, String str3) {
        String zze = zze(str, str2, str3);
        SharedPreferences.Editor edit = this.zzioc.edit();
        edit.remove(zze);
        edit.commit();
    }

    public final synchronized void zzih(String str) {
        SharedPreferences.Editor edit = this.zzioc.edit();
        for (String str2 : this.zzioc.getAll().keySet()) {
            if (str2.startsWith(str)) {
                edit.remove(str2);
            }
        }
        edit.commit();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final KeyPair zzii(String str) {
        String str2 = get(str, "|P|");
        String str3 = get(str, "|K|");
        if (str2 == null || str3 == null) {
            return null;
        }
        try {
            byte[] decode = Base64.decode(str2, 8);
            byte[] decode2 = Base64.decode(str3, 8);
            KeyFactory keyFactory = KeyFactory.getInstance("RSA");
            return new KeyPair(keyFactory.generatePublic(new X509EncodedKeySpec(decode)), keyFactory.generatePrivate(new PKCS8EncodedKeySpec(decode2)));
        } catch (NoSuchAlgorithmException | InvalidKeySpecException e) {
            String valueOf = String.valueOf(e);
            StringBuilder sb = new StringBuilder(19 + String.valueOf(valueOf).length());
            sb.append("Invalid key stored ");
            sb.append(valueOf);
            Log.w("InstanceID/Store", sb.toString());
            InstanceIDListenerService.zza(this.zzaiq, this);
            return null;
        }
    }
}
