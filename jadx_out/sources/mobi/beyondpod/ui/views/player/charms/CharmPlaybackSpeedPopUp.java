package mobi.beyondpod.ui.views.player.charms;

import android.content.Context;
import android.view.View;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.SeekBar;
import android.widget.TextView;
import java.text.DecimalFormat;
import mobi.beyondpod.R;
import mobi.beyondpod.rsscore.Configuration;
import mobi.beyondpod.ui.views.player.charms.CharmPopUpBase;

/* loaded from: classes.dex */
public class CharmPlaybackSpeedPopUp extends CharmPopUpBase {
    private ImageView _Config;
    private TextView _CurrSpeed;
    private TextView _Description;
    private boolean _IsSettingPresets;
    private Button _Normal;
    private DecimalFormat _PlaybackSpeedFormat;
    private PlaybackSpeedSelectedListener _PlaybackSpeedSelectedListener;
    private Button _Preset1;
    private Button _Preset2;
    private float _SelectedSpeed;
    private Animation _Shake;
    private SeekBar _SpeedSeeker;

    /* loaded from: classes.dex */
    public interface PlaybackSpeedSelectedListener extends CharmPopUpBase.CharmListener {
        void onPlaybackSpeedSelected(float f);
    }

    private int fromProgressFloat(float f) {
        return ((int) (f * 10.0f)) - 3;
    }

