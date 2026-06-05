package com.google.android.gms.internal;

import android.annotation.TargetApi;
import android.app.Activity;
import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.FrameLayout;
import android.widget.PopupWindow;
import com.google.android.gms.common.internal.Hide;

@Hide
@TargetApi(19)
@zzabh
/* loaded from: classes.dex */
public final class zzzr extends zzzo {
    private Object zzcok;
    private PopupWindow zzcol;
    private boolean zzcom;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzzr(Context context, zzahe zzaheVar, zzaof zzaofVar, zzzn zzznVar) {
        super(context, zzaheVar, zzaofVar, zzznVar);
        this.zzcok = new Object();
        this.zzcom = false;
    }

    private final void zznu() {
        synchronized (this.zzcok) {
            this.zzcom = true;
            if ((this.mContext instanceof Activity) && ((Activity) this.mContext).isDestroyed()) {
                this.zzcol = null;
            }
            if (this.zzcol != null) {
                if (this.zzcol.isShowing()) {
                    this.zzcol.dismiss();
                }
                this.zzcol = null;
            }
        }
    }

    @Override // com.google.android.gms.internal.zzzg, com.google.android.gms.internal.zzajb
    public final void cancel() {
        zznu();
        super.cancel();
    }

    @Override // com.google.android.gms.internal.zzzo
    protected final void zznt() {
        Window window = this.mContext instanceof Activity ? ((Activity) this.mContext).getWindow() : null;
        if (window == null || window.getDecorView() == null || ((Activity) this.mContext).isDestroyed()) {
            return;
        }
        FrameLayout frameLayout = new FrameLayout(this.mContext);
        frameLayout.setLayoutParams(new ViewGroup.LayoutParams(-1, -1));
        frameLayout.addView(this.zzcct.getView(), -1, -1);
        synchronized (this.zzcok) {
            if (this.zzcom) {
                return;
            }
            this.zzcol = new PopupWindow((View) frameLayout, 1, 1, false);
            this.zzcol.setOutsideTouchable(true);
            this.zzcol.setClippingEnabled(false);
            zzahw.zzby("Displaying the 1x1 popup off the screen.");
            try {
                this.zzcol.showAtLocation(window.getDecorView(), 0, -1, -1);
            } catch (Exception unused) {
                this.zzcol = null;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.zzzg
    public final void zzx(int i) {
        zznu();
        super.zzx(i);
    }
}
