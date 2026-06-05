package com.google.android.gms.cast;

import android.annotation.TargetApi;
import android.app.PendingIntent;
import android.content.Context;
import android.hardware.display.VirtualDisplay;
import android.os.RemoteException;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.view.Display;
import android.view.Surface;
import com.google.android.gms.cast.CastRemoteDisplay;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.GoogleApi;
import com.google.android.gms.internal.zzbeh;
import com.google.android.gms.internal.zzbei;
import com.google.android.gms.internal.zzbez;
import com.google.android.gms.internal.zzbfd;
import com.google.android.gms.tasks.Task;

@TargetApi(19)
/* loaded from: classes.dex */
public class CastRemoteDisplayClient extends GoogleApi<Api.ApiOptions.NoOptions> {
    private final zzbei zzeui;
    private VirtualDisplay zzeuj;
    private static final Api.zza<zzbez, Api.ApiOptions.NoOptions> zzegv = new zzp();
    private static final Api<Api.ApiOptions.NoOptions> API = new Api<>("CastRemoteDisplay.API", zzegv, zzbeh.zzfni);

    /* loaded from: classes.dex */
    static class zza extends zzbfd {
        private zza() {
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public /* synthetic */ zza(zzp zzpVar) {
            this();
        }

        @Override // com.google.android.gms.internal.zzbfc
        public void onDisconnected() throws RemoteException {
            throw new UnsupportedOperationException();
        }

        @Override // com.google.android.gms.internal.zzbfc
        public void onError(int i) throws RemoteException {
            throw new UnsupportedOperationException();
        }

        @Override // com.google.android.gms.internal.zzbfc
        public void zza(int i, int i2, Surface surface) throws RemoteException {
            throw new UnsupportedOperationException();
        }

        @Override // com.google.android.gms.internal.zzbfc
        public void zzado() throws RemoteException {
            throw new UnsupportedOperationException();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public CastRemoteDisplayClient(@NonNull Context context) {
        super(context, API, (Api.ApiOptions) null, GoogleApi.zza.zzfsr);
        this.zzeui = new zzbei("CastRemoteDisplay");
    }

    /* JADX INFO: Access modifiers changed from: private */
    @TargetApi(19)
    public final void zzadn() {
        if (this.zzeuj != null) {
            if (this.zzeuj.getDisplay() != null) {
                zzbei zzbeiVar = this.zzeui;
                int displayId = this.zzeuj.getDisplay().getDisplayId();
                StringBuilder sb = new StringBuilder(38);
                sb.append("releasing virtual display: ");
                sb.append(displayId);
                zzbeiVar.zzb(sb.toString(), new Object[0]);
            }
            this.zzeuj.release();
            this.zzeuj = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int zzk(int i, int i2) {
        return (Math.min(i, i2) * 320) / 1080;
    }

    public Task<Display> startRemoteDisplay(@NonNull CastDevice castDevice, @NonNull String str, @CastRemoteDisplay.Configuration int i, @Nullable PendingIntent pendingIntent) {
        return zzb(new zzq(this, i, pendingIntent, castDevice, str));
    }

    public Task<Void> stopRemoteDisplay() {
        return zzb(new zzs(this));
    }
}
