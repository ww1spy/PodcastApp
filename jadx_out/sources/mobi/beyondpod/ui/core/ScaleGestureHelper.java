package mobi.beyondpod.ui.core;

import android.annotation.SuppressLint;
import android.content.Context;
import android.view.MotionEvent;
import android.view.ScaleGestureDetector;
import mobi.beyondpod.rsscore.helpers.CoreHelper;

/* loaded from: classes.dex */
public abstract class ScaleGestureHelper {
    private static String TAG = "ScaleGestureHelper";

    /* loaded from: classes.dex */
    public interface OnScaleGestureListener {
        boolean onScale(float f);
    }

    public abstract void initialize(Context context, OnScaleGestureListener onScaleGestureListener);

    public abstract boolean onTouchEvent(MotionEvent motionEvent);

    public static ScaleGestureHelper getInstance() {
        return ScaleGesture.access$000();
    }

    /* loaded from: classes.dex */
    private static class NoOpScaleGesture extends ScaleGestureHelper {
        @Override // mobi.beyondpod.ui.core.ScaleGestureHelper
        public void initialize(Context context, OnScaleGestureListener onScaleGestureListener) {
        }

        @Override // mobi.beyondpod.ui.core.ScaleGestureHelper
        public boolean onTouchEvent(MotionEvent motionEvent) {
            return false;
        }

        private NoOpScaleGesture() {
        }

        private static ScaleGestureHelper createInstance() {
            CoreHelper.writeTraceEntry(ScaleGestureHelper.TAG, "Created NoOp (pre 2.2) Gesture Detector");
            return new NoOpScaleGesture();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    @SuppressLint({"NewApi"})
    /* loaded from: classes.dex */
    public static class ScaleGesture extends ScaleGestureHelper {
        ScaleGestureDetector _scaleDetector;
        OnScaleGestureListener _scaleListener;

        private ScaleGesture() {
        }

        static /* synthetic */ ScaleGestureHelper access$000() {
            return createInstance();
        }

        private static ScaleGestureHelper createInstance() {
            return new ScaleGesture();
        }

        @Override // mobi.beyondpod.ui.core.ScaleGestureHelper
        @SuppressLint({"NewApi"})
        public boolean onTouchEvent(MotionEvent motionEvent) {
            if (this._scaleDetector != null) {
                return this._scaleDetector.onTouchEvent(motionEvent);
            }
            return false;
        }

        @Override // mobi.beyondpod.ui.core.ScaleGestureHelper
        @SuppressLint({"NewApi"})
        public void initialize(Context context, OnScaleGestureListener onScaleGestureListener) {
            this._scaleListener = onScaleGestureListener;
            this._scaleDetector = new ScaleGestureDetector(context, new ScaleListener());
        }

        /* loaded from: classes.dex */
        private class ScaleListener extends ScaleGestureDetector.SimpleOnScaleGestureListener {
            private ScaleListener() {
            }

            @Override // android.view.ScaleGestureDetector.SimpleOnScaleGestureListener, android.view.ScaleGestureDetector.OnScaleGestureListener
            @SuppressLint({"NewApi"})
            public boolean onScale(ScaleGestureDetector scaleGestureDetector) {
                return ScaleGesture.this._scaleListener != null && ScaleGesture.this._scaleListener.onScale(scaleGestureDetector.getScaleFactor());
            }
        }
    }
}
