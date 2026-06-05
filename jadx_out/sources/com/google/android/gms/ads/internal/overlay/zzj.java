package com.google.android.gms.ads.internal.overlay;

import android.graphics.Bitmap;
import com.google.android.gms.ads.internal.zzbt;
import com.google.android.gms.internal.zzabh;
import com.google.android.gms.internal.zzahs;
import com.google.android.gms.internal.zzaij;

@zzabh
/* loaded from: classes.dex */
final class zzj extends zzahs {
    final /* synthetic */ zzd zzcne;

    private zzj(zzd zzdVar) {
        this.zzcne = zzdVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ zzj(zzd zzdVar, zzf zzfVar) {
        this(zzdVar);
    }

    @Override // com.google.android.gms.internal.zzahs
    public final void onStop() {
    }

    @Override // com.google.android.gms.internal.zzahs
    public final void zzdo() {
        Bitmap zza = zzbt.zzfe().zza(Integer.valueOf(this.zzcne.zzcml.zzcnu.zzaqu));
        if (zza != null) {
            zzaij.zzdfn.post(new zzk(this, zzbt.zzen().zza(this.zzcne.mActivity, zza, this.zzcne.zzcml.zzcnu.zzaqs, this.zzcne.zzcml.zzcnu.zzaqt)));
        }
    }
}
