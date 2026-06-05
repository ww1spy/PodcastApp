package com.google.android.gms.ads;

import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.internal.Hide;
import com.google.android.gms.internal.zzabh;
import com.google.android.gms.internal.zzns;

@zzabh
/* loaded from: classes.dex */
public final class VideoOptions {
    private final boolean zzamc;
    private final boolean zzamd;
    private final boolean zzame;

    /* loaded from: classes.dex */
    public static final class Builder {
        private boolean zzamc = true;
        private boolean zzamd = false;
        private boolean zzame = false;

        public final VideoOptions build() {
            return new VideoOptions(this);
        }

        @Hide
        @KeepForSdk
        public final Builder setClickToExpandRequested(boolean z) {
            this.zzame = z;
            return this;
        }

        @Hide
        @KeepForSdk
        public final Builder setCustomControlsRequested(boolean z) {
            this.zzamd = z;
            return this;
        }

        public final Builder setStartMuted(boolean z) {
            this.zzamc = z;
            return this;
        }
    }

    private VideoOptions(Builder builder) {
        this.zzamc = builder.zzamc;
        this.zzamd = builder.zzamd;
        this.zzame = builder.zzame;
    }

    @Hide
    public VideoOptions(zzns zznsVar) {
        this.zzamc = zznsVar.zzbkn;
        this.zzamd = zznsVar.zzbko;
        this.zzame = zznsVar.zzbkp;
    }

    @Hide
    @KeepForSdk
    public final boolean getClickToExpandRequested() {
        return this.zzame;
    }

    @Hide
    @KeepForSdk
    public final boolean getCustomControlsRequested() {
        return this.zzamd;
    }

    public final boolean getStartMuted() {
        return this.zzamc;
    }
}
