package com.google.android.gms.ads.internal;

import android.app.Activity;
import android.content.Context;
import android.os.RemoteException;
import android.support.annotation.Keep;
import android.support.annotation.Nullable;
import android.view.View;
import android.widget.FrameLayout;
import com.google.android.gms.ads.internal.overlay.AdOverlayInfoParcel;
import com.google.android.gms.common.annotation.KeepForSdkWithMembers;
import com.google.android.gms.common.util.DynamiteApi;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.internal.zzabh;
import com.google.android.gms.internal.zzaeq;
import com.google.android.gms.internal.zzaex;
import com.google.android.gms.internal.zzaij;
import com.google.android.gms.internal.zzala;
import com.google.android.gms.internal.zzko;
import com.google.android.gms.internal.zzlo;
import com.google.android.gms.internal.zzlt;
import com.google.android.gms.internal.zzmc;
import com.google.android.gms.internal.zzmh;
import com.google.android.gms.internal.zzqj;
import com.google.android.gms.internal.zzql;
import com.google.android.gms.internal.zzqw;
import com.google.android.gms.internal.zzrb;
import com.google.android.gms.internal.zzwf;
import com.google.android.gms.internal.zzyq;
import com.google.android.gms.internal.zzza;
import java.util.HashMap;

@Keep
@DynamiteApi
@KeepForSdkWithMembers
@zzabh
/* loaded from: classes.dex */
public class ClientApi extends zzmc {
    @Override // com.google.android.gms.internal.zzmb
    public zzlo createAdLoaderBuilder(IObjectWrapper iObjectWrapper, String str, zzwf zzwfVar, int i) {
        Context context = (Context) com.google.android.gms.dynamic.zzn.zzy(iObjectWrapper);
        zzbt.zzel();
        return new zzaj(context, str, zzwfVar, new zzala(com.google.android.gms.common.zzs.GOOGLE_PLAY_SERVICES_VERSION_CODE, i, true, zzaij.zzas(context)), zzv.zzc(context));
    }

    @Override // com.google.android.gms.internal.zzmb
    public zzyq createAdOverlay(IObjectWrapper iObjectWrapper) {
        Activity activity = (Activity) com.google.android.gms.dynamic.zzn.zzy(iObjectWrapper);
        AdOverlayInfoParcel zzc = AdOverlayInfoParcel.zzc(activity.getIntent());
        if (zzc == null) {
            return new com.google.android.gms.ads.internal.overlay.zzr(activity);
        }
        switch (zzc.zzcns) {
            case 1:
                return new com.google.android.gms.ads.internal.overlay.zzq(activity);
            case 2:
                return new com.google.android.gms.ads.internal.overlay.zzx(activity);
            case 3:
                return new com.google.android.gms.ads.internal.overlay.zzy(activity);
            case 4:
                return new com.google.android.gms.ads.internal.overlay.zzs(activity, zzc);
            default:
                return new com.google.android.gms.ads.internal.overlay.zzr(activity);
        }
    }

    @Override // com.google.android.gms.internal.zzmb
    public zzlt createBannerAdManager(IObjectWrapper iObjectWrapper, zzko zzkoVar, String str, zzwf zzwfVar, int i) throws RemoteException {
        Context context = (Context) com.google.android.gms.dynamic.zzn.zzy(iObjectWrapper);
        zzbt.zzel();
        return new zzx(context, zzkoVar, str, zzwfVar, new zzala(com.google.android.gms.common.zzs.GOOGLE_PLAY_SERVICES_VERSION_CODE, i, true, zzaij.zzas(context)), zzv.zzc(context));
    }

    @Override // com.google.android.gms.internal.zzmb
    public zzza createInAppPurchaseManager(IObjectWrapper iObjectWrapper) {
        return null;
    }

