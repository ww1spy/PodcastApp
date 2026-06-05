package com.google.android.gms.common.api.internal;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.util.Log;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.api.Status;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzdj extends Handler {
    private /* synthetic */ zzdh zzgbp;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzdj(zzdh zzdhVar, Looper looper) {
        super(looper);
        this.zzgbp = zzdhVar;
    }

    @Override // android.os.Handler
    public final void handleMessage(Message message) {
        Object obj;
        zzdh zzdhVar;
        zzdh zzdhVar2;
        zzdh zzdhVar3;
        switch (message.what) {
            case 0:
                PendingResult<?> pendingResult = (PendingResult) message.obj;
                obj = this.zzgbp.zzfvc;
                synchronized (obj) {
                    try {
                        if (pendingResult == null) {
                            zzdhVar3 = this.zzgbp.zzgbi;
                            zzdhVar3.zzd(new Status(13, "Transform returned null"));
                        } else if (pendingResult instanceof zzct) {
                            zzdhVar2 = this.zzgbp.zzgbi;
                            zzdhVar2.zzd(((zzct) pendingResult).getStatus());
                        } else {
                            zzdhVar = this.zzgbp.zzgbi;
                            zzdhVar.zza(pendingResult);
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                }
                return;
            case 1:
                RuntimeException runtimeException = (RuntimeException) message.obj;
                String valueOf = String.valueOf(runtimeException.getMessage());
                Log.e("TransformedResultImpl", valueOf.length() != 0 ? "Runtime exception on the transformation worker thread: ".concat(valueOf) : new String("Runtime exception on the transformation worker thread: "));
                throw runtimeException;
            default:
                int i = message.what;
                StringBuilder sb = new StringBuilder(70);
                sb.append("TransformationResultHandler received unknown message type: ");
                sb.append(i);
                Log.e("TransformedResultImpl", sb.toString());
                return;
        }
    }
}
