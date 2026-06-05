package com.google.android.gms.ads.internal.gmsg;

import android.content.Context;
import android.support.annotation.Keep;
import com.google.android.gms.common.annotation.KeepName;
import com.google.android.gms.common.internal.Hide;
import com.google.android.gms.internal.zzabh;
import com.google.android.gms.internal.zzahw;
import com.google.android.gms.internal.zzaid;
import com.google.android.gms.internal.zzala;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

@Hide
@Keep
@zzabh
@KeepName
/* loaded from: classes.dex */
public class HttpClient implements zzt<com.google.android.gms.ads.internal.js.zza> {
    private final Context mContext;
    private final zzala zzapq;

    /* JADX INFO: Access modifiers changed from: package-private */
    @Hide
    @zzabh
    /* loaded from: classes.dex */
    public static class zza {
        private final String mValue;
        private final String zzbkr;

        public zza(String str, String str2) {
            this.zzbkr = str;
            this.mValue = str2;
        }

        public final String getKey() {
            return this.zzbkr;
        }

        public final String getValue() {
            return this.mValue;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Hide
    @zzabh
    /* loaded from: classes.dex */
    public static class zzb {
        private final String zzccc;
        private final URL zzccd;
        private final ArrayList<zza> zzcce;
        private final String zzccf;

        zzb(String str, URL url, ArrayList<zza> arrayList, String str2) {
            this.zzccc = str;
            this.zzccd = url;
            this.zzcce = arrayList;
            this.zzccf = str2;
        }

        public final String zzky() {
            return this.zzccc;
        }

        public final URL zzkz() {
            return this.zzccd;
        }

        public final ArrayList<zza> zzla() {
            return this.zzcce;
        }

        public final String zzlb() {
            return this.zzccf;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Hide
    @zzabh
    /* loaded from: classes.dex */
    public class zzc {
        private final zzd zzccg;
        private final boolean zzcch;
        private final String zzcci;

        public zzc(HttpClient httpClient, boolean z, zzd zzdVar, String str) {
            this.zzcch = z;
            this.zzccg = zzdVar;
            this.zzcci = str;
        }

        public final String getReason() {
            return this.zzcci;
        }

        public final boolean isSuccess() {
            return this.zzcch;
        }

        public final zzd zzlc() {
            return this.zzccg;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Hide
    @zzabh
    /* loaded from: classes.dex */
    public static class zzd {
        private final String zzbxx;
        private final String zzccc;
        private final int zzccj;
        private final List<zza> zzcd;

        zzd(String str, int i, List<zza> list, String str2) {
            this.zzccc = str;
            this.zzccj = i;
            this.zzcd = list;
            this.zzbxx = str2;
        }

        public final String getBody() {
            return this.zzbxx;
        }

        public final int getResponseCode() {
            return this.zzccj;
        }

        public final String zzky() {
            return this.zzccc;
        }

        public final Iterable<zza> zzld() {
            return this.zzcd;
        }
    }

    public HttpClient(Context context, zzala zzalaVar) {
        this.mContext = context;
        this.zzapq = zzalaVar;
    }

    /* JADX WARN: Removed duplicated region for block: B:38:0x0104  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final com.google.android.gms.ads.internal.gmsg.HttpClient.zzc zza(com.google.android.gms.ads.internal.gmsg.HttpClient.zzb r13) {
        /*
            r12 = this;
            r0 = 0
            r1 = 0
            java.net.URL r2 = r13.zzkz()     // Catch: java.lang.Throwable -> Led java.lang.Exception -> Lf0
            java.net.URLConnection r2 = r2.openConnection()     // Catch: java.lang.Throwable -> Led java.lang.Exception -> Lf0
            java.net.HttpURLConnection r2 = (java.net.HttpURLConnection) r2     // Catch: java.lang.Throwable -> Led java.lang.Exception -> Lf0
            com.google.android.gms.internal.zzaij r3 = com.google.android.gms.ads.internal.zzbt.zzel()     // Catch: java.lang.Exception -> Leb java.lang.Throwable -> L101
            android.content.Context r4 = r12.mContext     // Catch: java.lang.Exception -> Leb java.lang.Throwable -> L101
            com.google.android.gms.internal.zzala r5 = r12.zzapq     // Catch: java.lang.Exception -> Leb java.lang.Throwable -> L101
            java.lang.String r5 = r5.zzcu     // Catch: java.lang.Exception -> Leb java.lang.Throwable -> L101
            r3.zza(r4, r5, r0, r2)     // Catch: java.lang.Exception -> Leb java.lang.Throwable -> L101
            java.util.ArrayList r3 = r13.zzla()     // Catch: java.lang.Exception -> Leb java.lang.Throwable -> L101
            java.util.ArrayList r3 = (java.util.ArrayList) r3     // Catch: java.lang.Exception -> Leb java.lang.Throwable -> L101
            int r4 = r3.size()     // Catch: java.lang.Exception -> Leb java.lang.Throwable -> L101
            r5 = r0
        L24:
            if (r5 >= r4) goto L3a
            java.lang.Object r6 = r3.get(r5)     // Catch: java.lang.Exception -> Leb java.lang.Throwable -> L101
            int r5 = r5 + 1
            com.google.android.gms.ads.internal.gmsg.HttpClient$zza r6 = (com.google.android.gms.ads.internal.gmsg.HttpClient.zza) r6     // Catch: java.lang.Exception -> Leb java.lang.Throwable -> L101
            java.lang.String r7 = r6.getKey()     // Catch: java.lang.Exception -> Leb java.lang.Throwable -> L101
            java.lang.String r6 = r6.getValue()     // Catch: java.lang.Exception -> Leb java.lang.Throwable -> L101
            r2.addRequestProperty(r7, r6)     // Catch: java.lang.Exception -> Leb java.lang.Throwable -> L101
            goto L24
        L3a:
            java.lang.String r3 = r13.zzlb()     // Catch: java.lang.Exception -> Leb java.lang.Throwable -> L101
            boolean r3 = android.text.TextUtils.isEmpty(r3)     // Catch: java.lang.Exception -> Leb java.lang.Throwable -> L101
            r4 = 1
            if (r3 != 0) goto L64
            r2.setDoOutput(r4)     // Catch: java.lang.Exception -> Leb java.lang.Throwable -> L101
            java.lang.String r3 = r13.zzlb()     // Catch: java.lang.Exception -> Leb java.lang.Throwable -> L101
            byte[] r3 = r3.getBytes()     // Catch: java.lang.Exception -> Leb java.lang.Throwable -> L101
            int r5 = r3.length     // Catch: java.lang.Exception -> Leb java.lang.Throwable -> L101
            r2.setFixedLengthStreamingMode(r5)     // Catch: java.lang.Exception -> Leb java.lang.Throwable -> L101
            java.io.BufferedOutputStream r5 = new java.io.BufferedOutputStream     // Catch: java.lang.Exception -> Leb java.lang.Throwable -> L101
            java.io.OutputStream r6 = r2.getOutputStream()     // Catch: java.lang.Exception -> Leb java.lang.Throwable -> L101
            r5.<init>(r6)     // Catch: java.lang.Exception -> Leb java.lang.Throwable -> L101
            r5.write(r3)     // Catch: java.lang.Exception -> Leb java.lang.Throwable -> L101
            r5.close()     // Catch: java.lang.Exception -> Leb java.lang.Throwable -> L101
            goto L65
        L64:
            r3 = r1
        L65:
            com.google.android.gms.internal.zzaks r5 = new com.google.android.gms.internal.zzaks     // Catch: java.lang.Exception -> Leb java.lang.Throwable -> L101
            r5.<init>()     // Catch: java.lang.Exception -> Leb java.lang.Throwable -> L101
            r5.zza(r2, r3)     // Catch: java.lang.Exception -> Leb java.lang.Throwable -> L101
            java.util.ArrayList r3 = new java.util.ArrayList     // Catch: java.lang.Exception -> Leb java.lang.Throwable -> L101
            r3.<init>()     // Catch: java.lang.Exception -> Leb java.lang.Throwable -> L101
            java.util.Map r6 = r2.getHeaderFields()     // Catch: java.lang.Exception -> Leb java.lang.Throwable -> L101
            if (r6 == 0) goto Lb5
            java.util.Map r6 = r2.getHeaderFields()     // Catch: java.lang.Exception -> Leb java.lang.Throwable -> L101
            java.util.Set r6 = r6.entrySet()     // Catch: java.lang.Exception -> Leb java.lang.Throwable -> L101
            java.util.Iterator r6 = r6.iterator()     // Catch: java.lang.Exception -> Leb java.lang.Throwable -> L101
        L84:
            boolean r7 = r6.hasNext()     // Catch: java.lang.Exception -> Leb java.lang.Throwable -> L101
            if (r7 == 0) goto Lb5
            java.lang.Object r7 = r6.next()     // Catch: java.lang.Exception -> Leb java.lang.Throwable -> L101
            java.util.Map$Entry r7 = (java.util.Map.Entry) r7     // Catch: java.lang.Exception -> Leb java.lang.Throwable -> L101
            java.lang.Object r8 = r7.getValue()     // Catch: java.lang.Exception -> Leb java.lang.Throwable -> L101
            java.util.List r8 = (java.util.List) r8     // Catch: java.lang.Exception -> Leb java.lang.Throwable -> L101
            java.util.Iterator r8 = r8.iterator()     // Catch: java.lang.Exception -> Leb java.lang.Throwable -> L101
        L9a:
            boolean r9 = r8.hasNext()     // Catch: java.lang.Exception -> Leb java.lang.Throwable -> L101
            if (r9 == 0) goto L84
            java.lang.Object r9 = r8.next()     // Catch: java.lang.Exception -> Leb java.lang.Throwable -> L101
            java.lang.String r9 = (java.lang.String) r9     // Catch: java.lang.Exception -> Leb java.lang.Throwable -> L101
            com.google.android.gms.ads.internal.gmsg.HttpClient$zza r10 = new com.google.android.gms.ads.internal.gmsg.HttpClient$zza     // Catch: java.lang.Exception -> Leb java.lang.Throwable -> L101
            java.lang.Object r11 = r7.getKey()     // Catch: java.lang.Exception -> Leb java.lang.Throwable -> L101
            java.lang.String r11 = (java.lang.String) r11     // Catch: java.lang.Exception -> Leb java.lang.Throwable -> L101
            r10.<init>(r11, r9)     // Catch: java.lang.Exception -> Leb java.lang.Throwable -> L101
            r3.add(r10)     // Catch: java.lang.Exception -> Leb java.lang.Throwable -> L101
            goto L9a
        Lb5:
            com.google.android.gms.ads.internal.gmsg.HttpClient$zzd r6 = new com.google.android.gms.ads.internal.gmsg.HttpClient$zzd     // Catch: java.lang.Exception -> Leb java.lang.Throwable -> L101
            java.lang.String r13 = r13.zzky()     // Catch: java.lang.Exception -> Leb java.lang.Throwable -> L101
            int r7 = r2.getResponseCode()     // Catch: java.lang.Exception -> Leb java.lang.Throwable -> L101
            com.google.android.gms.ads.internal.zzbt.zzel()     // Catch: java.lang.Exception -> Leb java.lang.Throwable -> L101
            java.io.InputStreamReader r8 = new java.io.InputStreamReader     // Catch: java.lang.Exception -> Leb java.lang.Throwable -> L101
            java.io.InputStream r9 = r2.getInputStream()     // Catch: java.lang.Exception -> Leb java.lang.Throwable -> L101
            r8.<init>(r9)     // Catch: java.lang.Exception -> Leb java.lang.Throwable -> L101
            java.lang.String r8 = com.google.android.gms.internal.zzaij.zza(r8)     // Catch: java.lang.Exception -> Leb java.lang.Throwable -> L101
            r6.<init>(r13, r7, r3, r8)     // Catch: java.lang.Exception -> Leb java.lang.Throwable -> L101
            int r13 = r6.getResponseCode()     // Catch: java.lang.Exception -> Leb java.lang.Throwable -> L101
            r5.zza(r2, r13)     // Catch: java.lang.Exception -> Leb java.lang.Throwable -> L101
            java.lang.String r13 = r6.getBody()     // Catch: java.lang.Exception -> Leb java.lang.Throwable -> L101
            r5.zzcw(r13)     // Catch: java.lang.Exception -> Leb java.lang.Throwable -> L101
            com.google.android.gms.ads.internal.gmsg.HttpClient$zzc r13 = new com.google.android.gms.ads.internal.gmsg.HttpClient$zzc     // Catch: java.lang.Exception -> Leb java.lang.Throwable -> L101
            r13.<init>(r12, r4, r6, r1)     // Catch: java.lang.Exception -> Leb java.lang.Throwable -> L101
            if (r2 == 0) goto Lea
            r2.disconnect()
        Lea:
            return r13
        Leb:
            r13 = move-exception
            goto Lf2
        Led:
            r13 = move-exception
            r2 = r1
            goto L102
        Lf0:
            r13 = move-exception
            r2 = r1
        Lf2:
            com.google.android.gms.ads.internal.gmsg.HttpClient$zzc r3 = new com.google.android.gms.ads.internal.gmsg.HttpClient$zzc     // Catch: java.lang.Throwable -> L101
            java.lang.String r13 = r13.toString()     // Catch: java.lang.Throwable -> L101
            r3.<init>(r12, r0, r1, r13)     // Catch: java.lang.Throwable -> L101
            if (r2 == 0) goto L100
            r2.disconnect()
        L100:
            return r3
        L101:
            r13 = move-exception
        L102:
            if (r2 == 0) goto L107
            r2.disconnect()
        L107:
            throw r13
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.ads.internal.gmsg.HttpClient.zza(com.google.android.gms.ads.internal.gmsg.HttpClient$zzb):com.google.android.gms.ads.internal.gmsg.HttpClient$zzc");
    }

    private static JSONObject zza(zzd zzdVar) {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("http_request_id", zzdVar.zzky());
            if (zzdVar.getBody() != null) {
                jSONObject.put("body", zzdVar.getBody());
            }
            JSONArray jSONArray = new JSONArray();
            for (zza zzaVar : zzdVar.zzld()) {
                jSONArray.put(new JSONObject().put("key", zzaVar.getKey()).put("value", zzaVar.getValue()));
            }
            jSONObject.put("headers", jSONArray);
            jSONObject.put("response_code", zzdVar.getResponseCode());
            return jSONObject;
        } catch (JSONException e) {
            zzahw.zzb("Error constructing JSON for http response.", e);
            return jSONObject;
        }
    }

    private static zzb zzc(JSONObject jSONObject) {
        String optString = jSONObject.optString("http_request_id");
        String optString2 = jSONObject.optString("url");
        URL url = null;
        String optString3 = jSONObject.optString("post_body", null);
        try {
            url = new URL(optString2);
        } catch (MalformedURLException e) {
            zzahw.zzb("Error constructing http request.", e);
        }
        ArrayList arrayList = new ArrayList();
        JSONArray optJSONArray = jSONObject.optJSONArray("headers");
        if (optJSONArray == null) {
            optJSONArray = new JSONArray();
        }
        for (int i = 0; i < optJSONArray.length(); i++) {
            JSONObject optJSONObject = optJSONArray.optJSONObject(i);
            if (optJSONObject != null) {
                arrayList.add(new zza(optJSONObject.optString("key"), optJSONObject.optString("value")));
            }
        }
        return new zzb(optString, url, arrayList, optString3);
    }

    @Keep
    @KeepName
    public JSONObject send(JSONObject jSONObject) {
        String str;
        JSONObject jSONObject2 = new JSONObject();
        try {
            str = jSONObject.optString("http_request_id");
            try {
                zzc zza2 = zza(zzc(jSONObject));
                if (zza2.isSuccess()) {
                    jSONObject2.put("response", zza(zza2.zzlc()));
                    jSONObject2.put("success", true);
                    return jSONObject2;
                }
                jSONObject2.put("response", new JSONObject().put("http_request_id", str));
                jSONObject2.put("success", false);
                jSONObject2.put("reason", zza2.getReason());
                return jSONObject2;
            } catch (Exception e) {
                e = e;
                zzahw.zzb("Error executing http request.", e);
                try {
                    jSONObject2.put("response", new JSONObject().put("http_request_id", str));
                    jSONObject2.put("success", false);
                    jSONObject2.put("reason", e.toString());
                    return jSONObject2;
                } catch (JSONException e2) {
                    zzahw.zzb("Error executing http request.", e2);
                    return jSONObject2;
                }
            }
        } catch (Exception e3) {
            e = e3;
            str = "";
        }
    }

    @Override // com.google.android.gms.ads.internal.gmsg.zzt
    public final /* synthetic */ void zza(com.google.android.gms.ads.internal.js.zza zzaVar, Map map) {
        zzaid.zzb(new zzu(this, map, zzaVar));
    }
}
