package com.google.android.gms.internal;

import android.support.annotation.Nullable;
import android.support.annotation.WorkerThread;
import com.google.android.gms.common.internal.Hide;
import java.io.IOException;
import java.net.HttpURLConnection;
import java.net.URL;

@Hide
@zzabh
/* loaded from: classes.dex */
public final class zzakz implements zzakr {

    @Nullable
    private final String zzddt;

    public zzakz() {
        this(null);
    }

    public zzakz(@Nullable String str) {
        this.zzddt = str;
    }

    @Override // com.google.android.gms.internal.zzakr
    @WorkerThread
    public final void zzcp(String str) {
        String message;
        StringBuilder sb;
        try {
            String valueOf = String.valueOf(str);
            zzaky.zzby(valueOf.length() != 0 ? "Pinging URL: ".concat(valueOf) : new String("Pinging URL: "));
            HttpURLConnection httpURLConnection = (HttpURLConnection) new URL(str).openConnection();
            try {
                zzlc.zzij();
                zzako.zza(true, httpURLConnection, this.zzddt);
                zzaks zzaksVar = new zzaks();
                zzaksVar.zza(httpURLConnection, (byte[]) null);
                int responseCode = httpURLConnection.getResponseCode();
                zzaksVar.zza(httpURLConnection, responseCode);
                if (responseCode < 200 || responseCode >= 300) {
                    StringBuilder sb2 = new StringBuilder(65 + String.valueOf(str).length());
                    sb2.append("Received non-success response code ");
                    sb2.append(responseCode);
                    sb2.append(" from pinging URL: ");
                    sb2.append(str);
                    zzaky.zzcz(sb2.toString());
                }
            } finally {
                httpURLConnection.disconnect();
            }
        } catch (IOException e) {
            message = e.getMessage();
            sb = new StringBuilder(27 + String.valueOf(str).length() + String.valueOf(message).length());
            sb.append("Error while pinging URL: ");
            sb.append(str);
            sb.append(". ");
            sb.append(message);
            zzaky.zzcz(sb.toString());
        } catch (IndexOutOfBoundsException e2) {
            String message2 = e2.getMessage();
            sb = new StringBuilder(32 + String.valueOf(str).length() + String.valueOf(message2).length());
            sb.append("Error while parsing ping URL: ");
            sb.append(str);
            sb.append(". ");
            sb.append(message2);
            zzaky.zzcz(sb.toString());
        } catch (RuntimeException e3) {
            message = e3.getMessage();
            sb = new StringBuilder(27 + String.valueOf(str).length() + String.valueOf(message).length());
            sb.append("Error while pinging URL: ");
            sb.append(str);
            sb.append(". ");
            sb.append(message);
            zzaky.zzcz(sb.toString());
        }
    }
}
