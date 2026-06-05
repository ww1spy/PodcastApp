package com.google.android.gms.internal;

/* loaded from: classes.dex */
public final class zzasu<V> {
    private final V zzedc;
    private final zzbfx<V> zzedd;

    private zzasu(zzbfx<V> zzbfxVar, V v) {
        com.google.android.gms.common.internal.zzbq.checkNotNull(zzbfxVar);
        this.zzedd = zzbfxVar;
        this.zzedc = v;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static zzasu<Float> zza(String str, float f, float f2) {
        return new zzasu<>(zzbfx.zza(str, Float.valueOf(0.5f)), Float.valueOf(0.5f));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static zzasu<Integer> zza(String str, int i, int i2) {
        return new zzasu<>(zzbfx.zza(str, Integer.valueOf(i2)), Integer.valueOf(i));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static zzasu<Long> zza(String str, long j, long j2) {
        return new zzasu<>(zzbfx.zza(str, Long.valueOf(j2)), Long.valueOf(j));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static zzasu<Boolean> zza(String str, boolean z, boolean z2) {
        return new zzasu<>(zzbfx.zze(str, z2), Boolean.valueOf(z));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static zzasu<String> zzd(String str, String str2, String str3) {
        return new zzasu<>(zzbfx.zzs(str, str3), str2);
    }

    public final V get() {
        return this.zzedc;
    }
}
