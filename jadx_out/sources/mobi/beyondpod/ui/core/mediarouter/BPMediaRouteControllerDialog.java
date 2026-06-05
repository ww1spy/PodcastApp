package mobi.beyondpod.ui.core.mediarouter;

import android.content.Context;
import android.os.Bundle;
import android.os.Handler;
import android.support.v7.app.MediaRouteControllerDialog;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageButton;
import android.widget.ProgressBar;
import android.widget.TextView;
import mobi.beyondpod.BeyondPodApplication;
import mobi.beyondpod.R;
import mobi.beyondpod.rsscore.Track;
import mobi.beyondpod.rsscore.helpers.CoreHelper;
import mobi.beyondpod.rsscore.helpers.DateTime;
import mobi.beyondpod.rsscore.repository.RepositoryEvents;
import mobi.beyondpod.services.player.PlayList;
import mobi.beyondpod.services.player.PlayListEvents;
import mobi.beyondpod.ui.commands.CommandManager;
import mobi.beyondpod.ui.views.base.UIUtils;

/* loaded from: classes.dex */
public class BPMediaRouteControllerDialog extends MediaRouteControllerDialog implements PlayListEvents.PlayListEventListener, RepositoryEvents.RepositoryEventListener {
    private Context _Context;
    private Handler _Handler;
    private ImageButton _PlayPause;
    private ProgressBar _PrepareProgress;
    private TextView _SubTitle;
    private TextView _Title;
    private static final String PLAYBACK_ERROR = CoreHelper.loadResourceString(R.string.player_view_playback_error);
    private static final String PREPARING_STREAM_S = CoreHelper.loadResourceString(R.string.player_view_preparing_stream_s);
    private static final String PLAYBACK_ERROR_STREAMING_DISABLED = CoreHelper.loadResourceString(R.string.player_view_playback_error_streaming_disabled);
    private static final String PLAYBACK_ERROR_CANT_CAST = CoreHelper.loadResourceString(R.string.player_view_playback_error_cant_cast);

    /* loaded from: classes.dex */
    public interface IRouteControllerDialogOwner {
        void onMediaItemSelected();
    }

    public BPMediaRouteControllerDialog(Context context, int i) {
        super(context, i);
    }

    public BPMediaRouteControllerDialog(Context context) {
        super(context);
        this._Context = context;
    }

