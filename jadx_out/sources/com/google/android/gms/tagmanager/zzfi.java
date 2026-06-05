package com.google.android.gms.tagmanager;

/* loaded from: classes.dex */
final class zzfi {
    private zzea<com.google.android.gms.internal.zzbt> zzkta;
    private com.google.android.gms.internal.zzbt zzktb;

    public zzfi(zzea<com.google.android.gms.internal.zzbt> zzeaVar, com.google.android.gms.internal.zzbt zzbtVar) {
        this.zzkta = zzeaVar;
        this.zzktb = zzbtVar;
    }

    public final int getSize() {
        return this.zzkta.getObject().zzdcr() + (this.zzktb == null ? 0 : this.zzktb.zzdcr());
    }

    public final zzea<com.google.android.gms.internal.zzbt> zzbhq() {
        return this.zzkta;
    }

    public final com.google.android.gms.internal.zzbt zzbhr() {
        return this.zzktb;
    }
}
