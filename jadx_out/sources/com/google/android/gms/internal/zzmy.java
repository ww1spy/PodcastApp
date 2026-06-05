package com.google.android.gms.internal;

import android.content.Context;
import android.os.RemoteException;
import com.google.android.gms.ads.AdListener;
import com.google.android.gms.ads.Correlator;
import com.google.android.gms.ads.doubleclick.AppEventListener;
import com.google.android.gms.ads.doubleclick.OnCustomRenderedAdLoadedListener;
import com.google.android.gms.ads.doubleclick.PublisherInterstitialAd;
import com.google.android.gms.ads.reward.RewardedVideoAdListener;
import com.google.android.gms.common.internal.Hide;
import com.google.android.gms.internal.zzks;

@Hide
@zzabh
/* loaded from: classes.dex */
public final class zzmy {
    private final Context mContext;
    private final zzkn zzaln;
    private AppEventListener zzamr;
    private String zzapp;
    private boolean zzaqf;
    private zzkf zzbgt;
    private AdListener zzbgu;
    private final zzwe zzbjr;
    private Correlator zzbjv;
    private zzlt zzbjw;
    private OnCustomRenderedAdLoadedListener zzbjx;
    private PublisherInterstitialAd zzbkb;
    private boolean zzbkc;
    private RewardedVideoAdListener zzgy;

    public zzmy(Context context) {
        this(context, zzkn.zzbhz, null);
    }

    public zzmy(Context context, PublisherInterstitialAd publisherInterstitialAd) {
        this(context, zzkn.zzbhz, publisherInterstitialAd);
    }

    private zzmy(Context context, zzkn zzknVar, PublisherInterstitialAd publisherInterstitialAd) {
        this.zzbjr = new zzwe();
        this.mContext = context;
        this.zzaln = zzknVar;
        this.zzbkb = publisherInterstitialAd;
    }

    private final void zzak(String str) {
        if (this.zzbjw == null) {
            StringBuilder sb = new StringBuilder(63 + String.valueOf(str).length());
            sb.append("The ad unit ID must be set on InterstitialAd before ");
            sb.append(str);
            sb.append(" is called.");
            throw new IllegalStateException(sb.toString());
        }
    }

    public final AdListener getAdListener() {
        return this.zzbgu;
    }

    public final String getAdUnitId() {
        return this.zzapp;
    }

    public final AppEventListener getAppEventListener() {
        return this.zzamr;
    }

    public final String getMediationAdapterClassName() {
        try {
            if (this.zzbjw != null) {
                return this.zzbjw.zzco();
            }
            return null;
        } catch (RemoteException e) {
            zzaky.zzc("Failed to get the mediation adapter class name.", e);
            return null;
        }
    }

    public final OnCustomRenderedAdLoadedListener getOnCustomRenderedAdLoadedListener() {
        return this.zzbjx;
    }

    public final boolean isLoaded() {
        try {
            if (this.zzbjw == null) {
                return false;
            }
            return this.zzbjw.isReady();
        } catch (RemoteException e) {
            zzaky.zzc("Failed to check if ad is ready.", e);
            return false;
        }
    }

    public final boolean isLoading() {
        try {
            if (this.zzbjw == null) {
                return false;
            }
            return this.zzbjw.isLoading();
        } catch (RemoteException e) {
            zzaky.zzc("Failed to check if ad is loading.", e);
            return false;
        }
    }

    public final void setAdListener(AdListener adListener) {
        try {
            this.zzbgu = adListener;
            if (this.zzbjw != null) {
                this.zzbjw.zza(adListener != null ? new zzkh(adListener) : null);
            }
        } catch (RemoteException e) {
            zzaky.zzc("Failed to set the AdListener.", e);
        }
    }

    public final void setAdUnitId(String str) {
        if (this.zzapp != null) {
            throw new IllegalStateException("The ad unit ID can only be set once on InterstitialAd.");
        }
        this.zzapp = str;
    }

