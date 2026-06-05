package com.google.android.gms.internal;

import com.google.android.gms.common.internal.Hide;

@Hide
@zzabh
/* loaded from: classes.dex */
public final class zzaap implements zzaae<zzpm> {
    private final boolean zzciw;
    private final boolean zzcqf;
    private final boolean zzcqg;

    public zzaap(boolean z, boolean z2, boolean z3) {
        this.zzcqf = z;
        this.zzcqg = z2;
        this.zzciw = z3;
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x00ca  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x00d3  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x00d9  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x00d0  */
    @Override // com.google.android.gms.internal.zzaae
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final /* synthetic */ com.google.android.gms.internal.zzpm zza(com.google.android.gms.internal.zzzy r19, org.json.JSONObject r20) throws org.json.JSONException, java.lang.InterruptedException, java.util.concurrent.ExecutionException {
        /*
            r18 = this;
            r0 = r18
            r7 = r19
            r8 = r20
            java.lang.String r3 = "images"
            boolean r5 = r0.zzcqf
            boolean r6 = r0.zzcqg
            r4 = 0
            r1 = r7
            r2 = r8
            java.util.List r1 = r1.zza(r2, r3, r4, r5, r6)
            java.lang.String r2 = "secondary_image"
            boolean r3 = r0.zzcqf
            com.google.android.gms.internal.zzalt r2 = r7.zza(r8, r2, r4, r3)
            com.google.android.gms.internal.zzalt r3 = r19.zzg(r20)
            java.lang.String r4 = "video"
            com.google.android.gms.internal.zzalt r4 = r7.zzc(r8, r4)
            java.util.ArrayList r7 = new java.util.ArrayList
            r7.<init>()
            java.util.Iterator r1 = r1.iterator()
        L2e:
            boolean r5 = r1.hasNext()
            if (r5 == 0) goto L44
            java.lang.Object r5 = r1.next()
            com.google.android.gms.internal.zzalt r5 = (com.google.android.gms.internal.zzalt) r5
            java.lang.Object r5 = r5.get()
            com.google.android.gms.internal.zzpj r5 = (com.google.android.gms.internal.zzpj) r5
            r7.add(r5)
            goto L2e
        L44:
            com.google.android.gms.internal.zzaof r1 = com.google.android.gms.internal.zzzy.zzb(r4)
            com.google.android.gms.internal.zzpm r4 = new com.google.android.gms.internal.zzpm
            java.lang.String r5 = "headline"
            java.lang.String r5 = r8.getString(r5)
            boolean r6 = r0.zzciw
            if (r6 == 0) goto La2
            com.google.android.gms.internal.zzny<java.lang.Boolean> r6 = com.google.android.gms.internal.zzoi.zzbvw
            com.google.android.gms.internal.zzog r9 = com.google.android.gms.internal.zzlc.zzio()
            java.lang.Object r6 = r9.zzd(r6)
            java.lang.Boolean r6 = (java.lang.Boolean) r6
            boolean r6 = r6.booleanValue()
            if (r6 == 0) goto La2
            com.google.android.gms.internal.zzahi r6 = com.google.android.gms.ads.internal.zzbt.zzep()
            android.content.res.Resources r6 = r6.getResources()
            if (r6 == 0) goto L77
            int r9 = com.google.android.gms.R.string.s7
            java.lang.String r6 = r6.getString(r9)
            goto L79
        L77:
            java.lang.String r6 = "Test Ad"
        L79:
            if (r5 == 0) goto La3
            r9 = 3
            java.lang.String r10 = java.lang.String.valueOf(r6)
            int r10 = r10.length()
            int r9 = r9 + r10
            java.lang.String r10 = java.lang.String.valueOf(r5)
            int r10 = r10.length()
            int r9 = r9 + r10
            java.lang.StringBuilder r10 = new java.lang.StringBuilder
            r10.<init>(r9)
            r10.append(r6)
            java.lang.String r6 = " : "
            r10.append(r6)
            r10.append(r5)
            java.lang.String r5 = r10.toString()
        La2:
            r6 = r5
        La3:
            java.lang.String r5 = "body"
            java.lang.String r9 = r8.getString(r5)
            java.lang.Object r2 = r2.get()
            com.google.android.gms.internal.zzqs r2 = (com.google.android.gms.internal.zzqs) r2
            java.lang.String r5 = "call_to_action"
            java.lang.String r10 = r8.getString(r5)
            java.lang.String r5 = "advertiser"
            java.lang.String r11 = r8.getString(r5)
            java.lang.Object r3 = r3.get()
            r12 = r3
            com.google.android.gms.internal.zzph r12 = (com.google.android.gms.internal.zzph) r12
            android.os.Bundle r13 = new android.os.Bundle
            r13.<init>()
            r3 = 0
            if (r1 == 0) goto Ld0
            com.google.android.gms.internal.zzaou r5 = r1.zzth()
            r14 = r5
            goto Ld1
        Ld0:
            r14 = r3
        Ld1:
            if (r1 == 0) goto Ld9
            android.view.View r1 = r1.getView()
            r15 = r1
            goto Lda
        Ld9:
            r15 = r3
        Lda:
            r16 = 0
            r17 = 0
            r5 = r4
            r8 = r9
            r9 = r2
            r5.<init>(r6, r7, r8, r9, r10, r11, r12, r13, r14, r15, r16, r17)
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.zzaap.zza(com.google.android.gms.internal.zzzy, org.json.JSONObject):com.google.android.gms.internal.zzpx");
    }
}
