package com.google.android.gms.internal;

import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.URL;

/* loaded from: classes.dex */
final class zzdkr implements zzdks {
    private HttpURLConnection zzlbw;
    private InputStream zzlbx = null;

    @Override // com.google.android.gms.internal.zzdks
    public final void close() {
        HttpURLConnection httpURLConnection = this.zzlbw;
        try {
            if (this.zzlbx != null) {
                this.zzlbx.close();
            }
        } catch (IOException e) {
            String valueOf = String.valueOf(e.getMessage());
            com.google.android.gms.tagmanager.zzdj.zzb(valueOf.length() != 0 ? "HttpUrlConnectionNetworkClient: Error when closing http input stream: ".concat(valueOf) : new String("HttpUrlConnectionNetworkClient: Error when closing http input stream: "), e);
        }
        if (httpURLConnection != null) {
            httpURLConnection.disconnect();
        }
    }

    @Override // com.google.android.gms.internal.zzdks
    public final InputStream zzne(String str) throws IOException {
        HttpURLConnection httpURLConnection = (HttpURLConnection) new URL(str).openConnection();
        httpURLConnection.setReadTimeout(20000);
        httpURLConnection.setConnectTimeout(20000);
        this.zzlbw = httpURLConnection;
        HttpURLConnection httpURLConnection2 = this.zzlbw;
        int responseCode = httpURLConnection2.getResponseCode();
        if (responseCode == 200) {
            this.zzlbx = httpURLConnection2.getInputStream();
            return this.zzlbx;
        }
        StringBuilder sb = new StringBuilder(25);
        sb.append("Bad response: ");
        sb.append(responseCode);
        String sb2 = sb.toString();
        if (responseCode == 404) {
            throw new FileNotFoundException(sb2);
        }
        if (responseCode == 503) {
            throw new zzdku(sb2);
        }
        throw new IOException(sb2);
    }
}
