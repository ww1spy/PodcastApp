package com.google.android.gms.gcm;

import android.content.Context;
import android.content.Intent;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.util.Log;
import java.util.concurrent.BlockingQueue;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzc extends Handler {
    private /* synthetic */ GoogleCloudMessaging zzikg;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzc(GoogleCloudMessaging googleCloudMessaging, Looper looper) {
        super(looper);
        this.zzikg = googleCloudMessaging;
    }

    @Override // android.os.Handler
    public final void handleMessage(Message message) {
        boolean zzf;
        Context context;
        Context context2;
        BlockingQueue blockingQueue;
        if (message == null || !(message.obj instanceof Intent)) {
            Log.w(GoogleCloudMessaging.INSTANCE_ID_SCOPE, "Dropping invalid message");
        }
        Intent intent = (Intent) message.obj;
        if ("com.google.android.c2dm.intent.REGISTRATION".equals(intent.getAction())) {
            blockingQueue = this.zzikg.zzike;
            blockingQueue.add(intent);
            return;
        }
        zzf = this.zzikg.zzf(intent);
        if (zzf) {
            return;
        }
        context = this.zzikg.zzaiq;
        intent.setPackage(context.getPackageName());
        context2 = this.zzikg.zzaiq;
        context2.sendBroadcast(intent);
    }
}
