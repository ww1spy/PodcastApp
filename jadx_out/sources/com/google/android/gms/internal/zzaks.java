package com.google.android.gms.internal;

import android.content.Context;
import android.os.Build;
import android.provider.Settings;
import android.support.annotation.GuardedBy;
import android.support.annotation.Nullable;
import android.util.JsonWriter;
import com.google.android.gms.common.internal.Hide;
import java.io.IOException;
import java.io.StringWriter;
import java.net.HttpURLConnection;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.UUID;

@Hide
@zzabh
/* loaded from: classes.dex */
public final class zzaks {

    @GuardedBy("sLock")
    private static boolean zzdip = false;

    @GuardedBy("sLock")
    private static boolean zzdiq = false;
    private final List<String> zzdit;
    private static Object sLock = new Object();
    private static com.google.android.gms.common.util.zze zzdir = com.google.android.gms.common.util.zzi.zzanq();
    private static final Set<String> zzdis = new HashSet(Arrays.asList(new String[0]));

    public zzaks() {
        this(null);
    }

    public zzaks(@Nullable String str) {
        List<String> asList;
        if (isEnabled()) {
            String uuid = UUID.randomUUID().toString();
            if (str == null) {
                String[] strArr = new String[1];
                String valueOf = String.valueOf(uuid);
                strArr[0] = valueOf.length() != 0 ? "network_request_".concat(valueOf) : new String("network_request_");
                asList = Arrays.asList(strArr);
            } else {
                String[] strArr2 = new String[2];
                String valueOf2 = String.valueOf(str);
                strArr2[0] = valueOf2.length() != 0 ? "ad_request_".concat(valueOf2) : new String("ad_request_");
                String valueOf3 = String.valueOf(uuid);
                strArr2[1] = valueOf3.length() != 0 ? "network_request_".concat(valueOf3) : new String("network_request_");
                asList = Arrays.asList(strArr2);
            }
        } else {
            asList = new ArrayList<>();
        }
        this.zzdit = asList;
    }

    public static boolean isEnabled() {
        boolean z;
        synchronized (sLock) {
            z = zzdip && zzdiq;
        }
        return z;
    }

