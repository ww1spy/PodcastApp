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
public class PlaybackSpeedControl {
    private static final int DELTA_AUTO = -1;
    private static final int DELTA_FF = 25;
    private static final int MAX_SPEED = 300;
    private static final int MIN_SPEED = 30;
    Animation _InMin;
    Animation _InPlus;
    private ImageButton _MinusButton;
    Animation _OutMin;
    Animation _OutPlus;
    private TextSwitcher _PlaybackSpeedInfo;
    private ImageButton _PlusButton;
    protected int _Speed;
    DecimalFormat _PlaybackSpeedFormat = new DecimalFormat("#.##x");
    private View.OnClickListener _OnPlusListener = new View.OnClickListener() { // from class: mobi.beyondpod.rsscore.PlaybackSpeedControl.2
        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            PlaybackSpeedControl.this.increaseSpeed(-1);
        }
    };
    private View.OnClickListener _OnMinusListener = new View.OnClickListener() { // from class: mobi.beyondpod.rsscore.PlaybackSpeedControl.3
        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            PlaybackSpeedControl.this.decreaseSpeed(-1);
        }
    };

    public PlaybackSpeedControl(final View view) {
        this._PlaybackSpeedInfo = (TextSwitcher) view.findViewById(R.id.sp_speedInfo);
        this._PlaybackSpeedInfo.setFactory(new ViewSwitcher.ViewFactory() { // from class: mobi.beyondpod.rsscore.PlaybackSpeedControl.1
            @Override // android.widget.ViewSwitcher.ViewFactory
            public View makeView() {
                TextView textView = new TextView(view.getContext());
                textView.setGravity(1);
                textView.setTextSize(28.0f);
                return textView;
            }
        });
        this._PlusButton = (ImageButton) view.findViewById(R.id.sp_buttonPlus);
        this._PlusButton.setOnClickListener(this._OnPlusListener);
        this._MinusButton = (ImageButton) view.findViewById(R.id.sp_buttonMinus);
        this._MinusButton.setOnClickListener(this._OnMinusListener);
        this._InPlus = AnimationUtils.loadAnimation(view.getContext(), R.anim.slide_in_plus);
        this._OutPlus = AnimationUtils.loadAnimation(view.getContext(), R.anim.slide_out_plus);
        this._InMin = AnimationUtils.loadAnimation(view.getContext(), R.anim.slide_in_minus);
        this._OutMin = AnimationUtils.loadAnimation(view.getContext(), R.anim.slide_out_minus);
    }

    public void initialize(int i) {
        if (i < 30) {
            i = 0;
        }
        this._Speed = i;
        updateSpeed();
    }

    public int getSelectedSpeed() {
        return this._Speed;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void increaseSpeed(int i) {
        if (this._Speed >= 300) {
            return;
        }
        this._PlaybackSpeedInfo.setInAnimation(this._InPlus);
        this._PlaybackSpeedInfo.setOutAnimation(this._OutPlus);
        if (i > 0) {
            this._Speed = Math.min(300, (this._Speed + i) - (this._Speed % i));
        } else {
            this._Speed += 5;
        }
        updateSpeed();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void decreaseSpeed(int i) {
        if (this._Speed <= 30) {
            return;
        }
        this._PlaybackSpeedInfo.setInAnimation(this._InMin);
        this._PlaybackSpeedInfo.setOutAnimation(this._OutMin);
        if (i > 0) {
            int i2 = this._Speed % i;
            int i3 = this._Speed;
            if (i2 != 0) {
                i = i2;
            }
            this._Speed = Math.max(30, i3 - i);
        } else {
            this._Speed -= 5;
        }
        updateSpeed();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void updateSpeed() {
        this._PlaybackSpeedInfo.setText(this._PlaybackSpeedFormat.format(this._Speed / 100.0f));
    }
}
