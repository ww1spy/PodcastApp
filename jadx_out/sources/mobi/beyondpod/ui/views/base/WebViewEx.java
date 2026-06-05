package mobi.beyondpod.ui.views.base;

import android.content.Context;
import android.graphics.Canvas;
import android.util.AttributeSet;
import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.webkit.WebView;
import mobi.beyondpod.rsscore.helpers.CoreHelper;

/* loaded from: classes.dex */
public class WebViewEx extends WebView {
    private static final String TAG = "WebViewEx";
    private static volatile int _InstanceCount;
    private static final Object _syncLock = new Object();
    private int _CurrInstance;
    private GestureDetector _Detector;
    private boolean _EnableDoubleTapClose;
    private IWebViewOwner _Owner;

    public WebViewEx(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this._EnableDoubleTapClose = false;
        init();
    }

    public WebViewEx(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this._EnableDoubleTapClose = false;
        init();
    }

    public WebViewEx(Context context) {
        super(context);
        this._EnableDoubleTapClose = false;
        init();
    }

    private synchronized void init() {
        this._CurrInstance = _InstanceCount;
        _InstanceCount++;
        CoreHelper.writeTraceEntry(TAG, "#########== WebViewEX created! Instances: " + _InstanceCount + " #########");
    }

    protected void finalize() throws Throwable {
        synchronized (_syncLock) {
            _InstanceCount--;
        }
        CoreHelper.writeTraceEntry(TAG, "#########== WebViewEX finalized! Remaining instances: " + _InstanceCount + " #########");
        super.finalize();
    }

    @Override // android.webkit.WebView, android.view.View
    protected void onDraw(Canvas canvas) {
        try {
            super.onDraw(canvas);
        } catch (Exception e) {
            CoreHelper.writeTraceEntry(TAG, "Exception on Draw: " + e.getMessage());
        }
    }

    @Override // android.webkit.WebView, android.view.View
    protected void onScrollChanged(int i, int i2, int i3, int i4) {
        super.onScrollChanged(i, i2, i3, i4);
        this._Owner.onVerticalScroll(i2, i2 - i4);
    }

    @Override // android.webkit.WebView, android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        try {
            if (!this._Detector.onTouchEvent(motionEvent)) {
                if (!super.onTouchEvent(motionEvent)) {
                    return false;
                }
            }
            return true;
        } catch (Exception unused) {
            CoreHelper.writeLogEntry(TAG, "WebView onTouchEvent failed!");
            return false;
        }
    }

    @Override // android.view.View
    public boolean performClick() {
        return super.performClick();
    }

    @Override // android.webkit.WebView
    public void destroy() {
        ViewParent parent = getParent();
        if (parent instanceof ViewGroup) {
            ((ViewGroup) parent).removeView(this);
        }
        CoreHelper.writeTraceEntry(TAG, "#########=== Destroying WebViewEX instance #: " + this._CurrInstance + " #########");
        super.destroy();
    }

    public void initialize(IWebViewOwner iWebViewOwner, boolean z) {
        this._Owner = iWebViewOwner;
        this._EnableDoubleTapClose = z;
        this._Detector = new GestureDetector(getContext(), new GestureDetector.OnGestureListener() { // from class: mobi.beyondpod.ui.views.base.WebViewEx.1
            @Override // android.view.GestureDetector.OnGestureListener
            public boolean onDown(MotionEvent motionEvent) {
                return false;
            }

            @Override // android.view.GestureDetector.OnGestureListener
            public boolean onFling(MotionEvent motionEvent, MotionEvent motionEvent2, float f, float f2) {
                return false;
            }

            @Override // android.view.GestureDetector.OnGestureListener
            public void onLongPress(MotionEvent motionEvent) {
            }

            @Override // android.view.GestureDetector.OnGestureListener
            public boolean onScroll(MotionEvent motionEvent, MotionEvent motionEvent2, float f, float f2) {
                return false;
            }

            @Override // android.view.GestureDetector.OnGestureListener
            public void onShowPress(MotionEvent motionEvent) {
            }

            @Override // android.view.GestureDetector.OnGestureListener
            public boolean onSingleTapUp(MotionEvent motionEvent) {
                return false;
            }
        });
        this._Detector.setOnDoubleTapListener(new GestureDetector.OnDoubleTapListener() { // from class: mobi.beyondpod.ui.views.base.WebViewEx.2
            @Override // android.view.GestureDetector.OnDoubleTapListener
            public boolean onDoubleTapEvent(MotionEvent motionEvent) {
                return false;
            }

            @Override // android.view.GestureDetector.OnDoubleTapListener
            public boolean onSingleTapConfirmed(MotionEvent motionEvent) {
                return false;
            }

            @Override // android.view.GestureDetector.OnDoubleTapListener
            public boolean onDoubleTap(MotionEvent motionEvent) {
                if (!WebViewEx.this._EnableDoubleTapClose) {
                    return false;
                }
                WebViewEx.this._Owner.onDoubleTap(motionEvent.getX(), motionEvent.getY(), 5);
                return true;
            }
        });
    }
}
