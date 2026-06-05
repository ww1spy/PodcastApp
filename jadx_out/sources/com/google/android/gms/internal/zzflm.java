package com.google.android.gms.internal;

import com.google.android.gms.internal.zzflm;
import java.io.IOException;

/* loaded from: classes.dex */
public abstract class zzflm<M extends zzflm<M>> extends zzfls {
    protected zzflo zzpvl;

    public final <T> T zza(zzfln<M, T> zzflnVar) {
        zzflp zzmz;
        if (this.zzpvl == null || (zzmz = this.zzpvl.zzmz(zzflnVar.tag >>> 3)) == null) {
            return null;
        }
        return (T) zzmz.zzb(zzflnVar);
    }

    @Override // com.google.android.gms.internal.zzfls
    public void zza(zzflk zzflkVar) throws IOException {
        if (this.zzpvl == null) {
            return;
        }
        for (int i = 0; i < this.zzpvl.size(); i++) {
            this.zzpvl.zzna(i).zza(zzflkVar);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final boolean zza(zzflj zzfljVar, int i) throws IOException {
        int position = zzfljVar.getPosition();
        if (!zzfljVar.zzlg(i)) {
            return false;
        }
        int i2 = i >>> 3;
        zzflu zzfluVar = new zzflu(i, zzfljVar.zzao(position, zzfljVar.getPosition() - position));
        zzflp zzflpVar = null;
        if (this.zzpvl == null) {
            this.zzpvl = new zzflo();
        } else {
            zzflpVar = this.zzpvl.zzmz(i2);
        }
        if (zzflpVar == null) {
            zzflpVar = new zzflp();
            this.zzpvl.zza(i2, zzflpVar);
        }
        zzflpVar.zza(zzfluVar);
        return true;
    }

    @Override // com.google.android.gms.internal.zzfls
    /* renamed from: zzdck, reason: merged with bridge method [inline-methods] */
    public M clone() throws CloneNotSupportedException {
        M m = (M) super.clone();
        zzflq.zza(this, m);
        return m;
    }

    @Override // com.google.android.gms.internal.zzfls
    /* renamed from: zzdcl */
    public /* synthetic */ zzfls clone() throws CloneNotSupportedException {
        return (zzflm) clone();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.zzfls
    public int zzq() {
        if (this.zzpvl == null) {
            return 0;
        }
        int i = 0;
        for (int i2 = 0; i2 < this.zzpvl.size(); i2++) {
            i += this.zzpvl.zzna(i2).zzq();
        }
        return i;
    }
}
