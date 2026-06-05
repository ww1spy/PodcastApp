package com.google.android.gms.internal;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzajv implements zzy {
    private /* synthetic */ String zzcrd;
    private /* synthetic */ zzajy zzdhe;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzajv(zzajr zzajrVar, String str, zzajy zzajyVar) {
        this.zzcrd = str;
        this.zzdhe = zzajyVar;
    }

    @Override // com.google.android.gms.internal.zzy
    public final void zzd(zzae zzaeVar) {
        String str = this.zzcrd;
        String zzaeVar2 = zzaeVar.toString();
        StringBuilder sb = new StringBuilder(21 + String.valueOf(str).length() + String.valueOf(zzaeVar2).length());
        sb.append("Failed to load URL: ");
        sb.append(str);
        sb.append("\n");
        sb.append(zzaeVar2);
        zzahw.zzcz(sb.toString());
        this.zzdhe.zzb(null);
    }
}
