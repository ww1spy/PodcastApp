package com.google.android.gms.internal;

/* loaded from: classes.dex */
final class zzfhp {
    private static final zzfhn<?> zzpoy = new zzfho();
    private static final zzfhn<?> zzpoz = zzczg();

    private static zzfhn<?> zzczg() {
        try {
            return (zzfhn) Class.forName("com.google.protobuf.ExtensionSchemaFull").getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
        } catch (Exception unused) {
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static zzfhn<?> zzczh() {
        return zzpoy;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static zzfhn<?> zzczi() {
        if (zzpoz == null) {
            throw new IllegalStateException("Protobuf runtime is not correctly loaded.");
        }
        return zzpoz;
    }
}
