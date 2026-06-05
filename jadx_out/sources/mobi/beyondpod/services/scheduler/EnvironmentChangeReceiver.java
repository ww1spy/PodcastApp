package mobi.beyondpod.services.scheduler;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.os.PowerManager;
import android.support.v4.content.ContextCompat;
import android.util.Log;
import mobi.beyondpod.rsscore.Configuration;
import mobi.beyondpod.rsscore.helpers.CoreHelper;

/* loaded from: classes.dex */
public class EnvironmentChangeReceiver extends BroadcastReceiver {
    private PowerManager.WakeLock _BPReceiverWakeLock;

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        String action = intent.getAction();
        if (context.getContentResolver() == null) {
            return;
        }
        PowerManager powerManager = (PowerManager) context.getSystemService("power");
        if (powerManager != null) {
            this._BPReceiverWakeLock = powerManager.newWakeLock(Configuration.defaultDeviceWakeLock(), getClass().getName());
            this._BPReceiverWakeLock.setReferenceCounted(false);
            this._BPReceiverWakeLock.acquire(10000L);
        }
        Log.v("BeyondPod", "Environment Change Receiver received intent: " + action);
        Intent intent2 = new Intent(context, (Class<?>) SchedulingService.class);
        intent2.setAction(action);
        if (CoreHelper.isOreoCompatible()) {
            ContextCompat.startForegroundService(context, intent2);
        } else {
            context.startService(intent2);
        }
    }
}
