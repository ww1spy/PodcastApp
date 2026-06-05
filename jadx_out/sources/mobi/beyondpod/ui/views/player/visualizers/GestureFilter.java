package mobi.beyondpod.ui.views.player.visualizers;

import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.View;

/* loaded from: classes.dex */
public class GestureFilter extends GestureDetector.SimpleOnGestureListener {
    private static final int ACTION_FAKE = -13;
    public static final int MODE_DYNAMIC = 2;
    public static final int MODE_SOLID = 1;
    public static final int MODE_TRANSPARENT = 0;
    public static final int SWIPE_DOWN = 2;
    public static final int SWIPE_LEFT = 3;
    public static final int SWIPE_RIGHT = 4;
    public static final int SWIPE_UP = 1;
    private View context;
    private GestureDetector detector;
    private GestureListener listener;
    private int swipe_Min_Distance = 100;
    private int swipe_Max_Distance = 350;
    private int swipe_Min_Velocity = 100;
    private int mode = 2;
    private boolean running = true;
    private boolean tapIndicator = false;

    /* loaded from: classes.dex */
    interface GestureListener {
        void onDoubleTap();

        void onSingleTap();

        void onSwipe(int i);
    }

    @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnDoubleTapListener
    public boolean onDoubleTapEvent(MotionEvent motionEvent) {
        return true;
    }

    public GestureFilter(View view, GestureListener gestureListener) {
        this.context = view;
        this.detector = new GestureDetector(view.getContext(), this);
        this.listener = gestureListener;
    }

    public void onTouchEvent(MotionEvent motionEvent) {
        if (this.running) {
            boolean onTouchEvent = this.detector.onTouchEvent(motionEvent);
            if (this.mode == 1) {
                motionEvent.setAction(3);
                return;
            }
            if (this.mode == 2) {
                if (motionEvent.getAction() == ACTION_FAKE) {
                    motionEvent.setAction(1);
                    return;
                }
                if (onTouchEvent) {
                    motionEvent.setAction(3);
                } else if (this.tapIndicator) {
                    motionEvent.setAction(0);
                    this.tapIndicator = false;
                }
            }
        }
    }

    public void setMode(int i) {
        this.mode = i;
    }

    public int getMode() {
        return this.mode;
    }

    public void setEnabled(boolean z) {
        this.running = z;
    }

    public void setSwipeMaxDistance(int i) {
        this.swipe_Max_Distance = i;
    }

    public void setSwipeMinDistance(int i) {
        this.swipe_Min_Distance = i;
    }

    public void setSwipeMinVelocity(int i) {
        this.swipe_Min_Velocity = i;
    }

    public int getSwipeMaxDistance() {
        return this.swipe_Max_Distance;
    }

    public int getSwipeMinDistance() {
        return this.swipe_Min_Distance;
    }

    public int getSwipeMinVelocity() {
        return this.swipe_Min_Velocity;
    }

    @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
    public boolean onFling(MotionEvent motionEvent, MotionEvent motionEvent2, float f, float f2) {
        float abs = Math.abs(motionEvent.getX() - motionEvent2.getX());
        float abs2 = Math.abs(motionEvent.getY() - motionEvent2.getY());
        if (abs > this.swipe_Max_Distance || abs2 > this.swipe_Max_Distance) {
            return false;
        }
        float abs3 = Math.abs(f);
        float abs4 = Math.abs(f2);
        if (abs3 > this.swipe_Min_Velocity && abs > this.swipe_Min_Distance) {
            if (motionEvent.getX() > motionEvent2.getX()) {
                this.listener.onSwipe(3);
                return true;
            }
            this.listener.onSwipe(4);
            return true;
        }
        if (abs4 <= this.swipe_Min_Velocity || abs2 <= this.swipe_Min_Distance) {
            return false;
        }
        if (motionEvent.getY() > motionEvent2.getY()) {
            this.listener.onSwipe(1);
            return true;
        }
        this.listener.onSwipe(2);
        return true;
    }

    @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
    public boolean onSingleTapUp(MotionEvent motionEvent) {
        this.tapIndicator = true;
        return false;
    }

    @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnDoubleTapListener
    public boolean onDoubleTap(MotionEvent motionEvent) {
        this.listener.onDoubleTap();
        return true;
    }

    @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnDoubleTapListener
    public boolean onSingleTapConfirmed(MotionEvent motionEvent) {
        if (this.mode == 2) {
            motionEvent.setAction(ACTION_FAKE);
            this.context.dispatchTouchEvent(motionEvent);
        }
        this.listener.onSingleTap();
        return false;
    }
}
