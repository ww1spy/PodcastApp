package mobi.beyondpod.ui.views.player.charms;

import android.content.Context;
import android.graphics.Point;
import android.graphics.drawable.ColorDrawable;
import android.os.Handler;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.widget.PopupWindow;
import mobi.beyondpod.R;

/* loaded from: classes.dex */
public class CharmPopUpBase extends PopupWindow {
    private CharmListener _CharmListener;
    private Runnable _CharmShownRunnable;
    private View _ClosePopup;
    protected Context _Context;
    private Handler _Handler;
    private Point _ScreenSize;

    /* loaded from: classes.dex */
    public interface CharmListener {
        void onCharmPopupDismissed();

        void onCharmPopupShown();
    }

    public CharmPopUpBase(Context context, int i, CharmListener charmListener) {
        super(context);
        this._Handler = new Handler();
        this._ScreenSize = new Point();
        this._CharmShownRunnable = new Runnable() { // from class: mobi.beyondpod.ui.views.player.charms.CharmPopUpBase.1
            @Override // java.lang.Runnable
            public void run() {
                CharmPopUpBase.this._CharmListener.onCharmPopupShown();
            }
        };
        this._Context = context;
        this._CharmListener = charmListener;
        setFocusable(true);
        setTouchable(true);
        setOutsideTouchable(true);
        setAnimationStyle(R.style.CharmPopupAninmation);
        setHeight(-2);
        WindowManager windowManager = (WindowManager) this._Context.getSystemService("window");
        if (windowManager != null) {
            windowManager.getDefaultDisplay().getSize(this._ScreenSize);
        }
        setContentView(LayoutInflater.from(this._Context).inflate(i, (ViewGroup) null));
        setOnDismissListener(new PopupWindow.OnDismissListener() { // from class: mobi.beyondpod.ui.views.player.charms.CharmPopUpBase.2
            @Override // android.widget.PopupWindow.OnDismissListener
            public void onDismiss() {
                CharmPopUpBase.this._Handler.removeCallbacksAndMessages(null);
                CharmPopUpBase.this._CharmListener.onCharmPopupDismissed();
            }
        });
        this._ClosePopup = getContentView().findViewById(R.id.close_popup);
        this._ClosePopup.setOnClickListener(new View.OnClickListener() { // from class: mobi.beyondpod.ui.views.player.charms.CharmPopUpBase.3
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                CharmPopUpBase.this.dismiss();
            }
        });
        getContentView().setOnClickListener(new View.OnClickListener() { // from class: mobi.beyondpod.ui.views.player.charms.CharmPopUpBase.4
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                CharmPopUpBase.this.dismiss();
            }
        });
    }

    public void show(View view) {
        View contentView = getContentView();
        if (contentView == null) {
            throw new IllegalStateException("You need to set the content view using the setContentView method");
        }
        setBackgroundDrawable(new ColorDrawable(0));
        contentView.setLayoutParams(new ViewGroup.LayoutParams(-2, -2));
        contentView.measure(View.MeasureSpec.makeMeasureSpec(this._ScreenSize.x, Integer.MIN_VALUE), -2);
        int measuredHeight = contentView.getMeasuredHeight();
        setWidth(this._ScreenSize.x);
        showAtLocation(view, 0, 0, this._ScreenSize.y - measuredHeight);
        this._Handler.postDelayed(this._CharmShownRunnable, 500L);
    }
}
