package com.google.android.gms.internal;

import android.content.Context;
import android.graphics.Color;
import android.net.Uri;
import android.os.RemoteException;
import android.text.TextUtils;
import com.google.android.gms.common.internal.Hide;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.Callable;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import java.util.concurrent.atomic.AtomicInteger;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

@Hide
@zzabh
/* loaded from: classes.dex */
public final class zzzy implements Callable<zzahd> {
    private static long zzcow = 10;
    private final Context mContext;
    private final zzov zzanh;
    private final zzaan zzarm;
    private final zzcv zzbyz;
    private final zzahe zzcob;
    private final zzajr zzcox;
    private final com.google.android.gms.ads.internal.zzbb zzcoy;
    private JSONObject zzcpb;
    private final Object mLock = new Object();
    private boolean zzcoz = false;
    private int mErrorCode = -2;
    private List<String> zzcpa = null;
    private String zzcpc = null;

    public zzzy(Context context, com.google.android.gms.ads.internal.zzbb zzbbVar, zzajr zzajrVar, zzcv zzcvVar, zzahe zzaheVar, zzov zzovVar) {
        this.mContext = context;
        this.zzcoy = zzbbVar;
        this.zzcox = zzajrVar;
        this.zzcob = zzaheVar;
        this.zzbyz = zzcvVar;
        this.zzanh = zzovVar;
        this.zzarm = zzbbVar.zzds();
    }

