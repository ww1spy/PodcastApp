package com.google.android.gms.internal;

import java.lang.reflect.InvocationTargetException;
import java.util.List;

/* loaded from: classes.dex */
public final class zzek extends zzeu {
    private List<Long> zzakp;

    public zzek(zzdm zzdmVar, String str, String str2, zzba zzbaVar, int i, int i2) {
        super(zzdmVar, str, str2, zzbaVar, i, 31);
        this.zzakp = null;
    }

    @Override // com.google.android.gms.internal.zzeu
    protected final void zzaw() throws IllegalAccessException, InvocationTargetException {
        this.zzakm.zzdw = -1L;
        this.zzakm.zzdx = -1L;
        if (this.zzakp == null) {
            this.zzakp = (List) this.zzaku.invoke(null, this.zzagq.getContext());
        }
        if (this.zzakp == null || this.zzakp.size() != 2) {
            return;
        }
        synchronized (this.zzakm) {
            this.zzakm.zzdw = Long.valueOf(this.zzakp.get(0).longValue());
            this.zzakm.zzdx = Long.valueOf(this.zzakp.get(1).longValue());
        }
    }
}
