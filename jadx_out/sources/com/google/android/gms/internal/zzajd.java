package com.google.android.gms.internal;

import android.content.DialogInterface;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzajd implements DialogInterface.OnClickListener {
    private /* synthetic */ int zzdgc;
    private /* synthetic */ int zzdgd;
    private /* synthetic */ int zzdge;
    private /* synthetic */ zzajc zzdgf;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzajd(zzajc zzajcVar, int i, int i2, int i3) {
        this.zzdgf = zzajcVar;
        this.zzdgc = i;
        this.zzdgd = i2;
        this.zzdge = i3;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i) {
        if (i == this.zzdgc) {
            this.zzdgf.zzrn();
            return;
        }
        if (i == this.zzdgd) {
            if (((Boolean) zzlc.zzio().zzd(zzoi.zzbur)).booleanValue()) {
                this.zzdgf.zzro();
                return;
            }
        }
        if (i == this.zzdge) {
            if (((Boolean) zzlc.zzio().zzd(zzoi.zzbus)).booleanValue()) {
                this.zzdgf.zzrp();
            }
        }
    }
}
