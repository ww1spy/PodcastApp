package mobi.beyondpod.evo;

import android.content.Context;
import android.content.Intent;
import android.support.v4.content.ContextCompat;
import mobi.beyondpod.Constants;
import mobi.beyondpod.rsscore.Configuration;
import mobi.beyondpod.rsscore.helpers.CoreHelper;
import mobi.beyondpod.rsscore.helpers.StringUtils;

/* loaded from: classes.dex */
public class GcmRegistrar {
    public static void register(Context context) {
        Intent intent = new Intent(context, (Class<?>) GcmIntentService.class);
        intent.setAction(Constants.ACTION_REGISTER);
        if (CoreHelper.isOreoCompatible()) {
            ContextCompat.startForegroundService(context, intent);
        } else {
            context.startService(intent);
        }
    }

    public static void unregister(Context context) {
        Intent intent = new Intent(context, (Class<?>) GcmIntentService.class);
        intent.setAction(Constants.ACTION_UNREGISTER);
        if (CoreHelper.isOreoCompatible()) {
            ContextCompat.startForegroundService(context, intent);
        } else {
            context.startService(intent);
        }
    }

    public static boolean isRegistered() {
        return !StringUtils.isNullOrEmpty(Configuration.GCMRegistrationId());
    }

    public static String getRegistrationId() {
        return Configuration.GCMRegistrationId();
    }

    public static boolean isRegisteredOnServer() {
        return Configuration.isRegisteredOnServer();
    }
}
