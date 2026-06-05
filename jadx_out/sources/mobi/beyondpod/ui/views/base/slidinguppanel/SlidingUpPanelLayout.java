package mobi.beyondpod.ui.views.base.slidinguppanel;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Parcel;
import android.os.Parcelable;
import android.support.v4.view.ViewCompat;
import android.support.v4.widget.ViewDragHelper;
import android.util.AttributeSet;
import android.util.Log;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import mobi.beyondpod.evo.R;
import mobi.beyondpod.rsscore.helpers.CoreHelper;

/* loaded from: classes.dex */
public class SlidingUpPanelLayout extends ViewGroup {
    private static final int DEFAULT_FADE_COLOR = -16777216;
    private static final int DEFAULT_MIN_FLING_VELOCITY = 400;
    private static final int DEFAULT_PANEL_HEIGHT = 68;
    private static final int DEFAULT_SHADOW_HEIGHT = 4;
    private static final String TAG = "SlidingUpPanelLayout";
    private float mAnchorPoint;
    private boolean mCanSlide;
    private int mCoveredFadeColor;
    private final Paint mCoveredFadePaint;
    private final ViewDragHelper mDragHelper;
    private View mDragView;
    private int mDragViewResId;
    private boolean mFirstLayout;
    private float mInitialMotionX;
    private float mInitialMotionY;
    private boolean mIsSlidingEnabled;
    private boolean mIsUnableToDrag;
    private boolean mIsUsingDragViewTouchEvents;
    private int mMinFlingVelocity;
    private int mPanelHeight;
    private PanelSlideListener mPanelSlideListener;
    private final int mScrollTouchSlop;
    private Drawable mShadowDrawable;
    private int mShadowHeight;
    private float mSlideOffset;
    private int mSlideRange;
    private SlideState mSlideState;
    private View mSlideableView;
    private final Rect mTmpRect;

    /* loaded from: classes.dex */
    public interface ISlidePanelDragTarget {
        View getSlideDragTarget(boolean z);

        void onDrawWhenSliding(float f);
    }

    /* loaded from: classes.dex */
    public interface PanelSlideListener {
        void onPanelAnchored(View view);

        void onPanelCollapsed(View view);

        void onPanelExpanded(View view);

        void onPanelSlide(View view, float f);
    }

    /* loaded from: classes.dex */
    public static class SimplePanelSlideListener implements PanelSlideListener {
        @Override // mobi.beyondpod.ui.views.base.slidinguppanel.SlidingUpPanelLayout.PanelSlideListener
        public void onPanelAnchored(View view) {
        }

        @Override // mobi.beyondpod.ui.views.base.slidinguppanel.SlidingUpPanelLayout.PanelSlideListener
        public void onPanelCollapsed(View view) {
        }

        @Override // mobi.beyondpod.ui.views.base.slidinguppanel.SlidingUpPanelLayout.PanelSlideListener
        public void onPanelExpanded(View view) {
        }

        @Override // mobi.beyondpod.ui.views.base.slidinguppanel.SlidingUpPanelLayout.PanelSlideListener
        public void onPanelSlide(View view, float f) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public enum SlideState {
        EXPANDED,
        COLLAPSED,
        ANCHORED
    }

    public SlidingUpPanelLayout(Context context) {
        this(context, null);
    }

