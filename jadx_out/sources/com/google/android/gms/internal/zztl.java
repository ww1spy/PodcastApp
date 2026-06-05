package com.google.android.gms.internal;

import android.os.Handler;
import com.google.android.gms.common.internal.Hide;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;

@Hide
@zzabh
/* loaded from: classes.dex */
final class zztl {
    private final List<zzuk> zzaoz = new LinkedList();

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void zza(zzul zzulVar) {
        Handler handler = zzaij.zzdfn;
        Iterator<zzuk> it = this.zzaoz.iterator();
        while (it.hasNext()) {
            handler.post(new zzuj(this, it.next(), zzulVar));
        }
        this.zzaoz.clear();
    }
}
