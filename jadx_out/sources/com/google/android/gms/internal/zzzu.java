package com.google.android.gms.internal;

import android.content.Context;
import com.google.android.gms.common.internal.Hide;
import java.util.concurrent.Future;

@Hide
@zzabh
/* loaded from: classes.dex */
public final class zzzu extends zzahs {
    private final Object mLock;
    private final zzzn zzcoa;
    private final zzahe zzcob;
    private final zzacj zzcoc;
    private final zzzy zzcor;
    private Future<zzahd> zzcos;

    public zzzu(Context context, com.google.android.gms.ads.internal.zzbb zzbbVar, zzahe zzaheVar, zzcv zzcvVar, zzzn zzznVar, zzov zzovVar) {
        this(zzaheVar, zzznVar, new zzzy(context, zzbbVar, new zzajr(context), zzcvVar, zzaheVar, zzovVar));
    }

    private zzzu(zzahe zzaheVar, zzzn zzznVar, zzzy zzzyVar) {
        this.mLock = new Object();
        this.zzcob = zzaheVar;
        this.zzcoc = zzaheVar.zzdcw;
        this.zzcoa = zzznVar;
        this.zzcor = zzzyVar;
    }

    @Override // com.google.android.gms.internal.zzahs
    public final void onStop() {
        synchronized (this.mLock) {
            if (this.zzcos != null) {
                this.zzcos.cancel(true);
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x0036  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0039  */
    @Override // com.google.android.gms.internal.zzahs
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void zzdo() {
        /*
            Method dump skipped, instructions count: 215
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.zzzu.zzdo():void");
    }
}
