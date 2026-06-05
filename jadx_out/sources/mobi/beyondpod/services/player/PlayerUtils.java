package mobi.beyondpod.services.player;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.IBinder;
import android.support.v4.content.ContextCompat;
import mobi.beyondpod.rsscore.helpers.CoreHelper;
import mobi.beyondpod.services.player.IMediaPlaybackService;

/* loaded from: classes.dex */
public class PlayerUtils {
    private static final String TAG = "PlayerUtils";
    private static ServiceBinder _ServiceBinder = null;
    private static boolean _ServiceLocked = false;
    public static IMediaPlaybackService sService;

    public static boolean bindToService(Context context, ServiceConnection serviceConnection) {
        if (_ServiceBinder != null) {
            return true;
        }
        Intent intent = new Intent(context, (Class<?>) MediaPlaybackService.class);
        if (CoreHelper.isOreoCompatible()) {
            ContextCompat.startForegroundService(context, intent);
        } else {
            context.startService(intent);
        }
        _ServiceBinder = new ServiceBinder(serviceConnection);
        return context.bindService(new Intent(context, (Class<?>) MediaPlaybackService.class), _ServiceBinder, 0);
    }

    public static void unbindFromService(Context context) {
        if (_ServiceBinder == null) {
            return;
        }
        try {
            context.unbindService(_ServiceBinder);
        } catch (Exception unused) {
            CoreHelper.writeTraceEntry(TAG, "failed to unbind from the player service");
        }
        _ServiceBinder = null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static class ServiceBinder implements ServiceConnection {
        ServiceConnection _Callback;

        ServiceBinder(ServiceConnection serviceConnection) {
            this._Callback = serviceConnection;
        }

        @Override // android.content.ServiceConnection
        public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
            PlayerUtils.sService = IMediaPlaybackService.Stub.asInterface(iBinder);
            if (this._Callback != null) {
                this._Callback.onServiceConnected(componentName, iBinder);
            }
        }

        @Override // android.content.ServiceConnection
        public void onServiceDisconnected(ComponentName componentName) {
            if (this._Callback != null) {
                this._Callback.onServiceDisconnected(componentName);
            }
            PlayerUtils.sService = null;
        }
    }

    public static void stopService(Context context) {
        unbindFromService(context);
        context.stopService(new Intent(context, (Class<?>) MediaPlaybackService.class));
    }

    public static void lockPlayerService() {
        _ServiceLocked = true;
    }

    public static void unlockPlayerService() {
        _ServiceLocked = false;
    }

    public static boolean isPlayerServiceLocked() {
        return _ServiceLocked;
    }
}
