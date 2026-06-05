package mobi.beyondpod.evo;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import mobi.beyondpod.GcmBroadcastReceiverBase;

/* loaded from: classes.dex */
public class GcmBroadcastReceiver extends GcmBroadcastReceiverBase {
    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        super.onReceive(context, intent, new ComponentName(context.getPackageName(), GcmIntentService.class.getName()));
    }
}
