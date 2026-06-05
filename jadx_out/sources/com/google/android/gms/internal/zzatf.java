package com.google.android.gms.internal;

import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Build;
import com.google.android.gms.common.internal.Hide;
import io.fabric.sdk.android.services.network.HttpRequest;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.UnsupportedEncodingException;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
import java.net.URLConnection;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Locale;
import java.util.Map;

/* JADX INFO: Access modifiers changed from: package-private */
@Hide
/* loaded from: classes.dex */
public final class zzatf extends zzari {
    private static final byte[] zzedy = "\n".getBytes();
    private final String zzddt;
    private final zzatp zzedx;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzatf(zzark zzarkVar) {
        super(zzarkVar);
        this.zzddt = String.format("%s/%s (Linux; U; Android %s; %s; %s Build/%s)", "GoogleAnalytics", zzarj.VERSION, Build.VERSION.RELEASE, zzatt.zza(Locale.getDefault()), Build.MODEL, Build.ID);
        this.zzedx = new zzatp(zzarkVar.zzxx());
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:23:0x004c  */
    /* JADX WARN: Type inference failed for: r5v0, types: [java.net.URL, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r5v2 */
    /* JADX WARN: Type inference failed for: r5v5, types: [java.net.HttpURLConnection] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final int zza(java.net.URL r5) {
        /*
            r4 = this;
            com.google.android.gms.common.internal.zzbq.checkNotNull(r5)
            java.lang.String r0 = "GET request"
            r4.zzb(r0, r5)
            r0 = 0
            java.net.HttpURLConnection r5 = r4.zzb(r5)     // Catch: java.lang.Throwable -> L35 java.io.IOException -> L3a
            r5.connect()     // Catch: java.lang.Throwable -> L31 java.io.IOException -> L33
            r4.zzb(r5)     // Catch: java.lang.Throwable -> L31 java.io.IOException -> L33
            int r0 = r5.getResponseCode()     // Catch: java.lang.Throwable -> L31 java.io.IOException -> L33
            r1 = 200(0xc8, float:2.8E-43)
            if (r0 != r1) goto L22
            com.google.android.gms.internal.zzaqz r1 = r4.zzyc()     // Catch: java.lang.Throwable -> L31 java.io.IOException -> L33
            r1.zzxv()     // Catch: java.lang.Throwable -> L31 java.io.IOException -> L33
        L22:
            java.lang.String r1 = "GET status"
            java.lang.Integer r2 = java.lang.Integer.valueOf(r0)     // Catch: java.lang.Throwable -> L31 java.io.IOException -> L33
            r4.zzb(r1, r2)     // Catch: java.lang.Throwable -> L31 java.io.IOException -> L33
            if (r5 == 0) goto L30
            r5.disconnect()
        L30:
            return r0
        L31:
            r0 = move-exception
            goto L4a
        L33:
            r0 = move-exception
            goto L3e
        L35:
            r5 = move-exception
            r3 = r0
            r0 = r5
            r5 = r3
            goto L4a
        L3a:
            r5 = move-exception
            r3 = r0
            r0 = r5
            r5 = r3
        L3e:
            java.lang.String r1 = "Network GET connection error"
            r4.zzd(r1, r0)     // Catch: java.lang.Throwable -> L31
            if (r5 == 0) goto L48
            r5.disconnect()
        L48:
            r5 = 0
            return r5
        L4a:
            if (r5 == 0) goto L4f
            r5.disconnect()
        L4f:
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.zzatf.zza(java.net.URL):int");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r3v0, types: [com.google.android.gms.internal.zzatf, com.google.android.gms.internal.zzarh] */
    /* JADX WARN: Type inference failed for: r4v0, types: [java.net.URL, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r4v1 */
    /* JADX WARN: Type inference failed for: r4v2 */
    /* JADX WARN: Type inference failed for: r4v3, types: [java.net.HttpURLConnection] */
    /* JADX WARN: Type inference failed for: r4v4, types: [java.net.HttpURLConnection] */
    /* JADX WARN: Type inference failed for: r4v7, types: [java.net.HttpURLConnection] */
    private final int zza(URL url, byte[] bArr) {
        OutputStream outputStream;
        com.google.android.gms.common.internal.zzbq.checkNotNull(url);
        com.google.android.gms.common.internal.zzbq.checkNotNull(bArr);
        zzb("POST bytes, url", Integer.valueOf(bArr.length), url);
        if (zzqk()) {
            zza("Post payload\n", new String(bArr));
        }
        OutputStream outputStream2 = null;
        try {
            try {
                getContext().getPackageName();
                url = zzb(url);
                try {
                    url.setDoOutput(true);
                    url.setFixedLengthStreamingMode(bArr.length);
                    url.connect();
                    outputStream = url.getOutputStream();
                } catch (IOException e) {
                    e = e;
                }
            } catch (Throwable th) {
                th = th;
            }
        } catch (IOException e2) {
            e = e2;
            url = 0;
        } catch (Throwable th2) {
            th = th2;
            url = 0;
        }
        try {
            outputStream.write(bArr);
            zzb(url);
            int responseCode = url.getResponseCode();
            if (responseCode == 200) {
                zzyc().zzxv();
            }
            zzb("POST status", Integer.valueOf(responseCode));
            if (outputStream != null) {
                try {
                    outputStream.close();
                } catch (IOException e3) {
                    zze("Error closing http post connection output stream", e3);
                }
            }
            if (url != 0) {
                url.disconnect();
            }
            return responseCode;
        } catch (IOException e4) {
            e = e4;
            outputStream2 = outputStream;
            zzd("Network POST connection error", e);
            if (outputStream2 != null) {
                try {
                    outputStream2.close();
                } catch (IOException e5) {
                    zze("Error closing http post connection output stream", e5);
                }
            }
            if (url == 0) {
                return 0;
            }
            url.disconnect();
            return 0;
        } catch (Throwable th3) {
            th = th3;
            outputStream2 = outputStream;
            if (outputStream2 != null) {
                try {
                    outputStream2.close();
                } catch (IOException e6) {
                    zze("Error closing http post connection output stream", e6);
                }
            }
            if (url == 0) {
                throw th;
            }
            url.disconnect();
            throw th;
        }
    }

    private static void zza(StringBuilder sb, String str, String str2) throws UnsupportedEncodingException {
        if (sb.length() != 0) {
            sb.append('&');
        }
        sb.append(URLEncoder.encode(str, HttpRequest.CHARSET_UTF8));
        sb.append('=');
        sb.append(URLEncoder.encode(str2, HttpRequest.CHARSET_UTF8));
    }

    private final URL zzaay() {
        String valueOf = String.valueOf(zzasl.zzaab());
        String valueOf2 = String.valueOf(zzast.zzece.get());
        try {
            return new URL(valueOf2.length() != 0 ? valueOf.concat(valueOf2) : new String(valueOf));
        } catch (MalformedURLException e) {
            zze("Error trying to parse the hardcoded host url", e);
            return null;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:47:0x00f7  */
    /* JADX WARN: Removed duplicated region for block: B:49:? A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:50:0x00eb A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final int zzb(java.net.URL r10, byte[] r11) {
        /*
            Method dump skipped, instructions count: 251
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.zzatf.zzb(java.net.URL, byte[]):int");
    }

    private final HttpURLConnection zzb(URL url) throws IOException {
        URLConnection openConnection = url.openConnection();
        if (!(openConnection instanceof HttpURLConnection)) {
            throw new IOException("Failed to obtain http connection");
        }
        HttpURLConnection httpURLConnection = (HttpURLConnection) openConnection;
        httpURLConnection.setDefaultUseCaches(false);
        httpURLConnection.setConnectTimeout(zzast.zzecp.get().intValue());
        httpURLConnection.setReadTimeout(zzast.zzecq.get().intValue());
        httpURLConnection.setInstanceFollowRedirects(false);
        httpURLConnection.setRequestProperty("User-Agent", this.zzddt);
        httpURLConnection.setDoInput(true);
        return httpURLConnection;
    }

    private final URL zzb(zzasy zzasyVar, String str) {
        String zzaac;
        String zzaad;
        StringBuilder sb;
        if (zzasyVar.zzaap()) {
            zzaac = zzasl.zzaab();
            zzaad = zzasl.zzaad();
            sb = new StringBuilder(1 + String.valueOf(zzaac).length() + String.valueOf(zzaad).length() + String.valueOf(str).length());
        } else {
            zzaac = zzasl.zzaac();
            zzaad = zzasl.zzaad();
            sb = new StringBuilder(1 + String.valueOf(zzaac).length() + String.valueOf(zzaad).length() + String.valueOf(str).length());
        }
        sb.append(zzaac);
        sb.append(zzaad);
        sb.append("?");
        sb.append(str);
        try {
            return new URL(sb.toString());
        } catch (MalformedURLException e) {
            zze("Error trying to parse the hardcoded host url", e);
            return null;
        }
    }

    private final void zzb(HttpURLConnection httpURLConnection) throws IOException {
        InputStream inputStream;
        try {
            inputStream = httpURLConnection.getInputStream();
            try {
                do {
                } while (inputStream.read(new byte[1024]) > 0);
                if (inputStream != null) {
                    try {
                        inputStream.close();
                    } catch (IOException e) {
                        zze("Error closing http connection input stream", e);
                    }
                }
            } catch (Throwable th) {
                th = th;
                if (inputStream != null) {
                    try {
                        inputStream.close();
                    } catch (IOException e2) {
                        zze("Error closing http connection input stream", e2);
                    }
                }
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
            inputStream = null;
        }
    }

    private final URL zzd(zzasy zzasyVar) {
        String valueOf;
        String valueOf2;
        String str;
        String str2;
        if (zzasyVar.zzaap()) {
            valueOf = String.valueOf(zzasl.zzaab());
            valueOf2 = String.valueOf(zzasl.zzaad());
            if (valueOf2.length() == 0) {
                str = new String(valueOf);
                str2 = str;
            }
            str2 = valueOf.concat(valueOf2);
        } else {
            valueOf = String.valueOf(zzasl.zzaac());
            valueOf2 = String.valueOf(zzasl.zzaad());
            if (valueOf2.length() == 0) {
                str = new String(valueOf);
                str2 = str;
            }
            str2 = valueOf.concat(valueOf2);
        }
        try {
            return new URL(str2);
        } catch (MalformedURLException e) {
            zze("Error trying to parse the hardcoded host url", e);
            return null;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:24:0x0057, code lost:
    
        if (zza(r2) == 200) goto L31;
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x008e, code lost:
    
        if (zza(r5, r2) == 200) goto L31;
     */
    /* JADX WARN: Removed duplicated region for block: B:15:0x00a9 A[EDGE_INSN: B:15:0x00a9->B:12:0x00a9 BREAK  A[LOOP:0: B:2:0x000d->B:14:?], SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0094  */
    @com.google.android.gms.common.internal.Hide
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final java.util.List<java.lang.Long> zzv(java.util.List<com.google.android.gms.internal.zzasy> r9) {
        /*
            r8 = this;
            java.util.ArrayList r0 = new java.util.ArrayList
            int r1 = r9.size()
            r0.<init>(r1)
            java.util.Iterator r9 = r9.iterator()
        Ld:
            boolean r1 = r9.hasNext()
            if (r1 == 0) goto La9
            java.lang.Object r1 = r9.next()
            com.google.android.gms.internal.zzasy r1 = (com.google.android.gms.internal.zzasy) r1
            com.google.android.gms.common.internal.zzbq.checkNotNull(r1)
            boolean r2 = r1.zzaap()
            r3 = 1
            r2 = r2 ^ r3
            java.lang.String r2 = r8.zza(r1, r2)
            r4 = 0
            if (r2 != 0) goto L33
            com.google.android.gms.internal.zzatd r2 = r8.zzxy()
            java.lang.String r4 = "Error formatting hit for upload"
        L2f:
            r2.zza(r1, r4)
            goto L92
        L33:
            int r5 = r2.length()
            com.google.android.gms.internal.zzasu<java.lang.Integer> r6 = com.google.android.gms.internal.zzast.zzecf
            java.lang.Object r6 = r6.get()
            java.lang.Integer r6 = (java.lang.Integer) r6
            int r6 = r6.intValue()
            r7 = 200(0xc8, float:2.8E-43)
            if (r5 > r6) goto L5a
            java.net.URL r2 = r8.zzb(r1, r2)
            if (r2 != 0) goto L53
            java.lang.String r2 = "Failed to build collect GET endpoint url"
        L4f:
            r8.zzee(r2)
            goto L91
        L53:
            int r2 = r8.zza(r2)
            if (r2 != r7) goto L91
            goto L92
        L5a:
            java.lang.String r2 = r8.zza(r1, r4)
            if (r2 != 0) goto L67
            com.google.android.gms.internal.zzatd r2 = r8.zzxy()
            java.lang.String r4 = "Error formatting hit for POST upload"
            goto L2f
        L67:
            byte[] r2 = r2.getBytes()
            int r5 = r2.length
            com.google.android.gms.internal.zzasu<java.lang.Integer> r6 = com.google.android.gms.internal.zzast.zzeck
            java.lang.Object r6 = r6.get()
            java.lang.Integer r6 = (java.lang.Integer) r6
            int r6 = r6.intValue()
            if (r5 <= r6) goto L81
            com.google.android.gms.internal.zzatd r2 = r8.zzxy()
            java.lang.String r4 = "Hit payload exceeds size limit"
            goto L2f
        L81:
            java.net.URL r5 = r8.zzd(r1)
            if (r5 != 0) goto L8a
            java.lang.String r2 = "Failed to build collect POST endpoint url"
            goto L4f
        L8a:
            int r2 = r8.zza(r5, r2)
            if (r2 != r7) goto L91
            goto L92
        L91:
            r3 = r4
        L92:
            if (r3 == 0) goto La9
            long r1 = r1.zzaam()
            java.lang.Long r1 = java.lang.Long.valueOf(r1)
            r0.add(r1)
            int r1 = r0.size()
            int r2 = com.google.android.gms.internal.zzasl.zzzz()
            if (r1 < r2) goto Ld
        La9:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.zzatf.zzv(java.util.List):java.util.List");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final String zza(zzasy zzasyVar, boolean z) {
        com.google.android.gms.common.internal.zzbq.checkNotNull(zzasyVar);
        StringBuilder sb = new StringBuilder();
        try {
            for (Map.Entry<String, String> entry : zzasyVar.zzjq().entrySet()) {
                String key = entry.getKey();
                if (!"ht".equals(key) && !"qt".equals(key) && !"AppUID".equals(key) && !"z".equals(key) && !"_gmsv".equals(key)) {
                    zza(sb, key, entry.getValue());
                }
            }
            zza(sb, "ht", String.valueOf(zzasyVar.zzaan()));
            zza(sb, "qt", String.valueOf(zzxx().currentTimeMillis() - zzasyVar.zzaan()));
            if (z) {
                long zzaaq = zzasyVar.zzaaq();
                zza(sb, "z", zzaaq != 0 ? String.valueOf(zzaaq) : String.valueOf(zzasyVar.zzaam()));
            }
            return sb.toString();
        } catch (UnsupportedEncodingException e) {
            zze("Failed to encode name or value", e);
            return null;
        }
    }

    public final boolean zzaax() {
        NetworkInfo networkInfo;
        com.google.android.gms.analytics.zzk.zzwj();
        zzyk();
        try {
            networkInfo = ((ConnectivityManager) getContext().getSystemService("connectivity")).getActiveNetworkInfo();
        } catch (SecurityException unused) {
            networkInfo = null;
        }
        if (networkInfo != null && networkInfo.isConnected()) {
            return true;
        }
        zzea("No network connectivity");
        return false;
    }

    @Hide
    public final List<Long> zzu(List<zzasy> list) {
        boolean z;
        com.google.android.gms.analytics.zzk.zzwj();
        zzyk();
        com.google.android.gms.common.internal.zzbq.checkNotNull(list);
        boolean z2 = false;
        if (zzxz().zzaae().isEmpty() || !this.zzedx.zzu(zzast.zzecn.get().intValue() * 1000)) {
            z = false;
        } else {
            z = zzasb.zzej(zzast.zzecg.get()) != zzasb.NONE;
            if (zzash.zzek(zzast.zzech.get()) == zzash.GZIP) {
                z2 = true;
            }
        }
        if (!z) {
            return zzv(list);
        }
        com.google.android.gms.common.internal.zzbq.checkArgument(!list.isEmpty());
        zza("Uploading batched hits. compression, count", Boolean.valueOf(z2), Integer.valueOf(list.size()));
        zzatg zzatgVar = new zzatg(this);
        ArrayList arrayList = new ArrayList();
        for (zzasy zzasyVar : list) {
            if (!zzatgVar.zze(zzasyVar)) {
                break;
            }
            arrayList.add(Long.valueOf(zzasyVar.zzaam()));
        }
        if (zzatgVar.zzaaz() == 0) {
            return arrayList;
        }
        URL zzaay = zzaay();
        if (zzaay == null) {
            zzee("Failed to build batching endpoint url");
        } else {
            int zzb = z2 ? zzb(zzaay, zzatgVar.getPayload()) : zza(zzaay, zzatgVar.getPayload());
            if (200 == zzb) {
                zza("Batched upload completed. Hits batched", Integer.valueOf(zzatgVar.zzaaz()));
                return arrayList;
            }
            zza("Network error uploading hits. status code", Integer.valueOf(zzb));
            if (zzxz().zzaae().contains(Integer.valueOf(zzb))) {
                zzed("Server instructed the client to stop batching");
                this.zzedx.start();
            }
        }
        return Collections.emptyList();
    }

    @Override // com.google.android.gms.internal.zzari
    protected final void zzwk() {
        zza("Network initialized. User agent", this.zzddt);
    }
}
