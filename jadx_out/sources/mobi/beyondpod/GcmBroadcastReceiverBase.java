package mobi.beyondpod;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import mobi.beyondpod.rsscore.Configuration;
import mobi.beyondpod.rsscore.helpers.CoreHelper;
import mobi.beyondpod.rsscore.helpers.StringUtils;

/* loaded from: classes.dex */
public abstract class GcmBroadcastReceiverBase extends GcmBroadcastReceiverCompat {
    private static final String TAG = GcmIntentService.class.getSimpleName();

    /* JADX INFO: Access modifiers changed from: protected */
    public void onReceive(Context context, Intent intent, ComponentName componentName) {
        CoreHelper.writeTraceEntry(TAG, "Received GCM Intent: " + intent.getAction());
        if (StringUtils.equals("com.google.android.c2dm.intent.REGISTRATION", intent.getAction())) {
            String stringExtra = intent.getStringExtra("registration_id");
            if (!StringUtils.equals(stringExtra == null ? "" : stringExtra, Configuration.GCMRegistrationId())) {
                CoreHelper.writeTraceEntry(TAG, "Received REGISTRATION Intent that is not in Sync with our state! event Reg id:" + stringExtra + ", Our State: " + Configuration.GCMRegistrationId());
                return;
            }
            CoreHelper.writeTraceEntry(TAG, "Received REGISTRATION Intent! Reg id: " + stringExtra);
            return;
        }
        CoreHelper.writeTraceEntry(TAG, "Starting GCM Intent Service: " + componentName);
        startServiceIntent(context, intent, componentName);
        if (CoreHelper.isOreoCompatible()) {
            return;
        }
        setResultCode(-1);
    }
}
