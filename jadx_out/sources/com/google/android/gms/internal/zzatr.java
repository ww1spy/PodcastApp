package com.google.android.gms.internal;

/* loaded from: classes.dex */
final class zzatr extends zzarh implements zzask<zzats> {
    private final zzats zzeer;

    public zzatr(zzark zzarkVar) {
        super(zzarkVar);
        this.zzeer = new zzats();
    }

    @Override // com.google.android.gms.internal.zzask
    public final void zzc(String str, boolean z) {
        if ("ga_autoActivityTracking".equals(str)) {
            this.zzeer.zzeeu = z ? 1 : 0;
        } else if ("ga_anonymizeIp".equals(str)) {
            this.zzeer.zzeev = z ? 1 : 0;
        } else if (!"ga_reportUncaughtExceptions".equals(str)) {
            zzd("bool configuration name not recognized", str);
        } else {
            this.zzeer.zzeew = z ? 1 : 0;
        }
    }

    @Override // com.google.android.gms.internal.zzask
    public final void zzd(String str, int i) {
        if ("ga_sessionTimeout".equals(str)) {
            this.zzeer.zzeet = i;
        } else {
            zzd("int configuration name not recognized", str);
        }
    }

    @Override // com.google.android.gms.internal.zzask
    public final void zzi(String str, String str2) {
        this.zzeer.zzeex.put(str, str2);
    }

    @Override // com.google.android.gms.internal.zzask
    public final void zzj(String str, String str2) {
        if ("ga_trackingId".equals(str)) {
            this.zzeer.zzdub = str2;
            return;
        }
        if (!"ga_sampleFrequency".equals(str)) {
            zzd("string configuration name not recognized", str);
            return;
        }
        try {
            this.zzeer.zzees = Double.parseDouble(str2);
        } catch (NumberFormatException e) {
            zzc("Error parsing ga_sampleFrequency value", str2, e);
        }
    }

    @Override // com.google.android.gms.internal.zzask
    public final /* synthetic */ zzats zzzt() {
        return this.zzeer;
    }
}
