package com.google.android.gms.internal;

import android.content.Context;
import android.os.RemoteException;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import com.google.android.gms.ads.AdListener;
import com.google.android.gms.ads.AdSize;
import com.google.android.gms.ads.Correlator;
import com.google.android.gms.ads.VideoController;
import com.google.android.gms.ads.VideoOptions;
import com.google.android.gms.ads.doubleclick.AppEventListener;
import com.google.android.gms.ads.doubleclick.OnCustomRenderedAdLoadedListener;
import com.google.android.gms.common.internal.Hide;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.internal.zzks;
import java.util.concurrent.atomic.AtomicBoolean;

@Hide
@zzabh
/* loaded from: classes.dex */
public final class zzmw {
    private final zzkn zzaln;
    private VideoOptions zzamj;
    private boolean zzamp;
    private AppEventListener zzamr;
    private String zzapp;
    private zzkf zzbgt;
    private AdListener zzbgu;
    private AdSize[] zzbig;
    private final zzwe zzbjr;
    private final AtomicBoolean zzbjs;
    private final VideoController zzbjt;
    private zzle zzbju;
    private Correlator zzbjv;
    private zzlt zzbjw;
    private OnCustomRenderedAdLoadedListener zzbjx;
    private ViewGroup zzbjy;
    private int zzbjz;

    public zzmw(ViewGroup viewGroup) {
        this(viewGroup, null, false, zzkn.zzbhz, 0);
    }

    public zzmw(ViewGroup viewGroup, int i) {
        this(viewGroup, null, false, zzkn.zzbhz, i);
    }

    public zzmw(ViewGroup viewGroup, AttributeSet attributeSet, boolean z) {
        this(viewGroup, attributeSet, z, zzkn.zzbhz, 0);
    }

    public zzmw(ViewGroup viewGroup, AttributeSet attributeSet, boolean z, int i) {
        this(viewGroup, attributeSet, false, zzkn.zzbhz, i);
    }

    private zzmw(ViewGroup viewGroup, AttributeSet attributeSet, boolean z, zzkn zzknVar, int i) {
        this(viewGroup, attributeSet, z, zzknVar, null, i);
    }

    private zzmw(ViewGroup viewGroup, AttributeSet attributeSet, boolean z, zzkn zzknVar, zzlt zzltVar, int i) {
        this.zzbjr = new zzwe();
        this.zzbjt = new VideoController();
        this.zzbju = new zzmx(this);
        this.zzbjy = viewGroup;
        this.zzaln = zzknVar;
        this.zzbjw = null;
        this.zzbjs = new AtomicBoolean(false);
        this.zzbjz = i;
        if (attributeSet != null) {
            Context context = viewGroup.getContext();
            try {
                zzkr zzkrVar = new zzkr(context, attributeSet);
                this.zzbig = zzkrVar.zzi(z);
                this.zzapp = zzkrVar.getAdUnitId();
                if (viewGroup.isInEditMode()) {
                    zzako zzij = zzlc.zzij();
                    AdSize adSize = this.zzbig[0];
                    int i2 = this.zzbjz;
                    zzko zzkoVar = new zzko(context, adSize);
                    zzkoVar.zzbif = zzs(i2);
                    zzij.zza(viewGroup, zzkoVar, "Ads by Google");
                }
            } catch (IllegalArgumentException e) {
                zzlc.zzij().zza(viewGroup, new zzko(context, AdSize.BANNER), e.getMessage(), e.getMessage());
            }
        }
    }

    private static zzko zza(Context context, AdSize[] adSizeArr, int i) {
        zzko zzkoVar = new zzko(context, adSizeArr);
        zzkoVar.zzbif = zzs(i);
        return zzkoVar;
    }

    private static boolean zzs(int i) {
        return i == 1;
    }

    public final void destroy() {
        try {
            if (this.zzbjw != null) {
                this.zzbjw.destroy();
            }
        } catch (RemoteException e) {
            zzaky.zzc("Failed to destroy AdView.", e);
        }
    }

    public final AdListener getAdListener() {
        return this.zzbgu;
    }

    public final AdSize getAdSize() {
        zzko zzbq;
        try {
            if (this.zzbjw != null && (zzbq = this.zzbjw.zzbq()) != null) {
                return zzbq.zzic();
            }
        } catch (RemoteException e) {
            zzaky.zzc("Failed to get the current AdSize.", e);
        }
        if (this.zzbig != null) {
            return this.zzbig[0];
        }
        return null;
    }

    public final AdSize[] getAdSizes() {
        return this.zzbig;
    }

