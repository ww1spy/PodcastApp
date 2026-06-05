package mobi.beyondpod.ui.views.base;

import android.content.Context;
import android.util.AttributeSet;
import android.view.MotionEvent;
import mobi.beyondpod.ui.core.ScaleGestureHelper;

/* loaded from: classes.dex */
public class ListViewScaleEx extends ListViewEx {
    ScaleScrollInfoListener _ScaleScrollInfoListener;
    ScaleGestureHelper _scaleDetector;

    /* loaded from: classes.dex */
    public interface ScaleScrollInfoListener {
        void itemSelected(int i);

        void onCollapse();

        void onExpand();
    }

    public ListViewScaleEx(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this._ScaleScrollInfoListener = null;
        initializeView();
    }

    public ListViewScaleEx(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this._ScaleScrollInfoListener = null;
        initializeView();
    }

    public ListViewScaleEx(Context context) {
        super(context);
        this._ScaleScrollInfoListener = null;
        initializeView();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // mobi.beyondpod.ui.views.base.ListViewEx
    public void initializeView() {
        super.initializeView();
        this._scaleDetector = ScaleGestureHelper.getInstance();
        this._scaleDetector.initialize(getContext(), new ScaleListener());
    }

    public void setScaleScrollListener(ScaleScrollInfoListener scaleScrollInfoListener) {
        this._ScaleScrollInfoListener = scaleScrollInfoListener;
    }

    @Override // mobi.beyondpod.ui.views.base.ListViewEx, android.widget.AbsListView, android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        this._scaleDetector.onTouchEvent(motionEvent);
        return super.onTouchEvent(motionEvent);
    }

    /* loaded from: classes.dex */
    public class ScaleListener implements ScaleGestureHelper.OnScaleGestureListener {
        public ScaleListener() {
        }

        @Override // mobi.beyondpod.ui.core.ScaleGestureHelper.OnScaleGestureListener
        public boolean onScale(float f) {
            double d = f;
            if (d > 1.1d) {
                if (ListViewScaleEx.this._ScaleScrollInfoListener != null) {
                    ListViewScaleEx.this._ScaleScrollInfoListener.onExpand();
                }
                return true;
            }
            if (d >= 0.9d) {
                return false;
            }
            if (ListViewScaleEx.this._ScaleScrollInfoListener != null) {
                ListViewScaleEx.this._ScaleScrollInfoListener.onCollapse();
            }
            return true;
        }
    }

    @Override // mobi.beyondpod.ui.views.base.ListViewEx
    protected void OnItemSelected(int i) {
        if (this._ScaleScrollInfoListener != null) {
            this._ScaleScrollInfoListener.itemSelected(i);
        }
    }
}
