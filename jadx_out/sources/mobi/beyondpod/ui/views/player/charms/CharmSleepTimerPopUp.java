package mobi.beyondpod.ui.views.player.charms;

import android.content.Context;
import android.view.View;
import android.widget.Button;
import mobi.beyondpod.R;
import mobi.beyondpod.rsscore.Configuration;
import mobi.beyondpod.ui.views.player.charms.CharmPopUpBase;

/* loaded from: classes.dex */
public class CharmSleepTimerPopUp extends CharmPopUpBase {
    private View.OnClickListener _SleepClickListener;
    private SleepTimeSelectedListener _SleepTimeListener;

    /* loaded from: classes.dex */
    public interface SleepTimeSelectedListener extends CharmPopUpBase.CharmListener {
        void onSleepTimeSelected(int i);
    }

    public CharmSleepTimerPopUp(Context context, SleepTimeSelectedListener sleepTimeSelectedListener, float f) {
        super(context, R.layout.player_charm_sleep_popup, sleepTimeSelectedListener);
        this._SleepClickListener = new View.OnClickListener() { // from class: mobi.beyondpod.ui.views.player.charms.CharmSleepTimerPopUp.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (CharmSleepTimerPopUp.this._SleepTimeListener != null) {
                    CharmSleepTimerPopUp.this._SleepTimeListener.onSleepTimeSelected(((Integer) view.getTag()).intValue());
                }
                CharmSleepTimerPopUp.this.dismiss();
            }
        };
        this._SleepTimeListener = sleepTimeSelectedListener;
        View contentView = getContentView();
        int[] iArr = {15, 30, 45, 60, 75};
        int[] playerSleepTimeouts = Configuration.playerSleepTimeouts();
        if (playerSleepTimeouts.length > 1) {
            iArr[0] = playerSleepTimeouts[1];
            iArr[1] = playerSleepTimeouts.length > 2 ? playerSleepTimeouts[2] : 0;
            iArr[2] = playerSleepTimeouts.length > 3 ? playerSleepTimeouts[3] : 0;
            iArr[3] = playerSleepTimeouts.length > 4 ? playerSleepTimeouts[4] : 0;
            iArr[4] = playerSleepTimeouts.length > 5 ? playerSleepTimeouts[5] : 0;
        }
        View findViewById = contentView.findViewById(R.id.sleepEpisodeEnd);
        findViewById.setTag(Integer.MIN_VALUE);
        findViewById.setOnClickListener(this._SleepClickListener);
        View findViewById2 = contentView.findViewById(R.id.sleepOff);
        findViewById2.setTag(0);
        findViewById2.setOnClickListener(this._SleepClickListener);
        buildSleepButton(iArr[0], (Button) contentView.findViewById(R.id.sleep1));
        buildSleepButton(iArr[1], (Button) contentView.findViewById(R.id.sleep2));
        buildSleepButton(iArr[2], (Button) contentView.findViewById(R.id.sleep3));
        buildSleepButton(iArr[3], (Button) contentView.findViewById(R.id.sleep4));
        buildSleepButton(iArr[4], (Button) contentView.findViewById(R.id.sleep5));
    }

    private void buildSleepButton(int i, Button button) {
        if (i > 0 && i < 9999) {
            button.setTag(Integer.valueOf(i));
            button.setText(i + " min");
            button.setOnClickListener(this._SleepClickListener);
            return;
        }
        button.setVisibility(4);
    }
}
