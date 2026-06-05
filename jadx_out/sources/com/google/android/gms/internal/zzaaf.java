package com.google.android.gms.internal;

import android.content.Context;
import android.util.DisplayMetrics;
import android.view.ViewTreeObserver;
import android.view.WindowManager;
import com.google.android.gms.common.internal.Hide;
import java.lang.ref.WeakReference;
import org.json.JSONObject;

@Hide
@zzabh
/* loaded from: classes.dex */
public final class zzaaf {
    private final Context mContext;
    private final zzov zzanh;
    private final DisplayMetrics zzaxo;
    private final zzcv zzbyz;
    private final zzahe zzcob;
    private final com.google.android.gms.ads.internal.zzbb zzcpw;
    private ViewTreeObserver.OnGlobalLayoutListener zzcpx;
    private ViewTreeObserver.OnScrollChangedListener zzcpy;
    private final Object mLock = new Object();
    private int zzavd = -1;
    private int zzave = -1;
    private zzake zzavf = new zzake(200);

    public zzaaf(Context context, zzcv zzcvVar, zzahe zzaheVar, zzov zzovVar, com.google.android.gms.ads.internal.zzbb zzbbVar) {
        this.mContext = context;
        this.zzbyz = zzcvVar;
        this.zzcob = zzaheVar;
        this.zzanh = zzovVar;
        this.zzcpw = zzbbVar;
        com.google.android.gms.ads.internal.zzbt.zzel();
        this.zzaxo = zzaij.zza((WindowManager) context.getSystemService("window"));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void zza(WeakReference<zzaof> weakReference, boolean z) {
        zzaof zzaofVar;
        if (weakReference == null || (zzaofVar = weakReference.get()) == null || zzaofVar.getView() == null) {
            return;
        }
        if (!z || this.zzavf.tryAcquire()) {
            int[] iArr = new int[2];
            zzaofVar.getView().getLocationOnScreen(iArr);
            zzlc.zzij();
            int zzb = zzako.zzb(this.zzaxo, iArr[0]);
            zzlc.zzij();
            int zzb2 = zzako.zzb(this.zzaxo, iArr[1]);
            synchronized (this.mLock) {
                if (this.zzavd != zzb || this.zzave != zzb2) {
                    this.zzavd = zzb;
                    this.zzave = zzb2;
                    zzaofVar.zzua().zza(this.zzavd, this.zzave, !z);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void zza(zzamd zzamdVar, zzaof zzaofVar, boolean z) {
        this.zzcpw.zzdx();
        zzamdVar.set(zzaofVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void zza(final JSONObject jSONObject, final zzamd zzamdVar) {
        try {
            final zzaof zza = com.google.android.gms.ads.internal.zzbt.zzem().zza(this.mContext, zzaqa.zzvj(), "native-video", false, false, this.zzbyz, this.zzcob.zzcvm.zzatz, this.zzanh, null, this.zzcpw.zzbo(), this.zzcob.zzdcu);
            zza.zza(zzaqa.zzvk());
            this.zzcpw.zze(zza);
            WeakReference weakReference = new WeakReference(zza);
            zzapu zzua = zza.zzua();
            if (this.zzcpx == null) {
                this.zzcpx = new zzaal(this, weakReference);
            }
            ViewTreeObserver.OnGlobalLayoutListener onGlobalLayoutListener = this.zzcpx;
            if (this.zzcpy == null) {
                this.zzcpy = new zzaam(this, weakReference);
            }
            zzua.zza(onGlobalLayoutListener, this.zzcpy);
            zzapu zzua2 = zza.zzua();
            zzua2.zza("/video", com.google.android.gms.ads.internal.gmsg.zzd.zzcbp);
            zzua2.zza("/videoMeta", com.google.android.gms.ads.internal.gmsg.zzd.zzcbq);
            zzua2.zza("/precache", new zzaoc());
            zzua2.zza("/delayPageLoaded", com.google.android.gms.ads.internal.gmsg.zzd.zzcbt);
            zzua2.zza("/instrument", com.google.android.gms.ads.internal.gmsg.zzd.zzcbr);
            zzua2.zza("/log", com.google.android.gms.ads.internal.gmsg.zzd.zzcbk);
            zzua2.zza("/videoClicked", com.google.android.gms.ads.internal.gmsg.zzd.zzcbl);
            zzua2.zza("/trackActiveViewUnit", new zzaaj(this));
            zzua2.zza("/untrackActiveViewUnit", new zzaak(this));
            zza.zzua().zza(new zzapw(zza, jSONObject) { // from class: com.google.android.gms.internal.zzaah
                private final JSONObject zzcqa;
                private final zzaof zzcqb;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.zzcqb = zza;
                    this.zzcqa = jSONObject;
                }

                @Override // com.google.android.gms.internal.zzapw
                public final void zzf(zzaof zzaofVar) {
                    this.zzcqb.zzb("google.afma.nativeAds.renderVideo", this.zzcqa);
                }
            });
            zza.zzua().zza(new zzapv(this, zzamdVar) { // from class: com.google.android.gms.internal.zzaai
                private final zzaaf zzcpz;
                private final zzamd zzcqc;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.zzcpz = this;
                    this.zzcqc = zzamdVar;
                }

                @Override // com.google.android.gms.internal.zzapv
                public final void zza(zzaof zzaofVar, boolean z) {
                    this.zzcpz.zza(this.zzcqc, zzaofVar, z);
                }
            });
            zza.loadUrl((String) zzlc.zzio().zzd(zzoi.zzbsl));
        } catch (Exception e) {
            zzahw.zzc("Exception occurred while getting video view", e);
            zzamdVar.set(null);
        }
    }
}
