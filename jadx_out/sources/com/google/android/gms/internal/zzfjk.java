package com.google.android.gms.internal;

/* loaded from: classes.dex */
final class zzfjk {
    private static final zzfji zzprk = zzdbe();
    private static final zzfji zzprl = new zzfjj();

    /* JADX INFO: Access modifiers changed from: package-private */
    public static zzfji zzdbc() {
        return zzprk;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static zzfji zzdbd() {
        return zzprl;
    }

    private static zzfji zzdbe() {
        try {
            return (zzfji) Class.forName("com.google.protobuf.NewInstanceSchemaFull").getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
        } catch (Exception unused) {
            return null;
        }
    }
}
