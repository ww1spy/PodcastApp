package com.google.android.gms.tagmanager;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.SharedPreferences;
import android.support.annotation.VisibleForTesting;
import com.google.android.gms.common.internal.Hide;
import java.util.Random;

@Hide
/* loaded from: classes.dex */
public final class zzai {
    private final Context mContext;
    private final Random zzbje;
    private final String zzknc;

    public zzai(Context context, String str) {
        this(context, str, new Random());
    }

    @VisibleForTesting
    private zzai(Context context, String str, Random random) {
        this.mContext = (Context) com.google.android.gms.common.internal.zzbq.checkNotNull(context);
        this.zzknc = (String) com.google.android.gms.common.internal.zzbq.checkNotNull(str);
        this.zzbje = random;
    }

    private final SharedPreferences zzbga() {
        Context context = this.mContext;
        String valueOf = String.valueOf("_gtmContainerRefreshPolicy_");
        String valueOf2 = String.valueOf(this.zzknc);
        return context.getSharedPreferences(valueOf2.length() != 0 ? valueOf.concat(valueOf2) : new String(valueOf), 0);
    }

    private final long zzg(long j, long j2) {
        long max = Math.max(0L, zzbga().getLong("FORBIDDEN_COUNT", 0L));
        return this.zzbje.nextFloat() * ((float) (j + ((((float) max) / ((float) ((max + Math.max(0L, r0.getLong("SUCCESSFUL_COUNT", 0L))) + 1))) * ((float) (j2 - j)))));
    }

    public final long zzbfw() {
        return 43200000 + zzg(7200000L, 259200000L);
    }

    public final long zzbfx() {
        return 3600000 + zzg(600000L, 86400000L);
    }

    @SuppressLint({"CommitPrefEdits"})
    public final void zzbfy() {
        SharedPreferences zzbga = zzbga();
        long j = zzbga.getLong("FORBIDDEN_COUNT", 0L);
        long j2 = zzbga.getLong("SUCCESSFUL_COUNT", 0L);
        SharedPreferences.Editor edit = zzbga.edit();
        long min = j == 0 ? 3L : Math.min(10L, j + 1);
        long max = Math.max(0L, Math.min(j2, 10 - min));
        edit.putLong("FORBIDDEN_COUNT", min);
        edit.putLong("SUCCESSFUL_COUNT", max);
        edit.apply();
    }

    @SuppressLint({"CommitPrefEdits"})
    public final void zzbfz() {
        SharedPreferences zzbga = zzbga();
        long j = zzbga.getLong("SUCCESSFUL_COUNT", 0L);
        long j2 = zzbga.getLong("FORBIDDEN_COUNT", 0L);
        long min = Math.min(10L, j + 1);
        long max = Math.max(0L, Math.min(j2, 10 - min));
        SharedPreferences.Editor edit = zzbga.edit();
        edit.putLong("SUCCESSFUL_COUNT", min);
        edit.putLong("FORBIDDEN_COUNT", max);
        edit.apply();
    }
}
