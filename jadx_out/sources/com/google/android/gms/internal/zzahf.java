package com.google.android.gms.internal;

import android.os.Bundle;
import android.os.Parcelable;
import android.os.SystemClock;
import com.google.android.gms.common.internal.Hide;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedList;

@Hide
@zzabh
/* loaded from: classes.dex */
public final class zzahf {
    private final Object mLock;
    private final zzahq zzatv;
    private boolean zzcwy;
    private final LinkedList<zzahg> zzdcx;
    private final String zzdcy;
    private final String zzdcz;
    private long zzdda;
    private long zzddb;
    private long zzddc;
    private long zzddd;
    private long zzdde;
    private long zzddf;

    private zzahf(zzahq zzahqVar, String str, String str2) {
        this.mLock = new Object();
        this.zzdda = -1L;
        this.zzddb = -1L;
        this.zzcwy = false;
        this.zzddc = -1L;
        this.zzddd = 0L;
        this.zzdde = -1L;
        this.zzddf = -1L;
        this.zzatv = zzahqVar;
        this.zzdcy = str;
        this.zzdcz = str2;
        this.zzdcx = new LinkedList<>();
    }

    public zzahf(String str, String str2) {
        this(com.google.android.gms.ads.internal.zzbt.zzeq(), str, str2);
    }

    public final Bundle toBundle() {
        Bundle bundle;
        synchronized (this.mLock) {
            bundle = new Bundle();
            bundle.putString("seq_num", this.zzdcy);
            bundle.putString("slotid", this.zzdcz);
            bundle.putBoolean("ismediation", this.zzcwy);
            bundle.putLong("treq", this.zzdde);
            bundle.putLong("tresponse", this.zzddf);
            bundle.putLong("timp", this.zzddb);
            bundle.putLong("tload", this.zzddc);
            bundle.putLong("pcc", this.zzddd);
            bundle.putLong("tfetch", this.zzdda);
            ArrayList<? extends Parcelable> arrayList = new ArrayList<>();
            Iterator<zzahg> it = this.zzdcx.iterator();
            while (it.hasNext()) {
                arrayList.add(it.next().toBundle());
            }
            bundle.putParcelableArrayList("tclick", arrayList);
        }
        return bundle;
    }

    public final void zzh(long j) {
        synchronized (this.mLock) {
            this.zzddf = j;
            if (this.zzddf != -1) {
                this.zzatv.zza(this);
            }
        }
    }

    public final void zzi(long j) {
        synchronized (this.mLock) {
            if (this.zzddf != -1) {
                this.zzdda = j;
                this.zzatv.zza(this);
            }
        }
    }

    public final void zzn(zzkk zzkkVar) {
        synchronized (this.mLock) {
            this.zzdde = SystemClock.elapsedRealtime();
            this.zzatv.zzb(zzkkVar, this.zzdde);
        }
    }

    public final void zzpk() {
        synchronized (this.mLock) {
            if (this.zzddf != -1 && this.zzddb == -1) {
                this.zzddb = SystemClock.elapsedRealtime();
                this.zzatv.zza(this);
            }
            this.zzatv.zzpk();
        }
    }

    public final void zzpl() {
        synchronized (this.mLock) {
            if (this.zzddf != -1) {
                zzahg zzahgVar = new zzahg();
                zzahgVar.zzpp();
                this.zzdcx.add(zzahgVar);
                this.zzddd++;
                this.zzatv.zzpl();
                this.zzatv.zza(this);
            }
        }
    }

    public final void zzpm() {
        synchronized (this.mLock) {
            if (this.zzddf != -1 && !this.zzdcx.isEmpty()) {
                zzahg last = this.zzdcx.getLast();
                if (last.zzpn() == -1) {
                    last.zzpo();
                    this.zzatv.zza(this);
                }
            }
        }
    }

    public final void zzx(boolean z) {
        synchronized (this.mLock) {
            if (this.zzddf != -1) {
                this.zzddc = SystemClock.elapsedRealtime();
                if (!z) {
                    this.zzddb = this.zzddc;
                    this.zzatv.zza(this);
                }
            }
        }
    }

    public final void zzy(boolean z) {
        synchronized (this.mLock) {
            if (this.zzddf != -1) {
                this.zzcwy = z;
                this.zzatv.zza(this);
            }
        }
    }
}
