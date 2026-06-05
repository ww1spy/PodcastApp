package com.google.android.gms.tagmanager;

import android.os.Handler;
import android.os.Message;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzft implements Handler.Callback {
    private /* synthetic */ zzfs zzktw;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzft(zzfs zzfsVar) {
        this.zzktw = zzfsVar;
    }

    @Override // android.os.Handler.Callback
    public final boolean handleMessage(Message message) {
        Object obj;
        boolean isPowerSaveMode;
        int i;
        if (1 == message.what) {
            obj = zzfo.zzkti;
            if (obj.equals(message.obj)) {
                this.zzktw.zzktv.dispatch();
                isPowerSaveMode = this.zzktw.zzktv.isPowerSaveMode();
                if (!isPowerSaveMode) {
                    zzfs zzfsVar = this.zzktw;
                    i = this.zzktw.zzktv.zzktm;
                    zzfsVar.zzs(i);
                }
            }
        }
        return true;
    }
}
