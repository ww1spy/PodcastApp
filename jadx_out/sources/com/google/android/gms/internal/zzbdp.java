package com.google.android.gms.internal;

import android.content.Context;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import android.os.RemoteException;
import android.support.annotation.NonNull;
import android.text.TextUtils;
import com.google.android.gms.cast.ApplicationMetadata;
import com.google.android.gms.cast.Cast;
import com.google.android.gms.cast.CastDevice;
import com.google.android.gms.cast.CastStatusCodes;
import com.google.android.gms.cast.LaunchOptions;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.internal.BinderWrapper;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.atomic.AtomicLong;

/* loaded from: classes.dex */
public final class zzbdp extends com.google.android.gms.common.internal.zzab<zzbeb> {
    private static final zzbei zzeus = new zzbei("CastClientImpl");
    private static final Object zzfmt = new Object();
    private static final Object zzfmu = new Object();
    private final Bundle mExtras;
    private final Cast.Listener zzetn;
    private double zzexh;
    private boolean zzexi;
    private final CastDevice zzfar;
    private ApplicationMetadata zzfmc;
    private final Map<String, Cast.MessageReceivedCallback> zzfmd;
    private final long zzfme;
    private zzbdr zzfmf;
    private String zzfmg;
    private boolean zzfmh;
    private boolean zzfmi;
    private boolean zzfmj;
    private int zzfmk;
    private int zzfml;
    private final AtomicLong zzfmm;
    private String zzfmn;
    private String zzfmo;
    private Bundle zzfmp;
    private final Map<Long, com.google.android.gms.common.api.internal.zzn<Status>> zzfmq;
    private com.google.android.gms.common.api.internal.zzn<Cast.ApplicationConnectionResult> zzfmr;
    private com.google.android.gms.common.api.internal.zzn<Status> zzfms;

