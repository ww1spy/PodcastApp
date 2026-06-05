package com.google.android.gms.internal;

import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.ads.VideoController;
import com.google.android.gms.ads.formats.NativeAd;
import com.google.android.gms.ads.formats.UnifiedNativeAd;
import com.google.android.gms.common.internal.Hide;
import com.google.android.gms.dynamic.IObjectWrapper;
import java.util.ArrayList;
import java.util.List;

@Hide
@zzabh
/* loaded from: classes.dex */
public final class zzsn extends UnifiedNativeAd {
    private final zzqv zzcal;
    private final NativeAd.AdChoicesInfo zzcam;
    private final zzsk zzcas;
    private final List<NativeAd.Image> zzcak = new ArrayList();
    private final VideoController zzbjt = new VideoController();

    /* JADX WARN: Can't wrap try/catch for region: R(14:1|2|3|(2:5|(5:8|(1:22)(2:12|(1:14)(1:21))|(3:16|17|18)(1:20)|19|6))|24|25|(7:27|28|29|30|(2:32|33)|35|36)|41|28|29|30|(0)|35|36) */
    /* JADX WARN: Code restructure failed: missing block: B:38:0x0087, code lost:
    
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:39:0x0088, code lost:
    
        com.google.android.gms.internal.zzaky.zzb("Failed to get attribution info.", r0);
     */
    /* JADX WARN: Removed duplicated region for block: B:32:0x007a A[Catch: RemoteException -> 0x0087, TRY_LEAVE, TryCatch #2 {RemoteException -> 0x0087, blocks: (B:30:0x0072, B:32:0x007a), top: B:29:0x0072 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public zzsn(com.google.android.gms.internal.zzsk r5) {
        /*
            r4 = this;
            r4.<init>()
            java.util.ArrayList r0 = new java.util.ArrayList
            r0.<init>()
            r4.zzcak = r0
            com.google.android.gms.ads.VideoController r0 = new com.google.android.gms.ads.VideoController
            r0.<init>()
            r4.zzbjt = r0
            r4.zzcas = r5
            r5 = 0
            com.google.android.gms.internal.zzsk r0 = r4.zzcas     // Catch: android.os.RemoteException -> L55
            java.util.List r0 = r0.getImages()     // Catch: android.os.RemoteException -> L55
            if (r0 == 0) goto L5b
            java.util.Iterator r0 = r0.iterator()     // Catch: android.os.RemoteException -> L55
        L20:
            boolean r1 = r0.hasNext()     // Catch: android.os.RemoteException -> L55
            if (r1 == 0) goto L5b
            java.lang.Object r1 = r0.next()     // Catch: android.os.RemoteException -> L55
            boolean r2 = r1 instanceof android.os.IBinder     // Catch: android.os.RemoteException -> L55
            if (r2 == 0) goto L47
            android.os.IBinder r1 = (android.os.IBinder) r1     // Catch: android.os.RemoteException -> L55
            if (r1 == 0) goto L47
            java.lang.String r2 = "com.google.android.gms.ads.internal.formats.client.INativeAdImage"
            android.os.IInterface r2 = r1.queryLocalInterface(r2)     // Catch: android.os.RemoteException -> L55
            boolean r3 = r2 instanceof com.google.android.gms.internal.zzqs     // Catch: android.os.RemoteException -> L55
            if (r3 == 0) goto L40
            r1 = r2
            com.google.android.gms.internal.zzqs r1 = (com.google.android.gms.internal.zzqs) r1     // Catch: android.os.RemoteException -> L55
            goto L48
        L40:
            com.google.android.gms.internal.zzqu r2 = new com.google.android.gms.internal.zzqu     // Catch: android.os.RemoteException -> L55
            r2.<init>(r1)     // Catch: android.os.RemoteException -> L55
            r1 = r2
            goto L48
        L47:
            r1 = r5
        L48:
            if (r1 == 0) goto L20
            java.util.List<com.google.android.gms.ads.formats.NativeAd$Image> r2 = r4.zzcak     // Catch: android.os.RemoteException -> L55
            com.google.android.gms.internal.zzqv r3 = new com.google.android.gms.internal.zzqv     // Catch: android.os.RemoteException -> L55
            r3.<init>(r1)     // Catch: android.os.RemoteException -> L55
            r2.add(r3)     // Catch: android.os.RemoteException -> L55
            goto L20
        L55:
            r0 = move-exception
            java.lang.String r1 = "Failed to get image."
            com.google.android.gms.internal.zzaky.zzb(r1, r0)
        L5b:
            com.google.android.gms.internal.zzsk r0 = r4.zzcas     // Catch: android.os.RemoteException -> L69
            com.google.android.gms.internal.zzqs r0 = r0.zzkc()     // Catch: android.os.RemoteException -> L69
            if (r0 == 0) goto L6f
            com.google.android.gms.internal.zzqv r1 = new com.google.android.gms.internal.zzqv     // Catch: android.os.RemoteException -> L69
            r1.<init>(r0)     // Catch: android.os.RemoteException -> L69
            goto L70
        L69:
            r0 = move-exception
            java.lang.String r1 = "Failed to get image."
            com.google.android.gms.internal.zzaky.zzb(r1, r0)
        L6f:
            r1 = r5
        L70:
            r4.zzcal = r1
            com.google.android.gms.internal.zzsk r0 = r4.zzcas     // Catch: android.os.RemoteException -> L87
            com.google.android.gms.internal.zzqo r0 = r0.zzki()     // Catch: android.os.RemoteException -> L87
            if (r0 == 0) goto L8d
            com.google.android.gms.internal.zzqr r0 = new com.google.android.gms.internal.zzqr     // Catch: android.os.RemoteException -> L87
            com.google.android.gms.internal.zzsk r1 = r4.zzcas     // Catch: android.os.RemoteException -> L87
            com.google.android.gms.internal.zzqo r1 = r1.zzki()     // Catch: android.os.RemoteException -> L87
            r0.<init>(r1)     // Catch: android.os.RemoteException -> L87
            r5 = r0
            goto L8d
        L87:
            r0 = move-exception
            java.lang.String r1 = "Failed to get attribution info."
            com.google.android.gms.internal.zzaky.zzb(r1, r0)
        L8d:
            r4.zzcam = r5
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.zzsn.<init>(com.google.android.gms.internal.zzsk):void");
    }

    @Override // com.google.android.gms.ads.formats.UnifiedNativeAd
    public final String getAdvertiser() {
        try {
            return this.zzcas.getAdvertiser();
        } catch (RemoteException e) {
            zzaky.zzb("Failed to get attribution.", e);
            return null;
        }
    }

    @Override // com.google.android.gms.ads.formats.UnifiedNativeAd
    public final String getBody() {
        try {
            return this.zzcas.getBody();
        } catch (RemoteException e) {
            zzaky.zzb("Failed to get body.", e);
            return null;
        }
    }

    @Override // com.google.android.gms.ads.formats.UnifiedNativeAd
    public final String getCallToAction() {
        try {
            return this.zzcas.getCallToAction();
        } catch (RemoteException e) {
            zzaky.zzb("Failed to get call to action.", e);
            return null;
        }
    }

    @Override // com.google.android.gms.ads.formats.UnifiedNativeAd
    public final String getHeadline() {
        try {
            return this.zzcas.getHeadline();
        } catch (RemoteException e) {
            zzaky.zzb("Failed to get headline.", e);
            return null;
        }
    }

    @Override // com.google.android.gms.ads.formats.UnifiedNativeAd
    public final NativeAd.Image getIcon() {
        return this.zzcal;
    }

    @Override // com.google.android.gms.ads.formats.UnifiedNativeAd
    public final List<NativeAd.Image> getImages() {
        return this.zzcak;
    }

    @Override // com.google.android.gms.ads.formats.UnifiedNativeAd
    public final String getPrice() {
        try {
            return this.zzcas.getPrice();
        } catch (RemoteException e) {
            zzaky.zzb("Failed to get price.", e);
            return null;
        }
    }

    @Override // com.google.android.gms.ads.formats.UnifiedNativeAd
    public final Double getStarRating() {
        try {
            double starRating = this.zzcas.getStarRating();
            if (starRating == -1.0d) {
                return null;
            }
            return Double.valueOf(starRating);
        } catch (RemoteException e) {
            zzaky.zzb("Failed to get star rating.", e);
            return null;
        }
    }

    @Override // com.google.android.gms.ads.formats.UnifiedNativeAd
    public final String getStore() {
        try {
            return this.zzcas.getStore();
        } catch (RemoteException e) {
            zzaky.zzb("Failed to get store", e);
            return null;
        }
    }

    @Override // com.google.android.gms.ads.formats.UnifiedNativeAd
    public final VideoController getVideoController() {
        try {
            if (this.zzcas.getVideoController() != null) {
                this.zzbjt.zza(this.zzcas.getVideoController());
            }
        } catch (RemoteException e) {
            zzaky.zzb("Exception occurred while getting video controller", e);
        }
        return this.zzbjt;
    }

    @Override // com.google.android.gms.ads.formats.UnifiedNativeAd
    public final void performClick(Bundle bundle) {
        try {
            this.zzcas.performClick(bundle);
        } catch (RemoteException e) {
            zzaky.zzb("Failed to perform click.", e);
        }
    }

    @Override // com.google.android.gms.ads.formats.UnifiedNativeAd
    public final boolean recordImpression(Bundle bundle) {
        try {
            return this.zzcas.recordImpression(bundle);
        } catch (RemoteException e) {
            zzaky.zzb("Failed to record impression.", e);
            return false;
        }
    }

    @Override // com.google.android.gms.ads.formats.UnifiedNativeAd
    public final void reportTouchEvent(Bundle bundle) {
        try {
            this.zzcas.reportTouchEvent(bundle);
        } catch (RemoteException e) {
            zzaky.zzb("Failed to report touch event.", e);
        }
    }

    @Override // com.google.android.gms.ads.formats.UnifiedNativeAd
    public final Object zzbl() {
        try {
            IObjectWrapper zzkh = this.zzcas.zzkh();
            if (zzkh != null) {
                return com.google.android.gms.dynamic.zzn.zzy(zzkh);
            }
            return null;
        } catch (RemoteException e) {
            zzaky.zzb("Failed to get mediated ad.", e);
            return null;
        }
    }
}
