package com.google.android.gms.internal;

import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.RemoteException;
import com.google.android.gms.common.internal.Hide;
import com.google.android.gms.dynamic.IObjectWrapper;

@Hide
@zzabh
/* loaded from: classes.dex */
public final class zzpj extends zzqt {
    private final Uri mUri;
    private final Drawable zzbxt;
    private final double zzbxu;

    public zzpj(Drawable drawable, Uri uri, double d) {
        this.zzbxt = drawable;
        this.mUri = uri;
        this.zzbxu = d;
    }

    @Override // com.google.android.gms.internal.zzqs
    public final double getScale() {
        return this.zzbxu;
    }

    @Override // com.google.android.gms.internal.zzqs
    public final Uri getUri() throws RemoteException {
        return this.mUri;
    }

    @Override // com.google.android.gms.internal.zzqs
    public final IObjectWrapper zzkb() throws RemoteException {
        return com.google.android.gms.dynamic.zzn.zzz(this.zzbxt);
    }
}
