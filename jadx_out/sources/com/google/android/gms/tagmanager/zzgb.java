package com.google.android.gms.tagmanager;

import com.google.android.gms.tagmanager.DataLayer;
import java.util.Map;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzgb implements DataLayer.zzb {
    private /* synthetic */ TagManager zzkud;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzgb(TagManager tagManager) {
        this.zzkud = tagManager;
    }

    @Override // com.google.android.gms.tagmanager.DataLayer.zzb
    public final void zzy(Map<String, Object> map) {
        Object obj = map.get("event");
        if (obj != null) {
            this.zzkud.zzme(obj.toString());
        }
    }
}
