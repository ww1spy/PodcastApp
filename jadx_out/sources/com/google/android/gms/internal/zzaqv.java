package com.google.android.gms.internal;

import android.text.TextUtils;
import com.google.android.gms.common.internal.Hide;
import java.util.HashMap;

@Hide
/* loaded from: classes.dex */
public final class zzaqv extends com.google.android.gms.analytics.zzi<zzaqv> {
    private String zzaqh;
    private int zzdxq;
    private int zzdxr;
    private String zzdxs;
    private String zzdxt;
    private boolean zzdxu;
    private boolean zzdxv;

    public zzaqv() {
        this(false);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private zzaqv(boolean r7) {
        /*
            r6 = this;
            java.util.UUID r7 = java.util.UUID.randomUUID()
            long r0 = r7.getLeastSignificantBits()
            r2 = 2147483647(0x7fffffff, double:1.060997895E-314)
            long r4 = r0 & r2
            int r0 = (int) r4
            if (r0 == 0) goto L11
            goto L25
        L11:
            long r0 = r7.getMostSignificantBits()
            long r4 = r0 & r2
            int r0 = (int) r4
            if (r0 == 0) goto L1b
            goto L25
        L1b:
            java.lang.String r7 = "GAv4"
            java.lang.String r0 = "UUID.randomUUID() returned 0."
            android.util.Log.e(r7, r0)
            r0 = 2147483647(0x7fffffff, float:NaN)
        L25:
            r7 = 0
            r6.<init>(r7, r0)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.zzaqv.<init>(boolean):void");
    }

    private zzaqv(boolean z, int i) {
        if (i == 0) {
            throw new IllegalArgumentException("Given Integer is zero");
        }
        this.zzdxq = i;
        this.zzdxv = false;
    }

    public final String toString() {
        HashMap hashMap = new HashMap();
        hashMap.put("screenName", this.zzaqh);
        hashMap.put("interstitial", Boolean.valueOf(this.zzdxu));
        hashMap.put("automatic", Boolean.valueOf(this.zzdxv));
        hashMap.put("screenId", Integer.valueOf(this.zzdxq));
        hashMap.put("referrerScreenId", Integer.valueOf(this.zzdxr));
        hashMap.put("referrerScreenName", this.zzdxs);
        hashMap.put("referrerUri", this.zzdxt);
        return zzl(hashMap);
    }

    @Override // com.google.android.gms.analytics.zzi
    public final /* synthetic */ void zzb(zzaqv zzaqvVar) {
        zzaqv zzaqvVar2 = zzaqvVar;
        if (!TextUtils.isEmpty(this.zzaqh)) {
            zzaqvVar2.zzaqh = this.zzaqh;
        }
        if (this.zzdxq != 0) {
            zzaqvVar2.zzdxq = this.zzdxq;
        }
        if (this.zzdxr != 0) {
            zzaqvVar2.zzdxr = this.zzdxr;
        }
        if (!TextUtils.isEmpty(this.zzdxs)) {
            zzaqvVar2.zzdxs = this.zzdxs;
        }
        if (!TextUtils.isEmpty(this.zzdxt)) {
            String str = this.zzdxt;
            if (TextUtils.isEmpty(str)) {
                str = null;
            }
            zzaqvVar2.zzdxt = str;
        }
        if (this.zzdxu) {
            zzaqvVar2.zzdxu = this.zzdxu;
        }
        if (this.zzdxv) {
            zzaqvVar2.zzdxv = this.zzdxv;
        }
    }

    public final String zzxk() {
        return this.zzaqh;
    }

    public final int zzxl() {
        return this.zzdxq;
    }

    public final String zzxm() {
        return this.zzdxt;
    }
}
