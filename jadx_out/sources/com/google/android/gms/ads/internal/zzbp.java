package com.google.android.gms.ads.internal;

import android.view.MotionEvent;
import android.view.View;
import com.google.android.gms.internal.zzcv;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzbp implements View.OnTouchListener {
    private /* synthetic */ zzbn zzasj;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzbp(zzbn zzbnVar) {
        this.zzasj = zzbnVar;
    }

    @Override // android.view.View.OnTouchListener
    public final boolean onTouch(View view, MotionEvent motionEvent) {
        zzcv zzcvVar;
        zzcv zzcvVar2;
        zzcvVar = this.zzasj.zzash;
        if (zzcvVar == null) {
            return false;
        }
        zzcvVar2 = this.zzasj.zzash;
        zzcvVar2.zza(motionEvent);
        return false;
    }
}
