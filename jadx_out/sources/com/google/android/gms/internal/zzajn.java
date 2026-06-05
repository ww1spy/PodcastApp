package com.google.android.gms.internal;

import java.util.ArrayList;
import java.util.List;

@zzabh
/* loaded from: classes.dex */
public final class zzajn {
    private final String[] zzdgp;
    private final double[] zzdgq;
    private final double[] zzdgr;
    private final int[] zzdgs;
    private int zzdgt;

    private zzajn(zzajq zzajqVar) {
        List list;
        List list2;
        List list3;
        List list4;
        list = zzajqVar.zzdgy;
        int size = list.size();
        list2 = zzajqVar.zzdgx;
        this.zzdgp = (String[]) list2.toArray(new String[size]);
        list3 = zzajqVar.zzdgy;
        this.zzdgq = zzr(list3);
        list4 = zzajqVar.zzdgz;
        this.zzdgr = zzr(list4);
        this.zzdgs = new int[size];
        this.zzdgt = 0;
    }

    private static double[] zzr(List<Double> list) {
        double[] dArr = new double[list.size()];
        for (int i = 0; i < dArr.length; i++) {
            dArr[i] = list.get(i).doubleValue();
        }
        return dArr;
    }

    public final List<zzajp> getBuckets() {
        ArrayList arrayList = new ArrayList(this.zzdgp.length);
        for (int i = 0; i < this.zzdgp.length; i++) {
            arrayList.add(new zzajp(this.zzdgp[i], this.zzdgr[i], this.zzdgq[i], this.zzdgs[i] / this.zzdgt, this.zzdgs[i]));
        }
        return arrayList;
    }

    public final void zza(double d) {
        this.zzdgt++;
        for (int i = 0; i < this.zzdgr.length; i++) {
            if (this.zzdgr[i] <= d && d < this.zzdgq[i]) {
                int[] iArr = this.zzdgs;
                iArr[i] = iArr[i] + 1;
            }
            if (d < this.zzdgr[i]) {
                return;
            }
        }
    }
}
