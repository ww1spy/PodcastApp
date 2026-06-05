package mobi.beyondpod.ui.views.notifications;

import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CheckBox;
import android.widget.TextView;
import java.util.Date;
import mobi.beyondpod.BeyondPodApplication;
import mobi.beyondpod.R;
import mobi.beyondpod.rsscore.Configuration;
import mobi.beyondpod.rsscore.helpers.CoreHelper;

/* loaded from: classes.dex */
public class UserNotificationManager {
    private static long _LastPlaylistDemoTime;
    private static NotificationPreferences _Preferences = new NotificationPreferences();

    /* loaded from: classes.dex */
    public interface OnContinueListener {
        void onContinue();
    }

    public static void warnAboutPlaybackInExternalPlayer(Context context, OnContinueListener onContinueListener) {
        if (Configuration.playerIntegrationType() == 0) {
            openNotification(context, 0, onContinueListener, true);
        } else if (onContinueListener != null) {
            onContinueListener.onContinue();
        }
    }

    public static void warnAboutMarkingAllAsReadOrPlayed(Context context, OnContinueListener onContinueListener, boolean z) {
        openNotification(context, z ? 4 : 11, onContinueListener, true);
    }

    public static boolean shouldPeekPlaylist() {
        if (!isNotificationEnabledFor(7) || BeyondPodApplication.getInstance().playList().playlistSize() == 0) {
            return false;
        }
        long currentTimeMillis = System.currentTimeMillis();
        if (currentTimeMillis - _LastPlaylistDemoTime < 1000) {
            return false;
        }
        _LastPlaylistDemoTime = currentTimeMillis;
        return true;
    }

    public static void warnAboutStartEpisodeDownload(Context context, OnContinueListener onContinueListener) {
        if (CoreHelper.isWiFiConnected() && onContinueListener != null) {
            onContinueListener.onContinue();
        } else {
            openNotification(context, 9, onContinueListener, true);
        }
    }

    public static void warnAboutStartUpdateAndDownloadOnMobile(Context context, OnContinueListener onContinueListener) {
        if (CoreHelper.isWiFiConnected() && onContinueListener != null) {
            onContinueListener.onContinue();
        } else {
            openNotification(context, 5, onContinueListener, true);
        }
    }

    private static void openNotification(Context context, final int i, final OnContinueListener onContinueListener, boolean z) {
        if (context == null || NotificationPreferences.NO.equals(_Preferences.getPreference(i, NotificationPreferences.YES))) {
            if (onContinueListener != null) {
                onContinueListener.onContinue();
                return;
            }
            return;
        }
        View inflate = LayoutInflater.from(context).inflate(R.layout.dont_show_again_dialog_view, (ViewGroup) null);
        TextView textView = (TextView) inflate.findViewById(R.id.dlg_message);
        int i2 = 0;
        if (i == 0) {
            textView.setText(R.string.dlg_user_warning_open_ext_player_msg);
            i2 = R.string.dlg_user_warning_open_ext_player_title;
        } else if (i == 9) {
            textView.setText(R.string.dlg_user_warning_start_episode_download_msg);
        } else if (i != 11) {
            switch (i) {
                case 4:
                    textView.setText(R.string.dlg_user_warning_mark_all_read_msg);
                    break;
                case 5:
                    textView.setText(R.string.dlg_user_warning_start_update_download_msg);
                    break;
            }
        } else {
            textView.setText(R.string.dlg_user_warning_mark_all_played_msg);
        }
        final CheckBox checkBox = (CheckBox) inflate.findViewById(R.id.do_not_show);
        DialogInterface.OnClickListener onClickListener = new DialogInterface.OnClickListener() { // from class: mobi.beyondpod.ui.views.notifications.UserNotificationManager.1
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i3) {
                if (checkBox.isChecked()) {
                    UserNotificationManager._Preferences.setPreference(i, NotificationPreferences.NO);
                }
                if (onContinueListener != null) {
                    onContinueListener.onContinue();
                }
            }
        };
        AlertDialog.Builder view = new AlertDialog.Builder(context).setView(inflate);
        if (i2 > 0) {
            view.setTitle(i2);
        }
        if (!z) {
            view.setNeutralButton(R.string.alert_dialog_continue, onClickListener);
        } else {
            view.setPositiveButton(R.string.alert_dialog_continue, onClickListener);
            view.setNegativeButton(R.string.alert_dialog_cancel, (DialogInterface.OnClickListener) null);
        }
        try {
            view.create().show();
        } catch (Exception unused) {
            if (onContinueListener != null) {
                onContinueListener.onContinue();
            }
        }
    }

    public static void resetDefaultPrefs() {
        _Preferences.resetDefaultPrefs();
        _Preferences.save();
    }

    public static boolean isNotificationEnabledFor(int i) {
        return NotificationPreferences.YES.equals(_Preferences.getPreference(i, NotificationPreferences.YES));
    }

    public static void setNotificationPreferenceFor(int i, boolean z) {
        _Preferences.setPreference(i, z ? NotificationPreferences.YES : NotificationPreferences.NO);
    }

    public static boolean hasEnoughTimePassedSinceLastTip(long j) {
        Date lastTipNotificationTime = Configuration.getLastTipNotificationTime();
        if (lastTipNotificationTime == null) {
            lastTipNotificationTime = recordTipShown();
        }
        return new Date().getTime() - lastTipNotificationTime.getTime() > j;
    }

    public static Date recordTipShown() {
        Date date = new Date();
        Configuration.setLastTipNotificationTime(date);
        return date;
    }
}
