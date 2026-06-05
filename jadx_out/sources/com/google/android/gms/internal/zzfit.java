package com.google.android.gms.internal;

import java.io.IOException;

/* loaded from: classes.dex */
public final class zzfit<K, V> {
    private final V value;
    private final K zzmbd;
    private final zzfiv<K, V> zzpqz;

    private zzfit(zzfky zzfkyVar, K k, zzfky zzfkyVar2, V v) {
        this.zzpqz = new zzfiv<>(zzfkyVar, k, zzfkyVar2, v);
        this.zzmbd = k;
        this.value = v;
    }

    static <K, V> int zza(zzfiv<K, V> zzfivVar, K k, V v) {
        return zzfhq.zza(zzfivVar.zzpra, 1, k) + zzfhq.zza(zzfivVar.zzprc, 2, v);
    }

    public static <K, V> zzfit<K, V> zza(zzfky zzfkyVar, K k, zzfky zzfkyVar2, V v) {
        return new zzfit<>(zzfkyVar, k, zzfkyVar2, v);
    }

    private static <T> T zza(zzfhb zzfhbVar, zzfhm zzfhmVar, zzfky zzfkyVar, T t) throws IOException {
        switch (zzfiu.zzppe[zzfkyVar.ordinal()]) {
            case 1:
                zzfjd zzczt = ((zzfjc) t).zzczt();
                zzfhbVar.zza(zzczt, zzfhmVar);
                return (T) zzczt.zzczy();
            case 2:
                return (T) Integer.valueOf(zzfhbVar.zzcyh());
            case 3:
                throw new RuntimeException("Groups are not allowed in maps.");
            default:
                return (T) zzfhq.zza(zzfhbVar, zzfkyVar, true);
        }
    }

    static <K, V> void zza(zzfhg zzfhgVar, zzfiv<K, V> zzfivVar, K k, V v) throws IOException {
        zzfhq.zza(zzfhgVar, zzfivVar.zzpra, 1, k);
        zzfhq.zza(zzfhgVar, zzfivVar.zzprc, 2, v);
    }

    public final void zza(zzfhg zzfhgVar, int i, K k, V v) throws IOException {
        zzfhgVar.zzac(i, 2);
        zzfhgVar.zzlt(zza(this.zzpqz, k, v));
        zza(zzfhgVar, this.zzpqz, k, v);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void zza(zzfiw<K, V> zzfiwVar, zzfhb zzfhbVar, zzfhm zzfhmVar) throws IOException {
        int zzli = zzfhbVar.zzli(zzfhbVar.zzcym());
        Object obj = this.zzpqz.zzprb;
        Object obj2 = this.zzpqz.zzinq;
        while (true) {
            int zzcxx = zzfhbVar.zzcxx();
            if (zzcxx == 0) {
                break;
            }
            if (zzcxx == (this.zzpqz.zzpra.zzdcj() | 8)) {
                obj = zza(zzfhbVar, zzfhmVar, this.zzpqz.zzpra, obj);
            } else if (zzcxx == (this.zzpqz.zzprc.zzdcj() | 16)) {
                obj2 = zza(zzfhbVar, zzfhmVar, this.zzpqz.zzprc, obj2);
            } else if (!zzfhbVar.zzlg(zzcxx)) {
                break;
            }
        }
        zzfhbVar.zzlf(0);
        zzfhbVar.zzlj(zzli);
        zzfiwVar.put(obj, obj2);
    }

    public final int zzb(int i, K k, V v) {
        return zzfhg.zzlw(i) + zzfhg.zzmd(zza(this.zzpqz, k, v));
    }
}
