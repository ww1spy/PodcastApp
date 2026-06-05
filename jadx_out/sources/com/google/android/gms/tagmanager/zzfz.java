package com.google.android.gms.tagmanager;

import com.google.android.gms.internal.zzbh;
import java.util.Map;

/* loaded from: classes.dex */
final class zzfz extends zzga {
    private static final String ID = zzbh.STARTS_WITH.toString();

    public zzfz() {
        super(ID);
    }

    @Override // com.google.android.gms.tagmanager.zzga
    protected final boolean zza(String str, String str2, Map<String, com.google.android.gms.internal.zzbt> map) {
        return str.startsWith(str2);
    }
}
