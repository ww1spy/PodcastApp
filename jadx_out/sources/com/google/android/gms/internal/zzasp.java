package com.google.android.gms.internal;

import com.google.android.gms.common.internal.Hide;

@Hide
/* loaded from: classes.dex */
public final class zzasp extends zzari {
    /* JADX INFO: Access modifiers changed from: package-private */
    public zzasp(zzark zzarkVar) {
        super(zzarkVar);
    }

    public final zzaqq zzaah() {
        zzyk();
        return zzya().zzwi();
    }

    public final String zzaai() {
        zzyk();
        zzaqq zzaah = zzaah();
        int i = zzaah.zzcly;
        int i2 = zzaah.zzclz;
        StringBuilder sb = new StringBuilder(23);
        sb.append(i);
        sb.append("x");
        sb.append(i2);
        return sb.toString();
    }

    @Override // com.google.android.gms.internal.zzari
    protected final void zzwk() {
    }
}