    private final zzalt<zzpj> zza(JSONObject jSONObject, boolean z, boolean z2) throws JSONException {
        String string = z ? jSONObject.getString("url") : jSONObject.optString("url");
        double optDouble = jSONObject.optDouble("scale", 1.0d);
        boolean optBoolean = jSONObject.optBoolean("is_transparent", true);
        if (!TextUtils.isEmpty(string)) {
            return z2 ? zzali.zzh(new zzpj(null, Uri.parse(string), optDouble)) : this.zzcox.zza(string, new zzaac(this, z, optDouble, optBoolean, string));
        }
        zzd(0, z);
        return zzali.zzh(null);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static zzaof zzb(zzalt<zzaof> zzaltVar) {
        try {
            return zzaltVar.get(((Integer) zzlc.zzio().zzd(zzoi.zzbsq)).intValue(), TimeUnit.SECONDS);
        } catch (InterruptedException e) {
            zzahw.zzc("InterruptedException occurred while waiting for video to load", e);
            Thread.currentThread().interrupt();
            return null;
        } catch (CancellationException | ExecutionException | TimeoutException e2) {
            zzahw.zzc("Exception occurred while waiting for video to load", e2);
            return null;
        }
    }

    private static Integer zzb(JSONObject jSONObject, String str) {
        try {
            JSONObject jSONObject2 = jSONObject.getJSONObject(str);
            return Integer.valueOf(Color.rgb(jSONObject2.getInt("r"), jSONObject2.getInt("g"), jSONObject2.getInt("b")));
        } catch (JSONException unused) {
            return null;
        }
    }

    private final zzahd zzc(zzpx zzpxVar) {
        int i;
        synchronized (this.mLock) {
            int i2 = this.mErrorCode;
            if (zzpxVar == null && this.mErrorCode == -2) {
                i2 = 0;
            }
            i = i2;
        }
        return new zzahd(this.zzcob.zzcvm.zzcrv, null, this.zzcob.zzdcw.zzchw, i, this.zzcob.zzdcw.zzchx, this.zzcpa, this.zzcob.zzdcw.orientation, this.zzcob.zzdcw.zzcic, this.zzcob.zzcvm.zzcry, false, null, null, null, null, null, 0L, this.zzcob.zzaud, this.zzcob.zzdcw.zzctn, this.zzcob.zzdcn, this.zzcob.zzdco, this.zzcob.zzdcw.zzctt, this.zzcpb, i != -2 ? null : zzpxVar, null, null, null, this.zzcob.zzdcw.zzcuf, this.zzcob.zzdcw.zzcug, null, this.zzcob.zzdcw.zzchz, this.zzcpc, this.zzcob.zzdcu, this.zzcob.zzdcw.zzaqw, this.zzcob.zzdcv);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void zzc(zzro zzroVar, String str) {
        try {
            zzry zzs = this.zzcoy.zzs(zzroVar.getCustomTemplateId());
            if (zzs != null) {
                zzs.zzb(zzroVar, str);
            }
        } catch (RemoteException e) {
            StringBuilder sb = new StringBuilder(40 + String.valueOf(str).length());
            sb.append("Failed to call onCustomClick for asset ");
            sb.append(str);
            sb.append(".");
            zzahw.zzc(sb.toString(), e);
        }
    }

    private static String[] zzd(JSONObject jSONObject, String str) throws JSONException {
        JSONArray optJSONArray = jSONObject.optJSONArray(str);
        if (optJSONArray == null) {
            return null;
        }
        String[] strArr = new String[optJSONArray.length()];
        for (int i = 0; i < optJSONArray.length(); i++) {
            strArr[i] = optJSONArray.getString(i);
        }
        return strArr;
    }

    private static <V> zzalt<List<V>> zzl(List<zzalt<V>> list) {
        zzamd zzamdVar = new zzamd();
        int size = list.size();
        AtomicInteger atomicInteger = new AtomicInteger(0);
        Iterator<zzalt<V>> it = list.iterator();
        while (it.hasNext()) {
            it.next().zza(new zzaad(atomicInteger, size, zzamdVar, list), zzaid.zzdfi);
        }
        return zzamdVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static <V> List<V> zzm(List<zzalt<V>> list) throws ExecutionException, InterruptedException {
        ArrayList arrayList = new ArrayList();
        Iterator<zzalt<V>> it = list.iterator();
        while (it.hasNext()) {
            V v = it.next().get();
            if (v != null) {
                arrayList.add(v);
            }
        }
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code restructure failed: missing block: B:12:0x0048, code lost:
    
        if (r3.length() != 0) goto L15;
     */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0091 A[Catch: Exception -> 0x0191, TimeoutException -> 0x0195, JSONException -> 0x0199, InterruptedException | CancellationException | ExecutionException -> 0x019f, TryCatch #2 {InterruptedException | CancellationException | ExecutionException -> 0x019f, TimeoutException -> 0x0195, JSONException -> 0x0199, Exception -> 0x0191, blocks: (B:3:0x0002, B:5:0x000e, B:7:0x0034, B:9:0x003c, B:11:0x0044, B:13:0x004e, B:15:0x0066, B:16:0x0079, B:20:0x0083, B:22:0x0091, B:23:0x009b, B:25:0x00a3, B:26:0x00ad, B:28:0x00b5, B:29:0x0123, B:34:0x012e, B:37:0x0142, B:38:0x0172, B:40:0x0176, B:41:0x018c, B:45:0x013e, B:47:0x00bf, B:49:0x00c7, B:50:0x00d1, B:52:0x00d9, B:54:0x00f8, B:55:0x00fe, B:57:0x0110, B:58:0x011b, B:59:0x0115, B:60:0x011f, B:65:0x004a), top: B:2:0x0002 }] */
    /* JADX WARN: Removed duplicated region for block: B:25:0x00a3 A[Catch: Exception -> 0x0191, TimeoutException -> 0x0195, JSONException -> 0x0199, InterruptedException | CancellationException | ExecutionException -> 0x019f, TryCatch #2 {InterruptedException | CancellationException | ExecutionException -> 0x019f, TimeoutException -> 0x0195, JSONException -> 0x0199, Exception -> 0x0191, blocks: (B:3:0x0002, B:5:0x000e, B:7:0x0034, B:9:0x003c, B:11:0x0044, B:13:0x004e, B:15:0x0066, B:16:0x0079, B:20:0x0083, B:22:0x0091, B:23:0x009b, B:25:0x00a3, B:26:0x00ad, B:28:0x00b5, B:29:0x0123, B:34:0x012e, B:37:0x0142, B:38:0x0172, B:40:0x0176, B:41:0x018c, B:45:0x013e, B:47:0x00bf, B:49:0x00c7, B:50:0x00d1, B:52:0x00d9, B:54:0x00f8, B:55:0x00fe, B:57:0x0110, B:58:0x011b, B:59:0x0115, B:60:0x011f, B:65:0x004a), top: B:2:0x0002 }] */
    /* JADX WARN: Removed duplicated region for block: B:28:0x00b5 A[Catch: Exception -> 0x0191, TimeoutException -> 0x0195, JSONException -> 0x0199, InterruptedException | CancellationException | ExecutionException -> 0x019f, TryCatch #2 {InterruptedException | CancellationException | ExecutionException -> 0x019f, TimeoutException -> 0x0195, JSONException -> 0x0199, Exception -> 0x0191, blocks: (B:3:0x0002, B:5:0x000e, B:7:0x0034, B:9:0x003c, B:11:0x0044, B:13:0x004e, B:15:0x0066, B:16:0x0079, B:20:0x0083, B:22:0x0091, B:23:0x009b, B:25:0x00a3, B:26:0x00ad, B:28:0x00b5, B:29:0x0123, B:34:0x012e, B:37:0x0142, B:38:0x0172, B:40:0x0176, B:41:0x018c, B:45:0x013e, B:47:0x00bf, B:49:0x00c7, B:50:0x00d1, B:52:0x00d9, B:54:0x00f8, B:55:0x00fe, B:57:0x0110, B:58:0x011b, B:59:0x0115, B:60:0x011f, B:65:0x004a), top: B:2:0x0002 }] */
    /* JADX WARN: Removed duplicated region for block: B:31:0x0129 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:36:0x013c  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x0176 A[Catch: Exception -> 0x0191, TimeoutException -> 0x0195, JSONException -> 0x0199, InterruptedException | CancellationException | ExecutionException -> 0x019f, TryCatch #2 {InterruptedException | CancellationException | ExecutionException -> 0x019f, TimeoutException -> 0x0195, JSONException -> 0x0199, Exception -> 0x0191, blocks: (B:3:0x0002, B:5:0x000e, B:7:0x0034, B:9:0x003c, B:11:0x0044, B:13:0x004e, B:15:0x0066, B:16:0x0079, B:20:0x0083, B:22:0x0091, B:23:0x009b, B:25:0x00a3, B:26:0x00ad, B:28:0x00b5, B:29:0x0123, B:34:0x012e, B:37:0x0142, B:38:0x0172, B:40:0x0176, B:41:0x018c, B:45:0x013e, B:47:0x00bf, B:49:0x00c7, B:50:0x00d1, B:52:0x00d9, B:54:0x00f8, B:55:0x00fe, B:57:0x0110, B:58:0x011b, B:59:0x0115, B:60:0x011f, B:65:0x004a), top: B:2:0x0002 }] */
    /* JADX WARN: Removed duplicated region for block: B:45:0x013e A[Catch: Exception -> 0x0191, TimeoutException -> 0x0195, JSONException -> 0x0199, InterruptedException | CancellationException | ExecutionException -> 0x019f, TryCatch #2 {InterruptedException | CancellationException | ExecutionException -> 0x019f, TimeoutException -> 0x0195, JSONException -> 0x0199, Exception -> 0x0191, blocks: (B:3:0x0002, B:5:0x000e, B:7:0x0034, B:9:0x003c, B:11:0x0044, B:13:0x004e, B:15:0x0066, B:16:0x0079, B:20:0x0083, B:22:0x0091, B:23:0x009b, B:25:0x00a3, B:26:0x00ad, B:28:0x00b5, B:29:0x0123, B:34:0x012e, B:37:0x0142, B:38:0x0172, B:40:0x0176, B:41:0x018c, B:45:0x013e, B:47:0x00bf, B:49:0x00c7, B:50:0x00d1, B:52:0x00d9, B:54:0x00f8, B:55:0x00fe, B:57:0x0110, B:58:0x011b, B:59:0x0115, B:60:0x011f, B:65:0x004a), top: B:2:0x0002 }] */
    /* JADX WARN: Removed duplicated region for block: B:47:0x00bf A[Catch: Exception -> 0x0191, TimeoutException -> 0x0195, JSONException -> 0x0199, InterruptedException | CancellationException | ExecutionException -> 0x019f, TryCatch #2 {InterruptedException | CancellationException | ExecutionException -> 0x019f, TimeoutException -> 0x0195, JSONException -> 0x0199, Exception -> 0x0191, blocks: (B:3:0x0002, B:5:0x000e, B:7:0x0034, B:9:0x003c, B:11:0x0044, B:13:0x004e, B:15:0x0066, B:16:0x0079, B:20:0x0083, B:22:0x0091, B:23:0x009b, B:25:0x00a3, B:26:0x00ad, B:28:0x00b5, B:29:0x0123, B:34:0x012e, B:37:0x0142, B:38:0x0172, B:40:0x0176, B:41:0x018c, B:45:0x013e, B:47:0x00bf, B:49:0x00c7, B:50:0x00d1, B:52:0x00d9, B:54:0x00f8, B:55:0x00fe, B:57:0x0110, B:58:0x011b, B:59:0x0115, B:60:0x011f, B:65:0x004a), top: B:2:0x0002 }] */
    /* JADX WARN: Removed duplicated region for block: B:61:0x00ac  */
    /* JADX WARN: Removed duplicated region for block: B:62:0x009a  */
    /* JADX WARN: Removed duplicated region for block: B:70:0x01a3  */
    @Override // java.util.concurrent.Callable
    /* renamed from: zznv, reason: merged with bridge method [inline-methods] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final com.google.android.gms.internal.zzahd call() {
        /*
            Method dump skipped, instructions count: 427
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.zzzy.call():com.google.android.gms.internal.zzahd");
    }

    private final boolean zznw() {
        boolean z;
        synchronized (this.mLock) {
            z = this.zzcoz;
        }
        return z;
    }

    private final void zzz(int i) {
        synchronized (this.mLock) {
            this.zzcoz = true;
            this.mErrorCode = i;
        }
    }

    public final zzalt<zzpj> zza(JSONObject jSONObject, String str, boolean z, boolean z2) throws JSONException {
        JSONObject jSONObject2 = z ? jSONObject.getJSONObject(str) : jSONObject.optJSONObject(str);
        if (jSONObject2 == null) {
            jSONObject2 = new JSONObject();
        }
        return zza(jSONObject2, z, z2);
    }

    public final List<zzalt<zzpj>> zza(JSONObject jSONObject, String str, boolean z, boolean z2, boolean z3) throws JSONException {
        JSONArray optJSONArray = jSONObject.optJSONArray(str);
        ArrayList arrayList = new ArrayList();
        if (optJSONArray == null || optJSONArray.length() == 0) {
            zzd(0, false);
            return arrayList;
        }
        int length = z3 ? optJSONArray.length() : 1;
        for (int i = 0; i < length; i++) {
            JSONObject jSONObject2 = optJSONArray.getJSONObject(i);
            if (jSONObject2 == null) {
                jSONObject2 = new JSONObject();
            }
            arrayList.add(zza(jSONObject2, false, z2));
        }
        return arrayList;
    }

    public final Future<zzpj> zza(JSONObject jSONObject, String str, boolean z) throws JSONException {
        JSONObject jSONObject2 = jSONObject.getJSONObject(str);
        boolean optBoolean = jSONObject2.optBoolean("require", true);
        if (jSONObject2 == null) {
            jSONObject2 = new JSONObject();
        }
        return zza(jSONObject2, optBoolean, z);
    }

    public final zzalt<zzaof> zzc(JSONObject jSONObject, String str) throws JSONException {
        final JSONObject optJSONObject = jSONObject.optJSONObject(str);
        if (optJSONObject == null) {
            return zzali.zzh(null);
        }
        if (TextUtils.isEmpty(optJSONObject.optString("vast_xml"))) {
            zzahw.zzcz("Required field 'vast_xml' is missing");
            return zzali.zzh(null);
        }
        final zzaaf zzaafVar = new zzaaf(this.mContext, this.zzbyz, this.zzcob, this.zzanh, this.zzcoy);
        final zzamd zzamdVar = new zzamd();
        zzaly.zzdjt.execute(new Runnable(zzaafVar, optJSONObject, zzamdVar) { // from class: com.google.android.gms.internal.zzaag
            private final zzamd zzcdi;
            private final zzaaf zzcpz;
            private final JSONObject zzcqa;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.zzcpz = zzaafVar;
                this.zzcqa = optJSONObject;
                this.zzcdi = zzamdVar;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.zzcpz.zza(this.zzcqa, this.zzcdi);
            }
        });
        return zzamdVar;
    }

    public final void zzd(int i, boolean z) {
        if (z) {
            zzz(i);
        }
    }

    public final zzalt<zzph> zzg(JSONObject jSONObject) throws JSONException {
        JSONObject optJSONObject = jSONObject.optJSONObject("attribution");
        if (optJSONObject == null) {
            return zzali.zzh(null);
        }
        String optString = optJSONObject.optString("text");
        int optInt = optJSONObject.optInt("text_size", -1);
        Integer zzb = zzb(optJSONObject, "text_color");
        Integer zzb2 = zzb(optJSONObject, "bg_color");
        int optInt2 = optJSONObject.optInt("animation_ms", 1000);
        int optInt3 = optJSONObject.optInt("presentation_ms", 4000);
        int i = (this.zzcob.zzcvm.zzauq == null || this.zzcob.zzcvm.zzauq.versionCode < 2) ? 1 : this.zzcob.zzcvm.zzauq.zzbzm;
        boolean optBoolean = optJSONObject.optBoolean("allow_pub_rendering");
        List<zzalt<zzpj>> arrayList = new ArrayList<>();
        if (optJSONObject.optJSONArray("images") != null) {
            arrayList = zza(optJSONObject, "images", false, false, true);
        } else {
            arrayList.add(zza(optJSONObject, "image", false, false));
        }
        return zzali.zza(zzl(arrayList), new zzaab(this, optString, zzb2, zzb, optInt, optInt3, optInt2, i, optBoolean), zzaid.zzdfi);
    }
}
