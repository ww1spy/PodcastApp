package com.google.android.gms.internal;

import android.app.Activity;
import android.view.View;
import java.lang.reflect.InvocationTargetException;

/* loaded from: classes.dex */
public final class zzdx extends zzeu {
    private final Activity zzakg;
    private final View zzakh;

    public zzdx(zzdm zzdmVar, String str, String str2, zzba zzbaVar, int i, int i2, View view, Activity activity) {
        super(zzdmVar, str, str2, zzbaVar, i, 62);
        this.zzakh = view;
        this.zzakg = activity;
    }

    @Override // com.google.android.gms.internal.zzeu
    protected final void zzaw() throws IllegalAccessException, InvocationTargetException {
        if (this.zzakh == null) {
            return;
        }
        long[] jArr = (long[]) this.zzaku.invoke(null, this.zzakh, this.zzakg);
        synchronized (this.zzakm) {
            this.zzakm.zzey = Long.valueOf(jArr[0]);
            this.zzakm.zzez = Long.valueOf(jArr[1]);
        }
    }
}
