package com.google.android.gms.internal;

/* loaded from: classes.dex */
final class zzfiz {
    private static final zzfix zzpre = zzday();
    private static final zzfix zzprf = new zzfiy();

    /* JADX INFO: Access modifiers changed from: package-private */
    public static zzfix zzdaw() {
        return zzpre;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static zzfix zzdax() {
        return zzprf;
    }

    private static zzfix zzday() {
        try {
            return (zzfix) Class.forName("com.google.protobuf.MapFieldSchemaFull").getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
        } catch (Exception unused) {
            return null;
        }
    }
}
