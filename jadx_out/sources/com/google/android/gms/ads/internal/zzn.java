package com.google.android.gms.ads.internal;

import android.view.MotionEvent;
import android.view.View;

/* loaded from: classes.dex */
final class zzn implements View.OnTouchListener {
    private /* synthetic */ zzl zzaoc;
    private /* synthetic */ zzw zzaod;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzn(zzl zzlVar, zzw zzwVar) {
        this.zzaoc = zzlVar;
        this.zzaod = zzwVar;
    }

    @Override // android.view.View.OnTouchListener
    public final boolean onTouch(View view, MotionEvent motionEvent) {
        this.zzaod.recordClick();
        if (this.zzaoc.zzaoa == null) {
            return false;
        }
        this.zzaoc.zzaoa.zzpg();
        return false;
    }
}
