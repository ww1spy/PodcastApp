package mobi.beyondpod.services.player;

import android.annotation.SuppressLint;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.os.Handler;
import android.os.Message;
import android.support.v4.content.ContextCompat;
import android.view.KeyEvent;
import mobi.beyondpod.BeyondPodApplication;
import mobi.beyondpod.rsscore.Configuration;
import mobi.beyondpod.rsscore.helpers.CoreHelper;

/* loaded from: classes.dex */
public class MediaButtonIntentReceiver extends BroadcastReceiver {
    public static MediaButtonIntentReceiver Instance = new MediaButtonIntentReceiver();
    private static final int LONG_PRESS_DELAY = 1000;
    private static final int MSG_LONGPRESS_TIMEOUT = 1;
    private static final String TAG = "MediaButtonIntentReceiver";
    private static boolean _IsListening = false;
    private static boolean mDown = false;

    @SuppressLint({"HandlerLeak"})
    private static Handler mHandler = null;
    private static long mLastClickTime = 0;
    private static boolean mLaunched = false;

    public static void touch() {
    }

    public static String translateCommand(int i) {
        switch (i) {
            case 1:
                return MediaPlaybackService.CMD_PLAY_NEXT;
            case 2:
                return MediaPlaybackService.CMD_PLAY_PREVIOUS;
            case 3:
                return MediaPlaybackService.CMD_SKIP_FORWARD;
            case 4:
                return MediaPlaybackService.CMD_SKIP_BACKWARD;
            case 5:
                return MediaPlaybackService.CMD_SKIP_TO_END;
            default:
                return MediaPlaybackService.CMDPAUSE;
        }
    }

    static {
        CoreHelper.writeTraceEntry(TAG, "****** Static Constructor Called *********");
        mHandler = new Handler() { // from class: mobi.beyondpod.services.player.MediaButtonIntentReceiver.1
            @Override // android.os.Handler
            public void handleMessage(Message message) {
                if (message.what == 1 && !MediaButtonIntentReceiver.mLaunched) {
                    CoreHelper.writeTraceEntry(MediaButtonIntentReceiver.TAG, "*** Long Press Detected! Skipping Forward...");
                    Context context = (Context) message.obj;
                    Intent intent = new Intent(context, (Class<?>) MediaPlaybackService.class);
                    intent.setAction(MediaPlaybackService.SERVICECMD);
                    intent.putExtra(MediaPlaybackService.CMDNAME, MediaButtonIntentReceiver.translateCommand(Configuration.WRLongPressButtonAction()));
                    intent.putExtra(MediaPlaybackService.CMDOPTION, MediaPlaybackService.CMDOPTIONPLAY);
                    MediaButtonIntentReceiver.publishMediaButtonEvent(context, intent);
                    boolean unused = MediaButtonIntentReceiver.mLaunched = true;
                }
            }
        };
    }

    public static void startListeningForMediaButton() {
        TransportFocusHelper.getInstance().startListeningForMediaButton();
        _IsListening = true;
    }

    public static void stopListeningForMediaButton() {
        if (_IsListening) {
            TransportFocusHelper.getInstance().stopListeningForMediaButton();
            _IsListening = false;
        }
    }