    /* JADX WARN: Code restructure failed: missing block: B:13:0x0048, code lost:
    
        if (((java.lang.Boolean) com.google.android.gms.internal.zzlc.zzio().zzd(com.google.android.gms.internal.zzoi.zzbps)).booleanValue() != false) goto L11;
     */
    /* JADX WARN: Code restructure failed: missing block: B:4:0x0034, code lost:
    
        if (((java.lang.Boolean) com.google.android.gms.internal.zzlc.zzio().zzd(com.google.android.gms.internal.zzoi.zzbpr)).booleanValue() == false) goto L6;
     */
    @Override // com.google.android.gms.internal.zzmb
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public com.google.android.gms.internal.zzlt createInterstitialAdManager(com.google.android.gms.dynamic.IObjectWrapper r8, com.google.android.gms.internal.zzko r9, java.lang.String r10, com.google.android.gms.internal.zzwf r11, int r12) throws android.os.RemoteException {
        /*
            r7 = this;
            java.lang.Object r8 = com.google.android.gms.dynamic.zzn.zzy(r8)
            r1 = r8
            android.content.Context r1 = (android.content.Context) r1
            com.google.android.gms.internal.zzoi.initialize(r1)
            com.google.android.gms.internal.zzala r5 = new com.google.android.gms.internal.zzala
            com.google.android.gms.ads.internal.zzbt.zzel()
            boolean r8 = com.google.android.gms.internal.zzaij.zzas(r1)
            r0 = 1
            r2 = 12211000(0xba5338, float:1.7111256E-38)
            r5.<init>(r2, r12, r0, r8)
            java.lang.String r8 = "reward_mb"
            java.lang.String r12 = r9.zzbia
            boolean r8 = r8.equals(r12)
            if (r8 != 0) goto L36
            com.google.android.gms.internal.zzny<java.lang.Boolean> r12 = com.google.android.gms.internal.zzoi.zzbpr
            com.google.android.gms.internal.zzog r2 = com.google.android.gms.internal.zzlc.zzio()
            java.lang.Object r12 = r2.zzd(r12)
            java.lang.Boolean r12 = (java.lang.Boolean) r12
            boolean r12 = r12.booleanValue()
            if (r12 != 0) goto L4c
        L36:
            if (r8 == 0) goto L4b
            com.google.android.gms.internal.zzny<java.lang.Boolean> r8 = com.google.android.gms.internal.zzoi.zzbps
            com.google.android.gms.internal.zzog r12 = com.google.android.gms.internal.zzlc.zzio()
            java.lang.Object r8 = r12.zzd(r8)
            java.lang.Boolean r8 = (java.lang.Boolean) r8
            boolean r8 = r8.booleanValue()
            if (r8 == 0) goto L4b
            goto L4c
        L4b:
            r0 = 0
        L4c:
            if (r0 == 0) goto L5d
            com.google.android.gms.internal.zzut r8 = new com.google.android.gms.internal.zzut
            com.google.android.gms.ads.internal.zzv r9 = com.google.android.gms.ads.internal.zzv.zzc(r1)
            r0 = r8
            r2 = r10
            r3 = r11
            r4 = r5
            r5 = r9
            r0.<init>(r1, r2, r3, r4, r5)
            return r8
        L5d:
            com.google.android.gms.ads.internal.zzak r8 = new com.google.android.gms.ads.internal.zzak
            com.google.android.gms.ads.internal.zzv r6 = com.google.android.gms.ads.internal.zzv.zzc(r1)
            r0 = r8
            r2 = r9
            r3 = r10
            r4 = r11
            r0.<init>(r1, r2, r3, r4, r5, r6)
            return r8
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.ads.internal.ClientApi.createInterstitialAdManager(com.google.android.gms.dynamic.IObjectWrapper, com.google.android.gms.internal.zzko, java.lang.String, com.google.android.gms.internal.zzwf, int):com.google.android.gms.internal.zzlt");
    }

    @Override // com.google.android.gms.internal.zzmb
    public zzqw createNativeAdViewDelegate(IObjectWrapper iObjectWrapper, IObjectWrapper iObjectWrapper2) {
        return new zzqj((FrameLayout) com.google.android.gms.dynamic.zzn.zzy(iObjectWrapper), (FrameLayout) com.google.android.gms.dynamic.zzn.zzy(iObjectWrapper2));
    }

    @Override // com.google.android.gms.internal.zzmb
    public zzrb createNativeAdViewHolderDelegate(IObjectWrapper iObjectWrapper, IObjectWrapper iObjectWrapper2, IObjectWrapper iObjectWrapper3) {
        return new zzql((View) com.google.android.gms.dynamic.zzn.zzy(iObjectWrapper), (HashMap) com.google.android.gms.dynamic.zzn.zzy(iObjectWrapper2), (HashMap) com.google.android.gms.dynamic.zzn.zzy(iObjectWrapper3));
    }

    @Override // com.google.android.gms.internal.zzmb
    public zzaex createRewardedVideoAd(IObjectWrapper iObjectWrapper, zzwf zzwfVar, int i) {
        Context context = (Context) com.google.android.gms.dynamic.zzn.zzy(iObjectWrapper);
        zzbt.zzel();
        return new zzaeq(context, zzv.zzc(context), zzwfVar, new zzala(com.google.android.gms.common.zzs.GOOGLE_PLAY_SERVICES_VERSION_CODE, i, true, zzaij.zzas(context)));
    }

    @Override // com.google.android.gms.internal.zzmb
    public zzlt createSearchAdManager(IObjectWrapper iObjectWrapper, zzko zzkoVar, String str, int i) throws RemoteException {
        Context context = (Context) com.google.android.gms.dynamic.zzn.zzy(iObjectWrapper);
        zzbt.zzel();
        return new zzbn(context, zzkoVar, str, new zzala(com.google.android.gms.common.zzs.GOOGLE_PLAY_SERVICES_VERSION_CODE, i, true, zzaij.zzas(context)));
    }

    @Override // com.google.android.gms.internal.zzmb
    @Nullable
    public zzmh getMobileAdsSettingsManager(IObjectWrapper iObjectWrapper) {
        return null;
    }

    @Override // com.google.android.gms.internal.zzmb
    public zzmh getMobileAdsSettingsManagerWithClientJarVersion(IObjectWrapper iObjectWrapper, int i) {
        Context context = (Context) com.google.android.gms.dynamic.zzn.zzy(iObjectWrapper);
        zzbt.zzel();
        return zzax.zza(context, new zzala(com.google.android.gms.common.zzs.GOOGLE_PLAY_SERVICES_VERSION_CODE, i, true, zzaij.zzas(context)));
    }
}