    public SlidingUpPanelLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public SlidingUpPanelLayout(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.mMinFlingVelocity = 400;
        this.mCoveredFadeColor = -16777216;
        this.mCoveredFadePaint = new Paint();
        this.mPanelHeight = -1;
        this.mShadowHeight = -1;
        this.mDragViewResId = -1;
        this.mSlideState = SlideState.COLLAPSED;
        this.mIsUsingDragViewTouchEvents = true;
        this.mAnchorPoint = 0.0f;
        this.mFirstLayout = true;
        this.mTmpRect = new Rect();
        if (attributeSet != null) {
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.SlidingUpPanelLayout);
            if (obtainStyledAttributes != null) {
                this.mPanelHeight = obtainStyledAttributes.getDimensionPixelSize(0, -1);
                this.mShadowHeight = obtainStyledAttributes.getDimensionPixelSize(4, -1);
                this.mMinFlingVelocity = obtainStyledAttributes.getInt(3, 400);
                this.mCoveredFadeColor = obtainStyledAttributes.getColor(2, -16777216);
                this.mDragViewResId = obtainStyledAttributes.getResourceId(1, -1);
            }
            obtainStyledAttributes.recycle();
        }
        float f = context.getResources().getDisplayMetrics().density;
        if (this.mPanelHeight == -1) {
            this.mPanelHeight = (int) ((68.0f * f) + 0.5f);
        }
        if (this.mShadowHeight == -1) {
            this.mShadowHeight = (int) ((4.0f * f) + 0.5f);
        }
        setWillNotDraw(false);
        this.mDragHelper = ViewDragHelper.create(this, 0.5f, new DragHelperCallback());
        updateFlingSensitivity(this.mMinFlingVelocity);
        this.mCanSlide = true;
        this.mIsSlidingEnabled = true;
        setCoveredFadeColor(-16777216);
        this.mScrollTouchSlop = ViewConfiguration.get(context).getScaledTouchSlop();
    }

    public void updateFlingSensitivity(int i) {
        this.mDragHelper.setMinVelocity(i * getContext().getResources().getDisplayMetrics().density);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.view.View
    public void onFinishInflate() {
        super.onFinishInflate();
        if (this.mDragViewResId != -1) {
            this.mDragView = findViewById(this.mDragViewResId);
        }
    }

    public void setCoveredFadeColor(int i) {
        this.mCoveredFadeColor = i;
        invalidate();
    }

    public int getCoveredFadeColor() {
        return this.mCoveredFadeColor;
    }

    public void setPanelHeight(int i) {
        this.mPanelHeight = i;
        requestLayout();
    }

    public int getPanelHeight() {
        return this.mPanelHeight;
    }

    public void disableSliding() {
        this.mIsSlidingEnabled = false;
    }

    public void enableSliding() {
        this.mIsSlidingEnabled = true;
    }

    public void setPanelSlideListener(PanelSlideListener panelSlideListener) {
        this.mPanelSlideListener = panelSlideListener;
    }

    public void setDragView(View view) {
        this.mDragView = view;
    }

    public void setAnchorPoint(float f) {
        if (f <= 0.0f || f >= 1.0f) {
            return;
        }
        this.mAnchorPoint = f;
    }

    public void setShadowDrawable(Drawable drawable) {
        this.mShadowDrawable = drawable;
    }

    void dispatchOnPanelSlide(View view) {
        if (this.mPanelSlideListener != null) {
            this.mPanelSlideListener.onPanelSlide(view, this.mSlideOffset);
        }
    }

    void dispatchOnPanelExpanded(View view) {
        if (this.mPanelSlideListener != null) {
            this.mPanelSlideListener.onPanelExpanded(view);
        }
        sendAccessibilityEvent(32);
    }

    void dispatchOnPanelCollapsed(View view) {
        if (this.mPanelSlideListener != null) {
            this.mPanelSlideListener.onPanelCollapsed(view);
        }
        sendAccessibilityEvent(32);
    }

    void dispatchOnPanelAnchored(View view) {
        if (this.mPanelSlideListener != null) {
            this.mPanelSlideListener.onPanelAnchored(view);
        }
        sendAccessibilityEvent(32);
    }

    void updateObscuredViewVisibility() {
        int i;
        int i2;
        int i3;
        int i4;
        if (getChildCount() == 0) {
            return;
        }
        int paddingLeft = getPaddingLeft();
        int width = getWidth() - getPaddingRight();
        int paddingTop = getPaddingTop();
        int height = getHeight() - getPaddingBottom();
        int i5 = 0;
        if (this.mSlideableView == null || !hasOpaqueBackground(this.mSlideableView)) {
            i = 0;
            i2 = 0;
            i3 = 0;
            i4 = 0;
        } else {
            i = this.mSlideableView.getLeft();
            i2 = this.mSlideableView.getRight();
            i3 = this.mSlideableView.getTop();
            i4 = this.mSlideableView.getBottom();
        }
        View childAt = getChildAt(0);
        int max = Math.max(paddingLeft, childAt.getLeft());
        int max2 = Math.max(paddingTop, childAt.getTop());
        int min = Math.min(width, childAt.getRight());
        int min2 = Math.min(height, childAt.getBottom());
        if (max >= i && max2 >= i3 && min <= i2 && min2 <= i4) {
            i5 = 4;
        }
        childAt.setVisibility(i5);
    }

    void setAllChildrenVisible() {
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = getChildAt(i);
            if (childAt.getVisibility() == 4) {
                childAt.setVisibility(0);
            }
        }
    }

