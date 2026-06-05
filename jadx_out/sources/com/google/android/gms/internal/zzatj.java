package com.google.android.gms.internal;

import android.content.SharedPreferences;
import android.util.Pair;
import java.util.UUID;

/* loaded from: classes.dex */
public final class zzatj {
    private final String mName;
    private final long zzeeg;
    private /* synthetic */ zzath zzeeh;

    private zzatj(zzath zzathVar, String str, long j) {
        this.zzeeh = zzathVar;
        com.google.android.gms.common.internal.zzbq.zzgv(str);
        com.google.android.gms.common.internal.zzbq.checkArgument(j > 0);
        this.mName = str;
        this.zzeeg = j;
    }

    private final void zzabg() {
        SharedPreferences sharedPreferences;
        long currentTimeMillis = this.zzeeh.zzxx().currentTimeMillis();
        sharedPreferences = this.zzeeh.zzeec;
        SharedPreferences.Editor edit = sharedPreferences.edit();
        edit.remove(zzabk());
        edit.remove(zzabl());
        edit.putLong(zzabj(), currentTimeMillis);
        edit.commit();
    }

    private final long zzabi() {
        SharedPreferences sharedPreferences;
        sharedPreferences = this.zzeeh.zzeec;
        return sharedPreferences.getLong(zzabj(), 0L);
    }

    private final String zzabj() {
        return String.valueOf(this.mName).concat(":start");
    }

    private final String zzabk() {
        return String.valueOf(this.mName).concat(":count");
    }

    private final String zzabl() {
        return String.valueOf(this.mName).concat(":value");
    }

    public final Pair<String, Long> zzabh() {
        SharedPreferences sharedPreferences;
        SharedPreferences sharedPreferences2;
        long zzabi = zzabi();
        long abs = zzabi == 0 ? 0L : Math.abs(zzabi - this.zzeeh.zzxx().currentTimeMillis());
        if (abs < this.zzeeg) {
            return null;
        }
        if (abs > (this.zzeeg << 1)) {
            zzabg();
            return null;
        }
        sharedPreferences = this.zzeeh.zzeec;
        String string = sharedPreferences.getString(zzabl(), null);
        sharedPreferences2 = this.zzeeh.zzeec;
        long j = sharedPreferences2.getLong(zzabk(), 0L);
        zzabg();
        if (string == null || j <= 0) {
            return null;
        }
        return new Pair<>(string, Long.valueOf(j));
    }

    public final void zzem(String str) {
        SharedPreferences sharedPreferences;
        SharedPreferences sharedPreferences2;
        SharedPreferences sharedPreferences3;
        if (zzabi() == 0) {
            zzabg();
        }
        if (str == null) {
            str = "";
        }
        synchronized (this) {
            sharedPreferences = this.zzeeh.zzeec;
            long j = sharedPreferences.getLong(zzabk(), 0L);
            if (j <= 0) {
                sharedPreferences3 = this.zzeeh.zzeec;
                SharedPreferences.Editor edit = sharedPreferences3.edit();
                edit.putString(zzabl(), str);
                edit.putLong(zzabk(), 1L);
                edit.apply();
                return;
            }
            long j2 = j + 1;
            boolean z = (UUID.randomUUID().getLeastSignificantBits() & Long.MAX_VALUE) < Long.MAX_VALUE / j2;
            sharedPreferences2 = this.zzeeh.zzeec;
            SharedPreferences.Editor edit2 = sharedPreferences2.edit();
            if (z) {
                edit2.putString(zzabl(), str);
            }
            edit2.putLong(zzabk(), j2);
            edit2.apply();
        }
    }
}
