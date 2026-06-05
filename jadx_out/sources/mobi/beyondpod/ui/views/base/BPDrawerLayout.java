package mobi.beyondpod.ui.views.base;

import android.content.Context;
import android.os.SystemClock;
import android.support.v4.widget.DrawerLayout;
import android.support.v4.widget.ViewDragHelper;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.ViewConfiguration;
import java.lang.reflect.Field;
import mobi.beyondpod.rsscore.helpers.CoreHelper;

/* loaded from: classes.dex */
public class BPDrawerLayout extends DrawerLayout {
    private static final String TAG = "BPDrawerLayout";
    IDrawerOwner _DrawerOwner;
    private ViewDragHelper _LeftDragger;
    ViewConfiguration _VC;

    /* loaded from: classes.dex */
    public interface IDrawerOwner {
        boolean onDrawerBackKeyPressed();
    }

    public BPDrawerLayout(Context context) {
        super(context);
        this._LeftDragger = null;
    }

    public BPDrawerLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this._LeftDragger = null;
    }

    public BPDrawerLayout(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this._LeftDragger = null;
    }

    public void peekDrawer(final int i) {
        postDelayed(new Runnable() { // from class: mobi.beyondpod.ui.views.base.BPDrawerLayout.1
            @Override // java.lang.Runnable
            public void run() {
                BPDrawerLayout.this.sendTouchEvent(i, 0);
            }
        }, 10L);
        postDelayed(new Runnable() { // from class: mobi.beyondpod.ui.views.base.BPDrawerLayout.2
            @Override // java.lang.Runnable
            public void run() {
                BPDrawerLayout.this.sendTouchEvent(i, 1);
            }
        }, 500L);
        postDelayed(new Runnable() { // from class: mobi.beyondpod.ui.views.base.BPDrawerLayout.3
            @Override // java.lang.Runnable
            public void run() {
                BPDrawerLayout.this.closeDrawers();
            }
        }, 700L);
    }

    @Override // android.support.v4.widget.DrawerLayout, android.view.View, android.view.KeyEvent.Callback
    public boolean onKeyUp(int i, KeyEvent keyEvent) {
        if (i == 4 && this._DrawerOwner != null && this._DrawerOwner.onDrawerBackKeyPressed()) {
            return true;
        }
        return super.onKeyUp(i, keyEvent);
    }

    public void updateFlingSensitivity() {
        if (this._LeftDragger != null) {
            this._LeftDragger.setMinVelocity(isDrawerOpen(3) ? this._VC.getScaledMaximumFlingVelocity() / 4 : this._VC.getScaledMinimumFlingVelocity());
        }
    }

    public void initialize(IDrawerOwner iDrawerOwner) {
        this._DrawerOwner = iDrawerOwner;
        try {
            this._VC = ViewConfiguration.get(getContext());
            Field declaredField = DrawerLayout.class.getDeclaredField("mLeftDragger");
            declaredField.setAccessible(true);
            this._LeftDragger = (ViewDragHelper) declaredField.get(this);
        } catch (Exception unused) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void sendTouchEvent(int i, int i2) {
        try {
            dispatchTouchEvent(MotionEvent.obtain(SystemClock.uptimeMillis(), SystemClock.uptimeMillis() + 100, i2, i == 3 ? 0 : getContext().getResources().getDisplayMetrics().widthPixels, 0.0f, 0));
        } catch (Exception unused) {
            CoreHelper.writeTraceEntry(TAG, "failed to dispatchTouchEvent!");
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
        try {
            return super.dispatchTouchEvent(motionEvent);
        } catch (Exception unused) {
            CoreHelper.writeTraceEntry(TAG, "failed to handle dispatchTouchEvent!");
            return false;
        }
    }

    @Override // android.support.v4.widget.DrawerLayout, android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        try {
            return super.onTouchEvent(motionEvent);
        } catch (Exception unused) {
            CoreHelper.writeTraceEntry(TAG, "failed to handle onTouchEvent!");
            return false;
        }
    }
}