    public zzbdp(Context context, Looper looper, com.google.android.gms.common.internal.zzr zzrVar, CastDevice castDevice, long j, Cast.Listener listener, Bundle bundle, GoogleApiClient.ConnectionCallbacks connectionCallbacks, GoogleApiClient.OnConnectionFailedListener onConnectionFailedListener) {
        super(context, looper, 10, zzrVar, connectionCallbacks, onConnectionFailedListener);
        this.zzfar = castDevice;
        this.zzetn = listener;
        this.zzfme = j;
        this.mExtras = bundle;
        this.zzfmd = new HashMap();
        this.zzfmm = new AtomicLong(0L);
        this.zzfmq = new HashMap();
        zzago();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ com.google.android.gms.common.api.internal.zzn zza(zzbdp zzbdpVar, com.google.android.gms.common.api.internal.zzn zznVar) {
        zzbdpVar.zzfmr = null;
        return null;
    }

    private final void zza(com.google.android.gms.common.api.internal.zzn<Cast.ApplicationConnectionResult> zznVar) {
        synchronized (zzfmt) {
            if (this.zzfmr != null) {
                this.zzfmr.setResult(new zzbdq(new Status(CastStatusCodes.CANCELED)));
            }
            this.zzfmr = zznVar;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void zza(zzbdd zzbddVar) {
        boolean z;
        String zzagl = zzbddVar.zzagl();
        if (zzbdw.zza(zzagl, this.zzfmg)) {
            z = false;
        } else {
            this.zzfmg = zzagl;
            z = true;
        }
        zzeus.zzb("hasChanged=%b, mFirstApplicationStatusUpdate=%b", Boolean.valueOf(z), Boolean.valueOf(this.zzfmh));
        if (this.zzetn != null && (z || this.zzfmh)) {
            this.zzetn.onApplicationStatusChanged();
        }
        this.zzfmh = false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void zza(zzbdx zzbdxVar) {
        boolean z;
        boolean z2;
        boolean z3;
        ApplicationMetadata applicationMetadata = zzbdxVar.getApplicationMetadata();
        if (!zzbdw.zza(applicationMetadata, this.zzfmc)) {
            this.zzfmc = applicationMetadata;
            this.zzetn.onApplicationMetadataChanged(this.zzfmc);
        }
        double volume = zzbdxVar.getVolume();
        if (Double.isNaN(volume) || Math.abs(volume - this.zzexh) <= 1.0E-7d) {
            z = false;
        } else {
            this.zzexh = volume;
            z = true;
        }
        boolean zzagw = zzbdxVar.zzagw();
        if (zzagw != this.zzexi) {
            this.zzexi = zzagw;
            z = true;
        }
        zzeus.zzb("hasVolumeChanged=%b, mFirstDeviceStatusUpdate=%b", Boolean.valueOf(z), Boolean.valueOf(this.zzfmi));
        if (this.zzetn != null && (z || this.zzfmi)) {
            this.zzetn.onVolumeChanged();
        }
        int activeInputState = zzbdxVar.getActiveInputState();
        if (activeInputState != this.zzfmk) {
            this.zzfmk = activeInputState;
            z2 = true;
        } else {
            z2 = false;
        }
        zzeus.zzb("hasActiveInputChanged=%b, mFirstDeviceStatusUpdate=%b", Boolean.valueOf(z2), Boolean.valueOf(this.zzfmi));
        if (this.zzetn != null && (z2 || this.zzfmi)) {
            this.zzetn.onActiveInputStateChanged(this.zzfmk);
        }
        int standbyState = zzbdxVar.getStandbyState();
        if (standbyState != this.zzfml) {
            this.zzfml = standbyState;
            z3 = true;
        } else {
            z3 = false;
        }
        zzeus.zzb("hasStandbyStateChanged=%b, mFirstDeviceStatusUpdate=%b", Boolean.valueOf(z3), Boolean.valueOf(this.zzfmi));
        if (this.zzetn != null && (z3 || this.zzfmi)) {
            this.zzetn.onStandbyStateChanged(this.zzfml);
        }
        this.zzfmi = false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void zzago() {
        this.zzfmj = false;
        this.zzfmk = -1;
        this.zzfml = -1;
        this.zzfmc = null;
        this.zzfmg = null;
        this.zzexh = 0.0d;
        this.zzexi = false;
    }

    private final void zzagq() {
        zzeus.zzb("removing all MessageReceivedCallbacks", new Object[0]);
        synchronized (this.zzfmd) {
            this.zzfmd.clear();
        }
    }

    private final void zzagr() throws IllegalStateException {
        if (!this.zzfmj || this.zzfmf == null || this.zzfmf.isDisposed()) {
            throw new IllegalStateException("Not connected to a device");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ com.google.android.gms.common.api.internal.zzn zzb(zzbdp zzbdpVar, com.google.android.gms.common.api.internal.zzn zznVar) {
        zzbdpVar.zzfms = null;
        return null;
    }

    private final void zzc(com.google.android.gms.common.api.internal.zzn<Status> zznVar) {
        synchronized (zzfmu) {
            if (this.zzfms != null) {
                zznVar.setResult(new Status(CastStatusCodes.INVALID_REQUEST));
            } else {
                this.zzfms = zznVar;
            }
        }
    }

    @Override // com.google.android.gms.common.internal.zzd, com.google.android.gms.common.api.Api.zze
    public final void disconnect() {
        zzeus.zzb("disconnect(); ServiceListener=%s, isConnected=%b", this.zzfmf, Boolean.valueOf(isConnected()));
        zzbdr zzbdrVar = this.zzfmf;
        this.zzfmf = null;
        if (zzbdrVar == null || zzbdrVar.zzagv() == null) {
            zzeus.zzb("already disposed, so short-circuiting", new Object[0]);
            return;
        }
        zzagq();
        try {
            ((zzbeb) super.zzalw()).disconnect();
        } catch (RemoteException | IllegalStateException e) {
            zzeus.zzb(e, "Error while disconnecting the controller interface: %s", e.getMessage());
        } finally {
            super.disconnect();
        }
    }

    public final int getActiveInputState() throws IllegalStateException {
        zzagr();
        return this.zzfmk;
    }

    public final ApplicationMetadata getApplicationMetadata() throws IllegalStateException {
        zzagr();
        return this.zzfmc;
    }

    public final String getApplicationStatus() throws IllegalStateException {
        zzagr();
        return this.zzfmg;
    }

    public final int getStandbyState() throws IllegalStateException {
        zzagr();
        return this.zzfml;
    }

    public final double getVolume() throws IllegalStateException {
        zzagr();
        return this.zzexh;
    }

    public final boolean isMute() throws IllegalStateException {
        zzagr();
        return this.zzexi;
    }

    @Override // com.google.android.gms.common.internal.zzd
    public final void onConnectionFailed(ConnectionResult connectionResult) {
        super.onConnectionFailed(connectionResult);
        zzagq();
    }

    public final void removeMessageReceivedCallbacks(String str) throws IllegalArgumentException, RemoteException {
        Cast.MessageReceivedCallback remove;
        if (TextUtils.isEmpty(str)) {
            throw new IllegalArgumentException("Channel namespace cannot be null or empty");
        }
        synchronized (this.zzfmd) {
            remove = this.zzfmd.remove(str);
        }
        if (remove != null) {
            try {
                ((zzbeb) super.zzalw()).zzfz(str);
            } catch (IllegalStateException e) {
                zzeus.zzb(e, "Error unregistering namespace (%s): %s", str, e.getMessage());
            }
        }
    }

    public final void requestStatus() throws IllegalStateException, RemoteException {
        ((zzbeb) super.zzalw()).requestStatus();
    }

    public final void setMessageReceivedCallbacks(String str, Cast.MessageReceivedCallback messageReceivedCallback) throws IllegalArgumentException, IllegalStateException, RemoteException {
        zzbdw.zzfv(str);
        removeMessageReceivedCallbacks(str);
        if (messageReceivedCallback != null) {
            synchronized (this.zzfmd) {
                this.zzfmd.put(str, messageReceivedCallback);
            }
            ((zzbeb) super.zzalw()).zzfy(str);
        }
    }

    public final void setMute(boolean z) throws IllegalStateException, RemoteException {
        ((zzbeb) super.zzalw()).zza(z, this.zzexh, this.zzexi);
    }

    public final void setVolume(double d) throws IllegalArgumentException, IllegalStateException, RemoteException {
        if (!Double.isInfinite(d) && !Double.isNaN(d)) {
            ((zzbeb) super.zzalw()).zza(d, this.zzexh, this.zzexi);
            return;
        }
        StringBuilder sb = new StringBuilder(41);
        sb.append("Volume cannot be ");
        sb.append(d);
        throw new IllegalArgumentException(sb.toString());
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.common.internal.zzd
    public final void zza(int i, IBinder iBinder, Bundle bundle, int i2) {
        zzeus.zzb("in onPostInitHandler; statusCode=%d", Integer.valueOf(i));
        if (i == 0 || i == 1001) {
            this.zzfmj = true;
            this.zzfmh = true;
            this.zzfmi = true;
        } else {
            this.zzfmj = false;
        }
        if (i == 1001) {
            this.zzfmp = new Bundle();
            this.zzfmp.putBoolean(Cast.EXTRA_APP_NO_LONGER_RUNNING, true);
            i = 0;
        }
        super.zza(i, iBinder, bundle, i2);
    }

    public final void zza(String str, LaunchOptions launchOptions, com.google.android.gms.common.api.internal.zzn<Cast.ApplicationConnectionResult> zznVar) throws IllegalStateException, RemoteException {
        zza(zznVar);
        ((zzbeb) super.zzalw()).zzb(str, launchOptions);
    }

    public final void zza(String str, com.google.android.gms.common.api.internal.zzn<Status> zznVar) throws IllegalStateException, RemoteException {
        zzc(zznVar);
        ((zzbeb) super.zzalw()).zzfp(str);
    }

    public final void zza(String str, String str2, com.google.android.gms.cast.zzab zzabVar, com.google.android.gms.common.api.internal.zzn<Cast.ApplicationConnectionResult> zznVar) throws IllegalStateException, RemoteException {
        zza(zznVar);
        if (zzabVar == null) {
            zzabVar = new com.google.android.gms.cast.zzab();
        }
        ((zzbeb) super.zzalw()).zza(str, str2, zzabVar);
    }

    public final void zza(String str, String str2, com.google.android.gms.common.api.internal.zzn<Status> zznVar) throws IllegalArgumentException, IllegalStateException, RemoteException {
        if (TextUtils.isEmpty(str2)) {
            throw new IllegalArgumentException("The message payload cannot be null or empty");
        }
        if (str2.length() > 65536) {
            throw new IllegalArgumentException("Message exceeds maximum size");
        }
        zzbdw.zzfv(str);
        zzagr();
        long incrementAndGet = this.zzfmm.incrementAndGet();
        try {
            this.zzfmq.put(Long.valueOf(incrementAndGet), zznVar);
            ((zzbeb) super.zzalw()).zzb(str, str2, incrementAndGet);
        } catch (Throwable th) {
            this.zzfmq.remove(Long.valueOf(incrementAndGet));
            throw th;
        }
    }

    @Override // com.google.android.gms.common.internal.zzd
    protected final Bundle zzabt() {
        Bundle bundle = new Bundle();
        zzeus.zzb("getRemoteService(): mLastApplicationId=%s, mLastSessionId=%s", this.zzfmn, this.zzfmo);
        this.zzfar.putInBundle(bundle);
        bundle.putLong("com.google.android.gms.cast.EXTRA_CAST_FLAGS", this.zzfme);
        if (this.mExtras != null) {
            bundle.putAll(this.mExtras);
        }
        this.zzfmf = new zzbdr(this);
        bundle.putParcelable("listener", new BinderWrapper(this.zzfmf.asBinder()));
        if (this.zzfmn != null) {
            bundle.putString("last_application_id", this.zzfmn);
            if (this.zzfmo != null) {
                bundle.putString("last_session_id", this.zzfmo);
            }
        }
        return bundle;
    }

    @Override // com.google.android.gms.common.internal.zzd, com.google.android.gms.common.internal.zzaf
    public final Bundle zzagp() {
        if (this.zzfmp == null) {
            return super.zzagp();
        }
        Bundle bundle = this.zzfmp;
        this.zzfmp = null;
        return bundle;
    }

    public final void zzb(com.google.android.gms.common.api.internal.zzn<Status> zznVar) throws IllegalStateException, RemoteException {
        zzc(zznVar);
        ((zzbeb) super.zzalw()).zzagx();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.common.internal.zzd
    public final /* synthetic */ IInterface zzd(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.cast.internal.ICastDeviceController");
        return queryLocalInterface instanceof zzbeb ? (zzbeb) queryLocalInterface : new zzbec(iBinder);
    }

    @Override // com.google.android.gms.common.internal.zzd
    @NonNull
    protected final String zzhm() {
        return "com.google.android.gms.cast.service.BIND_CAST_DEVICE_CONTROLLER_SERVICE";
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.common.internal.zzd
    @NonNull
    public final String zzhn() {
        return "com.google.android.gms.cast.internal.ICastDeviceController";
    }
}
