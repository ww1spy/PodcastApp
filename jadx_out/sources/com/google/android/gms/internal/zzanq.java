package com.google.android.gms.internal;

import android.annotation.TargetApi;
import android.content.Context;
import android.media.AudioManager;
import com.google.android.gms.common.internal.Hide;

@Hide
@TargetApi(14)
@zzabh
/* loaded from: classes.dex */
public final class zzanq implements AudioManager.OnAudioFocusChangeListener {
    private final AudioManager mAudioManager;
    private boolean zzdlm;
    private final zzanr zzdog;
    private boolean zzdoh;
    private boolean zzdoi;
    private float zzdoj = 1.0f;

    public zzanq(Context context, zzanr zzanrVar) {
        this.mAudioManager = (AudioManager) context.getSystemService("audio");
        this.zzdog = zzanrVar;
    }

    private final void zztr() {
        boolean z = this.zzdlm && !this.zzdoi && this.zzdoj > 0.0f;
        if (z && !this.zzdoh) {
            if (this.mAudioManager != null && !this.zzdoh) {
                this.zzdoh = this.mAudioManager.requestAudioFocus(this, 3, 2) == 1;
            }
            this.zzdog.zzsn();
            return;
        }
        if (z || !this.zzdoh) {
            return;
        }
        if (this.mAudioManager != null && this.zzdoh) {
            this.zzdoh = this.mAudioManager.abandonAudioFocus(this) == 0;
        }
        this.zzdog.zzsn();
    }

    public final float getVolume() {
        float f = this.zzdoi ? 0.0f : this.zzdoj;
        if (this.zzdoh) {
            return f;
        }
        return 0.0f;
    }

    @Override // android.media.AudioManager.OnAudioFocusChangeListener
    public final void onAudioFocusChange(int i) {
        this.zzdoh = i > 0;
        this.zzdog.zzsn();
    }

    public final void setMuted(boolean z) {
        this.zzdoi = z;
        zztr();
    }

    public final void zzb(float f) {
        this.zzdoj = f;
        zztr();
    }

    public final void zzto() {
        this.zzdlm = true;
        zztr();
    }

    public final void zztp() {
        this.zzdlm = false;
        zztr();
    }
}