    @Override // android.support.v7.app.MediaRouteControllerDialog
    public View onCreateMediaControlView(Bundle bundle) {
        this._Handler = new Handler();
        setTitle((CharSequence) null);
        View inflate = getLayoutInflater().inflate(R.layout.media_route_controller_controls_dialog, (ViewGroup) null);
        this._Title = (TextView) inflate.findViewById(R.id.title);
        this._SubTitle = (TextView) inflate.findViewById(R.id.source);
        this._PlayPause = (ImageButton) inflate.findViewById(R.id.playpause);
        this._PlayPause.setOnClickListener(new View.OnClickListener() { // from class: mobi.beyondpod.ui.core.mediarouter.BPMediaRouteControllerDialog.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                Track currentTrack = BPMediaRouteControllerDialog.this.currentTrack();
                if (currentTrack != null) {
                    CommandManager.cmdPlayPauseTrack(BPMediaRouteControllerDialog.this.getContext(), currentTrack, null);
                }
            }
        });
        this._PrepareProgress = (ProgressBar) inflate.findViewById(R.id.prepareProgress);
        updateCurrentTrack();
        inflate.setOnClickListener(new View.OnClickListener() { // from class: mobi.beyondpod.ui.core.mediarouter.BPMediaRouteControllerDialog.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (BPMediaRouteControllerDialog.this._Context instanceof IRouteControllerDialogOwner) {
                    ((IRouteControllerDialogOwner) BPMediaRouteControllerDialog.this._Context).onMediaItemSelected();
                }
                BPMediaRouteControllerDialog.this.dismiss();
            }
        });
        return inflate;
    }

    @Override // android.app.Dialog
    protected void onStart() {
        BeyondPodApplication.messageBus.subscribe(this, RepositoryEvents.RepositoryEvent.class);
        BeyondPodApplication.messageBus.subscribe(this, PlayListEvents.PlayListEvent.class);
        super.onStart();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.support.v7.app.AppCompatDialog, android.app.Dialog
    public void onStop() {
        BeyondPodApplication.messageBus.unsubscribe(this, RepositoryEvents.RepositoryEvent.class);
        BeyondPodApplication.messageBus.unsubscribe(this, PlayListEvents.PlayListEvent.class);
        super.onStop();
    }

    @Override // mobi.beyondpod.services.player.PlayListEvents.PlayListEventListener
    public void onPlayListEvent(PlayListEvents.PlayListEvent playListEvent) {
        this._Handler.post(new Runnable() { // from class: mobi.beyondpod.ui.core.mediarouter.BPMediaRouteControllerDialog.3
            @Override // java.lang.Runnable
            public void run() {
                BPMediaRouteControllerDialog.this.updateCurrentTrack();
            }
        });
    }

    public void setPlayPauseButtonImage(Track track) {
        if (track == null) {
            this._PlayPause.setVisibility(8);
            this._PrepareProgress.setVisibility(8);
        } else if (track.getCurrentPlayState() == 3 && track.hasUrl()) {
            this._Title.setText(String.format(PREPARING_STREAM_S, Integer.valueOf(track.getBufferedPercent())));
            this._PrepareProgress.setVisibility(0);
            this._PlayPause.setVisibility(8);
        } else {
            this._PrepareProgress.setVisibility(8);
            this._PlayPause.setVisibility(0);
            this._PlayPause.setImageResource(PlayList.isCurrentlyPlaying() ? R.drawable.ic_cast_pause : R.drawable.ic_cast_play);
        }
    }

    @Override // mobi.beyondpod.rsscore.repository.RepositoryEvents.RepositoryEventListener
    public void onRepositoryEvent(RepositoryEvents.RepositoryEvent repositoryEvent) {
        if (repositoryEvent.Type == 11 && repositoryEvent.Track == currentTrack()) {
            updateCurrentTrack();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Track currentTrack() {
        return BeyondPodApplication.getInstance().playList().currentTrack();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateCurrentTrack() {
        String str;
        String sb;
        Track currentTrack = currentTrack();
        int i = R.drawable.appwidget_streaming;
        if (currentTrack != null) {
            if (currentTrack.getCurrentPlayState() == 3 && currentTrack.hasUrl()) {
                this._Title.setText(String.format(PREPARING_STREAM_S, Integer.valueOf(currentTrack.getBufferedPercent())));
            } else {
                this._Title.setText(currentTrack.displayName());
                if (currentTrack.getCurrentPlayState() == 7) {
                    sb = PLAYBACK_ERROR;
                } else {
                    if (currentTrack.getCurrentPlayState() == 8) {
                        sb = PLAYBACK_ERROR_STREAMING_DISABLED;
                    } else if (currentTrack.getCurrentPlayState() == 9) {
                        sb = PLAYBACK_ERROR_CANT_CAST;
                    } else {
                        StringBuilder sb2 = new StringBuilder();
                        sb2.append(DateTime.formatDateTimeToday(currentTrack.getLastModifiedDate()));
                        if (currentTrack.getTotalTime() > 0) {
                            str = " • " + UIUtils.formatEpisodeTimeAsRemaining(getContext(), currentTrack);
                        } else {
                            str = "";
                        }
                        sb2.append(str);
                        sb = sb2.toString();
                    }
                    i = 0;
                }
                this._SubTitle.setText(sb);
                this._SubTitle.setVisibility(0);
            }
        } else {
            this._SubTitle.setVisibility(8);
            this._Title.setText(R.string.podcast_list_empty_playlist);
            i = 0;
        }
        setPlayPauseButtonImage(currentTrack);
        this._Title.setCompoundDrawablesWithIntrinsicBounds(0, 0, i, 0);
    }
}
