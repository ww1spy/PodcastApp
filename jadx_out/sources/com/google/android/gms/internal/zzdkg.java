package com.google.android.gms.internal;

import android.content.Context;
import com.google.android.gms.common.internal.Hide;
import java.util.HashMap;
import java.util.Map;

@Hide
/* loaded from: classes.dex */
public final class zzdkg {
    private final Context mContext;
    private final com.google.android.gms.common.util.zze zzata;
    private String zzkog;
    private Map<String, Object> zzlbb;
    private final Map<String, Object> zzlbc;
    private final zzdkq zzldn;

    public zzdkg(Context context) {
        this(context, new HashMap(), new zzdkq(context), com.google.android.gms.common.util.zzi.zzanq());
    }

    private zzdkg(Context context, Map<String, Object> map, zzdkq zzdkqVar, com.google.android.gms.common.util.zze zzeVar) {
        this.zzkog = null;
        this.zzlbb = new HashMap();
        this.mContext = context;
        this.zzata = zzeVar;
        this.zzldn = zzdkqVar;
        this.zzlbc = map;
    }

    public final void zznm(String str) {
        this.zzkog = str;
    }
}
