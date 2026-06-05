package com.google.android.gms.cast;

import android.content.Context;
import android.support.annotation.NonNull;
import android.view.Display;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.internal.zzbq;
import com.google.android.gms.internal.zzbdz;
import com.google.android.gms.internal.zzbeh;
import com.google.android.gms.internal.zzbeq;
import com.google.android.gms.internal.zzbfa;
import com.google.android.gms.internal.zzccp;

/* loaded from: classes.dex */
public final class CastRemoteDisplay {
    public static final int CONFIGURATION_INTERACTIVE_NONREALTIME = 2;
    public static final int CONFIGURATION_INTERACTIVE_REALTIME = 1;
    public static final int CONFIGURATION_NONINTERACTIVE = 3;
    public static final String EXTRA_INT_SESSION_ENDED_STATUS_CODE = "extra_int_session_ended_status_code";
    private static final Api.zza<zzbfa, CastRemoteDisplayOptions> zzegv = new zzo();

    @Deprecated
    public static final Api<CastRemoteDisplayOptions> API = new Api<>("CastRemoteDisplay.API", zzegv, zzbeh.zzfnh);

    @Deprecated
    public static final CastRemoteDisplayApi CastRemoteDisplayApi = new zzbeq(API);

    @Deprecated
    /* loaded from: classes.dex */
    public static final class CastRemoteDisplayOptions implements Api.ApiOptions.HasOptions {
        final CastDevice zzetj;
        final CastRemoteDisplaySessionCallbacks zzeue;
        final int zzeuf;

        @Deprecated
        /* loaded from: classes.dex */
        public static final class Builder {
            CastDevice zzetm;
            CastRemoteDisplaySessionCallbacks zzeug;
            int zzeuh;

            public Builder(CastDevice castDevice, CastRemoteDisplaySessionCallbacks castRemoteDisplaySessionCallbacks) {
                zzbq.checkNotNull(castDevice, "CastDevice parameter cannot be null");
                this.zzetm = castDevice;
                this.zzeug = castRemoteDisplaySessionCallbacks;
                this.zzeuh = 2;
            }

            public final CastRemoteDisplayOptions build() {
                return new CastRemoteDisplayOptions(this, null);
            }

            public final Builder setConfigPreset(@Configuration int i) {
                this.zzeuh = i;
                return this;
            }
        }

        private CastRemoteDisplayOptions(Builder builder) {
            this.zzetj = builder.zzetm;
            this.zzeue = builder.zzeug;
            this.zzeuf = builder.zzeuh;
        }

        /* synthetic */ CastRemoteDisplayOptions(Builder builder, zzo zzoVar) {
            this(builder);
        }
    }

    @Deprecated
    /* loaded from: classes.dex */
    public interface CastRemoteDisplaySessionCallbacks {
        void onRemoteDisplayEnded(Status status);
    }

    @Deprecated
    /* loaded from: classes.dex */
    public interface CastRemoteDisplaySessionResult extends Result {
        Display getPresentationDisplay();
    }

    /* loaded from: classes.dex */
    public @interface Configuration {
    }

    private CastRemoteDisplay() {
    }

    public static CastRemoteDisplayClient getClient(@NonNull Context context) {
        return new CastRemoteDisplayClient(context);
    }

    public static final boolean isRemoteDisplaySdkSupported(Context context) {
        zzbdz.initialize(context);
        return ((Boolean) zzccp.zzaso().zzb(zzbdz.zzfnf)).booleanValue();
    }
}