    public final String getAdUnitId() {
        if (this.zzapp == null && this.zzbjw != null) {
            try {
                this.zzapp = this.zzbjw.getAdUnitId();
            } catch (RemoteException e) {
                zzaky.zzc("Failed to get ad unit id.", e);
            }
        }
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

    public final VideoController getVideoController() {
        return this.zzbjt;
    }

    public final VideoOptions getVideoOptions() {
        return this.zzamj;
    }

    public final boolean isLoading() {
        try {
            if (this.zzbjw != null) {
                return this.zzbjw.isLoading();
            }
            return false;
        } catch (RemoteException e) {
            zzaky.zzc("Failed to check if ad is loading.", e);
            return false;
        }
    }

    public final void pause() {
        try {
            if (this.zzbjw != null) {
                this.zzbjw.pause();
            }
        } catch (RemoteException e) {
            zzaky.zzc("Failed to call pause.", e);
        }
    }

    public final void recordManualImpression() {
        if (this.zzbjs.getAndSet(true)) {
            return;
        }
        try {
            if (this.zzbjw != null) {
                this.zzbjw.zzbs();
            }
        } catch (RemoteException e) {
            zzaky.zzc("Failed to record impression.", e);
        }
    }

    public final void resume() {
        try {
            if (this.zzbjw != null) {
                this.zzbjw.resume();
            }
        } catch (RemoteException e) {
            zzaky.zzc("Failed to call resume.", e);
        }
    }

    public final void setAdListener(AdListener adListener) {
        this.zzbgu = adListener;
        this.zzbju.zza(adListener);
    }

    public final void setAdSizes(AdSize... adSizeArr) {
        if (this.zzbig != null) {
            throw new IllegalStateException("The ad size can only be set once on AdView.");
        }
        zza(adSizeArr);
    }

    public final void setAdUnitId(String str) {
        if (this.zzapp != null) {
            throw new IllegalStateException("The ad unit ID can only be set once on AdView.");
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

    public final void setManualImpressionsEnabled(boolean z) {
        this.zzamp = z;
        try {
            if (this.zzbjw != null) {
                this.zzbjw.setManualImpressionsEnabled(this.zzamp);
            }
        } catch (RemoteException e) {
            zzaky.zzc("Failed to set manual impressions.", e);
        }
    }

    public final void setOnCustomRenderedAdLoadedListener(OnCustomRenderedAdLoadedListener onCustomRenderedAdLoadedListener) {
        this.zzbjx = onCustomRenderedAdLoadedListener;
        try {
            if (this.zzbjw != null) {
                this.zzbjw.zza(onCustomRenderedAdLoadedListener != null ? new zzpe(onCustomRenderedAdLoadedListener) : null);
            }
        } catch (RemoteException e) {
            zzaky.zzc("Failed to set the onCustomRenderedAdLoadedListener.", e);
        }
    }

    public final void setVideoOptions(VideoOptions videoOptions) {
        this.zzamj = videoOptions;
        try {
            if (this.zzbjw != null) {
                this.zzbjw.zza(videoOptions == null ? null : new zzns(videoOptions));
            }
        } catch (RemoteException e) {
            zzaky.zzc("Failed to set video options.", e);
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
                if ((this.zzbig == null || this.zzapp == null) && this.zzbjw == null) {
                    throw new IllegalStateException("The ad size and ad unit ID must be set before loadAd is called.");
                }
                Context context = this.zzbjy.getContext();
                zzko zza = zza(context, this.zzbig, this.zzbjz);
                this.zzbjw = (zzlt) ("search_v2".equals(zza.zzbia) ? zzks.zza(context, false, (zzks.zza) new zzku(zzlc.zzik(), context, zza, this.zzapp)) : zzks.zza(context, false, (zzks.zza) new zzkt(zzlc.zzik(), context, zza, this.zzapp, this.zzbjr)));
                this.zzbjw.zza(new zzkh(this.zzbju));
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
                if (this.zzamj != null) {
                    this.zzbjw.zza(new zzns(this.zzamj));
                }
                this.zzbjw.setManualImpressionsEnabled(this.zzamp);
                try {
                    IObjectWrapper zzbp = this.zzbjw.zzbp();
                    if (zzbp != null) {
                        this.zzbjy.addView((View) com.google.android.gms.dynamic.zzn.zzy(zzbp));
                    }
                } catch (RemoteException e) {
                    zzaky.zzc("Failed to get an ad frame.", e);
                }
            }
            if (this.zzbjw.zzb(zzkn.zza(this.zzbjy.getContext(), zzmuVar))) {
                this.zzbjr.zzn(zzmuVar.zziv());
            }
        } catch (RemoteException e2) {
            zzaky.zzc("Failed to load ad.", e2);
        }
    }

    public final void zza(AdSize... adSizeArr) {
        this.zzbig = adSizeArr;
        try {
            if (this.zzbjw != null) {
                this.zzbjw.zza(zza(this.zzbjy.getContext(), this.zzbig, this.zzbjz));
            }
        } catch (RemoteException e) {
            zzaky.zzc("Failed to set the ad size.", e);
        }
        this.zzbjy.requestLayout();
    }

    public final boolean zza(zzlt zzltVar) {
        if (zzltVar == null) {
            return false;
        }
        try {
            IObjectWrapper zzbp = zzltVar.zzbp();
            if (zzbp == null || ((View) com.google.android.gms.dynamic.zzn.zzy(zzbp)).getParent() != null) {
                return false;
            }
            this.zzbjy.addView((View) com.google.android.gms.dynamic.zzn.zzy(zzbp));
            this.zzbjw = zzltVar;
            return true;
        } catch (RemoteException e) {
            zzaky.zzc("Failed to get an ad frame.", e);
            return false;
        }
    }

    public final zzmm zzbh() {
        if (this.zzbjw == null) {
            return null;
        }
        try {
            return this.zzbjw.getVideoController();
        } catch (RemoteException e) {
            zzaky.zzc("Failed to retrieve VideoController.", e);
            return null;
        }
    }
}