    private static synchronized void log(String str) {
        synchronized (zzaks.class) {
            zzaky.zzcy("GMA Debug BEGIN");
            int i = 0;
            while (i < str.length()) {
                int i2 = i + 4000;
                String valueOf = String.valueOf(str.substring(i, Math.min(i2, str.length())));
                zzaky.zzcy(valueOf.length() != 0 ? "GMA Debug CONTENT ".concat(valueOf) : new String("GMA Debug CONTENT "));
                i = i2;
            }
            zzaky.zzcy("GMA Debug FINISH");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static final /* synthetic */ void zza(int i, Map map, JsonWriter jsonWriter) throws IOException {
        jsonWriter.name("params").beginObject();
        jsonWriter.name("firstline").beginObject();
        jsonWriter.name("code").value(i);
        jsonWriter.endObject();
        zza(jsonWriter, (Map<String, ?>) map);
        jsonWriter.endObject();
    }

    private static void zza(JsonWriter jsonWriter, @Nullable Map<String, ?> map) throws IOException {
        if (map == null) {
            return;
        }
        jsonWriter.name("headers").beginArray();
        Iterator<Map.Entry<String, ?>> it = map.entrySet().iterator();
        while (true) {
            if (!it.hasNext()) {
                break;
            }
            Map.Entry<String, ?> next = it.next();
            String key = next.getKey();
            if (!zzdis.contains(key)) {
                if (!(next.getValue() instanceof List)) {
                    if (!(next.getValue() instanceof String)) {
                        zzaky.e("Connection headers should be either Map<String, String> or Map<String, List<String>>");
                        break;
                    }
                    jsonWriter.beginObject();
                    jsonWriter.name("name").value(key);
                    jsonWriter.name("value").value((String) next.getValue());
                    jsonWriter.endObject();
                } else {
                    for (String str : (List) next.getValue()) {
                        jsonWriter.beginObject();
                        jsonWriter.name("name").value(key);
                        jsonWriter.name("value").value(str);
                        jsonWriter.endObject();
                    }
                }
            }
        }
        jsonWriter.endArray();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static final /* synthetic */ void zza(String str, JsonWriter jsonWriter) throws IOException {
        jsonWriter.name("params").beginObject();
        if (str != null) {
            jsonWriter.name("error_description").value(str);
        }
        jsonWriter.endObject();
    }

    private final void zza(String str, zzakx zzakxVar) {
        StringWriter stringWriter = new StringWriter();
        JsonWriter jsonWriter = new JsonWriter(stringWriter);
        try {
            jsonWriter.beginObject();
            jsonWriter.name("timestamp").value(zzdir.currentTimeMillis());
            jsonWriter.name("event").value(str);
            jsonWriter.name("components").beginArray();
            Iterator<String> it = this.zzdit.iterator();
            while (it.hasNext()) {
                jsonWriter.value(it.next());
            }
            jsonWriter.endArray();
            zzakxVar.zza(jsonWriter);
            jsonWriter.endObject();
            jsonWriter.flush();
            jsonWriter.close();
        } catch (IOException e) {
            zzaky.zzb("unable to log", e);
        }
        log(stringWriter.toString());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static final /* synthetic */ void zza(String str, String str2, Map map, byte[] bArr, JsonWriter jsonWriter) throws IOException {
        jsonWriter.name("params").beginObject();
        jsonWriter.name("firstline").beginObject();
        jsonWriter.name("uri").value(str);
        jsonWriter.name("verb").value(str2);
        jsonWriter.endObject();
        zza(jsonWriter, (Map<String, ?>) map);
        if (bArr != null) {
            jsonWriter.name("body").value(com.google.android.gms.common.util.zzc.zzj(bArr));
        }
        jsonWriter.endObject();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static final /* synthetic */ void zza(byte[] bArr, JsonWriter jsonWriter) throws IOException {
        String str;
        jsonWriter.name("params").beginObject();
        int length = bArr.length;
        String zzj = com.google.android.gms.common.util.zzc.zzj(bArr);
        if (length >= 10000) {
            zzj = zzako.zzcu(zzj);
            str = zzj != null ? "bodydigest" : "body";
            jsonWriter.name("bodylength").value(length);
            jsonWriter.endObject();
        }
        jsonWriter.name(str).value(zzj);
        jsonWriter.name("bodylength").value(length);
        jsonWriter.endObject();
    }

    public static void zzae(boolean z) {
        synchronized (sLock) {
            zzdip = true;
            zzdiq = z;
        }
    }

    private final void zzb(final String str, final String str2, @Nullable final Map<String, ?> map, @Nullable final byte[] bArr) {
        zza("onNetworkRequest", new zzakx(str, str2, map, bArr) { // from class: com.google.android.gms.internal.zzakt
            private final String zzaqy;
            private final String zzdiu;
            private final Map zzdiv;
            private final byte[] zzdiw;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.zzdiu = str;
                this.zzaqy = str2;
                this.zzdiv = map;
                this.zzdiw = bArr;
            }

            @Override // com.google.android.gms.internal.zzakx
            public final void zza(JsonWriter jsonWriter) {
                zzaks.zza(this.zzdiu, this.zzaqy, this.zzdiv, this.zzdiw, jsonWriter);
            }
        });
    }

    private final void zzb(@Nullable final Map<String, ?> map, final int i) {
        zza("onNetworkResponse", new zzakx(i, map) { // from class: com.google.android.gms.internal.zzaku
            private final Map zzbzh;
            private final int zzdix;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.zzdix = i;
                this.zzbzh = map;
            }

            @Override // com.google.android.gms.internal.zzakx
            public final void zza(JsonWriter jsonWriter) {
                zzaks.zza(this.zzdix, this.zzbzh, jsonWriter);
            }
        });
    }

    public static boolean zzbi(Context context) {
        if (Build.VERSION.SDK_INT < 17) {
            return false;
        }
        return ((Boolean) zzlc.zzio().zzd(zzoi.zzbqf)).booleanValue() && Settings.Global.getInt(context.getContentResolver(), "development_settings_enabled", 0) != 0;
    }

    private final void zzcx(@Nullable final String str) {
        zza("onNetworkRequestError", new zzakx(str) { // from class: com.google.android.gms.internal.zzakw
            private final String zzdiu;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.zzdiu = str;
            }

            @Override // com.google.android.gms.internal.zzakx
            public final void zza(JsonWriter jsonWriter) {
                zzaks.zza(this.zzdiu, jsonWriter);
            }
        });
    }

    public static void zzsc() {
        synchronized (sLock) {
            zzdip = false;
            zzdiq = false;
            zzaky.zzcz("Ad debug logging enablement is out of date.");
        }
    }

    public static boolean zzsd() {
        boolean z;
        synchronized (sLock) {
            z = zzdip;
        }
        return z;
    }

    public final void zza(String str, String str2, @Nullable Map<String, ?> map, @Nullable byte[] bArr) {
        if (isEnabled()) {
            zzb(str, str2, map, bArr);
        }
    }

    public final void zza(HttpURLConnection httpURLConnection, int i) {
        String str;
        if (isEnabled()) {
            zzb(httpURLConnection.getHeaderFields() == null ? null : new HashMap(httpURLConnection.getHeaderFields()), i);
            if (i < 200 || i >= 300) {
                try {
                    str = httpURLConnection.getResponseMessage();
                } catch (IOException e) {
                    String valueOf = String.valueOf(e.getMessage());
                    zzaky.zzcz(valueOf.length() != 0 ? "Can not get error message from error HttpURLConnection\n".concat(valueOf) : new String("Can not get error message from error HttpURLConnection\n"));
                    str = null;
                }
                zzcx(str);
            }
        }
    }

    public final void zza(HttpURLConnection httpURLConnection, @Nullable byte[] bArr) {
        if (isEnabled()) {
            zzb(new String(httpURLConnection.getURL().toString()), new String(httpURLConnection.getRequestMethod()), httpURLConnection.getRequestProperties() == null ? null : new HashMap(httpURLConnection.getRequestProperties()), bArr);
        }
    }

    public final void zza(@Nullable Map<String, ?> map, int i) {
        if (isEnabled()) {
            zzb(map, i);
            if (i < 200 || i >= 300) {
                zzcx(null);
            }
        }
    }

    public final void zzcw(@Nullable String str) {
        if (isEnabled() && str != null) {
            zzf(str.getBytes());
        }
    }

    public final void zzf(final byte[] bArr) {
        zza("onNetworkResponseBody", new zzakx(bArr) { // from class: com.google.android.gms.internal.zzakv
            private final byte[] zzdiy;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.zzdiy = bArr;
            }

            @Override // com.google.android.gms.internal.zzakx
            public final void zza(JsonWriter jsonWriter) {
                zzaks.zza(this.zzdiy, jsonWriter);
            }
        });
    }
}
