package com.google.android.gms.internal;

import java.util.concurrent.ExecutionException;

/* loaded from: classes.dex */
public final class zzea extends zzeu {
    private static final Object zzakj = new Object();
    private static volatile zzbw zzakk;
    private zzax zzakl;

    public zzea(zzdm zzdmVar, String str, String str2, zzba zzbaVar, int i, int i2, zzax zzaxVar) {
        super(zzdmVar, str, str2, zzbaVar, i, 27);
        this.zzakl = null;
        this.zzakl = zzaxVar;
    }

    private final String zzax() {
        try {
            if (this.zzagq.zzan() != null) {
                this.zzagq.zzan().get();
            }
            zzba zzam = this.zzagq.zzam();
            if (zzam == null || zzam.zzcv == null) {
                return null;
            }
            return zzam.zzcv;
        } catch (InterruptedException | ExecutionException unused) {
            return null;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:43:0x007e  */
    @Override // com.google.android.gms.internal.zzeu
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected final void zzaw() throws java.lang.IllegalAccessException, java.lang.reflect.InvocationTargetException {
        /*
            Method dump skipped, instructions count: 290
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.zzea.zzaw():void");
    }
}
