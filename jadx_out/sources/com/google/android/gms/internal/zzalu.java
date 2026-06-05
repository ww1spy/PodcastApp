package com.google.android.gms.internal;

import com.google.android.gms.common.internal.Hide;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.Executor;

@Hide
@zzabh
/* loaded from: classes.dex */
final class zzalu {
    private final Object zzdjp = new Object();
    private final List<Runnable> zzdjq = new ArrayList();
    private boolean zzdjr = false;

    public final void zza(final Runnable runnable, final Executor executor) {
        synchronized (this.zzdjp) {
            if (this.zzdjr) {
                executor.execute(runnable);
            } else {
                this.zzdjq.add(new Runnable(executor, runnable) { // from class: com.google.android.gms.internal.zzalv
                    private final Runnable zzaot;
                    private final Executor zzdjs;

                    /* JADX INFO: Access modifiers changed from: package-private */
                    {
                        this.zzdjs = executor;
                        this.zzaot = runnable;
                    }

                    @Override // java.lang.Runnable
                    public final void run() {
                        this.zzdjs.execute(this.zzaot);
                    }
                });
            }
        }
    }

    public final void zzsf() {
        ArrayList arrayList = new ArrayList();
        synchronized (this.zzdjp) {
            if (this.zzdjr) {
                return;
            }
            arrayList.addAll(this.zzdjq);
            this.zzdjq.clear();
            this.zzdjr = true;
            ArrayList arrayList2 = arrayList;
            int size = arrayList2.size();
            int i = 0;
            while (i < size) {
                Object obj = arrayList2.get(i);
                i++;
                ((Runnable) obj).run();
            }
        }
    }
}
