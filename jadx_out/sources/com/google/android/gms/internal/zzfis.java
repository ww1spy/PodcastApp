package com.google.android.gms.internal;

/* loaded from: classes.dex */
final class zzfis implements zzfjb {
    private zzfjb[] zzpqy;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzfis(zzfjb... zzfjbVarArr) {
        this.zzpqy = zzfjbVarArr;
    }

    @Override // com.google.android.gms.internal.zzfjb
    public final boolean zzi(Class<?> cls) {
        for (zzfjb zzfjbVar : this.zzpqy) {
            if (zzfjbVar.zzi(cls)) {
                return true;
            }
        }
        return false;
    }

    @Override // com.google.android.gms.internal.zzfjb
    public final zzfja zzj(Class<?> cls) {
        for (zzfjb zzfjbVar : this.zzpqy) {
            if (zzfjbVar.zzi(cls)) {
                return zzfjbVar.zzj(cls);
            }
        }
        String valueOf = String.valueOf(cls.getName());
        throw new UnsupportedOperationException(valueOf.length() != 0 ? "No factory is available for message type: ".concat(valueOf) : new String("No factory is available for message type: "));
    }
}
