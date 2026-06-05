package com.google.android.gms.internal;

import android.content.SharedPreferences;
import com.google.android.gms.common.internal.Hide;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import org.json.JSONObject;

@Hide
@zzabh
/* loaded from: classes.dex */
public final class zzoe {
    private final Collection<zzny<?>> zzbkt = new ArrayList();
    private final Collection<zzny<String>> zzbku = new ArrayList();
    private final Collection<zzny<String>> zzbkv = new ArrayList();

    public final void zza(SharedPreferences.Editor editor, int i, JSONObject jSONObject) {
        for (zzny<?> zznyVar : this.zzbkt) {
            if (zznyVar.getSource() == 1) {
                zznyVar.zza(editor, (SharedPreferences.Editor) zznyVar.zzb(jSONObject));
            }
        }
    }

    public final void zza(zzny zznyVar) {
        this.zzbkt.add(zznyVar);
    }

    public final void zzb(zzny<String> zznyVar) {
        this.zzbku.add(zznyVar);
    }

    public final void zzc(zzny<String> zznyVar) {
        this.zzbkv.add(zznyVar);
    }

    public final List<String> zzjf() {
        ArrayList arrayList = new ArrayList();
        Iterator<zzny<String>> it = this.zzbku.iterator();
        while (it.hasNext()) {
            String str = (String) zzlc.zzio().zzd(it.next());
            if (str != null) {
                arrayList.add(str);
            }
        }
        return arrayList;
    }

    public final List<String> zzjg() {
        List<String> zzjf = zzjf();
        Iterator<zzny<String>> it = this.zzbkv.iterator();
        while (it.hasNext()) {
            String str = (String) zzlc.zzio().zzd(it.next());
            if (str != null) {
                zzjf.add(str);
            }
        }
        return zzjf;
    }
}
