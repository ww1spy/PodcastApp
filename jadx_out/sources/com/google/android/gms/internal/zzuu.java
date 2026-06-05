package com.google.android.gms.internal;

import android.os.Parcel;
import android.util.Base64;
import com.google.android.gms.common.internal.Hide;
import io.fabric.sdk.android.services.network.HttpRequest;
import java.io.IOException;
import java.io.UnsupportedEncodingException;

/* JADX INFO: Access modifiers changed from: package-private */
@Hide
@zzabh
/* loaded from: classes.dex */
public final class zzuu {
    final String zzapp;
    final zzkk zzarx;
    final int zzcee;

    private zzuu(zzkk zzkkVar, String str, int i) {
        this.zzarx = zzkkVar;
        this.zzapp = str;
        this.zzcee = i;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzuu(zzuq zzuqVar) {
        this(zzuqVar.zzli(), zzuqVar.getAdUnitId(), zzuqVar.getNetworkType());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static zzuu zzba(String str) throws IOException {
        String[] split = str.split("\u0000");
        if (split.length != 3) {
            throw new IOException("Incorrect field count for QueueSeed.");
        }
        Parcel obtain = Parcel.obtain();
        try {
            try {
                String str2 = new String(Base64.decode(split[0], 0), HttpRequest.CHARSET_UTF8);
                int parseInt = Integer.parseInt(split[1]);
                byte[] decode = Base64.decode(split[2], 0);
                obtain.unmarshall(decode, 0, decode.length);
                obtain.setDataPosition(0);
                return new zzuu(zzkk.CREATOR.createFromParcel(obtain), str2, parseInt);
            } catch (zzbgn | IllegalArgumentException | IllegalStateException e) {
                com.google.android.gms.ads.internal.zzbt.zzep().zza(e, "QueueSeed.decode");
                throw new IOException("Malformed QueueSeed encoding.", e);
            }
        } finally {
            obtain.recycle();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final String zzlw() {
        Parcel obtain = Parcel.obtain();
        try {
            try {
                String encodeToString = Base64.encodeToString(this.zzapp.getBytes(HttpRequest.CHARSET_UTF8), 0);
                String num = Integer.toString(this.zzcee);
                this.zzarx.writeToParcel(obtain, 0);
                String encodeToString2 = Base64.encodeToString(obtain.marshall(), 0);
                StringBuilder sb = new StringBuilder(2 + String.valueOf(encodeToString).length() + String.valueOf(num).length() + String.valueOf(encodeToString2).length());
                sb.append(encodeToString);
                sb.append("\u0000");
                sb.append(num);
                sb.append("\u0000");
                sb.append(encodeToString2);
                return sb.toString();
            } catch (UnsupportedEncodingException unused) {
                zzahw.e("QueueSeed encode failed because UTF-8 is not available.");
                obtain.recycle();
                return "";
            }
        } finally {
            obtain.recycle();
        }
    }
}
