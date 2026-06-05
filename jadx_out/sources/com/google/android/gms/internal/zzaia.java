package com.google.android.gms.internal;

import android.os.Bundle;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArraySet;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzaia extends zzaib {
    private /* synthetic */ zzahy zzdfg;
    private /* synthetic */ Bundle zzdfh;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzaia(zzahy zzahyVar, Bundle bundle) {
        super(null);
        this.zzdfg = zzahyVar;
        this.zzdfh = bundle;
    }

    @Override // com.google.android.gms.internal.zzahs
    public final void zzdo() {
        CopyOnWriteArraySet copyOnWriteArraySet;
        copyOnWriteArraySet = this.zzdfg.zzdeu;
        Iterator it = copyOnWriteArraySet.iterator();
        while (it.hasNext()) {
            ((zzaic) it.next()).zzb(this.zzdfh);
        }
    }
}
