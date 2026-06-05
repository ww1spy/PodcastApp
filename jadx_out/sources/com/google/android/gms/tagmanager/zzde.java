package com.google.android.gms.tagmanager;

import com.google.android.gms.common.internal.Hide;
import com.google.android.gms.internal.zzbh;
import java.util.Locale;
import java.util.Map;
import java.util.Set;

@Hide
/* loaded from: classes.dex */
public final class zzde extends zzbr {
    private static final String ID = zzbh.LANGUAGE.toString();

    public zzde() {
        super(ID, new String[0]);
    }

    @Override // com.google.android.gms.tagmanager.zzbr
    public final boolean zzbfh() {
        return false;
    }

    @Override // com.google.android.gms.tagmanager.zzbr
    public final /* bridge */ /* synthetic */ String zzbgp() {
        return super.zzbgp();
    }

    @Override // com.google.android.gms.tagmanager.zzbr
    public final /* bridge */ /* synthetic */ Set zzbgq() {
        return super.zzbgq();
    }

    @Override // com.google.android.gms.tagmanager.zzbr
    public final com.google.android.gms.internal.zzbt zzx(Map<String, com.google.android.gms.internal.zzbt> map) {
        String language;
        Locale locale = Locale.getDefault();
        if (locale != null && (language = locale.getLanguage()) != null) {
            return zzgk.zzam(language.toLowerCase());
        }
        return zzgk.zzbil();
    }
}
