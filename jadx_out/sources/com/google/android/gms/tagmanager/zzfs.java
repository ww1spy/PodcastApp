package com.google.android.gms.tagmanager;

import android.content.Context;
import android.os.Handler;
import android.os.Message;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzfs implements zzfr {
    private Handler handler;
    final /* synthetic */ zzfo zzktv;

    private zzfs(zzfo zzfoVar) {
        Context context;
        this.zzktv = zzfoVar;
        context = this.zzktv.zzktj;
        this.handler = new Handler(context.getMainLooper(), new zzft(this));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ zzfs(zzfo zzfoVar, zzfp zzfpVar) {
        this(zzfoVar);
    }

    private final Message obtainMessage() {
        Object obj;
        Handler handler = this.handler;
        obj = zzfo.zzkti;
        return handler.obtainMessage(1, obj);
    }

    @Override // com.google.android.gms.tagmanager.zzfr
    public final void cancel() {
        Object obj;
        Handler handler = this.handler;
        obj = zzfo.zzkti;
        handler.removeMessages(1, obj);
    }

    @Override // com.google.android.gms.tagmanager.zzfr
    public final void zzbic() {
        Object obj;
        Handler handler = this.handler;
        obj = zzfo.zzkti;
        handler.removeMessages(1, obj);
        this.handler.sendMessage(obtainMessage());
    }

    @Override // com.google.android.gms.tagmanager.zzfr
    public final void zzs(long j) {
        Object obj;
        Handler handler = this.handler;
        obj = zzfo.zzkti;
        handler.removeMessages(1, obj);
        this.handler.sendMessageDelayed(obtainMessage(), j);
    }
}