    public CharmPlaybackSpeedPopUp(Context context, PlaybackSpeedSelectedListener playbackSpeedSelectedListener, float f) {
        super(context, R.layout.player_charm_speed_popup, playbackSpeedSelectedListener);
        this._IsSettingPresets = false;
        this._PlaybackSpeedFormat = new DecimalFormat("#.#x");
        this._SelectedSpeed = f;
        this._Shake = AnimationUtils.loadAnimation(context, R.anim.shake);
        this._PlaybackSpeedSelectedListener = playbackSpeedSelectedListener;
        View contentView = getContentView();
        this._SpeedSeeker = (SeekBar) contentView.findViewById(R.id.seek);
        this._CurrSpeed = (TextView) contentView.findViewById(R.id.currentSpeed);
        this._Description = (TextView) contentView.findViewById(R.id.charmDescription);
        this._Preset1 = (Button) contentView.findViewById(R.id.ps1);
        this._Preset2 = (Button) contentView.findViewById(R.id.ps2);
        this._Normal = (Button) contentView.findViewById(R.id.psNormal);
        this._Config = (ImageView) contentView.findViewById(R.id.config);
        this._Preset1.setOnClickListener(new View.OnClickListener() { // from class: mobi.beyondpod.ui.views.player.charms.CharmPlaybackSpeedPopUp.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (CharmPlaybackSpeedPopUp.this._IsSettingPresets) {
                    Configuration.setPlaybackSpeed1(CharmPlaybackSpeedPopUp.this.toProgressFloat(CharmPlaybackSpeedPopUp.this._SpeedSeeker.getProgress()));
                    CharmPlaybackSpeedPopUp.this.stopSettingPresets();
                } else {
                    CharmPlaybackSpeedPopUp.this.setSpeedTo(Configuration.playbackSpeed1());
                    CharmPlaybackSpeedPopUp.this.dismiss();
                }
            }
        });
        this._Preset2.setOnClickListener(new View.OnClickListener() { // from class: mobi.beyondpod.ui.views.player.charms.CharmPlaybackSpeedPopUp.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (CharmPlaybackSpeedPopUp.this._IsSettingPresets) {
                    Configuration.setPlaybackSpeed2(CharmPlaybackSpeedPopUp.this.toProgressFloat(CharmPlaybackSpeedPopUp.this._SpeedSeeker.getProgress()));
                    CharmPlaybackSpeedPopUp.this.stopSettingPresets();
                } else {
                    CharmPlaybackSpeedPopUp.this.setSpeedTo(Configuration.playbackSpeed2());
                    CharmPlaybackSpeedPopUp.this.dismiss();
                }
            }
        });
        this._Normal.setOnClickListener(new View.OnClickListener() { // from class: mobi.beyondpod.ui.views.player.charms.CharmPlaybackSpeedPopUp.3
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (CharmPlaybackSpeedPopUp.this._IsSettingPresets) {
                    return;
                }
                CharmPlaybackSpeedPopUp.this.setSpeedTo(Configuration.playbackSpeedNormal());
                CharmPlaybackSpeedPopUp.this.dismiss();
            }
        });
        this._Config.setOnClickListener(new View.OnClickListener() { // from class: mobi.beyondpod.ui.views.player.charms.CharmPlaybackSpeedPopUp.4
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (CharmPlaybackSpeedPopUp.this._IsSettingPresets) {
                    CharmPlaybackSpeedPopUp.this.stopSettingPresets();
                } else {
                    CharmPlaybackSpeedPopUp.this.startSettingPresets();
                }
            }
        });
        this._SpeedSeeker.setMax(27);
        this._SpeedSeeker.setSecondaryProgress(27);
        this._SpeedSeeker.setOnSeekBarChangeListener(new SeekBar.OnSeekBarChangeListener() { // from class: mobi.beyondpod.ui.views.player.charms.CharmPlaybackSpeedPopUp.5
            @Override // android.widget.SeekBar.OnSeekBarChangeListener
            public void onStartTrackingTouch(SeekBar seekBar) {
            }

            @Override // android.widget.SeekBar.OnSeekBarChangeListener
            public void onStopTrackingTouch(SeekBar seekBar) {
            }

            @Override // android.widget.SeekBar.OnSeekBarChangeListener
            public void onProgressChanged(SeekBar seekBar, int i, boolean z) {
                if (z) {
                    CharmPlaybackSpeedPopUp.this._SelectedSpeed = CharmPlaybackSpeedPopUp.this.toProgressFloat(i);
                    CharmPlaybackSpeedPopUp.this.setSpeedTo(CharmPlaybackSpeedPopUp.this._SelectedSpeed);
                }
            }
        });
        updateProgressUI(this._SelectedSpeed);
        updatePresets();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public float toProgressFloat(int i) {
        return Math.round((0.3f + (i / 10.0f)) * 100.0f) / 100.0f;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void stopSettingPresets() {
        this._IsSettingPresets = false;
        this._Description.setText((CharSequence) null);
        this._Preset1.clearAnimation();
        this._Preset2.clearAnimation();
        this._Normal.setEnabled(true);
        this._Config.setImageResource(R.drawable.ic_feed_settings);
        updatePresets();
        updateProgressUI(this._SelectedSpeed);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void startSettingPresets() {
        this._IsSettingPresets = true;
        this._Normal.setEnabled(false);
        this._Config.setImageResource(R.drawable.ic_action_tick);
        this._Description.setText(R.string.player_charm_pbspeed_preset_description);
        this._Preset1.startAnimation(this._Shake);
        this._Preset2.startAnimation(this._Shake);
    }

    private void updatePresets() {
        this._Preset1.setText(this._PlaybackSpeedFormat.format(Configuration.playbackSpeed1()));
        this._Preset2.setText(this._PlaybackSpeedFormat.format(Configuration.playbackSpeed2()));
        this._Normal.setText(this._PlaybackSpeedFormat.format(Configuration.playbackSpeedNormal()));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setSpeedTo(float f) {
        if (this._PlaybackSpeedSelectedListener != null) {
            this._PlaybackSpeedSelectedListener.onPlaybackSpeedSelected(f);
        }
        updateProgressUI(f);
    }

    private void updateProgressUI(float f) {
        this._SpeedSeeker.setProgress(fromProgressFloat(f));
        this._CurrSpeed.setText(this._PlaybackSpeedFormat.format(f));
    }
}
