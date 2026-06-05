package mobi.beyondpod.ui.views.feedsettings;

import android.view.View;
import android.widget.CheckBox;
import android.widget.CompoundButton;
import mobi.beyondpod.R;
import mobi.beyondpod.rsscore.Configuration;
import mobi.beyondpod.rsscore.VolumeBoostControl;

/* loaded from: classes.dex */
public class VolumeBoostSettings extends VolumeBoostControl {
    private CheckBox _CustomVolumeBoost;
    private View _VolumeBoostControls;

    public VolumeBoostSettings(View view) {
        super(view);
        this._CustomVolumeBoost = (CheckBox) view.findViewById(R.id.fp_playbackVolumeBoostCheckBox);
        this._VolumeBoostControls = view.findViewById(R.id.fp_volumeBoostControls);
        this._CustomVolumeBoost.setVisibility((Configuration.enableAudioPlugins() && Configuration.enableSonicAudioPlugin()) ? 0 : 8);
        view.findViewById(R.id.fp_volumeBoost_msg).setVisibility(this._CustomVolumeBoost.getVisibility());
    }

    @Override // mobi.beyondpod.rsscore.VolumeBoostControl
    public void initialize(int i) {
        super.initialize(i);
        this._CustomVolumeBoost.setChecked(i != 0);
        this._VolumeBoostControls.setVisibility((this._CustomVolumeBoost.getVisibility() == 0 && this._CustomVolumeBoost.isChecked()) ? 0 : 8);
        this._CustomVolumeBoost.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() { // from class: mobi.beyondpod.ui.views.feedsettings.VolumeBoostSettings.1
            @Override // android.widget.CompoundButton.OnCheckedChangeListener
            public void onCheckedChanged(CompoundButton compoundButton, boolean z) {
                if (z) {
                    VolumeBoostSettings.this._VolumeBoostControls.setVisibility(0);
                } else {
                    VolumeBoostSettings.this._Boost = 0;
                    VolumeBoostSettings.this._VolumeBoostControls.setVisibility(8);
                }
                VolumeBoostSettings.this.updateScaling();
            }
        });
    }
}
