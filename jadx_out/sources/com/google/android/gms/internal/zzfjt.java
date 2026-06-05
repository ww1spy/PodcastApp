package com.google.android.gms.internal;

import java.util.Iterator;
import java.util.NoSuchElementException;
import java.util.Stack;

/* loaded from: classes.dex */
final class zzfjt implements Iterator<zzfgy> {
    private final Stack<zzfjq> zzpry;
    private zzfgy zzprz;

    private zzfjt(zzfgs zzfgsVar) {
        this.zzpry = new Stack<>();
        this.zzprz = zzbc(zzfgsVar);
    }

    private final zzfgy zzbc(zzfgs zzfgsVar) {
        while (zzfgsVar instanceof zzfjq) {
            zzfjq zzfjqVar = (zzfjq) zzfgsVar;
            this.zzpry.push(zzfjqVar);
            zzfgsVar = zzfjqVar.zzprt;
        }
        return (zzfgy) zzfgsVar;
    }

    private final zzfgy zzdbi() {
        zzfgs zzfgsVar;
        while (!this.zzpry.isEmpty()) {
            zzfgsVar = this.zzpry.pop().zzpru;
            zzfgy zzbc = zzbc(zzfgsVar);
            if (!zzbc.isEmpty()) {
                return zzbc;
            }
        }
        return null;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.zzprz != null;
    }

    @Override // java.util.Iterator
    public final /* synthetic */ zzfgy next() {
        if (this.zzprz == null) {
            throw new NoSuchElementException();
        }
        zzfgy zzfgyVar = this.zzprz;
        this.zzprz = zzdbi();
        return zzfgyVar;
    }

    @Override // java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException();
    }
}
