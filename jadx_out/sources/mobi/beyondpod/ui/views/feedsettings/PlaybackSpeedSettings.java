package mobi.beyondpod.ui.views.feedsettings;

import android.view.View;
import android.widget.CheckBox;
import android.widget.CompoundButton;
import mobi.beyondpod.R;
import mobi.beyondpod.rsscore.Configuration;
import mobi.beyondpod.rsscore.PlaybackSpeedControl;

/* loaded from: classes.dex */
public class PlaybackSpeedSettings extends PlaybackSpeedControl {
    private CheckBox _CustomPlaybackSpeed;
    private View _PlaybackSpeedControls;

    public PlaybackSpeedSettings(View view) {
        super(view);
        this._CustomPlaybackSpeed = (CheckBox) view.findViewById(R.id.fp_playbackSpeedCheckBox);
        this._PlaybackSpeedControls = view.findViewById(R.id.fp_playbackSpeedControls);
        this._CustomPlaybackSpeed.setVisibility((Configuration.enableAudioPlugins() && Configuration.enableSonicAudioPlugin()) ? 0 : 8);
        view.findViewById(R.id.fp_playbackSpeed_msg).setVisibility(this._CustomPlaybackSpeed.getVisibility());
    }

    @Override // mobi.beyondpod.rsscore.PlaybackSpeedControl
    public void initialize(int i) {
        super.initialize(i);
        this._CustomPlaybackSpeed.setChecked(this._Speed != 0);
        this._CustomPlaybackSpeed.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() { // from class: mobi.beyondpod.ui.views.feedsettings.PlaybackSpeedSettings.1
            @Override // android.widget.CompoundButton.OnCheckedChangeListener
            public void onCheckedChanged(CompoundButton compoundButton, boolean z) {
                if (!z) {
                    PlaybackSpeedSettings.this._Speed = 0;
                } else {
                    PlaybackSpeedSettings.this._Speed = Math.round(Configuration.playbackSpeed1() * 100.0f);
                }
                PlaybackSpeedSettings.this.updateSpeed();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // mobi.beyondpod.rsscore.PlaybackSpeedControl
    public void updateSpeed() {
        if (this._CustomPlaybackSpeed.getVisibility() == 0 && this._Speed != 0) {
            super.updateSpeed();
            this._PlaybackSpeedControls.setVisibility(0);
        } else {
            this._PlaybackSpeedControls.setVisibility(8);
        }
    }
}
