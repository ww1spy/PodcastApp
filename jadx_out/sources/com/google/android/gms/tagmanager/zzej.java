package com.google.android.gms.tagmanager;

import com.google.android.gms.internal.zzbh;
import com.google.android.gms.internal.zzbi;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzej extends zzbr {
    private static final String ID = zzbh.RANDOM.toString();
    private static final String zzkrt = zzbi.MIN.toString();
    private static final String zzkru = zzbi.MAX.toString();

    public zzej() {
        super(ID, new String[0]);
    }

    @Override // com.google.android.gms.tagmanager.zzbr
    public final boolean zzbfh() {
        return false;
    }

    /* JADX WARN: Code restructure failed: missing block: B:13:0x003e, code lost:
    
        if (r0 <= r2) goto L17;
     */
    @Override // com.google.android.gms.tagmanager.zzbr
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final com.google.android.gms.internal.zzbt zzx(java.util.Map<java.lang.String, com.google.android.gms.internal.zzbt> r7) {
        /*
            r6 = this;
            java.lang.String r0 = com.google.android.gms.tagmanager.zzej.zzkrt
            java.lang.Object r0 = r7.get(r0)
            com.google.android.gms.internal.zzbt r0 = (com.google.android.gms.internal.zzbt) r0
            java.lang.String r1 = com.google.android.gms.tagmanager.zzej.zzkru
            java.lang.Object r7 = r7.get(r1)
            com.google.android.gms.internal.zzbt r7 = (com.google.android.gms.internal.zzbt) r7
            if (r0 == 0) goto L41
            com.google.android.gms.internal.zzbt r1 = com.google.android.gms.tagmanager.zzgk.zzbil()
            if (r0 == r1) goto L41
            if (r7 == 0) goto L41
            com.google.android.gms.internal.zzbt r1 = com.google.android.gms.tagmanager.zzgk.zzbil()
            if (r7 == r1) goto L41
            com.google.android.gms.tagmanager.zzgj r0 = com.google.android.gms.tagmanager.zzgk.zze(r0)
            com.google.android.gms.tagmanager.zzgj r7 = com.google.android.gms.tagmanager.zzgk.zze(r7)
            com.google.android.gms.tagmanager.zzgj r1 = com.google.android.gms.tagmanager.zzgk.zzbij()
            if (r0 == r1) goto L41
            com.google.android.gms.tagmanager.zzgj r1 = com.google.android.gms.tagmanager.zzgk.zzbij()
            if (r7 == r1) goto L41
            double r0 = r0.doubleValue()
            double r2 = r7.doubleValue()
            int r7 = (r0 > r2 ? 1 : (r0 == r2 ? 0 : -1))
            if (r7 > 0) goto L41
            goto L48
        L41:
            r0 = 0
            r2 = 4746794007244308480(0x41dfffffffc00000, double:2.147483647E9)
        L48:
            double r4 = java.lang.Math.random()
            double r2 = r2 - r0
            double r4 = r4 * r2
            double r4 = r4 + r0
            long r0 = java.lang.Math.round(r4)
            java.lang.Long r7 = java.lang.Long.valueOf(r0)
            com.google.android.gms.internal.zzbt r7 = com.google.android.gms.tagmanager.zzgk.zzam(r7)
            return r7
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.tagmanager.zzej.zzx(java.util.Map):com.google.android.gms.internal.zzbt");
    }
}
