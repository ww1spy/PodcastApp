package com.google.android.gms.internal;

import android.graphics.drawable.Drawable;
import android.net.Uri;
import com.google.android.gms.ads.formats.NativeAd;
import com.google.android.gms.common.internal.Hide;

@Hide
@zzabh
/* loaded from: classes.dex */
public final class zzqv extends NativeAd.Image {
    private final Drawable mDrawable;
    private final Uri mUri;
    private final double zzbxu;
    private final zzqs zzcai;

    /* JADX WARN: Can't wrap try/catch for region: R(14:1|(2:2|3)|(11:5|6|7|8|9|10|11|12|13|14|15)|24|6|7|8|9|10|11|12|13|14|15) */
    /* JADX WARN: Can't wrap try/catch for region: R(15:1|2|3|(11:5|6|7|8|9|10|11|12|13|14|15)|24|6|7|8|9|10|11|12|13|14|15) */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x0038, code lost:
    
        r5 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x0039, code lost:
    
        com.google.android.gms.internal.zzaky.zzb("Failed to get scale.", r5);
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x0026, code lost:
    
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x0027, code lost:
    
        com.google.android.gms.internal.zzaky.zzb("Failed to get uri.", r0);
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public zzqv(com.google.android.gms.internal.zzqs r5) {
        /*
            r4 = this;
            r4.<init>()
            r4.zzcai = r5
            r5 = 0
            com.google.android.gms.internal.zzqs r0 = r4.zzcai     // Catch: android.os.RemoteException -> L15
            com.google.android.gms.dynamic.IObjectWrapper r0 = r0.zzkb()     // Catch: android.os.RemoteException -> L15
            if (r0 == 0) goto L1b
            java.lang.Object r0 = com.google.android.gms.dynamic.zzn.zzy(r0)     // Catch: android.os.RemoteException -> L15
            android.graphics.drawable.Drawable r0 = (android.graphics.drawable.Drawable) r0     // Catch: android.os.RemoteException -> L15
            goto L1c
        L15:
            r0 = move-exception
            java.lang.String r1 = "Failed to get drawable."
            com.google.android.gms.internal.zzaky.zzb(r1, r0)
        L1b:
            r0 = r5
        L1c:
            r4.mDrawable = r0
            com.google.android.gms.internal.zzqs r0 = r4.zzcai     // Catch: android.os.RemoteException -> L26
            android.net.Uri r0 = r0.getUri()     // Catch: android.os.RemoteException -> L26
            r5 = r0
            goto L2c
        L26:
            r0 = move-exception
            java.lang.String r1 = "Failed to get uri."
            com.google.android.gms.internal.zzaky.zzb(r1, r0)
        L2c:
            r4.mUri = r5
            r0 = 4607182418800017408(0x3ff0000000000000, double:1.0)
            com.google.android.gms.internal.zzqs r5 = r4.zzcai     // Catch: android.os.RemoteException -> L38
            double r2 = r5.getScale()     // Catch: android.os.RemoteException -> L38
            r0 = r2
            goto L3e
        L38:
            r5 = move-exception
            java.lang.String r2 = "Failed to get scale."
            com.google.android.gms.internal.zzaky.zzb(r2, r5)
        L3e:
            r4.zzbxu = r0
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.zzqv.<init>(com.google.android.gms.internal.zzqs):void");
    }

    @Override // com.google.android.gms.ads.formats.NativeAd.Image
    public final Drawable getDrawable() {
        return this.mDrawable;
    }

    @Override // com.google.android.gms.ads.formats.NativeAd.Image
    public final double getScale() {
        return this.zzbxu;
    }

    @Override // com.google.android.gms.ads.formats.NativeAd.Image
    public final Uri getUri() {
        return this.mUri;
    }
}
