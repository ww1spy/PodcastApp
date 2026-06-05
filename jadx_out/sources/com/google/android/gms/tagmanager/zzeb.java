package com.google.android.gms.tagmanager;

import android.os.Build;
import com.google.android.gms.internal.zzbh;
import java.util.Map;

/* loaded from: classes.dex */
final class zzeb extends zzbr {
    private static final String ID = zzbh.OS_VERSION.toString();

    public zzeb() {
        super(ID, new String[0]);
    }

    @Override // com.google.android.gms.tagmanager.zzbr
    public final boolean zzbfh() {
        return true;
    }

    @Override // com.google.android.gms.tagmanager.zzbr
    public final com.google.android.gms.internal.zzbt zzx(Map<String, com.google.android.gms.internal.zzbt> map) {
        return zzgk.zzam(Build.VERSION.RELEASE);
    }
}
