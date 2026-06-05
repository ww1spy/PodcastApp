package com.google.android.gms.dynamic;

import android.os.Bundle;
import java.util.Iterator;
import java.util.LinkedList;

/* JADX INFO: Add missing generic type declarations: [T] */
/* loaded from: classes.dex */
final class zzb<T> implements zzo<T> {
    private /* synthetic */ zza zzhct;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzb(zza zzaVar) {
        this.zzhct = zzaVar;
    }

    /* JADX WARN: Incorrect types in method signature: (TT;)V */
    @Override // com.google.android.gms.dynamic.zzo
    public final void zza(LifecycleDelegate lifecycleDelegate) {
        LinkedList linkedList;
        LinkedList linkedList2;
        LifecycleDelegate lifecycleDelegate2;
        this.zzhct.zzhcp = lifecycleDelegate;
        linkedList = this.zzhct.zzhcr;
        Iterator it = linkedList.iterator();
        while (it.hasNext()) {
            zzi zziVar = (zzi) it.next();
            lifecycleDelegate2 = this.zzhct.zzhcp;
            zziVar.zzb(lifecycleDelegate2);
        }
        linkedList2 = this.zzhct.zzhcr;
        linkedList2.clear();
        zza.zza(this.zzhct, (Bundle) null);
    }
}
