package com.google.android.gms.tagmanager;

import android.content.Context;
import android.provider.Settings;
import com.google.android.gms.internal.zzbh;
import java.util.Map;

/* loaded from: classes.dex */
final class zzdn extends zzbr {
    private static final String ID = zzbh.MOBILE_ADWORDS_UNIQUE_ID.toString();
    private final Context mContext;

    public zzdn(Context context) {
        super(ID, new String[0]);
        this.mContext = context;
    }

    @Override // com.google.android.gms.tagmanager.zzbr
    public final boolean zzbfh() {
        return true;
    }

    @Override // com.google.android.gms.tagmanager.zzbr
    public final com.google.android.gms.internal.zzbt zzx(Map<String, com.google.android.gms.internal.zzbt> map) {
        String string = Settings.Secure.getString(this.mContext.getContentResolver(), "android_id");
        return string == null ? zzgk.zzbil() : zzgk.zzam(string);
    }
}
