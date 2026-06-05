package mobi.beyondpod;

import android.annotation.SuppressLint;
import android.app.IntentService;
import android.content.Intent;
import android.os.Bundle;
import com.google.android.gms.gcm.GoogleCloudMessaging;
import mobi.beyondpod.rsscore.Configuration;
import mobi.beyondpod.rsscore.helpers.CoreHelper;

/* loaded from: classes.dex */
public abstract class GcmIntentServiceBase extends IntentService {
    private static final String TAG = "GcmIntentServiceBase";

    protected abstract void onDeletedMessages(Intent intent);

    public abstract void onError(String str);

    protected abstract void onMessage(Intent intent);

    protected abstract void onRegistered(String str);

    protected abstract void onUnregistered(String str);

    public GcmIntentServiceBase() {
        super(TAG);
    }

    @Override // android.app.IntentService
    protected void onHandleIntent(Intent intent) {
        GoogleCloudMessaging googleCloudMessaging;
        String action;
        try {
            try {
                googleCloudMessaging = GoogleCloudMessaging.getInstance(this);
                action = intent.getAction();
                CoreHelper.writeTraceEntry(TAG, "Received intent: " + action);
            } catch (Exception e) {
                CoreHelper.logException(TAG, "GCM onHandleIntent failed!", e);
            }
            if (action.equals(Constants.ACTION_REGISTER)) {
                register(googleCloudMessaging);
                return;
            }
            if (action.equals(Constants.ACTION_UNREGISTER)) {
                unregister(googleCloudMessaging);
                return;
            }
            Bundle extras = intent.getExtras();
            String messageType = googleCloudMessaging.getMessageType(intent);
            if (extras != null && !extras.isEmpty()) {
                if (GoogleCloudMessaging.MESSAGE_TYPE_SEND_ERROR.equals(messageType)) {
                    onError("MESSAGE_TYPE_SEND_ERROR");
                } else if (GoogleCloudMessaging.MESSAGE_TYPE_DELETED.equals(messageType)) {
                    onDeletedMessages(intent);
                } else if (GoogleCloudMessaging.MESSAGE_TYPE_MESSAGE.equals(messageType)) {
                    onMessage(intent);
                }
            }
        } finally {
            GcmBroadcastReceiver.completeIntent(intent);
        }
    }

    @SuppressLint({"MissingPermission"})
    private void unregister(GoogleCloudMessaging googleCloudMessaging) {
        try {
            String GCMRegistrationId = Configuration.GCMRegistrationId();
            CoreHelper.writeTraceEntry(TAG, "### Ready to un-register with GCM...");
            googleCloudMessaging.unregister();
            onUnregistered(GCMRegistrationId);
            Configuration.clearGCMRegistrationId();
        } catch (Exception unused) {
            onError("### failed to Un-register GCM in Play Services!");
        }
    }

    @SuppressLint({"MissingPermission"})
    private void register(GoogleCloudMessaging googleCloudMessaging) {
        try {
            CoreHelper.writeTraceEntry(TAG, "### Ready to register with GCM...");
            String register = googleCloudMessaging.register(Configuration.GCMSenderID());
            onRegistered(register);
            Configuration.setGCMRegistrationId(register);
        } catch (Exception unused) {
            onError("### failed to register GCM in Play Services!");
        }
    }
}
