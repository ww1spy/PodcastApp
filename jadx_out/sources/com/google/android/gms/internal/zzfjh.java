package com.google.android.gms.internal;

import java.util.Iterator;
import java.util.Map;

/* loaded from: classes.dex */
final class zzfjh<T> implements zzfjv<T> {
    private final zzfjc zzprg;
    private final zzfkn<?, ?> zzprh;
    private final boolean zzpri;
    private final zzfhn<?> zzprj;

    private zzfjh(Class<T> cls, zzfkn<?, ?> zzfknVar, zzfhn<?> zzfhnVar, zzfjc zzfjcVar) {
        this.zzprh = zzfknVar;
        this.zzpri = zzfhnVar.zzh(cls);
        this.zzprj = zzfhnVar;
        this.zzprg = zzfjcVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <T> zzfjh<T> zza(Class<T> cls, zzfkn<?, ?> zzfknVar, zzfhn<?> zzfhnVar, zzfjc zzfjcVar) {
        return new zzfjh<>(cls, zzfknVar, zzfhnVar, zzfjcVar);
    }

    @Override // com.google.android.gms.internal.zzfjv
    public final void zza(T t, zzfli zzfliVar) {
        int zzhu;
        Object value;
        Iterator<Map.Entry<?, Object>> it = this.zzprj.zzcr(t).iterator();
        while (it.hasNext()) {
            Map.Entry<?, Object> next = it.next();
            zzfhs zzfhsVar = (zzfhs) next.getKey();
            if (zzfhsVar.zzczm() != zzfld.MESSAGE || zzfhsVar.zzczn() || zzfhsVar.zzczo()) {
                throw new IllegalStateException("Found invalid MessageSet item.");
            }
            if (next instanceof zzfii) {
                zzhu = zzfhsVar.zzhu();
                value = ((zzfii) next).zzdao().toByteString();
            } else {
                zzhu = zzfhsVar.zzhu();
                value = next.getValue();
            }
            zzfliVar.zzb(zzhu, value);
        }
        zzfkn<?, ?> zzfknVar = this.zzprh;
        zzfknVar.zzb(zzfknVar.zzcu(t), zzfliVar);
    }

    @Override // com.google.android.gms.internal.zzfjv
    public final int zzct(T t) {
        zzfkn<?, ?> zzfknVar = this.zzprh;
        int zzcv = 0 + zzfknVar.zzcv(zzfknVar.zzcu(t));
        return this.zzpri ? zzcv + this.zzprj.zzcr(t).zzczk() : zzcv;
    }
}
