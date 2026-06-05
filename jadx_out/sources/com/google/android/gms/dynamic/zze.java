package com.google.android.gms.dynamic;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import android.widget.FrameLayout;

/* loaded from: classes.dex */
final class zze implements zzi {
    private /* synthetic */ ViewGroup val$container;
    private /* synthetic */ Bundle zzaik;
    private /* synthetic */ zza zzhct;
    private /* synthetic */ FrameLayout zzhcv;
    private /* synthetic */ LayoutInflater zzhcw;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zze(zza zzaVar, FrameLayout frameLayout, LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        this.zzhct = zzaVar;
        this.zzhcv = frameLayout;
        this.zzhcw = layoutInflater;
        this.val$container = viewGroup;
        this.zzaik = bundle;
    }

    @Override // com.google.android.gms.dynamic.zzi
    public final int getState() {
        return 2;
    }

    @Override // com.google.android.gms.dynamic.zzi
    public final void zzb(LifecycleDelegate lifecycleDelegate) {
        LifecycleDelegate lifecycleDelegate2;
        this.zzhcv.removeAllViews();
        FrameLayout frameLayout = this.zzhcv;
        lifecycleDelegate2 = this.zzhct.zzhcp;
        frameLayout.addView(lifecycleDelegate2.onCreateView(this.zzhcw, this.val$container, this.zzaik));
    }
}
