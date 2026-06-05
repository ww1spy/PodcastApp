package com.google.android.gms.tagmanager;

import android.content.Context;
import com.google.android.gms.common.internal.Hide;

@Hide
/* loaded from: classes.dex */
public final class zzbb implements zzby {
    private static final Object zzkmq = new Object();
    private static zzbb zzkpe;
    private zzek zzkns;
    private zzbz zzkpf;

    private zzbb(Context context) {
        this(zzca.zzen(context), new zzfm());
    }

    private zzbb(zzbz zzbzVar, zzek zzekVar) {
        this.zzkpf = zzbzVar;
        this.zzkns = zzekVar;
    }

    public static zzby zzeh(Context context) {
        zzbb zzbbVar;
        synchronized (zzkmq) {
            if (zzkpe == null) {
                zzkpe = new zzbb(context);
            }
            zzbbVar = zzkpe;
        }
        return zzbbVar;
    }

    @Override // com.google.android.gms.tagmanager.zzby
    public final boolean zzlr(String str) {
        if (this.zzkns.zzaas()) {
            this.zzkpf.zzlw(str);
            return true;
        }
        zzdj.zzcz("Too many urls sent too quickly with the TagManagerSender, rate limiting invoked.");
        return false;
    }
}
