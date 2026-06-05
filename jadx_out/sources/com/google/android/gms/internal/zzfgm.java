package com.google.android.gms.internal;

import com.google.android.gms.internal.zzfjc;

/* loaded from: classes.dex */
public abstract class zzfgm<MessageType extends zzfjc> implements zzfjl<MessageType> {
    private static final zzfhm zzpns = zzfhm.zzczf();

    @Override // com.google.android.gms.internal.zzfjl
    public final /* synthetic */ Object zzc(zzfhb zzfhbVar, zzfhm zzfhmVar) throws zzfie {
        zzfjc zzfjcVar = (zzfjc) zze(zzfhbVar, zzfhmVar);
        if (zzfjcVar == null || zzfjcVar.isInitialized()) {
            return zzfjcVar;
        }
        throw (zzfjcVar instanceof zzfgj ? new zzfkm((zzfgj) zzfjcVar) : zzfjcVar instanceof zzfgl ? new zzfkm((zzfgl) zzfjcVar) : new zzfkm(zzfjcVar)).zzdbz().zzi(zzfjcVar);
    }
}
