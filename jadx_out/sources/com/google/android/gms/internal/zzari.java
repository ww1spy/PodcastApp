package com.google.android.gms.internal;

import com.google.android.gms.common.internal.Hide;

@Hide
/* loaded from: classes.dex */
public abstract class zzari extends zzarh {
    private boolean zzdyq;

    /* JADX INFO: Access modifiers changed from: protected */
    public zzari(zzark zzarkVar) {
        super(zzarkVar);
    }

    @Hide
    public final void initialize() {
        zzwk();
        this.zzdyq = true;
    }

    @Hide
    public final boolean isInitialized() {
        return this.zzdyq;
    }

    @Hide
    protected abstract void zzwk();

    /* JADX INFO: Access modifiers changed from: protected */
    @Hide
    public final void zzyk() {
        if (!isInitialized()) {
            throw new IllegalStateException("Not initialized");
        }
    }
}
