package mobi.beyondpod.rsscore;

import android.view.View;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.widget.ImageButton;
import android.widget.TextSwitcher;
import android.widget.TextView;
import android.widget.ViewSwitcher;
import java.text.DecimalFormat;
import mobi.beyondpod.R;

/* loaded from: classes.dex */
public class VolumeBoostControl {
    private static final int DELTA_AUTO = 1;
    private static final int MAX_BOOST = 9;
    private static final int MIN_BOOST = -9;
    protected int _Boost;
    Animation _InMin;
    Animation _InPlus;
    private ImageButton _MinusButton;
    Animation _OutMin;
    Animation _OutPlus;
    private ImageButton _PlusButton;
    private TextSwitcher _VolumeBoostInfo;
    DecimalFormat _PlaybackSpeedFormat = new DecimalFormat("#");
    private View.OnClickListener _OnPlusListener = new View.OnClickListener() { // from class: mobi.beyondpod.rsscore.VolumeBoostControl.2
        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            VolumeBoostControl.this.increaseSpeed(1);
        }
    };
    private View.OnClickListener _OnMinusListener = new View.OnClickListener() { // from class: mobi.beyondpod.rsscore.VolumeBoostControl.3
        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            VolumeBoostControl.this.decreaseSpeed(1);
        }
    };

    public VolumeBoostControl(final View view) {
        this._VolumeBoostInfo = (TextSwitcher) view.findViewById(R.id.sp_VBInfo);
        this._VolumeBoostInfo.setFactory(new ViewSwitcher.ViewFactory() { // from class: mobi.beyondpod.rsscore.VolumeBoostControl.1
            @Override // android.widget.ViewSwitcher.ViewFactory
            public View makeView() {
                TextView textView = new TextView(view.getContext());
                textView.setGravity(1);
                textView.setTextSize(28.0f);
                return textView;
            }
        });
        this._PlusButton = (ImageButton) view.findViewById(R.id.sp_buttonVBPlus);
        this._PlusButton.setOnClickListener(this._OnPlusListener);
        this._MinusButton = (ImageButton) view.findViewById(R.id.sp_buttonVBMinus);
        this._MinusButton.setOnClickListener(this._OnMinusListener);
        this._InPlus = AnimationUtils.loadAnimation(view.getContext(), R.anim.slide_in_plus);
        this._OutPlus = AnimationUtils.loadAnimation(view.getContext(), R.anim.slide_out_plus);
        this._InMin = AnimationUtils.loadAnimation(view.getContext(), R.anim.slide_in_minus);
        this._OutMin = AnimationUtils.loadAnimation(view.getContext(), R.anim.slide_out_minus);
    }

    public void initialize(int i) {
        this._Boost = i;
        updateScaling();
    }

    public int getSelectedVolumeBoost() {
        return this._Boost;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void increaseSpeed(int i) {
        if (this._Boost >= 9) {
            return;
        }
        this._VolumeBoostInfo.setInAnimation(this._InPlus);
        this._VolumeBoostInfo.setOutAnimation(this._OutPlus);
        this._Boost += i;
        updateScaling();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void decreaseSpeed(int i) {
        if (this._Boost <= MIN_BOOST) {
            return;
        }
        this._VolumeBoostInfo.setInAnimation(this._InMin);
        this._VolumeBoostInfo.setOutAnimation(this._OutMin);
        this._Boost -= i;
        updateScaling();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void updateScaling() {
        this._VolumeBoostInfo.setText(this._PlaybackSpeedFormat.format(this._Boost));
    }
}
