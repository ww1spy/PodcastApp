package com.google.android.gms.tagmanager;

import com.google.android.gms.common.internal.Hide;
import com.google.android.gms.internal.zzbh;
import java.util.Map;

@Hide
/* loaded from: classes.dex */
public final class zzbm extends zzga {
    private static final String ID = zzbh.EQUALS.toString();

    public zzbm() {
        super(ID);
    }

    @Override // com.google.android.gms.tagmanager.zzga
    protected final boolean zza(String str, String str2, Map<String, com.google.android.gms.internal.zzbt> map) {
        return str.equals(str2);
    }
}
