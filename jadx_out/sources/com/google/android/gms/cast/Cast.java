package com.google.android.gms.cast;

import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.cast.LaunchOptions;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.internal.Hide;
import com.google.android.gms.common.internal.zzbq;
import com.google.android.gms.internal.zzbdf;
import com.google.android.gms.internal.zzbdp;
import com.google.android.gms.internal.zzbeh;
import java.io.IOException;

/* loaded from: classes.dex */
public final class Cast {
    public static final int ACTIVE_INPUT_STATE_NO = 0;
    public static final int ACTIVE_INPUT_STATE_UNKNOWN = -1;
    public static final int ACTIVE_INPUT_STATE_YES = 1;
    public static final String EXTRA_APP_NO_LONGER_RUNNING = "com.google.android.gms.cast.EXTRA_APP_NO_LONGER_RUNNING";
    public static final int MAX_MESSAGE_LENGTH = 65536;
    public static final int MAX_NAMESPACE_LENGTH = 128;
    public static final int STANDBY_STATE_NO = 0;
    public static final int STANDBY_STATE_UNKNOWN = -1;
    public static final int STANDBY_STATE_YES = 1;
    private static Api.zza<zzbdp, CastOptions> zzegv = new zze();
    public static final Api<CastOptions> API = new Api<>("Cast.API", zzegv, zzbeh.zzfng);
    public static final CastApi CastApi = new CastApi.zza();

    /* loaded from: classes.dex */
    public interface ApplicationConnectionResult extends Result {
        ApplicationMetadata getApplicationMetadata();

        String getApplicationStatus();

        String getSessionId();

        boolean getWasLaunched();
    }

    @Deprecated
    /* loaded from: classes.dex */
    public interface CastApi {

        @Hide
        /* loaded from: classes.dex */
        public static final class zza implements CastApi {
            private final PendingResult<ApplicationConnectionResult> zza(GoogleApiClient googleApiClient, String str, String str2, zzab zzabVar) {
                return googleApiClient.zze(new zzi(this, googleApiClient, str, str2, null));
            }

            @Override // com.google.android.gms.cast.Cast.CastApi
            public final int getActiveInputState(GoogleApiClient googleApiClient) throws IllegalStateException {
                return ((zzbdp) googleApiClient.zza(zzbeh.zzfng)).getActiveInputState();
            }

            @Override // com.google.android.gms.cast.Cast.CastApi
            public final ApplicationMetadata getApplicationMetadata(GoogleApiClient googleApiClient) throws IllegalStateException {
                return ((zzbdp) googleApiClient.zza(zzbeh.zzfng)).getApplicationMetadata();
            }

            @Override // com.google.android.gms.cast.Cast.CastApi
            public final String getApplicationStatus(GoogleApiClient googleApiClient) throws IllegalStateException {
                return ((zzbdp) googleApiClient.zza(zzbeh.zzfng)).getApplicationStatus();
            }

            @Override // com.google.android.gms.cast.Cast.CastApi
            public final int getStandbyState(GoogleApiClient googleApiClient) throws IllegalStateException {
                return ((zzbdp) googleApiClient.zza(zzbeh.zzfng)).getStandbyState();
            }

            @Override // com.google.android.gms.cast.Cast.CastApi
            public final double getVolume(GoogleApiClient googleApiClient) throws IllegalStateException {
                return ((zzbdp) googleApiClient.zza(zzbeh.zzfng)).getVolume();
            }

            @Override // com.google.android.gms.cast.Cast.CastApi
            public final boolean isMute(GoogleApiClient googleApiClient) throws IllegalStateException {
                return ((zzbdp) googleApiClient.zza(zzbeh.zzfng)).isMute();
            }

            @Override // com.google.android.gms.cast.Cast.CastApi
            public final PendingResult<ApplicationConnectionResult> joinApplication(GoogleApiClient googleApiClient) {
                return zza(googleApiClient, null, null, null);
            }

            @Override // com.google.android.gms.cast.Cast.CastApi
            public final PendingResult<ApplicationConnectionResult> joinApplication(GoogleApiClient googleApiClient, String str) {
                return zza(googleApiClient, str, null, null);
            }

            @Override // com.google.android.gms.cast.Cast.CastApi
            public final PendingResult<ApplicationConnectionResult> joinApplication(GoogleApiClient googleApiClient, String str, String str2) {
                return zza(googleApiClient, str, str2, null);
            }

