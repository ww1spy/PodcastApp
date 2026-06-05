package com.google.android.gms.internal;

import java.lang.ref.ReferenceQueue;
import java.lang.ref.WeakReference;

/* loaded from: classes.dex */
final class zzdyt extends WeakReference<Throwable> {
    private final int zzmmk;

    public zzdyt(Throwable th, ReferenceQueue<Throwable> referenceQueue) {
        super(th, null);
        if (th == null) {
            throw new NullPointerException("The referent cannot be null");
        }
        this.zzmmk = System.identityHashCode(th);
    }

    public final boolean equals(Object obj) {
        if (obj == null || obj.getClass() != getClass()) {
            return false;
        }
        if (this == obj) {
            return true;
        }
        zzdyt zzdytVar = (zzdyt) obj;
        return this.zzmmk == zzdytVar.zzmmk && get() == zzdytVar.get();
    }

    public final int hashCode() {
        return this.zzmmk;
    }
}
