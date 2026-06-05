package com.google.android.gms.internal;

import android.graphics.Bitmap;
import java.io.ByteArrayOutputStream;

/* loaded from: classes.dex */
final class zzagi implements Runnable {
    private /* synthetic */ Bitmap val$bitmap;
    private /* synthetic */ zzagf zzdbk;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzagi(zzagf zzagfVar, Bitmap bitmap) {
        this.zzdbk = zzagfVar;
        this.val$bitmap = bitmap;
    }

    @Override // java.lang.Runnable
    public final void run() {
        Object obj;
        zzflw zzflwVar;
        zzflw zzflwVar2;
        zzflw zzflwVar3;
        zzflw zzflwVar4;
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        this.val$bitmap.compress(Bitmap.CompressFormat.PNG, 0, byteArrayOutputStream);
        obj = this.zzdbk.mLock;
        synchronized (obj) {
            zzflwVar = this.zzdbk.zzdba;
            zzflwVar.zzpwl = new zzfmd();
            zzflwVar2 = this.zzdbk.zzdba;
            zzflwVar2.zzpwl.zzpxg = byteArrayOutputStream.toByteArray();
            zzflwVar3 = this.zzdbk.zzdba;
            zzflwVar3.zzpwl.mimeType = "image/png";
            zzflwVar4 = this.zzdbk.zzdba;
            zzflwVar4.zzpwl.zzbdh = 1;
        }
    }
}
