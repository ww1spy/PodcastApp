package com.google.android.gms.tagmanager;

import android.os.Looper;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.tagmanager.ContainerHolder;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzv implements ContainerHolder {
    private Status mStatus;
    private final Looper zzalj;
    private boolean zzgrz;
    private Container zzknk;
    private Container zzknl;
    private zzx zzknm;
    private zzw zzknn;
    private TagManager zzkno;

    public zzv(Status status) {
        this.mStatus = status;
        this.zzalj = null;
    }

    public zzv(TagManager tagManager, Looper looper, Container container, zzw zzwVar) {
        this.zzkno = tagManager;
        this.zzalj = looper == null ? Looper.getMainLooper() : looper;
        this.zzknk = container;
        this.zzknn = zzwVar;
        this.mStatus = Status.zzftq;
        tagManager.zza(this);
    }

    private final void zzbfo() {
        if (this.zzknm != null) {
            zzx zzxVar = this.zzknm;
            zzxVar.sendMessage(zzxVar.obtainMessage(1, this.zzknl.zzbfl()));
        }
    }

    @Override // com.google.android.gms.tagmanager.ContainerHolder
    public final synchronized Container getContainer() {
        if (this.zzgrz) {
            zzdj.e("ContainerHolder is released.");
            return null;
        }
        if (this.zzknl != null) {
            this.zzknk = this.zzknl;
            this.zzknl = null;
        }
        return this.zzknk;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final String getContainerId() {
        if (!this.zzgrz) {
            return this.zzknk.getContainerId();
        }
        zzdj.e("getContainerId called on a released ContainerHolder.");
        return "";
    }

    @Override // com.google.android.gms.common.api.Result
    public final Status getStatus() {
        return this.mStatus;
    }

    @Override // com.google.android.gms.tagmanager.ContainerHolder
    public final synchronized void refresh() {
        if (this.zzgrz) {
            zzdj.e("Refreshing a released ContainerHolder.");
        } else {
            this.zzknn.zzbfp();
        }
    }

    @Override // com.google.android.gms.common.api.Releasable
    public final synchronized void release() {
        if (this.zzgrz) {
            zzdj.e("Releasing a released ContainerHolder.");
            return;
        }
        this.zzgrz = true;
        this.zzkno.zzb(this);
        this.zzknk.release();
        this.zzknk = null;
        this.zzknl = null;
        this.zzknn = null;
        this.zzknm = null;
    }

    @Override // com.google.android.gms.tagmanager.ContainerHolder
    public final synchronized void setContainerAvailableListener(ContainerHolder.ContainerAvailableListener containerAvailableListener) {
        if (this.zzgrz) {
            zzdj.e("ContainerHolder is released.");
        } else {
            if (containerAvailableListener == null) {
                this.zzknm = null;
                return;
            }
            this.zzknm = new zzx(this, containerAvailableListener, this.zzalj);
            if (this.zzknl != null) {
                zzbfo();
            }
        }
    }

    public final synchronized void zza(Container container) {
        if (this.zzgrz) {
            return;
        }
        this.zzknl = container;
        zzbfo();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final String zzbfn() {
        if (!this.zzgrz) {
            return this.zzknn.zzbfn();
        }
        zzdj.e("setCtfeUrlPathAndQuery called on a released ContainerHolder.");
        return "";
    }

    public final synchronized void zzlj(String str) {
        if (this.zzgrz) {
            return;
        }
        this.zzknk.zzlj(str);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void zzlk(String str) {
        if (this.zzgrz) {
            zzdj.e("setCtfeUrlPathAndQuery called on a released ContainerHolder.");
        } else {
            this.zzknn.zzlk(str);
        }
    }
}
