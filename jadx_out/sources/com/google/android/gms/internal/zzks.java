package com.google.android.gms.internal;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.IBinder;
import android.os.RemoteException;
import android.support.annotation.Nullable;
import android.support.annotation.VisibleForTesting;
import android.view.View;
import android.widget.FrameLayout;
import com.google.android.gms.common.internal.Hide;
import java.util.HashMap;

@Hide
@zzabh
/* loaded from: classes.dex */
public class zzks {
    private final Object mLock = new Object();
    private zzmb zzbih;
    private final zzkj zzbii;
    private final zzki zzbij;
    private final zznc zzbik;
    private final zzso zzbil;
    private final zzafg zzbim;
    private final zzyp zzbin;
    private final zzsp zzbio;

    /* JADX INFO: Access modifiers changed from: package-private */
    @VisibleForTesting
    /* loaded from: classes.dex */
    public abstract class zza<T> {
        /* JADX INFO: Access modifiers changed from: package-private */
        public zza() {
        }

        @Nullable
        protected abstract T zza(zzmb zzmbVar) throws RemoteException;

        @Nullable
        protected abstract T zzif() throws RemoteException;

        @Nullable
        protected final T zzig() {
            zzmb zzie = zzks.this.zzie();
            if (zzie == null) {
                zzaky.zzcz("ClientApi class cannot be loaded.");
                return null;
            }
            try {
                return zza(zzie);
            } catch (RemoteException e) {
                zzaky.zzc("Cannot invoke local loader using ClientApi class", e);
                return null;
            }
        }

        @Nullable
        protected final T zzih() {
            try {
                return zzif();
            } catch (RemoteException e) {
                zzaky.zzc("Cannot invoke remote loader", e);
                return null;
            }
        }
    }

    public zzks(zzkj zzkjVar, zzki zzkiVar, zznc zzncVar, zzso zzsoVar, zzafg zzafgVar, zzyp zzypVar, zzsp zzspVar) {
        this.zzbii = zzkjVar;
        this.zzbij = zzkiVar;
        this.zzbik = zzncVar;
        this.zzbil = zzsoVar;
        this.zzbim = zzafgVar;
        this.zzbin = zzypVar;
        this.zzbio = zzspVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @VisibleForTesting
    public static <T> T zza(Context context, boolean z, zza<T> zzaVar) {
        if (!z) {
            zzlc.zzij();
            if (!zzako.zzbb(context)) {
                zzaky.zzby("Google Play Services is not available");
                z = true;
            }
        }
        zzlc.zzij();
        int zzbd = zzako.zzbd(context);
        zzlc.zzij();
        if (zzbd > zzako.zzbc(context)) {
            z = true;
        }
        if (z) {
            T zzig = zzaVar.zzig();
            return zzig == null ? zzaVar.zzih() : zzig;
        }
        T zzih = zzaVar.zzih();
        return zzih == null ? zzaVar.zzig() : zzih;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void zza(Context context, String str) {
        Bundle bundle = new Bundle();
        bundle.putString("action", "no_ads_fallback");
        bundle.putString("flow", str);
        zzlc.zzij().zza(context, (String) null, "gmob-apps", bundle, true);
    }

    @Nullable
    private static zzmb zzid() {
        try {
            Object newInstance = zzks.class.getClassLoader().loadClass("com.google.android.gms.ads.internal.ClientApi").newInstance();
            if (newInstance instanceof IBinder) {
                return zzmc.asInterface((IBinder) newInstance);
            }
            zzaky.zzcz("ClientApi class is not an instance of IBinder");
            return null;
        } catch (Exception e) {
            zzaky.zzc("Failed to instantiate ClientApi class.", e);
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Nullable
    public final zzmb zzie() {
        zzmb zzmbVar;
        synchronized (this.mLock) {
            if (this.zzbih == null) {
                this.zzbih = zzid();
            }
            zzmbVar = this.zzbih;
        }
        return zzmbVar;
    }

    public final zzqw zza(Context context, FrameLayout frameLayout, FrameLayout frameLayout2) {
        return (zzqw) zza(context, false, (zza) new zzky(this, frameLayout, frameLayout2, context));
    }

    public final zzrb zza(View view, HashMap<String, View> hashMap, HashMap<String, View> hashMap2) {
        return (zzrb) zza(view.getContext(), false, (zza) new zzkz(this, view, hashMap, hashMap2));
    }

    public final zzlo zzb(Context context, String str, zzwf zzwfVar) {
        return (zzlo) zza(context, false, (zza) new zzkw(this, context, str, zzwfVar));
    }

    @Nullable
    public final zzyq zzb(Activity activity) {
        Intent intent = activity.getIntent();
        boolean z = false;
        if (intent.hasExtra("com.google.android.gms.ads.internal.overlay.useClientJar")) {
            z = intent.getBooleanExtra("com.google.android.gms.ads.internal.overlay.useClientJar", false);
        } else {
            zzaky.e("useClientJar flag not found in activity intent extras.");
        }
        return (zzyq) zza(activity, z, new zzlb(this, activity));
    }
}
