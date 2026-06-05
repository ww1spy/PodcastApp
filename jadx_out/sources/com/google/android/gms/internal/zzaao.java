package com.google.android.gms.internal;

import com.google.android.gms.common.internal.Hide;

@Hide
@zzabh
/* loaded from: classes.dex */
public final class zzaao implements zzaae<zzpk> {
    private final boolean zzciw;
    private final boolean zzcqf;
    private final boolean zzcqg;

    public zzaao(boolean z, boolean z2, boolean z3) {
        this.zzcqf = z;
        this.zzcqg = z2;
        this.zzciw = z3;
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x00d9  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x00e4  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x00eb  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x00e0  */
    @Override // com.google.android.gms.internal.zzaae
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final /* synthetic */ com.google.android.gms.internal.zzpk zza(com.google.android.gms.internal.zzzy r22, org.json.JSONObject r23) throws org.json.JSONException, java.lang.InterruptedException, java.util.concurrent.ExecutionException {
        /*
            r21 = this;
            r0 = r21
            r7 = r22
            r8 = r23
            java.lang.String r3 = "images"
            boolean r5 = r0.zzcqf
            boolean r6 = r0.zzcqg
            r4 = 0
            r1 = r7
            r2 = r8
            java.util.List r1 = r1.zza(r2, r3, r4, r5, r6)
            java.lang.String r2 = "app_icon"
            boolean r3 = r0.zzcqf
            r4 = 1
            com.google.android.gms.internal.zzalt r2 = r7.zza(r8, r2, r4, r3)
            java.lang.String r3 = "video"
            com.google.android.gms.internal.zzalt r3 = r7.zzc(r8, r3)
            com.google.android.gms.internal.zzalt r4 = r22.zzg(r23)
            java.util.ArrayList r7 = new java.util.ArrayList
            r7.<init>()
            java.util.Iterator r1 = r1.iterator()
        L2f:
            boolean r5 = r1.hasNext()
            if (r5 == 0) goto L45
            java.lang.Object r5 = r1.next()
            com.google.android.gms.internal.zzalt r5 = (com.google.android.gms.internal.zzalt) r5
            java.lang.Object r5 = r5.get()
            com.google.android.gms.internal.zzpj r5 = (com.google.android.gms.internal.zzpj) r5
            r7.add(r5)
            goto L2f
        L45:
            com.google.android.gms.internal.zzaof r1 = com.google.android.gms.internal.zzzy.zzb(r3)
            com.google.android.gms.internal.zzpk r3 = new com.google.android.gms.internal.zzpk
            java.lang.String r5 = "headline"
            java.lang.String r5 = r8.getString(r5)
            boolean r6 = r0.zzciw
            if (r6 == 0) goto La3
            com.google.android.gms.internal.zzny<java.lang.Boolean> r6 = com.google.android.gms.internal.zzoi.zzbvw
            com.google.android.gms.internal.zzog r9 = com.google.android.gms.internal.zzlc.zzio()
            java.lang.Object r6 = r9.zzd(r6)
            java.lang.Boolean r6 = (java.lang.Boolean) r6
            boolean r6 = r6.booleanValue()
            if (r6 == 0) goto La3
            com.google.android.gms.internal.zzahi r6 = com.google.android.gms.ads.internal.zzbt.zzep()
            android.content.res.Resources r6 = r6.getResources()
            if (r6 == 0) goto L78
            int r9 = com.google.android.gms.R.string.s7
            java.lang.String r6 = r6.getString(r9)
            goto L7a
        L78:
            java.lang.String r6 = "Test Ad"
        L7a:
            if (r5 == 0) goto La4
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
        La3:
            r6 = r5
        La4:
            java.lang.String r5 = "body"
            java.lang.String r9 = r8.getString(r5)
            java.lang.Object r2 = r2.get()
            com.google.android.gms.internal.zzqs r2 = (com.google.android.gms.internal.zzqs) r2
            java.lang.String r5 = "call_to_action"
            java.lang.String r10 = r8.getString(r5)
            java.lang.String r5 = "rating"
            r11 = -4616189618054758400(0xbff0000000000000, double:-1.0)
            double r11 = r8.optDouble(r5, r11)
            java.lang.String r5 = "store"
            java.lang.String r13 = r8.optString(r5)
            java.lang.String r5 = "price"
            java.lang.String r14 = r8.optString(r5)
            java.lang.Object r4 = r4.get()
            r15 = r4
            com.google.android.gms.internal.zzph r15 = (com.google.android.gms.internal.zzph) r15
            android.os.Bundle r4 = new android.os.Bundle
            r4.<init>()
            r5 = 0
            if (r1 == 0) goto Le0
            com.google.android.gms.internal.zzaou r8 = r1.zzth()
            r17 = r8
            goto Le2
        Le0:
            r17 = r5
        Le2:
            if (r1 == 0) goto Leb
            android.view.View r1 = r1.getView()
            r18 = r1
            goto Led
        Leb:
            r18 = r5
        Led:
            r19 = 0
            r20 = 0
            r5 = r3
            r8 = r9
            r9 = r2
            r16 = r4
            r5.<init>(r6, r7, r8, r9, r10, r11, r13, r14, r15, r16, r17, r18, r19, r20)
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.zzaao.zza(com.google.android.gms.internal.zzzy, org.json.JSONObject):com.google.android.gms.internal.zzpx");
    }
}