    public static void publishMediaButtonEvent(Context context, Intent intent) {
        CoreHelper.writeTraceEntry(TAG, "***========> Media button receiver executing action: " + intent.getStringExtra(MediaPlaybackService.CMDNAME));
        if (BeyondPodApplication.getInstance().sendCommandToVideoPlayer(intent)) {
            return;
        }
        if (CoreHelper.isOreoCompatible()) {
            ContextCompat.startForegroundService(context, intent);
        } else {
            context.startService(intent);
        }
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        String action = intent.getAction();
        CoreHelper.writeTraceEntry(TAG, "****** Media button receiver got event: " + action);
        if ("android.media.AUDIO_BECOMING_NOISY".equals(action)) {
            mHandler.removeMessages(1);
            if (Configuration.pauseOnHeadsetDisconnect()) {
                if (!PlayList.isCurrentlyPlaying()) {
                    CoreHelper.writeTraceEntry(TAG, "**** We got headset disconnected but we are not playing. Nothing to do!");
                    return;
                }
                CoreHelper.writeTraceEntry(TAG, "*** Sending Pause command to the player...");
                Intent intent2 = new Intent(context, (Class<?>) MediaPlaybackService.class);
                intent2.setAction(MediaPlaybackService.SERVICECMD);
                intent2.putExtra(MediaPlaybackService.CMDNAME, MediaPlaybackService.CMDPAUSE);
                publishMediaButtonEvent(context, intent2);
                return;
            }
            CoreHelper.writeTraceEntry(TAG, "*** Pause on Headset Disconnect is Diasabled in settings!");
            return;
        }
        if (!Configuration.enableHeadsetButton()) {
            CoreHelper.writeTraceEntry(TAG, "****** Media button disabled! Ignoring..." + action);
            return;
        }
        if ("android.intent.action.MEDIA_BUTTON".equals(action)) {
            KeyEvent keyEvent = (KeyEvent) intent.getParcelableExtra("android.intent.extra.KEY_EVENT");
            CoreHelper.writeTraceEntry(TAG, "****** Media button event FLAGS: " + keyEvent.getFlags());
            if ((keyEvent.getFlags() & 32) != 0) {
                CoreHelper.writeTraceEntry(TAG, "****** Media button event was cancelled! Ignoring..." + action);
                return;
            }
            int keyCode = keyEvent.getKeyCode();
            int action2 = keyEvent.getAction();
            long eventTime = keyEvent.getEventTime();
            String str = null;
            if (keyCode == 79) {
                CoreHelper.writeTraceEntry(TAG, "*** Media Button KEY => HEADSETHOOK " + action2);
                str = MediaPlaybackService.CMDTOGGLEPAUSE;
            } else {
                switch (keyCode) {
                    case 85:
                        CoreHelper.writeTraceEntry(TAG, "*** Media Button KEY => MEDIA_PLAY_PAUSE " + action2);
                        str = MediaPlaybackService.CMDTOGGLEPAUSE;
                        break;
                    case 86:
                        CoreHelper.writeTraceEntry(TAG, "*** Media Button KEY => MEDIA_STOP " + action2);
                        str = MediaPlaybackService.CMDPAUSE;
                        break;
                    case 87:
                        CoreHelper.writeTraceEntry(TAG, "*** Media Button KEY => MEDIA_NEXT " + action2);
                        str = translateCommand(Configuration.BTNextButtonAction());
                        break;
                    case 88:
                        CoreHelper.writeTraceEntry(TAG, "*** Media Button KEY => MEDIA_PREVIOUS " + action2);
                        str = translateCommand(Configuration.BTPreviousButtonAction());
                        break;
                    case 89:
                        CoreHelper.writeTraceEntry(TAG, "*** Media Button KEY => KEYCODE_MEDIA_REWIND " + action2);
                        if (Configuration.BTPreviousButtonAction() != 1) {
                            str = MediaPlaybackService.CMD_SKIP_BACKWARD;
                            break;
                        } else {
                            str = MediaPlaybackService.CMD_SKIP_FORWARD;
                            break;
                        }
                    case 90:
                        CoreHelper.writeTraceEntry(TAG, "*** Media Button KEY => KEYCODE_MEDIA_FAST_FORWARD " + action2);
                        if (Configuration.BTNextButtonAction() != 2) {
                            str = MediaPlaybackService.CMD_SKIP_FORWARD;
                            break;
                        } else {
                            str = MediaPlaybackService.CMD_SKIP_BACKWARD;
                            break;
                        }
                    default:
                        switch (keyCode) {
                            case 126:
                                CoreHelper.writeTraceEntry(TAG, "*** Media Button KEY => MEDIA_PLAY " + action2);
                                str = MediaPlaybackService.CMDRESUME;
                                break;
                            case 127:
                                CoreHelper.writeTraceEntry(TAG, "*** Media Button KEY => MEDIA_PAUSE " + action2);
                                str = MediaPlaybackService.CMDPAUSE;
                                break;
                            default:
                                CoreHelper.writeTraceEntry(TAG, "*** Media Button KEY => " + keyCode + " (unknown) " + action2);
                                break;
                        }
                }
            }
            if (str != null) {
                if (action2 == 0) {
                    if (mDown) {
                        if (MediaPlaybackService.CMDTOGGLEPAUSE.equals(str) && mLastClickTime != 0 && eventTime - mLastClickTime > 1000) {
                            mHandler.sendMessage(mHandler.obtainMessage(1, context));
                        }
                    } else {
                        Intent intent3 = new Intent(context, (Class<?>) MediaPlaybackService.class);
                        intent3.setAction(MediaPlaybackService.SERVICECMD);
                        if (keyCode == 79 && eventTime - mLastClickTime < 300) {
                            intent3.putExtra(MediaPlaybackService.CMDNAME, translateCommand(Configuration.WRDoubleClickButtonAction()));
                            intent3.putExtra(MediaPlaybackService.CMDOPTION, MediaPlaybackService.CMDOPTIONPLAY);
                            publishMediaButtonEvent(context, intent3);
                            mLastClickTime = 0L;
                        } else {
                            intent3.putExtra(MediaPlaybackService.CMDNAME, str);
                            publishMediaButtonEvent(context, intent3);
                            mLastClickTime = eventTime;
                            if (MediaPlaybackService.CMDTOGGLEPAUSE.equals(str)) {
                                mHandler.removeMessages(1);
                                mHandler.sendMessageDelayed(mHandler.obtainMessage(1, context), 1000L);
                            }
                        }
                        mLaunched = false;
                        mDown = true;
                    }
                } else {
                    mHandler.removeMessages(1);
                    mDown = false;
                }
                if (isOrderedBroadcast()) {
                    abortBroadcast();
                }
            }
        }
    }
}