            @Override // com.google.android.gms.cast.Cast.CastApi
            public final PendingResult<ApplicationConnectionResult> launchApplication(GoogleApiClient googleApiClient, String str) {
                return googleApiClient.zze(new zzg(this, googleApiClient, str));
            }

            @Override // com.google.android.gms.cast.Cast.CastApi
            public final PendingResult<ApplicationConnectionResult> launchApplication(GoogleApiClient googleApiClient, String str, LaunchOptions launchOptions) {
                return googleApiClient.zze(new zzh(this, googleApiClient, str, launchOptions));
            }

            @Override // com.google.android.gms.cast.Cast.CastApi
            @Deprecated
            public final PendingResult<ApplicationConnectionResult> launchApplication(GoogleApiClient googleApiClient, String str, boolean z) {
                return launchApplication(googleApiClient, str, new LaunchOptions.Builder().setRelaunchIfRunning(z).build());
            }

            @Override // com.google.android.gms.cast.Cast.CastApi
            public final PendingResult<Status> leaveApplication(GoogleApiClient googleApiClient) {
                return googleApiClient.zze(new zzj(this, googleApiClient));
            }

            @Override // com.google.android.gms.cast.Cast.CastApi
            public final void removeMessageReceivedCallbacks(GoogleApiClient googleApiClient, String str) throws IOException, IllegalArgumentException {
                try {
                    ((zzbdp) googleApiClient.zza(zzbeh.zzfng)).removeMessageReceivedCallbacks(str);
                } catch (RemoteException unused) {
                    throw new IOException("service error");
                }
            }

            @Override // com.google.android.gms.cast.Cast.CastApi
            public final void requestStatus(GoogleApiClient googleApiClient) throws IOException, IllegalStateException {
                try {
                    ((zzbdp) googleApiClient.zza(zzbeh.zzfng)).requestStatus();
                } catch (RemoteException unused) {
                    throw new IOException("service error");
                }
            }

            @Override // com.google.android.gms.cast.Cast.CastApi
            public final PendingResult<Status> sendMessage(GoogleApiClient googleApiClient, String str, String str2) {
                return googleApiClient.zze(new zzf(this, googleApiClient, str, str2));
            }

            @Override // com.google.android.gms.cast.Cast.CastApi
            public final void setMessageReceivedCallbacks(GoogleApiClient googleApiClient, String str, MessageReceivedCallback messageReceivedCallback) throws IOException, IllegalStateException {
                try {
                    ((zzbdp) googleApiClient.zza(zzbeh.zzfng)).setMessageReceivedCallbacks(str, messageReceivedCallback);
                } catch (RemoteException unused) {
                    throw new IOException("service error");
                }
            }

            @Override // com.google.android.gms.cast.Cast.CastApi
            public final void setMute(GoogleApiClient googleApiClient, boolean z) throws IOException, IllegalStateException {
                try {
                    ((zzbdp) googleApiClient.zza(zzbeh.zzfng)).setMute(z);
                } catch (RemoteException unused) {
                    throw new IOException("service error");
                }
            }

            @Override // com.google.android.gms.cast.Cast.CastApi
            public final void setVolume(GoogleApiClient googleApiClient, double d) throws IOException, IllegalArgumentException, IllegalStateException {
                try {
                    ((zzbdp) googleApiClient.zza(zzbeh.zzfng)).setVolume(d);
                } catch (RemoteException unused) {
                    throw new IOException("service error");
                }
            }

            @Override // com.google.android.gms.cast.Cast.CastApi
            public final PendingResult<Status> stopApplication(GoogleApiClient googleApiClient) {
                return googleApiClient.zze(new zzk(this, googleApiClient));
            }

            @Override // com.google.android.gms.cast.Cast.CastApi
            public final PendingResult<Status> stopApplication(GoogleApiClient googleApiClient, String str) {
                return googleApiClient.zze(new zzl(this, googleApiClient, str));
            }
        }

        int getActiveInputState(GoogleApiClient googleApiClient) throws IllegalStateException;

        ApplicationMetadata getApplicationMetadata(GoogleApiClient googleApiClient) throws IllegalStateException;

        String getApplicationStatus(GoogleApiClient googleApiClient) throws IllegalStateException;

        int getStandbyState(GoogleApiClient googleApiClient) throws IllegalStateException;

        double getVolume(GoogleApiClient googleApiClient) throws IllegalStateException;

        boolean isMute(GoogleApiClient googleApiClient) throws IllegalStateException;