    private static boolean hasOpaqueBackground(View view) {
        Drawable background = view.getBackground();
        return background != null && background.getOpacity() == -1;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.mFirstLayout = true;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.mFirstLayout = true;
    }

    @Override // android.view.View
    protected void onMeasure(int i, int i2) {
        int makeMeasureSpec;
        int makeMeasureSpec2;
        int mode = View.MeasureSpec.getMode(i);
        int size = View.MeasureSpec.getSize(i);
        int mode2 = View.MeasureSpec.getMode(i2);
        int size2 = View.MeasureSpec.getSize(i2);
        if (mode != 1073741824) {
            throw new IllegalStateException("width must have an exact value or MATCH_PARENT");
        }
        if (mode2 != 1073741824) {
            throw new IllegalStateException("height must have an exact value or MATCH_PARENT");
        }
        int paddingTop = (size2 - getPaddingTop()) - getPaddingBottom();
        int i3 = this.mPanelHeight;
        int childCount = getChildCount();
        if (childCount > 2) {
            Log.e(TAG, "onMeasure: More than two child views are not supported.");
        } else {
            getChildAt(1).getVisibility();
        }
        this.mSlideableView = null;
        boolean z = false;
        this.mCanSlide = false;
        int i4 = 0;
        while (i4 < childCount) {
            View childAt = getChildAt(i4);
            LayoutParams layoutParams = (LayoutParams) childAt.getLayoutParams();
            if (childAt.getVisibility() == 8) {
                layoutParams.dimWhenOffset = z;
            } else {
                if (i4 == 1) {
                    layoutParams.slideable = true;
                    layoutParams.dimWhenOffset = true;
                    this.mSlideableView = childAt;
                    this.mCanSlide = true;
                    setDragView(((ISlidePanelDragTarget) this.mSlideableView).getSlideDragTarget(this.mSlideState == SlideState.EXPANDED ? true : z));
                }
                if (layoutParams.width == -2) {
                    makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(size, Integer.MIN_VALUE);
                } else if (layoutParams.width == -1) {
                    makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(size, 1073741824);
                } else {
                    makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(layoutParams.width, 1073741824);
                }
                if (layoutParams.height == -2) {
                    makeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(paddingTop, Integer.MIN_VALUE);
                } else if (layoutParams.height == -1) {
                    makeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(paddingTop, 1073741824);
                } else {
                    makeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(layoutParams.height, 1073741824);
                }
                childAt.measure(makeMeasureSpec, makeMeasureSpec2);
            }
            i4++;
            z = false;
        }
        setMeasuredDimension(size, size2);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        int paddingLeft = getPaddingLeft();
        int paddingTop = getPaddingTop();
        int slidingTop = getSlidingTop();
        int childCount = getChildCount();
        if (this.mFirstLayout) {
            switch (this.mSlideState) {
                case EXPANDED:
                    this.mSlideOffset = this.mCanSlide ? 0.0f : 1.0f;
                    break;
                case ANCHORED:
                    this.mSlideOffset = this.mCanSlide ? this.mAnchorPoint : 1.0f;
                    break;
                default:
                    this.mSlideOffset = 1.0f;
                    break;
            }
        }
        for (int i5 = 0; i5 < childCount; i5++) {
            View childAt = getChildAt(i5);
            if (childAt.getVisibility() != 8) {
                LayoutParams layoutParams = (LayoutParams) childAt.getLayoutParams();
                int measuredHeight = childAt.getMeasuredHeight();
                if (layoutParams.slideable) {
                    this.mSlideRange = measuredHeight - this.mPanelHeight;
                }
                int i6 = layoutParams.slideable ? ((int) (this.mSlideRange * this.mSlideOffset)) + slidingTop : paddingTop;
                try {
                    childAt.layout(paddingLeft, i6, childAt.getMeasuredWidth() + paddingLeft, measuredHeight + i6);
                } catch (Exception e) {
                    CoreHelper.logException(TAG, "Child layout failed.", e);
                }
            }
        }
        if (this.mFirstLayout) {
            updateObscuredViewVisibility();
        }
        this.mFirstLayout = false;
    }

