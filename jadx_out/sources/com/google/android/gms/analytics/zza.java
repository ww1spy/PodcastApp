package com.google.android.gms.analytics;

import android.net.Uri;
import android.text.TextUtils;
import com.google.android.gms.common.internal.Hide;
import com.google.android.gms.common.internal.zzbq;
import com.google.android.gms.internal.zzaqu;
import com.google.android.gms.internal.zzaqy;
import com.google.android.gms.internal.zzark;
import java.util.ListIterator;

@Hide
/* loaded from: classes.dex */
public class zza extends zzj<zza> {
    private final zzark zzdtw;
    private boolean zzdtx;

    @Hide
    public zza(zzark zzarkVar) {
        super(zzarkVar.zzya(), zzarkVar.zzxx());
        this.zzdtw = zzarkVar;
    }

    @Hide
    public final void enableAdvertisingIdCollection(boolean z) {
        this.zzdtx = z;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.analytics.zzj
    @Hide
    public final void zza(zzg zzgVar) {
        zzaqu zzaquVar = (zzaqu) zzgVar.zzb(zzaqu.class);
        if (TextUtils.isEmpty(zzaquVar.zzxe())) {
            zzaquVar.setClientId(this.zzdtw.zzyq().zzzp());
        }
        if (this.zzdtx && TextUtils.isEmpty(zzaquVar.zzxf())) {
            zzaqy zzyp = this.zzdtw.zzyp();
            zzaquVar.zzdw(zzyp.zzxn());
            zzaquVar.zzam(zzyp.zzxg());
        }
    }

    @Hide
    public final void zzdk(String str) {
        zzbq.zzgv(str);
        Uri zzdl = zzb.zzdl(str);
        ListIterator<zzo> listIterator = this.zzdvi.getTransports().listIterator();
        while (listIterator.hasNext()) {
            if (zzdl.equals(listIterator.next().zzvu())) {
                listIterator.remove();
            }
        }
        this.zzdvi.getTransports().add(new zzb(this.zzdtw, str));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Hide
    public final zzark zzvr() {
        return this.zzdtw;
    }

    @Override // com.google.android.gms.analytics.zzj
    @Hide
    public final zzg zzvs() {
        zzg zzvx = this.zzdvi.zzvx();
        zzvx.zza(this.zzdtw.zzyi().zzzd());
        zzvx.zza(this.zzdtw.zzyj().zzaah());
        zzd(zzvx);
        return zzvx;
    }
}
