package com.google.android.gms.ads.internal.overlay;

import android.content.Context;
import android.view.MotionEvent;
import android.widget.RelativeLayout;
import com.google.android.gms.internal.zzabh;
import com.google.android.gms.internal.zzajc;

/* JADX INFO: Access modifiers changed from: package-private */
@zzabh
/* loaded from: classes.dex */
public final class zzh extends RelativeLayout {
    private zzajc zzavj;
    boolean zzcnf;

    public zzh(Context context, String str, String str2) {
        super(context);
        this.zzavj = new zzajc(context, str);
        this.zzavj.zzcq(str2);
    }

    @Override // android.view.ViewGroup
    public final boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        if (this.zzcnf) {
            return false;
        }
        this.zzavj.zze(motionEvent);
        return false;
    }
}
