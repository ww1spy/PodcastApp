package com.google.android.gms.internal;

import android.accounts.Account;
import android.content.Context;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import android.os.RemoteException;
import android.util.Log;
import com.google.android.gms.common.api.GoogleApiClient;

/* loaded from: classes.dex */
public final class zzcyt extends com.google.android.gms.common.internal.zzab<zzcyr> implements zzcyj {
    private final com.google.android.gms.common.internal.zzr zzfwf;
    private Integer zzgft;
    private final boolean zzklw;
    private final Bundle zzklx;

    private zzcyt(Context context, Looper looper, boolean z, com.google.android.gms.common.internal.zzr zzrVar, Bundle bundle, GoogleApiClient.ConnectionCallbacks connectionCallbacks, GoogleApiClient.OnConnectionFailedListener onConnectionFailedListener) {
        super(context, looper, 44, zzrVar, connectionCallbacks, onConnectionFailedListener);
        this.zzklw = true;
        this.zzfwf = zzrVar;
        this.zzklx = bundle;
        this.zzgft = zzrVar.zzamm();
    }

    public zzcyt(Context context, Looper looper, boolean z, com.google.android.gms.common.internal.zzr zzrVar, zzcyk zzcykVar, GoogleApiClient.ConnectionCallbacks connectionCallbacks, GoogleApiClient.OnConnectionFailedListener onConnectionFailedListener) {
        this(context, looper, true, zzrVar, zza(zzrVar), connectionCallbacks, onConnectionFailedListener);
    }

    public static Bundle zza(com.google.android.gms.common.internal.zzr zzrVar) {
        zzcyk zzaml = zzrVar.zzaml();
        Integer zzamm = zzrVar.zzamm();
        Bundle bundle = new Bundle();
        bundle.putParcelable("com.google.android.gms.signin.internal.clientRequestedAccount", zzrVar.getAccount());
        if (zzamm != null) {
            bundle.putInt("com.google.android.gms.common.internal.ClientSettings.sessionId", zzamm.intValue());
        }
        if (zzaml != null) {
            bundle.putBoolean("com.google.android.gms.signin.internal.offlineAccessRequested", zzaml.zzbeu());
            bundle.putBoolean("com.google.android.gms.signin.internal.idTokenRequested", zzaml.isIdTokenRequested());
            bundle.putString("com.google.android.gms.signin.internal.serverClientId", zzaml.getServerClientId());
            bundle.putBoolean("com.google.android.gms.signin.internal.usePromptModeForAuthCode", true);
            bundle.putBoolean("com.google.android.gms.signin.internal.forceCodeForRefreshToken", zzaml.zzbev());
            bundle.putString("com.google.android.gms.signin.internal.hostedDomain", zzaml.zzbew());
            bundle.putBoolean("com.google.android.gms.signin.internal.waitForAccessTokenRefresh", zzaml.zzbex());
            if (zzaml.zzbey() != null) {
                bundle.putLong("com.google.android.gms.signin.internal.authApiSignInModuleVersion", zzaml.zzbey().longValue());
            }
            if (zzaml.zzbez() != null) {
                bundle.putLong("com.google.android.gms.signin.internal.realClientLibraryVersion", zzaml.zzbez().longValue());
            }
        }
        return bundle;
    }

    @Override // com.google.android.gms.internal.zzcyj
    public final void connect() {
        zza(new com.google.android.gms.common.internal.zzm(this));
    }

    @Override // com.google.android.gms.internal.zzcyj
    public final void zza(com.google.android.gms.common.internal.zzan zzanVar, boolean z) {
        try {
            ((zzcyr) zzalw()).zza(zzanVar, this.zzgft.intValue(), z);
        } catch (RemoteException unused) {
            Log.w("SignInClientImpl", "Remote service probably died when saveDefaultAccount is called");
        }
    }

    @Override // com.google.android.gms.internal.zzcyj
    public final void zza(zzcyp zzcypVar) {
        com.google.android.gms.common.internal.zzbq.checkNotNull(zzcypVar, "Expecting a valid ISignInCallbacks");
        try {
            Account zzamd = this.zzfwf.zzamd();
            ((zzcyr) zzalw()).zza(new zzcyu(new com.google.android.gms.common.internal.zzbr(zzamd, this.zzgft.intValue(), "<<default account>>".equals(zzamd.name) ? com.google.android.gms.auth.api.signin.internal.zzaa.zzbs(getContext()).zzacx() : null)), zzcypVar);
        } catch (RemoteException e) {
            Log.w("SignInClientImpl", "Remote service probably died when signIn is called");
            try {
                zzcypVar.zzb(new zzcyw(8));
            } catch (RemoteException unused) {
                Log.wtf("SignInClientImpl", "ISignInCallbacks#onSignInComplete should be executed from the same process, unexpected RemoteException.", e);
            }
        }
    }

    @Override // com.google.android.gms.common.internal.zzd
    protected final Bundle zzabt() {
        if (!getContext().getPackageName().equals(this.zzfwf.zzami())) {
            this.zzklx.putString("com.google.android.gms.signin.internal.realClientPackageName", this.zzfwf.zzami());
        }
        return this.zzklx;
    }

    @Override // com.google.android.gms.common.internal.zzd, com.google.android.gms.common.api.Api.zze
    public final boolean zzacc() {
        return this.zzklw;
    }

    @Override // com.google.android.gms.internal.zzcyj
    public final void zzbet() {
        try {
            ((zzcyr) zzalw()).zzev(this.zzgft.intValue());
        } catch (RemoteException unused) {
            Log.w("SignInClientImpl", "Remote service probably died when clearAccountFromSessionStore is called");
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.common.internal.zzd
    public final /* synthetic */ IInterface zzd(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.signin.internal.ISignInService");
        return queryLocalInterface instanceof zzcyr ? (zzcyr) queryLocalInterface : new zzcys(iBinder);
    }

    @Override // com.google.android.gms.common.internal.zzd
    protected final String zzhm() {
        return "com.google.android.gms.signin.service.START";
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.common.internal.zzd
    public final String zzhn() {
        return "com.google.android.gms.signin.internal.ISignInService";
    }
}
