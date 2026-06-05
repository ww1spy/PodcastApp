package mobi.beyondpod;

import android.annotation.SuppressLint;
import android.content.BroadcastReceiver;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.support.v4.content.WakefulBroadcastReceiver;
import mobi.beyondpod.rsscore.helpers.CoreHelper;

/* loaded from: classes.dex */
public abstract class GcmBroadcastReceiverCompat extends BroadcastReceiver {
    /* JADX INFO: Access modifiers changed from: protected */
    @SuppressLint({"NewApi"})
    public void startServiceIntent(Context context, Intent intent, ComponentName componentName) {
        intent.setComponent(componentName);
        if (CoreHelper.isOreoCompatible()) {
            context.startForegroundService(intent);
        } else {
            WakefulBroadcastReceiver.startWakefulService(context, intent);
        }
    }

    public static Boolean completeIntent(Intent intent) {
        return Boolean.valueOf(!CoreHelper.isOreoCompatible() || WakefulBroadcastReceiver.completeWakefulIntent(intent));
    }
}
