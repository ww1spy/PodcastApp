package com.google.android.gms.internal;

import android.content.Context;

@zzabh
/* loaded from: classes.dex */
public final class zzadm {
    public final zzip zzcvr;
    public final zzagy zzcvs;
    public final zznx zzcvt;
    public final zzaeh zzcvu;
    public final zzvm zzcvv;
    public final zzaei zzcvw;
    public final zzaej zzcvx;
    public final zzyw zzcvy;
    public final zzahc zzcvz;
    public final zzadr zzcwa;
    public final zzady zzcvq = null;
    public final boolean zzcvp = true;

    private zzadm(zzady zzadyVar, zzip zzipVar, zzagy zzagyVar, zznx zznxVar, zzaeh zzaehVar, zzvm zzvmVar, zzaei zzaeiVar, zzaej zzaejVar, zzyw zzywVar, zzahc zzahcVar, boolean z, zzadr zzadrVar) {
        this.zzcvr = zzipVar;
        this.zzcvs = zzagyVar;
        this.zzcvt = zznxVar;
        this.zzcvu = zzaehVar;
        this.zzcvv = zzvmVar;
        this.zzcvw = zzaeiVar;
        this.zzcvx = zzaejVar;
        this.zzcvy = zzywVar;
        this.zzcvz = zzahcVar;
        this.zzcwa = zzadrVar;
    }

    public static zzadm zzk(Context context) {
        com.google.android.gms.ads.internal.zzbt.zzfi().initialize(context);
        zzaen zzaenVar = new zzaen(context);
        return new zzadm(null, new zzis(), new zzagz(), new zznw(), new zzaef(context, zzaenVar.zzof()), new zzvn(), new zzael(), new zzaem(), new zzyv(), new zzaha(), true, zzaenVar);
    }
}
