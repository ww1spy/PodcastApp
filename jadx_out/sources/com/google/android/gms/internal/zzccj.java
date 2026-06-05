package com.google.android.gms.internal;

import android.os.RemoteException;

/* loaded from: classes.dex */
public final class zzccj extends zzcce<String> {
    public zzccj(int i, String str, String str2) {
        super(0, str, str2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Override // com.google.android.gms.internal.zzcce
    /* renamed from: zze, reason: merged with bridge method [inline-methods] */
    public final String zza(zzccm zzccmVar) {
        try {
            return zzccmVar.getStringFlagValue(getKey(), zzje(), getSource());
        } catch (RemoteException unused) {
            return zzje();
        }
    }
}