    public final void setAppEventListener(AppEventListener appEventListener) {
        try {
            this.zzamr = appEventListener;
            if (this.zzbjw != null) {
                this.zzbjw.zza(appEventListener != null ? new zzkq(appEventListener) : null);
            }
        } catch (RemoteException e) {
            zzaky.zzc("Failed to set the AppEventListener.", e);
        }
    }

    public final void setCorrelator(Correlator correlator) {
        this.zzbjv = correlator;
        try {
            if (this.zzbjw != null) {
                this.zzbjw.zza(this.zzbjv == null ? null : this.zzbjv.zzbf());
            }
        } catch (RemoteException e) {
            zzaky.zzc("Failed to set correlator.", e);
        }
    }

    public final void setImmersiveMode(boolean z) {
        try {
            this.zzaqf = z;
            if (this.zzbjw != null) {
                this.zzbjw.setImmersiveMode(z);
            }
        } catch (RemoteException e) {
            zzaky.zzc("Failed to set immersive mode", e);
        }
    }

    public final void setOnCustomRenderedAdLoadedListener(OnCustomRenderedAdLoadedListener onCustomRenderedAdLoadedListener) {
        try {
            this.zzbjx = onCustomRenderedAdLoadedListener;
            if (this.zzbjw != null) {
                this.zzbjw.zza(onCustomRenderedAdLoadedListener != null ? new zzpe(onCustomRenderedAdLoadedListener) : null);
            }
        } catch (RemoteException e) {
            zzaky.zzc("Failed to set the OnCustomRenderedAdLoadedListener.", e);
        }
    }

    public final void setRewardedVideoAdListener(RewardedVideoAdListener rewardedVideoAdListener) {
        try {
            this.zzgy = rewardedVideoAdListener;
            if (this.zzbjw != null) {
                this.zzbjw.zza(rewardedVideoAdListener != null ? new zzafh(rewardedVideoAdListener) : null);
            }
        } catch (RemoteException e) {
            zzaky.zzc("Failed to set the AdListener.", e);
        }
    }

    public final void show() {
        try {
            zzak("show");
            this.zzbjw.showInterstitial();
        } catch (RemoteException e) {
            zzaky.zzc("Failed to show interstitial.", e);
        }
    }

    public final void zza(zzkf zzkfVar) {
        try {
            this.zzbgt = zzkfVar;
            if (this.zzbjw != null) {
                this.zzbjw.zza(zzkfVar != null ? new zzkg(zzkfVar) : null);
            }
        } catch (RemoteException e) {
            zzaky.zzc("Failed to set the AdClickListener.", e);
        }
    }

    public final void zza(zzmu zzmuVar) {
        try {
            if (this.zzbjw == null) {
                if (this.zzapp == null) {
                    zzak("loadAd");
                }
                zzko zzib = this.zzbkc ? zzko.zzib() : new zzko();
                zzks zzik = zzlc.zzik();
                Context context = this.mContext;
                this.zzbjw = (zzlt) zzks.zza(context, false, (zzks.zza) new zzkv(zzik, context, zzib, this.zzapp, this.zzbjr));
                if (this.zzbgu != null) {
                    this.zzbjw.zza(new zzkh(this.zzbgu));
                }
                if (this.zzbgt != null) {
                    this.zzbjw.zza(new zzkg(this.zzbgt));
                }
                if (this.zzamr != null) {
                    this.zzbjw.zza(new zzkq(this.zzamr));
                }
                if (this.zzbjx != null) {
                    this.zzbjw.zza(new zzpe(this.zzbjx));
                }
                if (this.zzbjv != null) {
                    this.zzbjw.zza(this.zzbjv.zzbf());
                }
                if (this.zzgy != null) {
                    this.zzbjw.zza(new zzafh(this.zzgy));
                }
                this.zzbjw.setImmersiveMode(this.zzaqf);
            }
            if (this.zzbjw.zzb(zzkn.zza(this.mContext, zzmuVar))) {
                this.zzbjr.zzn(zzmuVar.zziv());
            }
        } catch (RemoteException e) {
            zzaky.zzc("Failed to load ad.", e);
        }
    }

    public final void zza(boolean z) {
        this.zzbkc = true;
    }
}
