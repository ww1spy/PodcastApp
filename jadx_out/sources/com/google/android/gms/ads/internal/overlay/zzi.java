package com.google.android.gms.ads.internal.overlay;

import android.content.Context;
import android.view.ViewGroup;
import android.view.ViewParent;
import com.google.android.gms.internal.zzabh;
import com.google.android.gms.internal.zzaof;

@zzabh
/* loaded from: classes.dex */
public final class zzi {
    public final int index;
    public final ViewGroup parent;
    public final Context zzaiq;
    public final ViewGroup.LayoutParams zzcng;

    public zzi(zzaof zzaofVar) throws zzg {
        this.zzcng = zzaofVar.getLayoutParams();
        ViewParent parent = zzaofVar.getParent();
        this.zzaiq = zzaofVar.zztv();
        if (parent == null || !(parent instanceof ViewGroup)) {
            throw new zzg("Could not get the parent of the WebView for an overlay.");
        }
        this.parent = (ViewGroup) parent;
        this.index = this.parent.indexOfChild(zzaofVar.getView());
        this.parent.removeView(zzaofVar.getView());
        zzaofVar.zzah(true);
    }
}
