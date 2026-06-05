package com.google.android.gms.internal;

import com.google.android.gms.common.internal.Hide;

@Hide
/* loaded from: classes.dex */
public final class zzarj {
    public static final String VERSION = String.valueOf(com.google.android.gms.common.zzf.GOOGLE_PLAY_SERVICES_VERSION_CODE / 1000).replaceAll("(\\d+)(\\d)(\\d\\d)", "$1.$2.$3");
    public static final String zzdyr;

    static {
        String valueOf = String.valueOf(VERSION);
        zzdyr = valueOf.length() != 0 ? "ma".concat(valueOf) : new String("ma");
    }
}
