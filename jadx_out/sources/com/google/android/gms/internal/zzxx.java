package com.google.android.gms.internal;

import android.app.Activity;
import android.content.Context;
import android.net.Uri;
import android.os.Bundle;
import android.support.customtabs.CustomTabsIntent;
import android.text.TextUtils;
import com.google.android.gms.ads.internal.overlay.AdOverlayInfoParcel;
import com.google.android.gms.ads.mediation.MediationAdRequest;
import com.google.android.gms.ads.mediation.MediationInterstitialAdapter;
import com.google.android.gms.ads.mediation.MediationInterstitialListener;
import com.google.android.gms.common.internal.Hide;

@Hide
@zzabh
/* loaded from: classes.dex */
public final class zzxx implements MediationInterstitialAdapter {
    private Uri mUri;
    private Activity zzckp;
    private MediationInterstitialListener zzckq;

    @Override // com.google.android.gms.ads.mediation.MediationAdapter
    public final void onDestroy() {
        zzaky.zzby("Destroying AdMobCustomTabsAdapter adapter.");
    }

    @Override // com.google.android.gms.ads.mediation.MediationAdapter
    public final void onPause() {
        zzaky.zzby("Pausing AdMobCustomTabsAdapter adapter.");
    }

    @Override // com.google.android.gms.ads.mediation.MediationAdapter
    public final void onResume() {
        zzaky.zzby("Resuming AdMobCustomTabsAdapter adapter.");
    }

    @Override // com.google.android.gms.ads.mediation.MediationInterstitialAdapter
    public final void requestInterstitialAd(Context context, MediationInterstitialListener mediationInterstitialListener, Bundle bundle, MediationAdRequest mediationAdRequest, Bundle bundle2) {
        this.zzckq = mediationInterstitialListener;
        if (this.zzckq == null) {
            zzaky.zzcz("Listener not set for mediation. Returning.");
            return;
        }
        if (!(context instanceof Activity)) {
            zzaky.zzcz("AdMobCustomTabs can only work with Activity context. Bailing out.");
            this.zzckq.onAdFailedToLoad(this, 0);
            return;
        }
        if (!(com.google.android.gms.common.util.zzs.zzanr() && zzpf.zzh(context))) {
            zzaky.zzcz("Default browser does not support custom tabs. Bailing out.");
            this.zzckq.onAdFailedToLoad(this, 0);
            return;
        }
        String string = bundle.getString("tab_url");
        if (TextUtils.isEmpty(string)) {
            zzaky.zzcz("The tab_url retrieved from mediation metadata is empty. Bailing out.");
            this.zzckq.onAdFailedToLoad(this, 0);
        } else {
            this.zzckp = (Activity) context;
            this.mUri = Uri.parse(string);
            this.zzckq.onAdLoaded(this);
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationInterstitialAdapter
    public final void showInterstitial() {
        CustomTabsIntent build = new CustomTabsIntent.Builder().build();
        build.intent.setData(this.mUri);
        zzaij.zzdfn.post(new zzxz(this, new AdOverlayInfoParcel(new com.google.android.gms.ads.internal.overlay.zzc(build.intent), null, new zzxy(this), null, new zzala(0, 0, false))));
        com.google.android.gms.ads.internal.zzbt.zzep().zzpz();
    }
}