        PendingResult<ApplicationConnectionResult> joinApplication(GoogleApiClient googleApiClient);

        PendingResult<ApplicationConnectionResult> joinApplication(GoogleApiClient googleApiClient, String str);

        PendingResult<ApplicationConnectionResult> joinApplication(GoogleApiClient googleApiClient, String str, String str2);

        PendingResult<ApplicationConnectionResult> launchApplication(GoogleApiClient googleApiClient, String str);

        PendingResult<ApplicationConnectionResult> launchApplication(GoogleApiClient googleApiClient, String str, LaunchOptions launchOptions);

        @Deprecated
        PendingResult<ApplicationConnectionResult> launchApplication(GoogleApiClient googleApiClient, String str, boolean z);

        PendingResult<Status> leaveApplication(GoogleApiClient googleApiClient);

        void removeMessageReceivedCallbacks(GoogleApiClient googleApiClient, String str) throws IOException, IllegalArgumentException;

        void requestStatus(GoogleApiClient googleApiClient) throws IOException, IllegalStateException;

        PendingResult<Status> sendMessage(GoogleApiClient googleApiClient, String str, String str2);

        void setMessageReceivedCallbacks(GoogleApiClient googleApiClient, String str, MessageReceivedCallback messageReceivedCallback) throws IOException, IllegalStateException;

        void setMute(GoogleApiClient googleApiClient, boolean z) throws IOException, IllegalStateException;

        void setVolume(GoogleApiClient googleApiClient, double d) throws IOException, IllegalArgumentException, IllegalStateException;

        PendingResult<Status> stopApplication(GoogleApiClient googleApiClient);

        PendingResult<Status> stopApplication(GoogleApiClient googleApiClient, String str);
    }

    /* loaded from: classes.dex */
    public static final class CastOptions implements Api.ApiOptions.HasOptions {

        @Hide
        final Bundle extras;
        final CastDevice zzetj;
        final Listener zzetk;
        private final int zzetl;

        /* loaded from: classes.dex */
        public static final class Builder {
            private Bundle mExtras;
            CastDevice zzetm;
            Listener zzetn;
            private int zzeto;

            public Builder(CastDevice castDevice, Listener listener) {
                zzbq.checkNotNull(castDevice, "CastDevice parameter cannot be null");
                zzbq.checkNotNull(listener, "CastListener parameter cannot be null");
                this.zzetm = castDevice;
                this.zzetn = listener;
                this.zzeto = 0;
            }

            public final CastOptions build() {
                return new CastOptions(this, null);
            }

            /* JADX WARN: Unreachable blocks removed: 1, instructions: 1 */
            public final Builder setVerboseLoggingEnabled(boolean z) {
                this.zzeto = z ? this.zzeto | 1 : this.zzeto & (-2);
                return this;
            }

            @Hide
            public final Builder zzf(Bundle bundle) {
                this.mExtras = bundle;
                return this;
            }
        }

        private CastOptions(Builder builder) {
            this.zzetj = builder.zzetm;
            this.zzetk = builder.zzetn;
            this.zzetl = builder.zzeto;
            this.extras = builder.mExtras;
        }

        /* synthetic */ CastOptions(Builder builder, zze zzeVar) {
            this(builder);
        }

        @Deprecated
        public static Builder builder(CastDevice castDevice, Listener listener) {
            return new Builder(castDevice, listener);
        }
    }

    /* loaded from: classes.dex */
    public static class Listener {
        public void onActiveInputStateChanged(int i) {
        }

        public void onApplicationDisconnected(int i) {
        }

        public void onApplicationMetadataChanged(ApplicationMetadata applicationMetadata) {
        }

        public void onApplicationStatusChanged() {
        }

        public void onStandbyStateChanged(int i) {
        }

        public void onVolumeChanged() {
        }
    }

    /* loaded from: classes.dex */
    public interface MessageReceivedCallback {
        void onMessageReceived(CastDevice castDevice, String str, String str2);
    }

    /* loaded from: classes.dex */
    static abstract class zza extends zzbdf<ApplicationConnectionResult> {
        public zza(GoogleApiClient googleApiClient) {
            super(googleApiClient);
        }

        @Override // com.google.android.gms.common.api.internal.zzm
        public void zza(zzbdp zzbdpVar) throws RemoteException {
        }

        @Override // com.google.android.gms.common.api.internal.BasePendingResult
        public final /* synthetic */ Result zzb(Status status) {
            return new zzm(this, status);
        }
    }

    private Cast() {
    }
}
