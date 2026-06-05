package com.google.android.gms.internal;

import android.support.annotation.Nullable;
import com.google.android.gms.common.internal.Hide;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;

@Hide
@zzabh
/* loaded from: classes.dex */
public final class zzhh {
    private int zzayr;
    private final Object mLock = new Object();
    private List<zzhg> zzays = new LinkedList();

    public final boolean zza(zzhg zzhgVar) {
        synchronized (this.mLock) {
            return this.zzays.contains(zzhgVar);
        }
    }

    public final boolean zzb(zzhg zzhgVar) {
        synchronized (this.mLock) {
            Iterator<zzhg> it = this.zzays.iterator();
            while (it.hasNext()) {
                zzhg next = it.next();
                if (!((Boolean) zzlc.zzio().zzd(zzoi.zzbnn)).booleanValue() || com.google.android.gms.ads.internal.zzbt.zzep().zzqe().zzqp()) {
                    if (((Boolean) zzlc.zzio().zzd(zzoi.zzbnp)).booleanValue() && !com.google.android.gms.ads.internal.zzbt.zzep().zzqe().zzqr() && zzhgVar != next && next.zzgq().equals(zzhgVar.zzgq())) {
                        it.remove();
                        return true;
                    }
                } else if (zzhgVar != next && next.zzgo().equals(zzhgVar.zzgo())) {
                    it.remove();
                    return true;
                }
            }
            return false;
        }
    }

    public final void zzc(zzhg zzhgVar) {
        synchronized (this.mLock) {
            if (this.zzays.size() >= 10) {
                int size = this.zzays.size();
                StringBuilder sb = new StringBuilder(41);
                sb.append("Queue is full, current size = ");
                sb.append(size);
                zzahw.zzby(sb.toString());
                this.zzays.remove(0);
            }
            int i = this.zzayr;
            this.zzayr = i + 1;
            zzhgVar.zzo(i);
            this.zzays.add(zzhgVar);
        }
    }

    @Nullable
    public final zzhg zzgw() {
        synchronized (this.mLock) {
            zzhg zzhgVar = null;
            if (this.zzays.size() == 0) {
                zzahw.zzby("Queue empty");
                return null;
            }
            int i = 0;
            if (this.zzays.size() < 2) {
                zzhg zzhgVar2 = this.zzays.get(0);
                zzhgVar2.zzgr();
                return zzhgVar2;
            }
            int i2 = Integer.MIN_VALUE;
            int i3 = 0;
            for (zzhg zzhgVar3 : this.zzays) {
                int score = zzhgVar3.getScore();
                if (score > i2) {
                    i = i3;
                    zzhgVar = zzhgVar3;
                    i2 = score;
                }
                i3++;
            }
            this.zzays.remove(i);
            return zzhgVar;
        }
    }
}
