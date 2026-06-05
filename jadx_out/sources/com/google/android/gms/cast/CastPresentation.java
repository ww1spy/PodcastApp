package com.google.android.gms.cast;

import android.annotation.TargetApi;
import android.app.Presentation;
import android.content.Context;
import android.view.Display;
import android.view.Window;

@TargetApi(19)
/* loaded from: classes.dex */
public class CastPresentation extends Presentation {
    public CastPresentation(Context context, Display display) {
        super(context, display);
        zzadm();
    }

    public CastPresentation(Context context, Display display, int i) {
        super(context, display, i);
        zzadm();
    }

    private final void zzadm() {
        Window window = getWindow();
        if (window != null) {
            window.setType(2030);
            window.addFlags(268435456);
            window.addFlags(16777216);
            window.addFlags(1024);
        }
    }
}
