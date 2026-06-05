package com.google.android.gms.ads.internal.js;

import com.google.android.gms.common.internal.Hide;
import com.google.android.gms.internal.zzabh;
import com.google.android.gms.internal.zzahw;
import java.util.AbstractMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import org.json.JSONObject;

@Hide
@zzabh
/* loaded from: classes.dex */
public final class zzal implements zzak {
    private final zzaj zzcgj;
    private final HashSet<AbstractMap.SimpleEntry<String, com.google.android.gms.ads.internal.gmsg.zzt<? super zzaj>>> zzcgk = new HashSet<>();

    public zzal(zzaj zzajVar) {
        this.zzcgj = zzajVar;
    }

    @Override // com.google.android.gms.ads.internal.js.zzaj
    public final void zza(String str, com.google.android.gms.ads.internal.gmsg.zzt<? super zzaj> zztVar) {
        this.zzcgj.zza(str, zztVar);
        this.zzcgk.add(new AbstractMap.SimpleEntry<>(str, zztVar));
    }

    @Override // com.google.android.gms.ads.internal.js.zza
    public final void zza(String str, Map<String, ?> map) {
        this.zzcgj.zza(str, map);
    }

    @Override // com.google.android.gms.ads.internal.js.zza
    public final void zza(String str, JSONObject jSONObject) {
        this.zzcgj.zza(str, jSONObject);
    }

    @Override // com.google.android.gms.ads.internal.js.zzaj
    public final void zzb(String str, com.google.android.gms.ads.internal.gmsg.zzt<? super zzaj> zztVar) {
        this.zzcgj.zzb(str, zztVar);
        this.zzcgk.remove(new AbstractMap.SimpleEntry(str, zztVar));
    }

    @Override // com.google.android.gms.ads.internal.js.zzm
    public final void zzb(String str, JSONObject jSONObject) {
        this.zzcgj.zzb(str, jSONObject);
    }

    @Override // com.google.android.gms.ads.internal.js.zzak
    public final void zzme() {
        Iterator<AbstractMap.SimpleEntry<String, com.google.android.gms.ads.internal.gmsg.zzt<? super zzaj>>> it = this.zzcgk.iterator();
        while (it.hasNext()) {
            AbstractMap.SimpleEntry<String, com.google.android.gms.ads.internal.gmsg.zzt<? super zzaj>> next = it.next();
            String valueOf = String.valueOf(next.getValue().toString());
            zzahw.v(valueOf.length() != 0 ? "Unregistering eventhandler: ".concat(valueOf) : new String("Unregistering eventhandler: "));
            this.zzcgj.zzb(next.getKey(), next.getValue());
        }
        this.zzcgk.clear();
    }
}
