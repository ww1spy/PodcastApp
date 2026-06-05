package com.google.android.gms.internal;

import android.annotation.TargetApi;
import android.content.Context;
import android.view.TextureView;
import com.google.android.gms.common.internal.Hide;

@Hide
@TargetApi(14)
@zzabh
/* loaded from: classes.dex */
public abstract class zzamz extends TextureView implements zzanr {
    protected final zzang zzdle;
    protected final zzanq zzdlf;

    public zzamz(Context context) {
        super(context);
        this.zzdle = new zzang();
        this.zzdlf = new zzanq(context, this);
    }

    public abstract int getCurrentPosition();

    public abstract int getDuration();

    public abstract int getVideoHeight();

    public abstract int getVideoWidth();

    public abstract void pause();

    public abstract void play();

    public abstract void seekTo(int i);

    public abstract void setVideoPath(String str);

    public abstract void stop();

    public abstract void zza(float f, float f2);

    public abstract void zza(zzamy zzamyVar);

    public abstract String zzsj();

    public abstract void zzsn();
}
