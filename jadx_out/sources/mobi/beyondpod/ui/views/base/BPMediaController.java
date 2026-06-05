package mobi.beyondpod.ui.views.base;

import android.content.Context;
import android.os.Handler;
import android.os.Message;
import android.support.v4.app.NotificationManagerCompat;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import android.widget.SeekBar;
import android.widget.TextView;
import android.widget.VideoView;
import mobi.beyondpod.R;
import mobi.beyondpod.rsscore.Configuration;
import mobi.beyondpod.rsscore.helpers.CoreHelper;
import mobi.beyondpod.ui.views.base.RepeatingFrameButton;

/* loaded from: classes.dex */
public class BPMediaController extends RelativeLayout {
    private static final int SHOW_PROGRESS = 2;
    public static final int TOOLBAR_TIMEOUT_LONG = 3600000;
    public static final long TOOLBAR_TIMEOUT_SHORT = 3000;
    private TextView _CurrentTime;
    protected long _LastSeekEventTime;
    private ViewGroup _MediaController;
    final Handler _NavigationHandler;
    Runnable _NavigationRunnable;
    private IViewOwner _Owner;
    private int _PlayIconOpticalPadding;
    private ImageButton _PlayPause;
    private View.OnClickListener _PlayPauseListener;
    private TextView _RamainingTime;
    private RepeatingFrameButton _SkipBack;
    private TextView _SkipBackDuration;
    private RepeatingFrameButton.RepeatListener _SkipBackLongClickListener;
    private View.OnClickListener _SkipBackwardClickListener;
    private RepeatingFrameButton _SkipForward;
    private View.OnClickListener _SkipForwardClickListener;
    private TextView _SkipForwardDuration;
    private RepeatingFrameButton.RepeatListener _SkipForwardLongClickListener;
    private ImageView _SkipToEnd;
    private View.OnClickListener _SkipToEndClickListener;
    private View.OnLongClickListener _SkipToEndLOngClickListener;
    private int _StartSeekPos;
    private boolean mDragging;
    private Handler mHandler;
    private VideoView mPlayer;
    private ProgressBar mProgress;
    private SeekBar.OnSeekBarChangeListener mSeekListener;
    private boolean mShowing;

    /* loaded from: classes.dex */
    public interface IViewOwner {
        void doPause();

        void doStart();

        void goToNextTrack();

        void goToPreviousTrack();

        void hideNavigation();

        void requestCloseView();

        void showNavigation();

        void skipToEnd();
    }

