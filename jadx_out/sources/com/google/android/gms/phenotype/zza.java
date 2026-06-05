package com.google.android.gms.phenotype;

import android.content.ContentResolver;
import android.database.ContentObserver;
import android.database.Cursor;
import android.net.Uri;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

/* loaded from: classes.dex */
public final class zza {
    private final Uri uri;
    private final ContentResolver zzkfu;
    private volatile Map<String, String> zzkfx;
    private static final ConcurrentHashMap<Uri, zza> zzkft = new ConcurrentHashMap<>();
    private static String[] zzids = {"key", "value"};
    private final Object zzkfw = new Object();
    private final ContentObserver zzkfv = new zzb(this, null);

    private zza(ContentResolver contentResolver, Uri uri) {
        this.zzkfu = contentResolver;
        this.uri = uri;
    }

    public static zza zza(ContentResolver contentResolver, Uri uri) {
        zza zzaVar = zzkft.get(uri);
        if (zzaVar != null) {
            return zzaVar;
        }
        zza zzaVar2 = new zza(contentResolver, uri);
        zza putIfAbsent = zzkft.putIfAbsent(uri, zzaVar2);
        if (putIfAbsent != null) {
            return putIfAbsent;
        }
        zzaVar2.zzkfu.registerContentObserver(zzaVar2.uri, false, zzaVar2.zzkfv);
        return zzaVar2;
    }

    private final Map<String, String> zzbeg() {
        HashMap hashMap = new HashMap();
        Cursor query = this.zzkfu.query(this.uri, zzids, null, null, null);
        if (query == null) {
            return hashMap;
        }
        while (query.moveToNext()) {
            try {
                hashMap.put(query.getString(0), query.getString(1));
            } finally {
                query.close();
            }
        }
        return hashMap;
    }

    public final Map<String, String> zzbee() {
        Map<String, String> map;
        Map<String, String> zzbeg = PhenotypeFlag.zzh("gms:phenotype:phenotype_flag:debug_disable_caching", false) ? zzbeg() : this.zzkfx;
        if (zzbeg != null) {
            return zzbeg;
        }
        synchronized (this.zzkfw) {
            map = this.zzkfx;
            if (map == null) {
                map = zzbeg();
                this.zzkfx = map;
            }
        }
        return map;
    }

    public final void zzbef() {
        synchronized (this.zzkfw) {
            this.zzkfx = null;
        }
    }
}
