package mobi.beyondpod.ui.dialogs;

import android.app.AlertDialog;
import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CheckBox;
import android.widget.CompoundButton;
import android.widget.TextView;
import java.util.Iterator;
import mobi.beyondpod.R;
import mobi.beyondpod.rsscore.Track;
import mobi.beyondpod.rsscore.TrackList;
import mobi.beyondpod.rsscore.helpers.CoreHelper;
import mobi.beyondpod.rsscore.helpers.StringUtils;
import mobi.beyondpod.rsscore.repository.FeedRepository;
import mobi.beyondpod.rsscore.rss.ItemStateHistory;

/* loaded from: classes.dex */
public class DeletePodcastDialog {
    private static String _ContentFormat;
    private static String _TitleFormat;
    private static DialogInterface.OnDismissListener _onDismissed;
    private Context _Context;
    private boolean _DeleteLocked = false;
    private DialogInterface.OnClickListener _OnOK = new DialogInterface.OnClickListener() { // from class: mobi.beyondpod.ui.dialogs.DeletePodcastDialog.2
        @Override // android.content.DialogInterface.OnClickListener
        public void onClick(DialogInterface dialogInterface, int i) {
            Iterator<Track> it = DeletePodcastDialog.this._Tracks.iterator();
            while (it.hasNext()) {
                Track next = it.next();
                if (DeletePodcastDialog.this._DeleteLocked || next.allowAutoDelete()) {
                    FeedRepository.deleteTrackAsync(next);
                    ItemStateHistory.markTracksItemAsRead(next);
                }
            }
        }
    };
    private TrackList _Tracks;

    public DeletePodcastDialog(Context context) {
        this._Context = context;
        if (_ContentFormat == null) {
            if (CoreHelper.apiLevel() >= 21) {
                _ContentFormat = "%s";
                _TitleFormat = this._Context.getResources().getString(R.string.dlg_DeletePodcastMsg);
            } else {
                _ContentFormat = this._Context.getResources().getString(R.string.dlg_DeletePodcastMsg);
                _TitleFormat = null;
            }
        }
    }

    public static void showDialog(Context context, TrackList trackList) {
        DeletePodcastDialog deletePodcastDialog = new DeletePodcastDialog(context);
        deletePodcastDialog._Tracks = trackList;
        deletePodcastDialog.createDialog().show();
    }

    public static void showDialog(Context context, TrackList trackList, DialogInterface.OnDismissListener onDismissListener) {
        _onDismissed = onDismissListener;
        showDialog(context, trackList);
    }

    private Dialog createDialog() {
        View inflate = LayoutInflater.from(this._Context).inflate(R.layout.delete_episode_view, (ViewGroup) null);
        final TextView textView = (TextView) inflate.findViewById(R.id.dlg_message);
        textView.setGravity(8388611);
        this._DeleteLocked = this._Tracks.size() == 1;
        textView.setText(getFormattedTracks(!this._DeleteLocked));
        CheckBox checkBox = (CheckBox) inflate.findViewById(R.id.dlg_check_box);
        checkBox.setVisibility((this._Tracks.size() <= 1 || !hasLockedTracks()) ? 8 : 0);
        checkBox.setText(R.string.dlg_delete_locked_podcasts_msg);
        checkBox.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() { // from class: mobi.beyondpod.ui.dialogs.DeletePodcastDialog.1
            @Override // android.widget.CompoundButton.OnCheckedChangeListener
            public void onCheckedChanged(CompoundButton compoundButton, boolean z) {
                DeletePodcastDialog.this._DeleteLocked = z;
                textView.setText(DeletePodcastDialog.this.getFormattedTracks(!DeletePodcastDialog.this._DeleteLocked));
            }
        });
        AlertDialog.Builder negativeButton = new AlertDialog.Builder(this._Context).setView(inflate).setPositiveButton(R.string.alert_dialog_ok, this._OnOK).setNegativeButton(R.string.alert_dialog_cancel, (DialogInterface.OnClickListener) null);
        if (_onDismissed != null) {
            negativeButton.setOnDismissListener(_onDismissed);
        }
        if (!StringUtils.isNullOrEmpty(_TitleFormat)) {
            negativeButton.setTitle(String.format(_TitleFormat, ""));
        }
        return negativeButton.create();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String getFormattedTracks(boolean z) {
        String str;
        if (this._Tracks == null) {
            return this._Context.getResources().getString(R.string.delete_podcast_dlg_episodes);
        }
        StringBuilder sb = new StringBuilder();
        Iterator<Track> it = this._Tracks.iterator();
        while (it.hasNext()) {
            Track next = it.next();
            if (next.allowAutoDelete() || !z) {
                if (sb.length() > 1) {
                    sb.append("\n\n");
                }
                sb.append("• ");
                sb.append(next.displayName());
                if (next.allowAutoDelete()) {
                    str = "";
                } else {
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append(" (");
                    sb2.append(CoreHelper.loadResourceString(next.locked() ? R.string.delete_podcast_dlg_favorite : R.string.delete_podcast_dlg_locked));
                    sb2.append(")");
                    str = sb2.toString();
                }
                sb.append(str);
            }
        }
        return String.format(_ContentFormat, sb.toString());
    }

    private boolean hasLockedTracks() {
        if (this._Tracks == null) {
            return false;
        }
        Iterator<Track> it = this._Tracks.iterator();
        while (it.hasNext()) {
            if (!it.next().allowAutoDelete()) {
                return true;
            }
        }
        return false;
    }
}
