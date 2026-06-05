package com.google.android.gms.tagmanager;

import com.google.android.gms.internal.zzbh;
import com.google.android.gms.internal.zzbi;
import java.util.Map;

/* loaded from: classes.dex */
final class zzt extends zzbr {
    private static final String ID = zzbh.CONSTANT.toString();
    private static final String VALUE = zzbi.VALUE.toString();

    public zzt() {
        super(ID, VALUE);
    }

    public static String zzbfj() {
        return ID;
    }

    public static String zzbfk() {
        return VALUE;
    }

    @Override // com.google.android.gms.tagmanager.zzbr
    public final boolean zzbfh() {
        return true;
    }

    @Override // com.google.android.gms.tagmanager.zzbr
    public final com.google.android.gms.internal.zzbt zzx(Map<String, com.google.android.gms.internal.zzbt> map) {
        return map.get(VALUE);
    }
}
