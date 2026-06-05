package com.google.android.gms.ads.internal;

import android.app.Activity;
import android.content.Context;
import android.support.annotation.Nullable;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.ViewTreeObserver;
import android.widget.ViewSwitcher;
import com.google.android.gms.internal.zzahw;
import com.google.android.gms.internal.zzajc;
import com.google.android.gms.internal.zzakn;
import com.google.android.gms.internal.zzaof;
import java.util.ArrayList;

/* loaded from: classes.dex */
public final class zzbv extends ViewSwitcher {
    private final zzajc zzavj;

    @Nullable
    private final zzakn zzavk;
    private boolean zzavl;

    public zzbv(Context context, String str, String str2, ViewTreeObserver.OnGlobalLayoutListener onGlobalLayoutListener, ViewTreeObserver.OnScrollChangedListener onScrollChangedListener) {
        super(context);
        this.zzavj = new zzajc(context);
        this.zzavj.setAdUnitId(str);
        this.zzavj.zzcq(str2);
        this.zzavl = true;
        if (context instanceof Activity) {
            this.zzavk = new zzakn((Activity) context, this, onGlobalLayoutListener, onScrollChangedListener);
        } else {
            this.zzavk = new zzakn(null, this, onGlobalLayoutListener, onScrollChangedListener);
        }
        this.zzavk.zzrv();
    }

    @Override // android.view.ViewGroup, android.view.View
    protected final void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (this.zzavk != null) {
            this.zzavk.onAttachedToWindow();
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected final void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        if (this.zzavk != null) {
            this.zzavk.onDetachedFromWindow();
        }
    }

    @Override // android.view.ViewGroup
    public final boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        if (!this.zzavl) {
            return false;
        }
        this.zzavj.zze(motionEvent);
        return false;
    }

    @Override // android.widget.ViewAnimator, android.view.ViewGroup
    public final void removeAllViews() {
        ArrayList arrayList = new ArrayList();
        int i = 0;
        for (int i2 = 0; i2 < getChildCount(); i2++) {
            KeyEvent.Callback childAt = getChildAt(i2);
            if (childAt != null && (childAt instanceof zzaof)) {
                arrayList.add((zzaof) childAt);
            }
        }
        super.removeAllViews();
        ArrayList arrayList2 = arrayList;
        int size = arrayList2.size();
        while (i < size) {
            Object obj = arrayList2.get(i);
            i++;
            ((zzaof) obj).destroy();
        }
    }

    public final zzajc zzfr() {
        return this.zzavj;
    }

    public final void zzfs() {
        zzahw.v("Disable position monitoring on adFrame.");
        if (this.zzavk != null) {
            this.zzavk.zzrw();
        }
    }

    public final void zzft() {
        zzahw.v("Enable debug gesture detector on adFrame.");
        this.zzavl = true;
    }

    public final void zzfu() {
        zzahw.v("Disable debug gesture detector on adFrame.");
        this.zzavl = false;
    }
}