    @Override // android.view.View
    protected void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        if (i2 != i4) {
            this.mFirstLayout = true;
        }
    }

    ISlidePanelDragTarget getSlideDragTarget() {
        return (ISlidePanelDragTarget) this.mSlideableView;
    }

    /* JADX WARN: Removed duplicated region for block: B:28:0x0065  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x008a  */
    @Override // android.view.ViewGroup
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean onInterceptTouchEvent(android.view.MotionEvent r10) {
        /*
            r9 = this;
            int r0 = r10.getActionMasked()
            android.support.v4.widget.ViewDragHelper r1 = r9.mDragHelper
            boolean r1 = r1.shouldInterceptTouchEvent(r10)
            boolean r2 = r9.mCanSlide
            if (r2 == 0) goto La3
            boolean r2 = r9.mIsSlidingEnabled
            if (r2 == 0) goto La3
            boolean r2 = r9.mIsUnableToDrag
            if (r2 == 0) goto L1a
            if (r0 == 0) goto L1a
            goto La3
        L1a:
            r2 = 3
            r3 = 0
            if (r0 == r2) goto L9d
            r2 = 1
            if (r0 != r2) goto L23
            goto L9d
        L23:
            float r4 = r10.getX()
            float r5 = r10.getY()
            int r6 = (int) r4
            int r7 = (int) r5
            boolean r8 = r9.isDragViewUnder(r6, r7)
            if (r8 != 0) goto L34
            return r3
        L34:
            if (r0 == 0) goto L3b
            r8 = 2
            if (r0 == r8) goto L4d
            r10 = r3
            goto L96
        L3b:
            r9.mIsUnableToDrag = r3
            r9.mInitialMotionX = r4
            r9.mInitialMotionY = r5
            boolean r0 = r9.isDragViewUnder(r6, r7)
            if (r0 == 0) goto L4d
            boolean r0 = r9.mIsUsingDragViewTouchEvents
            if (r0 != 0) goto L4d
            r10 = r2
            goto L96
        L4d:
            float r0 = r9.mInitialMotionX
            float r4 = r4 - r0
            float r0 = java.lang.Math.abs(r4)
            float r4 = r9.mInitialMotionY
            float r5 = r5 - r4
            float r4 = java.lang.Math.abs(r5)
            android.support.v4.widget.ViewDragHelper r5 = r9.mDragHelper
            int r5 = r5.getTouchSlop()
            boolean r8 = r9.mIsUsingDragViewTouchEvents
            if (r8 == 0) goto L84
            int r8 = r9.mScrollTouchSlop
            float r8 = (float) r8
            int r8 = (r0 > r8 ? 1 : (r0 == r8 ? 0 : -1))
            if (r8 <= 0) goto L78
            int r8 = r9.mScrollTouchSlop
            float r8 = (float) r8
            int r8 = (r4 > r8 ? 1 : (r4 == r8 ? 0 : -1))
            if (r8 >= 0) goto L78
            boolean r10 = super.onInterceptTouchEvent(r10)
            return r10
        L78:
            int r10 = r9.mScrollTouchSlop
            float r10 = (float) r10
            int r10 = (r4 > r10 ? 1 : (r4 == r10 ? 0 : -1))
            if (r10 <= 0) goto L84
            boolean r10 = r9.isDragViewUnder(r6, r7)
            goto L85
        L84:
            r10 = r3
        L85:
            float r5 = (float) r5
            int r5 = (r4 > r5 ? 1 : (r4 == r5 ? 0 : -1))
            if (r5 <= 0) goto L96
            int r0 = (r0 > r4 ? 1 : (r0 == r4 ? 0 : -1))
            if (r0 <= 0) goto L96
            android.support.v4.widget.ViewDragHelper r10 = r9.mDragHelper
            r10.cancel()
            r9.mIsUnableToDrag = r2
            return r3
        L96:
            if (r1 != 0) goto L9c
            if (r10 == 0) goto L9b
            goto L9c
        L9b:
            r2 = r3
        L9c:
            return r2
        L9d:
            android.support.v4.widget.ViewDragHelper r10 = r9.mDragHelper
            r10.cancel()
            return r3
        La3:
            android.support.v4.widget.ViewDragHelper r0 = r9.mDragHelper
            r0.cancel()
            boolean r10 = super.onInterceptTouchEvent(r10)
            return r10
        */
        throw new UnsupportedOperationException("Method not decompiled: mobi.beyondpod.ui.views.base.slidinguppanel.SlidingUpPanelLayout.onInterceptTouchEvent(android.view.MotionEvent):boolean");
    }

    @Override // android.view.View
    public boolean performClick() {
        return super.performClick();
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (!this.mCanSlide || !this.mIsSlidingEnabled) {
            return super.onTouchEvent(motionEvent);
        }
        try {
            this.mDragHelper.processTouchEvent(motionEvent);
            if ((motionEvent.getAction() & 255) == 0) {
                float x = motionEvent.getX();
                float y = motionEvent.getY();
                this.mInitialMotionX = x;
                this.mInitialMotionY = y;
            }
            return true;
        } catch (Exception e) {
            CoreHelper.writeTraceEntry(TAG, "Exception processing touch event! " + e.getMessage());
            return false;
        }
    }

    private boolean isDragViewUnder(int i, int i2) {
        View view = this.mDragView != null ? this.mDragView : this.mSlideableView;
        if (view == null) {
            return false;
        }
        int[] iArr = new int[2];
        view.getLocationOnScreen(iArr);
        int[] iArr2 = new int[2];
        getLocationOnScreen(iArr2);
        int i3 = iArr2[0] + i;
        int i4 = iArr2[1] + i2;
        return i3 >= iArr[0] && i3 < iArr[0] + view.getWidth() && i4 >= iArr[1] && i4 < iArr[1] + view.getHeight();
    }

    private boolean expandPane(View view, int i, float f) {
        return this.mFirstLayout || smoothSlideTo(f, i);
    }

    private boolean collapsePane(View view, int i) {
        return this.mFirstLayout || smoothSlideTo(1.0f, i);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int getSlidingTop() {
        if (this.mSlideableView != null) {
            return (getMeasuredHeight() - getPaddingBottom()) - this.mSlideableView.getMeasuredHeight();
        }
        return getMeasuredHeight() - getPaddingBottom();
    }

    public boolean collapsePane() {
        return collapsePane(this.mSlideableView, 0);
    }

    public boolean expandPane() {
        return expandPane(0.0f);
    }

    public boolean expandPane(float f) {
        if (!isPaneVisible()) {
            showPane();
        }
        return expandPane(this.mSlideableView, 0, f);
    }

    public boolean isExpanded() {
        return this.mSlideState == SlideState.EXPANDED;
    }

    public boolean isAnchored() {
        return this.mSlideState == SlideState.ANCHORED;
    }

    public boolean isSlideable() {
        return this.mCanSlide;
    }

    public boolean isPaneVisible() {
        return getChildCount() >= 2 && getChildAt(1).getVisibility() == 0;
    }

    public void showPane() {
        if (getChildCount() < 2) {
            return;
        }
        getChildAt(1).setVisibility(0);
        requestLayout();
    }

    public void hidePane() {
        if (this.mSlideableView == null) {
            return;
        }
        this.mSlideableView.setVisibility(8);
        requestLayout();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onPanelDragged(int i) {
        this.mSlideOffset = (i - getSlidingTop()) / this.mSlideRange;
        dispatchOnPanelSlide(this.mSlideableView);
    }

    @Override // android.view.ViewGroup
    protected boolean drawChild(Canvas canvas, View view, long j) {
        LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
        int save = this.mSlideOffset < 0.5f ? canvas.save(2) : Integer.MIN_VALUE;
        boolean z = false;
        if (this.mCanSlide && !layoutParams.slideable && this.mSlideableView != null) {
            canvas.getClipBounds(this.mTmpRect);
            this.mTmpRect.bottom = Math.min(this.mTmpRect.bottom, this.mSlideableView.getTop());
            if (save != Integer.MIN_VALUE) {
                canvas.clipRect(this.mTmpRect);
            }
            if (this.mSlideOffset < 1.0f) {
                z = true;
            }
        }
        if (layoutParams.slideable && this.mSlideableView != null) {
            ((ISlidePanelDragTarget) this.mSlideableView).onDrawWhenSliding(this.mSlideOffset);
        }
        boolean drawChild = super.drawChild(canvas, view, j);
        if (save != Integer.MIN_VALUE) {
            canvas.restoreToCount(save);
        }
        if (z) {
            this.mCoveredFadePaint.setColor((((int) (((this.mCoveredFadeColor & (-16777216)) >>> 24) * (1.0f - this.mSlideOffset))) << 24) | (this.mCoveredFadeColor & ViewCompat.MEASURED_SIZE_MASK));
            canvas.drawRect(this.mTmpRect, this.mCoveredFadePaint);
        }
        return drawChild;
    }

    boolean smoothSlideTo(float f, int i) {
        if (!this.mCanSlide) {
            return false;
        }
        int slidingTop = (int) (getSlidingTop() + (f * this.mSlideRange));
        if (this.mSlideableView == null || !this.mDragHelper.smoothSlideViewTo(this.mSlideableView, this.mSlideableView.getLeft(), slidingTop)) {
            return false;
        }
        setAllChildrenVisible();
        ViewCompat.postInvalidateOnAnimation(this);
        return true;
    }

    @Override // android.view.View
    public void computeScroll() {
        if (this.mDragHelper.continueSettling(true)) {
            if (!this.mCanSlide) {
                this.mDragHelper.abort();
            } else {
                ViewCompat.postInvalidateOnAnimation(this);
            }
        }
    }

    @Override // android.view.View
    public void draw(Canvas canvas) {
        super.draw(canvas);
        if (this.mSlideableView == null || this.mSlideOffset == 1.0f) {
            return;
        }
        int right = this.mSlideableView.getRight();
        int top = this.mSlideableView.getTop() - this.mShadowHeight;
        int top2 = this.mSlideableView.getTop();
        int left = this.mSlideableView.getLeft();
        if (this.mShadowDrawable != null) {
            this.mShadowDrawable.setBounds(left, top, right, top2);
            this.mShadowDrawable.draw(canvas);
        }
    }

    protected boolean canScroll(View view, boolean z, int i, int i2, int i3) {
        int i4;
        if (view instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view;
            int scrollX = view.getScrollX();
            int scrollY = view.getScrollY();
            for (int childCount = viewGroup.getChildCount() - 1; childCount >= 0; childCount--) {
                View childAt = viewGroup.getChildAt(childCount);
                int i5 = i2 + scrollX;
                if (i5 >= childAt.getLeft() && i5 < childAt.getRight() && (i4 = i3 + scrollY) >= childAt.getTop() && i4 < childAt.getBottom() && canScroll(childAt, true, i, i5 - childAt.getLeft(), i4 - childAt.getTop())) {
                    return true;
                }
            }
        }
        return z && view.canScrollHorizontally(-i);
    }

    @Override // android.view.ViewGroup
    protected ViewGroup.LayoutParams generateDefaultLayoutParams() {
        return new LayoutParams();
    }

    @Override // android.view.ViewGroup
    protected ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof ViewGroup.MarginLayoutParams ? new LayoutParams((ViewGroup.MarginLayoutParams) layoutParams) : new LayoutParams(layoutParams);
    }

    @Override // android.view.ViewGroup
    protected boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return (layoutParams instanceof LayoutParams) && super.checkLayoutParams(layoutParams);
    }

    @Override // android.view.ViewGroup
    public ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new LayoutParams(getContext(), attributeSet);
    }

    @Override // android.view.View
    protected Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        savedState.mSlideState = this.mSlideState;
        return savedState;
    }

    @Override // android.view.View
    protected void onRestoreInstanceState(Parcelable parcelable) {
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.getSuperState());
        this.mSlideState = savedState.mSlideState;
    }

    /* loaded from: classes.dex */
    private class DragHelperCallback extends ViewDragHelper.Callback {
        private DragHelperCallback() {
        }

        @Override // android.support.v4.widget.ViewDragHelper.Callback
        public boolean tryCaptureView(View view, int i) {
            if (SlidingUpPanelLayout.this.mIsUnableToDrag) {
                return false;
            }
            return ((LayoutParams) view.getLayoutParams()).slideable;
        }

        @Override // android.support.v4.widget.ViewDragHelper.Callback
        public void onViewDragStateChanged(int i) {
            int i2 = (int) (SlidingUpPanelLayout.this.mAnchorPoint * SlidingUpPanelLayout.this.mSlideRange);
            if (SlidingUpPanelLayout.this.mDragHelper.getViewDragState() != 0 || SlidingUpPanelLayout.this.mSlideableView == null) {
                return;
            }
            if (SlidingUpPanelLayout.this.mSlideOffset == 0.0f) {
                if (SlidingUpPanelLayout.this.mSlideState != SlideState.EXPANDED) {
                    SlidingUpPanelLayout.this.updateObscuredViewVisibility();
                    SlidingUpPanelLayout.this.dispatchOnPanelExpanded(SlidingUpPanelLayout.this.mSlideableView);
                    SlidingUpPanelLayout.this.mSlideState = SlideState.EXPANDED;
                    SlidingUpPanelLayout.this.setDragView(((ISlidePanelDragTarget) SlidingUpPanelLayout.this.mSlideableView).getSlideDragTarget(true));
                    return;
                }
                return;
            }
            if (SlidingUpPanelLayout.this.mSlideOffset == i2 / SlidingUpPanelLayout.this.mSlideRange) {
                if (SlidingUpPanelLayout.this.mSlideState != SlideState.ANCHORED) {
                    SlidingUpPanelLayout.this.updateObscuredViewVisibility();
                    SlidingUpPanelLayout.this.dispatchOnPanelAnchored(SlidingUpPanelLayout.this.mSlideableView);
                    SlidingUpPanelLayout.this.mSlideState = SlideState.ANCHORED;
                    return;
                }
                return;
            }
            if (SlidingUpPanelLayout.this.mSlideState != SlideState.COLLAPSED) {
                SlidingUpPanelLayout.this.dispatchOnPanelCollapsed(SlidingUpPanelLayout.this.mSlideableView);
                SlidingUpPanelLayout.this.mSlideState = SlideState.COLLAPSED;
                SlidingUpPanelLayout.this.setDragView(((ISlidePanelDragTarget) SlidingUpPanelLayout.this.mSlideableView).getSlideDragTarget(false));
            }
        }

        @Override // android.support.v4.widget.ViewDragHelper.Callback
        public void onViewCaptured(View view, int i) {
            SlidingUpPanelLayout.this.setAllChildrenVisible();
        }

        @Override // android.support.v4.widget.ViewDragHelper.Callback
        public void onViewPositionChanged(View view, int i, int i2, int i3, int i4) {
            SlidingUpPanelLayout.this.onPanelDragged(i2);
            SlidingUpPanelLayout.this.invalidate();
        }

        @Override // android.support.v4.widget.ViewDragHelper.Callback
        public void onViewReleased(View view, float f, float f2) {
            int slidingTop = SlidingUpPanelLayout.this.getSlidingTop();
            if (SlidingUpPanelLayout.this.mAnchorPoint != 0.0f) {
                float f3 = ((int) (SlidingUpPanelLayout.this.mAnchorPoint * SlidingUpPanelLayout.this.mSlideRange)) / SlidingUpPanelLayout.this.mSlideRange;
                if (f2 > 0.0f || (f2 == 0.0f && SlidingUpPanelLayout.this.mSlideOffset >= (1.0f + f3) / 2.0f)) {
                    slidingTop += SlidingUpPanelLayout.this.mSlideRange;
                } else if (f2 == 0.0f && SlidingUpPanelLayout.this.mSlideOffset < (1.0f + f3) / 2.0f && SlidingUpPanelLayout.this.mSlideOffset >= f3 / 2.0f) {
                    slidingTop = (int) (slidingTop + (SlidingUpPanelLayout.this.mSlideRange * SlidingUpPanelLayout.this.mAnchorPoint));
                }
            } else if (f2 > 0.0f || (f2 == 0.0f && SlidingUpPanelLayout.this.mSlideOffset > 0.5f)) {
                slidingTop += SlidingUpPanelLayout.this.mSlideRange;
            }
            SlidingUpPanelLayout.this.mDragHelper.settleCapturedViewAt(view.getLeft(), slidingTop);
            SlidingUpPanelLayout.this.invalidate();
        }

        @Override // android.support.v4.widget.ViewDragHelper.Callback
        public int getViewVerticalDragRange(View view) {
            return SlidingUpPanelLayout.this.mSlideRange;
        }

        @Override // android.support.v4.widget.ViewDragHelper.Callback
        public int clampViewPositionVertical(View view, int i, int i2) {
            int slidingTop = SlidingUpPanelLayout.this.getSlidingTop();
            return Math.min(Math.max(i, slidingTop), SlidingUpPanelLayout.this.mSlideRange + slidingTop);
        }
    }

    /* loaded from: classes.dex */
    public static class LayoutParams extends ViewGroup.MarginLayoutParams {
        private static final int[] ATTRS = {android.R.attr.layout_weight};
        Paint dimPaint;
        boolean dimWhenOffset;
        boolean slideable;

        public LayoutParams() {
            super(-1, -1);
        }

        public LayoutParams(int i, int i2) {
            super(i, i2);
        }

        public LayoutParams(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
        }

        public LayoutParams(ViewGroup.MarginLayoutParams marginLayoutParams) {
            super(marginLayoutParams);
        }

        public LayoutParams(LayoutParams layoutParams) {
            super((ViewGroup.MarginLayoutParams) layoutParams);
        }

        public LayoutParams(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            context.obtainStyledAttributes(attributeSet, ATTRS).recycle();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static class SavedState extends View.BaseSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new Parcelable.Creator<SavedState>() { // from class: mobi.beyondpod.ui.views.base.slidinguppanel.SlidingUpPanelLayout.SavedState.1
            @Override // android.os.Parcelable.Creator
            public SavedState createFromParcel(Parcel parcel) {
                return new SavedState(parcel);
            }

            @Override // android.os.Parcelable.Creator
            public SavedState[] newArray(int i) {
                return new SavedState[i];
            }
        };
        SlideState mSlideState;

        SavedState(Parcelable parcelable) {
            super(parcelable);
        }

        private SavedState(Parcel parcel) {
            super(parcel);
            try {
                this.mSlideState = (SlideState) Enum.valueOf(SlideState.class, parcel.readString());
            } catch (IllegalArgumentException unused) {
                this.mSlideState = SlideState.COLLAPSED;
            }
        }

        @Override // android.view.View.BaseSavedState, android.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeString(this.mSlideState.toString());
        }
    }
}
