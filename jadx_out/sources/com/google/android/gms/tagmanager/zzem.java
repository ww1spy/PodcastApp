package com.google.android.gms.tagmanager;

import com.google.android.gms.internal.zzbh;
import com.google.android.gms.internal.zzbi;
import java.util.Map;
import java.util.regex.Pattern;
import java.util.regex.PatternSyntaxException;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzem extends zzga {
    private static final String ID = zzbh.REGEX.toString();
    private static final String zzkrx = zzbi.IGNORE_CASE.toString();

    public zzem() {
        super(ID);
    }

    @Override // com.google.android.gms.tagmanager.zzga
    protected final boolean zza(String str, String str2, Map<String, com.google.android.gms.internal.zzbt> map) {
        try {
            return Pattern.compile(str2, zzgk.zzh(map.get(zzkrx)).booleanValue() ? 66 : 64).matcher(str).find();
        } catch (PatternSyntaxException unused) {
            return false;
        }
    }
}
