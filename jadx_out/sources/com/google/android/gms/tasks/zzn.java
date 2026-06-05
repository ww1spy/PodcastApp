package com.google.android.gms.tasks;

import android.support.annotation.NonNull;
import java.util.ArrayDeque;
import java.util.Queue;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzn<TResult> {
    private final Object mLock = new Object();
    private Queue<zzm<TResult>> zzlej;
    private boolean zzlek;

    public final void zza(@NonNull zzm<TResult> zzmVar) {
        synchronized (this.mLock) {
            if (this.zzlej == null) {
                this.zzlej = new ArrayDeque();
            }
            this.zzlej.add(zzmVar);
        }
    }

    public final void zzb(@NonNull Task<TResult> task) {
        zzm<TResult> poll;
        synchronized (this.mLock) {
            if (this.zzlej != null && !this.zzlek) {
                this.zzlek = true;
                while (true) {
                    synchronized (this.mLock) {
                        poll = this.zzlej.poll();
                        if (poll == null) {
                            this.zzlek = false;
                            return;
                        }
                    }
                    poll.onComplete(task);
                }
            }
        }
    }
}
