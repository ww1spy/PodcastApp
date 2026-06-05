package com.google.android.gms.internal;

import java.util.List;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzaab implements zzale<List<zzpj>, zzph> {
    private /* synthetic */ String zzcph;
    private /* synthetic */ Integer zzcpi;
    private /* synthetic */ Integer zzcpj;
    private /* synthetic */ int zzcpk;
    private /* synthetic */ int zzcpl;
    private /* synthetic */ int zzcpm;
    private /* synthetic */ int zzcpn;
    private /* synthetic */ boolean zzcpo;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzaab(zzzy zzzyVar, String str, Integer num, Integer num2, int i, int i2, int i3, int i4, boolean z) {
        this.zzcph = str;
        this.zzcpi = num;
        this.zzcpj = num2;
        this.zzcpk = i;
        this.zzcpl = i2;
        this.zzcpm = i3;
        this.zzcpn = i4;
        this.zzcpo = z;
    }

    @Override // com.google.android.gms.internal.zzale
    public final /* synthetic */ zzph apply(List<zzpj> list) {
        List<zzpj> list2 = list;
        if (list2 == null || list2.isEmpty()) {
            return null;
        }
        return new zzph(this.zzcph, list2, this.zzcpi, this.zzcpj, this.zzcpk > 0 ? Integer.valueOf(this.zzcpk) : null, this.zzcpl + this.zzcpm, this.zzcpn, this.zzcpo);
    }
}
