package com.google.android.gms.internal;

import android.support.annotation.Nullable;
import android.text.TextUtils;
import com.google.android.gms.common.internal.Hide;
import java.util.LinkedHashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;

@Hide
@zzabh
/* loaded from: classes.dex */
public final class zzov {
    private boolean zzbwc;
    private String zzbwv;

    @Nullable
    private zzov zzbww;
    private final List<zzot> zzbwt = new LinkedList();
    private final Map<String, String> zzbwu = new LinkedHashMap();
    private final Object mLock = new Object();

    public zzov(boolean z, String str, String str2) {
        this.zzbwc = z;
        this.zzbwu.put("action", str);
        this.zzbwu.put("ad_format", str2);
    }

    public final boolean zza(zzot zzotVar, long j, String... strArr) {
        synchronized (this.mLock) {
            for (String str : strArr) {
                this.zzbwt.add(new zzot(j, str, zzotVar));
            }
        }
        return true;
    }

    public final boolean zza(@Nullable zzot zzotVar, String... strArr) {
        if (!this.zzbwc || zzotVar == null) {
            return false;
        }
        return zza(zzotVar, com.google.android.gms.ads.internal.zzbt.zzes().elapsedRealtime(), strArr);
    }

    public final void zzao(String str) {
        if (this.zzbwc) {
            synchronized (this.mLock) {
                this.zzbwv = str;
            }
        }
    }

    public final void zzc(@Nullable zzov zzovVar) {
        synchronized (this.mLock) {
            this.zzbww = zzovVar;
        }
    }

    @Nullable
    public final zzot zzd(long j) {
        if (this.zzbwc) {
            return new zzot(j, null, null);
        }
        return null;
    }

    public final void zzf(String str, String str2) {
        zzol zzpv;
        if (!this.zzbwc || TextUtils.isEmpty(str2) || (zzpv = com.google.android.gms.ads.internal.zzbt.zzep().zzpv()) == null) {
            return;
        }
        synchronized (this.mLock) {
            zzop zzam = zzpv.zzam(str);
            Map<String, String> map = this.zzbwu;
            map.put(str, zzam.zze(map.get(str), str2));
        }
    }

    public final zzot zzjo() {
        return zzd(com.google.android.gms.ads.internal.zzbt.zzes().elapsedRealtime());
    }

    public final String zzjp() {
        String sb;
        StringBuilder sb2 = new StringBuilder();
        synchronized (this.mLock) {
            for (zzot zzotVar : this.zzbwt) {
                long time = zzotVar.getTime();
                String zzjl = zzotVar.zzjl();
                zzot zzjm = zzotVar.zzjm();
                if (zzjm != null && time > 0) {
                    long time2 = time - zzjm.getTime();
                    sb2.append(zzjl);
                    sb2.append('.');
                    sb2.append(time2);
                    sb2.append(',');
                }
            }
            this.zzbwt.clear();
            if (!TextUtils.isEmpty(this.zzbwv)) {
                sb2.append(this.zzbwv);
            } else if (sb2.length() > 0) {
                sb2.setLength(sb2.length() - 1);
            }
            sb = sb2.toString();
        }
        return sb;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final Map<String, String> zzjq() {
        synchronized (this.mLock) {
            zzol zzpv = com.google.android.gms.ads.internal.zzbt.zzep().zzpv();
            if (zzpv != null && this.zzbww != null) {
                return zzpv.zza(this.zzbwu, this.zzbww.zzjq());
            }
            return this.zzbwu;
        }
    }

    public final zzot zzjr() {
        synchronized (this.mLock) {
        }
        return null;
    }
}
