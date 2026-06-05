package com.google.android.gms.tagmanager;

import com.google.android.gms.internal.zzbh;
import java.util.Map;

/* loaded from: classes.dex */
final class zzbl extends zzga {
    private static final String ID = zzbh.ENDS_WITH.toString();

    public zzbl() {
        super(ID);
    }

    @Override // com.google.android.gms.tagmanager.zzga
    protected final boolean zza(String str, String str2, Map<String, com.google.android.gms.internal.zzbt> map) {
        return str.endsWith(str2);
    }
}