    public BPMediaController(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this._NavigationHandler = new Handler();
        this._NavigationRunnable = new Runnable() { // from class: mobi.beyondpod.ui.views.base.BPMediaController.1
            @Override // java.lang.Runnable
            public void run() {
                BPMediaController.this._MediaController.setVisibility(8);
                if (BPMediaController.this._Owner != null) {
                    BPMediaController.this._Owner.hideNavigation();
                }
            }
        };
        this._PlayPauseListener = new View.OnClickListener() { // from class: mobi.beyondpod.ui.views.base.BPMediaController.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                BPMediaController.this.doPlayPause();
            }
        };
        this.mSeekListener = new SeekBar.OnSeekBarChangeListener() { // from class: mobi.beyondpod.ui.views.base.BPMediaController.3
            @Override // android.widget.SeekBar.OnSeekBarChangeListener
            public void onStartTrackingTouch(SeekBar seekBar) {
                BPMediaController.this.show(3600000L);
                BPMediaController.this.mDragging = true;
                BPMediaController.this.mHandler.removeMessages(2);
            }

            @Override // android.widget.SeekBar.OnSeekBarChangeListener
            public void onProgressChanged(SeekBar seekBar, int i2, boolean z) {
                if (z) {
                    long duration = BPMediaController.this.mPlayer.getDuration();
                    long j = (i2 * duration) / 1000;
                    BPMediaController.this.mPlayer.seekTo((int) j);
                    BPMediaController.this._RamainingTime.setText("-" + CoreHelper.formatTimeAsString((duration - j) / 1000, true));
                    BPMediaController.this._CurrentTime.setText(CoreHelper.formatTimeAsString(j / 1000, true));
                }
            }

            @Override // android.widget.SeekBar.OnSeekBarChangeListener
            public void onStopTrackingTouch(SeekBar seekBar) {
                BPMediaController.this.mDragging = false;
                BPMediaController.this.setProgress();
                BPMediaController.this.updatePausePlay();
                BPMediaController.this.show(BPMediaController.TOOLBAR_TIMEOUT_SHORT);
                BPMediaController.this.mHandler.sendEmptyMessage(2);
            }
        };
        this._SkipForwardClickListener = new View.OnClickListener() { // from class: mobi.beyondpod.ui.views.base.BPMediaController.4
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                BPMediaController.this.doSkipForward();
            }
        };
        this._SkipBackwardClickListener = new View.OnClickListener() { // from class: mobi.beyondpod.ui.views.base.BPMediaController.5
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                BPMediaController.this.doSkipBack();
            }
        };
        this._SkipToEndClickListener = new View.OnClickListener() { // from class: mobi.beyondpod.ui.views.base.BPMediaController.6
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (Configuration.skipToEndButtonClickType() == 1) {
                    BPMediaController.this.doSkipToEnd();
                }
            }
        };
        this._SkipToEndLOngClickListener = new View.OnLongClickListener() { // from class: mobi.beyondpod.ui.views.base.BPMediaController.7
            @Override // android.view.View.OnLongClickListener
            public boolean onLongClick(View view) {
                if (Configuration.skipToEndButtonClickType() != 2) {
                    return false;
                }
                BPMediaController.this.doSkipToEnd();
                return false;
            }
        };
        this._SkipBackLongClickListener = new RepeatingFrameButton.RepeatListener() { // from class: mobi.beyondpod.ui.views.base.BPMediaController.8
            @Override // mobi.beyondpod.ui.views.base.RepeatingFrameButton.RepeatListener
            public void onRepeat(View view, long j, int i2) {
                BPMediaController.this.scanBackward(i2, (int) j);
            }
        };
        this._SkipForwardLongClickListener = new RepeatingFrameButton.RepeatListener() { // from class: mobi.beyondpod.ui.views.base.BPMediaController.9
            @Override // mobi.beyondpod.ui.views.base.RepeatingFrameButton.RepeatListener
            public void onRepeat(View view, long j, int i2) {
                BPMediaController.this.scanForward(i2, (int) j);
            }
        };
        this._StartSeekPos = 0;
        this.mHandler = new Handler() { // from class: mobi.beyondpod.ui.views.base.BPMediaController.10
            @Override // android.os.Handler
            public void handleMessage(Message message) {
                if (message.what != 2) {
                    return;
                }
                int progress = BPMediaController.this.setProgress();
                if (!BPMediaController.this.mDragging && BPMediaController.this.mShowing && BPMediaController.this.mPlayer.isPlaying()) {
                    sendMessageDelayed(obtainMessage(2), 1000 - (progress % 1000));
                }
            }
        };
    }

    public BPMediaController(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this._NavigationHandler = new Handler();
        this._NavigationRunnable = new Runnable() { // from class: mobi.beyondpod.ui.views.base.BPMediaController.1
            @Override // java.lang.Runnable
            public void run() {
                BPMediaController.this._MediaController.setVisibility(8);
                if (BPMediaController.this._Owner != null) {
                    BPMediaController.this._Owner.hideNavigation();
                }
            }
        };
        this._PlayPauseListener = new View.OnClickListener() { // from class: mobi.beyondpod.ui.views.base.BPMediaController.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                BPMediaController.this.doPlayPause();
            }
        };
        this.mSeekListener = new SeekBar.OnSeekBarChangeListener() { // from class: mobi.beyondpod.ui.views.base.BPMediaController.3
            @Override // android.widget.SeekBar.OnSeekBarChangeListener
            public void onStartTrackingTouch(SeekBar seekBar) {
                BPMediaController.this.show(3600000L);
                BPMediaController.this.mDragging = true;
                BPMediaController.this.mHandler.removeMessages(2);
            }

            @Override // android.widget.SeekBar.OnSeekBarChangeListener
            public void onProgressChanged(SeekBar seekBar, int i2, boolean z) {
                if (z) {
                    long duration = BPMediaController.this.mPlayer.getDuration();
                    long j = (i2 * duration) / 1000;
                    BPMediaController.this.mPlayer.seekTo((int) j);
                    BPMediaController.this._RamainingTime.setText("-" + CoreHelper.formatTimeAsString((duration - j) / 1000, true));
                    BPMediaController.this._CurrentTime.setText(CoreHelper.formatTimeAsString(j / 1000, true));
                }
            }

            @Override // android.widget.SeekBar.OnSeekBarChangeListener
            public void onStopTrackingTouch(SeekBar seekBar) {
                BPMediaController.this.mDragging = false;
                BPMediaController.this.setProgress();
                BPMediaController.this.updatePausePlay();
                BPMediaController.this.show(BPMediaController.TOOLBAR_TIMEOUT_SHORT);
                BPMediaController.this.mHandler.sendEmptyMessage(2);
            }
        };
        this._SkipForwardClickListener = new View.OnClickListener() { // from class: mobi.beyondpod.ui.views.base.BPMediaController.4
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                BPMediaController.this.doSkipForward();
            }
        };
        this._SkipBackwardClickListener = new View.OnClickListener() { // from class: mobi.beyondpod.ui.views.base.BPMediaController.5
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                BPMediaController.this.doSkipBack();
            }
        };
        this._SkipToEndClickListener = new View.OnClickListener() { // from class: mobi.beyondpod.ui.views.base.BPMediaController.6
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (Configuration.skipToEndButtonClickType() == 1) {
                    BPMediaController.this.doSkipToEnd();
                }
            }
        };
        this._SkipToEndLOngClickListener = new View.OnLongClickListener() { // from class: mobi.beyondpod.ui.views.base.BPMediaController.7
            @Override // android.view.View.OnLongClickListener
            public boolean onLongClick(View view) {
                if (Configuration.skipToEndButtonClickType() != 2) {
                    return false;
                }
                BPMediaController.this.doSkipToEnd();
                return false;
            }
        };
        this._SkipBackLongClickListener = new RepeatingFrameButton.RepeatListener() { // from class: mobi.beyondpod.ui.views.base.BPMediaController.8
            @Override // mobi.beyondpod.ui.views.base.RepeatingFrameButton.RepeatListener
            public void onRepeat(View view, long j, int i2) {
                BPMediaController.this.scanBackward(i2, (int) j);
            }
        };
        this._SkipForwardLongClickListener = new RepeatingFrameButton.RepeatListener() { // from class: mobi.beyondpod.ui.views.base.BPMediaController.9
            @Override // mobi.beyondpod.ui.views.base.RepeatingFrameButton.RepeatListener
            public void onRepeat(View view, long j, int i2) {
                BPMediaController.this.scanForward(i2, (int) j);
            }
        };
        this._StartSeekPos = 0;
        this.mHandler = new Handler() { // from class: mobi.beyondpod.ui.views.base.BPMediaController.10
            @Override // android.os.Handler
            public void handleMessage(Message message) {
                if (message.what != 2) {
                    return;
                }
                int progress = BPMediaController.this.setProgress();
                if (!BPMediaController.this.mDragging && BPMediaController.this.mShowing && BPMediaController.this.mPlayer.isPlaying()) {
                    sendMessageDelayed(obtainMessage(2), 1000 - (progress % 1000));
                }
            }
        };
    }

    public BPMediaController(Context context) {
        super(context);
        this._NavigationHandler = new Handler();
        this._NavigationRunnable = new Runnable() { // from class: mobi.beyondpod.ui.views.base.BPMediaController.1
            @Override // java.lang.Runnable
            public void run() {
                BPMediaController.this._MediaController.setVisibility(8);
                if (BPMediaController.this._Owner != null) {
                    BPMediaController.this._Owner.hideNavigation();
                }
            }
        };
        this._PlayPauseListener = new View.OnClickListener() { // from class: mobi.beyondpod.ui.views.base.BPMediaController.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                BPMediaController.this.doPlayPause();
            }
        };
        this.mSeekListener = new SeekBar.OnSeekBarChangeListener() { // from class: mobi.beyondpod.ui.views.base.BPMediaController.3
            @Override // android.widget.SeekBar.OnSeekBarChangeListener
            public void onStartTrackingTouch(SeekBar seekBar) {
                BPMediaController.this.show(3600000L);
                BPMediaController.this.mDragging = true;
                BPMediaController.this.mHandler.removeMessages(2);
            }

            @Override // android.widget.SeekBar.OnSeekBarChangeListener
            public void onProgressChanged(SeekBar seekBar, int i2, boolean z) {
                if (z) {
                    long duration = BPMediaController.this.mPlayer.getDuration();
                    long j = (i2 * duration) / 1000;
                    BPMediaController.this.mPlayer.seekTo((int) j);
                    BPMediaController.this._RamainingTime.setText("-" + CoreHelper.formatTimeAsString((duration - j) / 1000, true));
                    BPMediaController.this._CurrentTime.setText(CoreHelper.formatTimeAsString(j / 1000, true));
                }
            }

            @Override // android.widget.SeekBar.OnSeekBarChangeListener
            public void onStopTrackingTouch(SeekBar seekBar) {
                BPMediaController.this.mDragging = false;
                BPMediaController.this.setProgress();
                BPMediaController.this.updatePausePlay();
                BPMediaController.this.show(BPMediaController.TOOLBAR_TIMEOUT_SHORT);
                BPMediaController.this.mHandler.sendEmptyMessage(2);
            }
        };
        this._SkipForwardClickListener = new View.OnClickListener() { // from class: mobi.beyondpod.ui.views.base.BPMediaController.4
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                BPMediaController.this.doSkipForward();
            }
        };
        this._SkipBackwardClickListener = new View.OnClickListener() { // from class: mobi.beyondpod.ui.views.base.BPMediaController.5
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                BPMediaController.this.doSkipBack();
            }
        };
        this._SkipToEndClickListener = new View.OnClickListener() { // from class: mobi.beyondpod.ui.views.base.BPMediaController.6
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (Configuration.skipToEndButtonClickType() == 1) {
                    BPMediaController.this.doSkipToEnd();
                }
            }
        };
        this._SkipToEndLOngClickListener = new View.OnLongClickListener() { // from class: mobi.beyondpod.ui.views.base.BPMediaController.7
            @Override // android.view.View.OnLongClickListener
            public boolean onLongClick(View view) {
                if (Configuration.skipToEndButtonClickType() != 2) {
                    return false;
                }
                BPMediaController.this.doSkipToEnd();
                return false;
            }
        };
        this._SkipBackLongClickListener = new RepeatingFrameButton.RepeatListener() { // from class: mobi.beyondpod.ui.views.base.BPMediaController.8
            @Override // mobi.beyondpod.ui.views.base.RepeatingFrameButton.RepeatListener
            public void onRepeat(View view, long j, int i2) {
                BPMediaController.this.scanBackward(i2, (int) j);
            }
        };
        this._SkipForwardLongClickListener = new RepeatingFrameButton.RepeatListener() { // from class: mobi.beyondpod.ui.views.base.BPMediaController.9
            @Override // mobi.beyondpod.ui.views.base.RepeatingFrameButton.RepeatListener
            public void onRepeat(View view, long j, int i2) {
                BPMediaController.this.scanForward(i2, (int) j);
            }
        };
        this._StartSeekPos = 0;
        this.mHandler = new Handler() { // from class: mobi.beyondpod.ui.views.base.BPMediaController.10
            @Override // android.os.Handler
            public void handleMessage(Message message) {
                if (message.what != 2) {
                    return;
                }
                int progress = BPMediaController.this.setProgress();
                if (!BPMediaController.this.mDragging && BPMediaController.this.mShowing && BPMediaController.this.mPlayer.isPlaying()) {
                    sendMessageDelayed(obtainMessage(2), 1000 - (progress % 1000));
                }
            }
        };
    }

    public void initialize(IViewOwner iViewOwner) {
        this._Owner = iViewOwner;
        this.mPlayer = (VideoView) findViewById(R.id.surface_view);
        this._MediaController = (ViewGroup) findViewById(R.id.media_controller);
        initControllerView(this);
        this._MediaController.setFocusable(true);
        this._MediaController.setFocusableInTouchMode(true);
        this._MediaController.setDescendantFocusability(262144);
        this._MediaController.requestFocus();
        this._PlayIconOpticalPadding = getResources().getDimensionPixelSize(R.dimen.video_player_play_button_optical_padding);
        updateTimeAndPosition();
    }

    private void showAndAutoHideNavigation(long j) {
        this._MediaController.setVisibility(0);
        if (this._Owner != null) {
            this._Owner.showNavigation();
        }
        hideNavigationDelayed(j);
    }

    public void hideNavigationDelayed(long j) {
        this._NavigationHandler.removeCallbacks(this._NavigationRunnable);
        if (this.mPlayer.isPlaying()) {
            this._NavigationHandler.postDelayed(this._NavigationRunnable, j);
        }
    }

    private void initControllerView(View view) {
        this._PlayPause = (ImageButton) view.findViewById(R.id.playpause);
        if (this._PlayPause != null) {
            this._PlayPause.requestFocus();
            this._PlayPause.setOnClickListener(this._PlayPauseListener);
        }
        this._SkipForward = (RepeatingFrameButton) findViewById(R.id.skip_forward);
        this._SkipForward.setOnClickListener(this._SkipForwardClickListener);
        this._SkipForward.setRepeatListener(this._SkipForwardLongClickListener, 260L);
        this._SkipToEnd = (ImageView) findViewById(R.id.skipToEnd);
        this._SkipToEnd.setOnClickListener(this._SkipToEndClickListener);
        this._SkipToEnd.setOnLongClickListener(this._SkipToEndLOngClickListener);
        this._SkipForwardDuration = (TextView) findViewById(R.id.skip_forward_text);
        this._SkipBackDuration = (TextView) findViewById(R.id.skip_back_text);
        this._SkipBackDuration.setText(Configuration.getBackwardSkipInterval() + "s");
        this._SkipForwardDuration.setText(Configuration.getForwardSkipInterval() + "s");
        this._SkipToEnd.setVisibility(Configuration.skipToEndButtonClickType() < 3 ? 0 : 8);
        this._SkipBack = (RepeatingFrameButton) findViewById(R.id.skip_back);
        this._SkipBack.setOnClickListener(this._SkipBackwardClickListener);
        this._SkipBack.setRepeatListener(this._SkipBackLongClickListener, 260L);
        this.mProgress = (ProgressBar) view.findViewById(android.R.id.progress);
        if (this.mProgress != null) {
            if (this.mProgress instanceof SeekBar) {
                ((SeekBar) this.mProgress).setOnSeekBarChangeListener(this.mSeekListener);
            }
            this.mProgress.setMax(1000);
        }
        this._RamainingTime = (TextView) view.findViewById(R.id.totaltime);
        this._CurrentTime = (TextView) view.findViewById(R.id.currenttime);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int setProgress() {
        if (this.mPlayer == null || this.mDragging) {
            return 0;
        }
        int currentPosition = this.mPlayer.getCurrentPosition();
        int duration = this.mPlayer.getDuration();
        if (this.mProgress != null) {
            if (duration > 0) {
                this.mProgress.setProgress((int) ((1000 * currentPosition) / duration));
            }
            int bufferPercentage = this.mPlayer.getBufferPercentage();
            this.mProgress.setSecondaryProgress((bufferPercentage != 0 || currentPosition <= 0) ? bufferPercentage * 10 : 1000);
        }
        this._RamainingTime.setText("-" + CoreHelper.formatTimeAsString((duration - currentPosition) / 1000, true));
        this._CurrentTime.setText(CoreHelper.formatTimeAsString((long) (currentPosition / 1000), true));
        return currentPosition;
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x0077  */
    @Override // android.view.ViewGroup, android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean dispatchKeyEvent(android.view.KeyEvent r7) {
        /*
            r6 = this;
            int r0 = r7.getKeyCode()
            int r1 = r7.getRepeatCount()
            r2 = 3000(0xbb8, double:1.482E-320)
            r4 = 1
            if (r1 != 0) goto L7e
            int r1 = r7.getAction()
            if (r1 != 0) goto L7e
            r1 = 56
            if (r0 == r1) goto L69
            r1 = 62
            if (r0 == r1) goto L65
            r1 = 79
            if (r0 == r1) goto L65
            r1 = 0
            switch(r0) {
                case 85: goto L65;
                case 86: goto L54;
                case 87: goto L4a;
                case 88: goto L40;
                case 89: goto L3a;
                case 90: goto L34;
                default: goto L23;
            }
        L23:
            switch(r0) {
                case 126: goto L2e;
                case 127: goto L28;
                default: goto L26;
            }
        L26:
            r1 = 0
            goto L75
        L28:
            mobi.beyondpod.ui.views.base.BPMediaController$IViewOwner r1 = r6._Owner
            r1.doPause()
            goto L74
        L2e:
            mobi.beyondpod.ui.views.base.BPMediaController$IViewOwner r1 = r6._Owner
            r1.doStart()
            goto L74
        L34:
            android.view.View$OnClickListener r5 = r6._SkipForwardClickListener
            r5.onClick(r1)
            goto L74
        L3a:
            android.view.View$OnClickListener r5 = r6._SkipBackwardClickListener
            r5.onClick(r1)
            goto L74
        L40:
            mobi.beyondpod.ui.views.base.BPMediaController$IViewOwner r1 = r6._Owner
            if (r1 == 0) goto L74
            mobi.beyondpod.ui.views.base.BPMediaController$IViewOwner r1 = r6._Owner
            r1.goToPreviousTrack()
            goto L74
        L4a:
            mobi.beyondpod.ui.views.base.BPMediaController$IViewOwner r1 = r6._Owner
            if (r1 == 0) goto L74
            mobi.beyondpod.ui.views.base.BPMediaController$IViewOwner r1 = r6._Owner
            r1.goToNextTrack()
            goto L74
        L54:
            android.widget.VideoView r1 = r6.mPlayer
            boolean r1 = r1.isPlaying()
            if (r1 == 0) goto L74
            mobi.beyondpod.ui.views.base.BPMediaController$IViewOwner r1 = r6._Owner
            r1.doPause()
            r6.updatePausePlay()
            goto L74
        L65:
            r6.doPauseResume()
            goto L74
        L69:
            boolean r1 = r7.isShiftPressed()
            if (r1 == 0) goto L74
            mobi.beyondpod.ui.views.base.BPMediaController$IViewOwner r1 = r6._Owner
            r1.skipToEnd()
        L74:
            r1 = r4
        L75:
            if (r1 == 0) goto L8a
            r6.show(r2)
            r6.updatePausePlay()
            return r4
        L7e:
            r1 = 25
            if (r0 == r1) goto Lbb
            r1 = 24
            if (r0 != r1) goto L87
            goto Lbb
        L87:
            r6.show(r2)
        L8a:
            r1 = 85
            if (r0 == r1) goto Lba
            r1 = 126(0x7e, float:1.77E-43)
            if (r0 == r1) goto Lba
            r1 = 127(0x7f, float:1.78E-43)
            if (r0 == r1) goto Lba
            r1 = 87
            if (r0 == r1) goto Lba
            r1 = 88
            if (r0 == r1) goto Lba
            r1 = 90
            if (r0 == r1) goto Lba
            r1 = 89
            if (r0 == r1) goto Lba
            r1 = 130(0x82, float:1.82E-43)
            if (r0 == r1) goto Lba
            r2 = 128(0x80, float:1.8E-43)
            if (r0 == r2) goto Lba
            r2 = 129(0x81, float:1.81E-43)
            if (r0 == r2) goto Lba
            if (r0 != r1) goto Lb5
            goto Lba
        Lb5:
            boolean r7 = super.dispatchKeyEvent(r7)
            return r7
        Lba:
            return r4
        Lbb:
            boolean r7 = super.dispatchKeyEvent(r7)
            return r7
        */
        throw new UnsupportedOperationException("Method not decompiled: mobi.beyondpod.ui.views.base.BPMediaController.dispatchKeyEvent(android.view.KeyEvent):boolean");
    }

    public void doPlayPause() {
        doPauseResume();
        show(TOOLBAR_TIMEOUT_SHORT);
    }

    public void doSkipForward() {
        if (this.mPlayer == null) {
            return;
        }
        int currentPosition = this.mPlayer.getCurrentPosition() + (Configuration.getForwardSkipInterval() * 1000);
        int duration = this.mPlayer.getDuration();
        if (currentPosition > duration) {
            this.mPlayer.seekTo(duration + NotificationManagerCompat.IMPORTANCE_UNSPECIFIED);
        } else {
            this.mPlayer.seekTo(currentPosition);
        }
        setProgress();
        show(TOOLBAR_TIMEOUT_SHORT);
    }

    public void doSkipBack() {
        if (this.mPlayer == null) {
            return;
        }
        int currentPosition = this.mPlayer.getCurrentPosition() - (Configuration.getBackwardSkipInterval() * 1000);
        int duration = this.mPlayer.getDuration();
        if (currentPosition > duration) {
            this.mPlayer.seekTo(duration + NotificationManagerCompat.IMPORTANCE_UNSPECIFIED);
        } else {
            this.mPlayer.seekTo(currentPosition);
        }
        setProgress();
        show(TOOLBAR_TIMEOUT_SHORT);
    }

    public void doSkipToEnd() {
        this.mHandler.removeMessages(2);
        this.mProgress.setProgress(this.mProgress.getMax());
        if (this._Owner != null) {
            this._Owner.skipToEnd();
        }
    }

    public void doPlayNextTrack() {
        this.mHandler.removeMessages(2);
        if (this._Owner != null) {
            this._Owner.goToNextTrack();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updatePausePlay() {
        if (this._PlayPause == null) {
            return;
        }
        if (this.mPlayer.isPlaying()) {
            this._PlayPause.setImageResource(R.drawable.ic_player_pause);
            this._PlayPause.setPadding(0, 0, 0, 0);
        } else {
            this._PlayPause.setImageResource(R.drawable.ic_player_play);
            this._PlayPause.setPadding(this._PlayIconOpticalPadding, 0, 0, 0);
        }
    }

    private void doPauseResume() {
        if (this.mPlayer.isPlaying()) {
            this._Owner.doPause();
        } else {
            this._Owner.doStart();
        }
        updatePausePlay();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void scanBackward(int i, int i2) {
        if (this.mPlayer == null) {
            return;
        }
        if (i == 0) {
            this._StartSeekPos = this.mPlayer.getCurrentPosition();
            this._LastSeekEventTime = 0L;
        } else {
            int i3 = i2 < 5000 ? i2 * 10 : ((i2 - 5000) * 40) + 50000;
            int i4 = this._StartSeekPos - i3;
            if (i4 < 0) {
                this._StartSeekPos = 0;
                i4 += this._StartSeekPos;
            }
            long j = i3;
            if (j - this._LastSeekEventTime > 250 || i < 0) {
                this.mPlayer.seekTo(i4);
                this._LastSeekEventTime = j;
            }
            setProgress();
        }
        hideNavigationDelayed(TOOLBAR_TIMEOUT_SHORT);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void scanForward(int i, int i2) {
        if (this.mPlayer == null) {
            return;
        }
        if (i == 0) {
            this._StartSeekPos = this.mPlayer.getCurrentPosition();
            this._LastSeekEventTime = 0L;
        } else {
            int i3 = i2 < 5000 ? i2 * 10 : ((i2 - 5000) * 40) + 50000;
            int i4 = this._StartSeekPos + i3;
            int duration = this.mPlayer.getDuration();
            if (i4 >= duration) {
                this._StartSeekPos = duration + NotificationManagerCompat.IMPORTANCE_UNSPECIFIED;
                i4 = this._StartSeekPos;
            }
            long j = i3;
            if (j - this._LastSeekEventTime > 250 || i < 0) {
                this.mPlayer.seekTo(i4);
                this._LastSeekEventTime = j;
            }
            setProgress();
        }
        hideNavigationDelayed(TOOLBAR_TIMEOUT_SHORT);
    }

    public void show(long j) {
        if (!isVisible() && this._PlayPause != null) {
            this._PlayPause.requestFocus();
        }
        updateTimeAndPosition();
        showAndAutoHideNavigation(j);
    }

    public void updateTimeAndPosition() {
        updatePausePlay();
        this.mHandler.sendEmptyMessage(2);
    }

    public boolean isVisible() {
        return this._MediaController.getVisibility() == 0;
    }
}
