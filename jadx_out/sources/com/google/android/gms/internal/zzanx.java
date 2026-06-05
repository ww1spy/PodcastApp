package com.google.android.gms.internal;

import com.google.android.gms.common.internal.Hide;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;

@Hide
@zzabh
/* loaded from: classes.dex */
public final class zzanx implements Iterable<zzanv> {
    private final List<zzanv> zzdoo = new LinkedList();

    public static boolean zzb(zzann zzannVar) {
        zzanv zzc = zzc(zzannVar);
        if (zzc == null) {
            return false;
        }
        zzc.zzdol.abort();
        return true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static zzanv zzc(zzann zzannVar) {
        Iterator<zzanv> it = com.google.android.gms.ads.internal.zzbt.zzff().iterator();
        while (it.hasNext()) {
            zzanv next = it.next();
            if (next.zzdly == zzannVar) {
                return next;
            }
        }
        return null;
    }

    @Override // java.lang.Iterable
    public final Iterator<zzanv> iterator() {
        return this.zzdoo.iterator();
    }

    public final void zza(zzanv zzanvVar) {
        this.zzdoo.add(zzanvVar);
    }

    public final void zzb(zzanv zzanvVar) {
        this.zzdoo.remove(zzanvVar);
    }

    public final int zzts() {
        return this.zzdoo.size();
    }
}
