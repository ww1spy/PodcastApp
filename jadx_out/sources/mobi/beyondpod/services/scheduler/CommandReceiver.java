package mobi.beyondpod.services.scheduler;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.support.v4.content.ContextCompat;
import mobi.beyondpod.BeyondPodApplication;
import mobi.beyondpod.aggregators.AggregatorLoginHelper;
import mobi.beyondpod.rsscore.helpers.CoreHelper;
import mobi.beyondpod.rsscore.helpers.StringUtils;
import mobi.beyondpod.schedulercore.ScheduledTasksManager;
import mobi.beyondpod.schedulercore.SyncChangeTrackingScheduledTask;
import mobi.beyondpod.services.player.MediaPlaybackService;

/* loaded from: classes.dex */
public class CommandReceiver extends BroadcastReceiver {
    public static final String EXTRA_PLAYLIST_ID = "mobi.beyondpod.playlist.id";
    public static final String EXTRA_PLAYLIST_NAME = "mobi.beyondpod.playlist.NAME";
    private static String TAG = "CommandReceiver";
    public static final String CMD_INVALIDATE_TOKEN = "mobi.beyondpod.command.SIMULATE_INVALID_READER_TOKEN";
    public static final String CMD_PAUSE = "mobi.beyondpod.command.PAUSE";
    public static final String CMD_PLAY = "mobi.beyondpod.command.PLAY";
    public static final String CMD_PLAY_NEXT = "mobi.beyondpod.command.PLAY_NEXT";
    public static final String CMD_PLAY_PAUSE = "mobi.beyondpod.command.PLAY_PAUSE";
    public static final String CMD_PLAY_PREVIOUS = "mobi.beyondpod.command.PLAY_PREVIOUS";
    public static final String CMD_SET_PLAYBACK_SPEED_1 = "mobi.beyondpod.command.SET_PLAYBACK_SPEED_1";
    public static final String CMD_SET_PLAYBACK_SPEED_2 = "mobi.beyondpod.command.SET_PLAYBACK_SPEED_2";
    public static final String CMD_SET_PLAYBACK_SPEED_NORMAL = "mobi.beyondpod.command.SET_PLAYBACK_SPEED_NORMAL";
    public static final String CMD_SKIP_BACKWARD = "mobi.beyondpod.command.SKIP_BACKWARD";
    public static final String CMD_SKIP_FORWARD = "mobi.beyondpod.command.SKIP_FORWARD";
    public static final String CMD_SKIP_TO_END = "mobi.beyondpod.command.SKIP_TO_END";
    public static final String CMD_START_SMART_PLAY = "mobi.beyondpod.command.START_SMART_PLAY";
    public static final String CMD_START_SYNC = "mobi.beyondpod.command.START_SYNC";
    public static final String CMD_UPDATE_UPDATE_CATEGORY = "mobi.beyondpod.command.UPDATE_CATEGORY";
    public static final String CMD_UPDATE_UPDATE_SMART_PLAY = "mobi.beyondpod.command.UPDATE_SMART_PLAY";
    public static final String[] ALL_COMMANDS = {CMD_INVALIDATE_TOKEN, CMD_PAUSE, CMD_PLAY, CMD_PLAY_NEXT, CMD_PLAY_PAUSE, CMD_PLAY_PREVIOUS, CMD_SET_PLAYBACK_SPEED_1, CMD_SET_PLAYBACK_SPEED_2, CMD_SET_PLAYBACK_SPEED_NORMAL, CMD_SKIP_BACKWARD, CMD_SKIP_FORWARD, CMD_SKIP_TO_END, CMD_START_SMART_PLAY, CMD_START_SYNC, CMD_UPDATE_UPDATE_CATEGORY, CMD_UPDATE_UPDATE_SMART_PLAY};

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        String action = intent.getAction();
        CoreHelper.writeTraceEntry(TAG, "###### External Command received: " + action);
        if (CMD_UPDATE_UPDATE_CATEGORY.equals(action)) {
            String stringExtra = intent.getStringExtra("category");
            if (StringUtils.isNullOrEmpty(stringExtra)) {
                CoreHelper.writeTraceEntry(TAG, "###### mobi.beyondpod.command.UPDATE_CATEGORY was invoked without specifying a category! (Did you forget to specify the 'category' string extra ?)");
                return;
            } else {
                startScheduledTask(context, ScheduledTasksManager.buildAdHockCategoryUpdateTaskID(stringExtra));
                return;
            }
        }
        if (CMD_UPDATE_UPDATE_SMART_PLAY.equals(action)) {
            String stringExtra2 = intent.getStringExtra("smartplay");
            if (StringUtils.isNullOrEmpty(stringExtra2)) {
                CoreHelper.writeTraceEntry(TAG, "###### mobi.beyondpod.command.UPDATE_SMART_PLAY was invoked without specifying a smartPlay. Updating default SmartPlay! (Did you forget to specify the 'smartplay' string extra ?)");
            }
            if (StringUtils.isNullOrEmpty(stringExtra2)) {
                stringExtra2 = "#$DEF$#";
            }
            startScheduledTask(context, ScheduledTasksManager.buildAdHockSmartPlayUpdateTaskID(stringExtra2));
            return;
        }
        if (CMD_PLAY.equals(action)) {
            callMediaPlayer(context, MediaPlaybackService.CMDRESUME);
            return;
        }
        if (CMD_START_SMART_PLAY.equals(action)) {
            String stringExtra3 = intent.getStringExtra("smartplay");
            if (StringUtils.isNullOrEmpty(stringExtra3)) {
                CoreHelper.writeTraceEntry(TAG, "###### mobi.beyondpod.command.START_SMART_PLAY was invoked without specifying a smartPlay. Starting default SmartPlay! (Did you forget to specify the 'smartplay' string extra ?)");
            }
            callMediaPlayer(context, MediaPlaybackService.SERVICE_WIDGET_CMD_START_SMARTPLAY, EXTRA_PLAYLIST_NAME, stringExtra3);
            return;
        }
        if (CMD_PAUSE.equals(action)) {
            callMediaPlayer(context, MediaPlaybackService.CMDPAUSE);
            return;
        }
        if (CMD_PLAY_PAUSE.equals(action)) {
            callMediaPlayer(context, MediaPlaybackService.CMDTOGGLEPAUSE);
            return;
        }
        if (CMD_PLAY_NEXT.equals(action)) {
            callMediaPlayer(context, MediaPlaybackService.CMD_PLAY_NEXT);
            return;
        }
        if (CMD_PLAY_PREVIOUS.equals(action)) {
            callMediaPlayer(context, MediaPlaybackService.CMD_PLAY_PREVIOUS);
            return;
        }
        if (CMD_SKIP_FORWARD.equals(action)) {
            callMediaPlayer(context, MediaPlaybackService.CMD_SKIP_FORWARD);
            return;
        }
        if (CMD_SKIP_BACKWARD.equals(action)) {
            callMediaPlayer(context, MediaPlaybackService.CMD_SKIP_BACKWARD);
            return;
        }
        if (CMD_SKIP_TO_END.equals(action)) {
            callMediaPlayer(context, MediaPlaybackService.CMD_SKIP_TO_END);
            return;
        }
        if (CMD_SET_PLAYBACK_SPEED_NORMAL.equals(action)) {
            callMediaPlayer(context, MediaPlaybackService.CMD_SET_PLAYBACK_SPEED_NORMAL);
            return;
        }
        if (CMD_SET_PLAYBACK_SPEED_1.equals(action)) {
            callMediaPlayer(context, MediaPlaybackService.CMD_SET_PLAYBACK_SPEED_1);
            return;
        }
        if (CMD_SET_PLAYBACK_SPEED_2.equals(action)) {
            callMediaPlayer(context, MediaPlaybackService.CMD_SET_PLAYBACK_SPEED_2);
        } else if (CMD_INVALIDATE_TOKEN.equals(action)) {
            AggregatorLoginHelper.simulateInvalidToken();
        } else if (CMD_START_SYNC.equals(action)) {
            startScheduledTask(context, SyncChangeTrackingScheduledTask.CHANGE_TRACKING_SYNC_TASK_ID);
        }
    }

    public static void startScheduledTask(Context context, String str) {
        try {
            BeyondPodApplication.getInstance().bringApplicationToForeground();
            Intent intent = new Intent(context, (Class<?>) SchedulingService.class);
            intent.setAction(str);
            if (CoreHelper.isOreoCompatible()) {
                ContextCompat.startForegroundService(context, intent);
            } else {
                context.startService(intent);
            }
        } catch (Exception e) {
            CoreHelper.logException(TAG, "Command Receiver failed to start scheduled task: " + str, e);
        }
    }

    private void callMediaPlayer(Context context, String str) {
        callMediaPlayer(context, str, null, null);
    }

    private void callMediaPlayer(Context context, String str, String str2, String str3) {
        try {
            Intent intent = new Intent(context, (Class<?>) MediaPlaybackService.class);
            if (MediaPlaybackService.SERVICE_WIDGET_CMD_START_SMARTPLAY.equals(str)) {
                intent.setAction(MediaPlaybackService.SERVICE_WIDGET_CMD_START_SMARTPLAY);
            } else {
                intent.setAction(MediaPlaybackService.SERVICECMD);
                intent.putExtra(MediaPlaybackService.CMDNAME, str);
            }
            if (!StringUtils.isNullOrEmpty(str2)) {
                intent.putExtra(str2, str3);
            }
            if (CoreHelper.isOreoCompatible()) {
                ContextCompat.startForegroundService(context, intent);
            } else {
                context.startService(intent);
            }
        } catch (Exception e) {
            CoreHelper.logException(TAG, "failed to start player command!", e);
        }
    }
}
