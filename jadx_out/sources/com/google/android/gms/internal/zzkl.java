package com.google.android.gms.internal;

import android.location.Location;
import android.os.Bundle;
import android.support.annotation.Nullable;
import com.google.android.gms.common.internal.Hide;
import java.util.ArrayList;
import java.util.List;

@Hide
@zzabh
/* loaded from: classes.dex */
public final class zzkl {
    private Bundle mExtras;
    private boolean zzamp;
    private long zzbhl;
    private int zzbhm;
    private List<String> zzbhn;
    private boolean zzbho;
    private int zzbhp;
    private String zzbhq;
    private zzno zzbhr;
    private String zzbhs;
    private Bundle zzbht;
    private Bundle zzbhu;
    private List<String> zzbhv;
    private String zzbhw;
    private String zzbhx;
    private boolean zzbhy;
    private Location zzhl;

    public zzkl() {
        this.zzbhl = -1L;
        this.mExtras = new Bundle();
        this.zzbhm = -1;
        this.zzbhn = new ArrayList();
        this.zzbho = false;
        this.zzbhp = -1;
        this.zzamp = false;
        this.zzbhq = null;
        this.zzbhr = null;
        this.zzhl = null;
        this.zzbhs = null;
        this.zzbht = new Bundle();
        this.zzbhu = new Bundle();
        this.zzbhv = new ArrayList();
        this.zzbhw = null;
        this.zzbhx = null;
        this.zzbhy = false;
    }

    public zzkl(zzkk zzkkVar) {
        this.zzbhl = zzkkVar.zzbgv;
        this.mExtras = zzkkVar.extras;
        this.zzbhm = zzkkVar.zzbgw;
        this.zzbhn = zzkkVar.zzbgx;
        this.zzbho = zzkkVar.zzbgy;
        this.zzbhp = zzkkVar.zzbgz;
        this.zzamp = zzkkVar.zzbha;
        this.zzbhq = zzkkVar.zzbhb;
        this.zzbhr = zzkkVar.zzbhc;
        this.zzhl = zzkkVar.zzbhd;
        this.zzbhs = zzkkVar.zzbhe;
        this.zzbht = zzkkVar.zzbhf;
        this.zzbhu = zzkkVar.zzbhg;
        this.zzbhv = zzkkVar.zzbhh;
        this.zzbhw = zzkkVar.zzbhi;
        this.zzbhx = zzkkVar.zzbhj;
    }

    public final zzkl zza(@Nullable Location location) {
        this.zzhl = null;
        return this;
    }

    public final zzkk zzia() {
        return new zzkk(7, this.zzbhl, this.mExtras, this.zzbhm, this.zzbhn, this.zzbho, this.zzbhp, this.zzamp, this.zzbhq, this.zzbhr, this.zzhl, this.zzbhs, this.zzbht, this.zzbhu, this.zzbhv, this.zzbhw, this.zzbhx, false);
    }
}
