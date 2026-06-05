package com.mobeta.android.dslv;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.TypedArray;
import android.database.DataSetObserver;
import android.graphics.Canvas;
import android.graphics.Point;
import android.graphics.drawable.Drawable;
import android.os.SystemClock;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseBooleanArray;
import android.util.SparseIntArray;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AbsListView;
import android.widget.BaseAdapter;
import android.widget.Checkable;
import android.widget.ListAdapter;
import android.widget.ListView;
import java.util.ArrayList;
import mobi.beyondpod.R;

/* loaded from: classes.dex */
public class DragSortListView extends ListView {
    private static final int DRAGGING = 4;
    public static final int DRAG_NEG_X = 2;
    public static final int DRAG_NEG_Y = 8;
    public static final int DRAG_POS_X = 1;
    public static final int DRAG_POS_Y = 4;
    private static final int DROPPING = 2;
    private static final int IDLE = 0;
    private static final int NO_CANCEL = 0;
    private static final int ON_INTERCEPT_TOUCH_EVENT = 2;
    private static final int ON_TOUCH_EVENT = 1;
    private static final int REMOVING = 1;
    private static final int STOPPED = 3;
    private static final int sCacheSize = 3;
    private AdapterWrapper mAdapterWrapper;
    private boolean mAnimate;
    private boolean mBlockLayoutRequests;
    private MotionEvent mCancelEvent;
    private int mCancelMethod;
    private HeightCache mChildHeightCache;
    private float mCurrFloatAlpha;
    private int mDownScrollStartY;
    private float mDownScrollStartYF;
    private int mDragDeltaX;
    private int mDragDeltaY;
    private float mDragDownScrollHeight;
    private float mDragDownScrollStartFrac;
    private boolean mDragEnabled;
    private int mDragFlags;
    private DragListener mDragListener;
    private DragScroller mDragScroller;
    private int mDragStartY;
    private int mDragState;
    private float mDragUpScrollHeight;
    private float mDragUpScrollStartFrac;
    private DropAnimator mDropAnimator;
    private DropListener mDropListener;
    private int mFirstExpPos;
    private float mFloatAlpha;
    private Point mFloatLoc;
    private int mFloatPos;
    private View mFloatView;
    private int mFloatViewHeight;
    private int mFloatViewHeightHalf;
    private boolean mFloatViewInvalidated;
    private FloatViewManager mFloatViewManager;
    private int mFloatViewMid;
    private boolean mFloatViewOnMeasured;
    private boolean mIgnoreTouchEvent;
    private boolean mInTouchEvent;
    private int mItemHeightCollapsed;
    private boolean mLastCallWasIntercept;
    private int mLastX;
    private int mLastY;
    private LiftAnimator mLiftAnimator;
    private boolean mListViewIntercepted;
    private float mMaxScrollSpeed;
    private DataSetObserver mObserver;
    private int mOffsetX;
    private int mOffsetY;
    private RemoveAnimator mRemoveAnimator;
    private RemoveListener mRemoveListener;
    private float mRemoveVelocityX;
    private View[] mSampleViewTypes;
    private DragScrollProfile mScrollProfile;
    private int mSecondExpPos;
    private float mSlideFrac;
    private float mSlideRegionFrac;
    private int mSrcPos;
    private Point mTouchLoc;
    private boolean mTrackDragSort;
    private int mUpScrollStartY;
    private float mUpScrollStartYF;
    private boolean mUseRemoveVelocity;
    private int mWidthMeasureSpec;
    private int mX;
    private int mY;

    /* loaded from: classes.dex */
    public interface DragListener {
        void drag(int i, int i2);
    }

    /* loaded from: classes.dex */
    public interface DragScrollProfile {
        float getSpeed(float f, long j);
    }

    /* loaded from: classes.dex */
    public interface DragSortListener extends DropListener, DragListener, RemoveListener {
    }

    /* loaded from: classes.dex */
    public interface DropListener {
        void drop(int i, int i2);
    }

    /* loaded from: classes.dex */
    public interface FloatViewManager {
        View onCreateFloatView(int i);

        void onDestroyFloatView(View view);

        void onDragFloatView(View view, Point point, Point point2);
    }

    /* loaded from: classes.dex */
    public interface RemoveListener {
        void remove(int i);
    }

    private static int rotate(int i, int i2, int i3, int i4) {
        int i5 = i4 - i3;
        int i6 = i + i2;
        return i6 < i3 ? i6 + i5 : i6 >= i4 ? i6 - i5 : i6;
    }

    public DragSortListView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        int i;
        this.mFloatLoc = new Point();
        this.mTouchLoc = new Point();
        this.mFloatViewOnMeasured = false;
        this.mFloatAlpha = 1.0f;
        this.mCurrFloatAlpha = 1.0f;
        this.mAnimate = false;
        this.mDragEnabled = true;
        this.mDragState = 0;
        this.mItemHeightCollapsed = 1;
        this.mWidthMeasureSpec = 0;
        this.mSampleViewTypes = new View[1];
        this.mDragUpScrollStartFrac = 0.33333334f;
        this.mDragDownScrollStartFrac = 0.33333334f;
        this.mMaxScrollSpeed = 0.5f;
        this.mScrollProfile = new DragScrollProfile() { // from class: com.mobeta.android.dslv.DragSortListView.1
            @Override // com.mobeta.android.dslv.DragSortListView.DragScrollProfile
            public float getSpeed(float f, long j) {
                return DragSortListView.this.mMaxScrollSpeed * f;
            }
        };
        this.mDragFlags = 0;
        this.mLastCallWasIntercept = false;
        this.mInTouchEvent = false;
        this.mFloatViewManager = null;
        this.mCancelMethod = 0;
        this.mSlideRegionFrac = 0.25f;
        this.mSlideFrac = 0.0f;
        this.mTrackDragSort = false;
        this.mBlockLayoutRequests = false;
        this.mIgnoreTouchEvent = false;
        this.mChildHeightCache = new HeightCache(3);
        this.mRemoveVelocityX = 0.0f;
        this.mListViewIntercepted = false;
        this.mFloatViewInvalidated = false;
        int i2 = 150;
        if (attributeSet != null) {
            TypedArray obtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, R.styleable.DragSortListView, 0, 0);
            this.mItemHeightCollapsed = Math.max(1, obtainStyledAttributes.getDimensionPixelSize(R.styleable.DragSortListView_collapsed_height, 1));
            this.mTrackDragSort = obtainStyledAttributes.getBoolean(R.styleable.DragSortListView_track_drag_sort, false);
            this.mFloatAlpha = obtainStyledAttributes.getFloat(R.styleable.DragSortListView_float_alpha, this.mFloatAlpha);
            this.mCurrFloatAlpha = this.mFloatAlpha;
            this.mDragEnabled = obtainStyledAttributes.getBoolean(R.styleable.DragSortListView_drag_enabled, this.mDragEnabled);
            this.mSlideRegionFrac = Math.max(0.0f, Math.min(1.0f, 1.0f - obtainStyledAttributes.getFloat(R.styleable.DragSortListView_slide_shuffle_speed, 0.75f)));
            this.mAnimate = this.mSlideRegionFrac > 0.0f;
            setDragScrollStart(obtainStyledAttributes.getFloat(R.styleable.DragSortListView_drag_scroll_start, this.mDragUpScrollStartFrac));
            this.mMaxScrollSpeed = obtainStyledAttributes.getFloat(R.styleable.DragSortListView_max_drag_scroll_speed, this.mMaxScrollSpeed);
            int i3 = obtainStyledAttributes.getInt(R.styleable.DragSortListView_remove_animation_duration, 150);
            i = obtainStyledAttributes.getInt(R.styleable.DragSortListView_drop_animation_duration, 150);
            if (obtainStyledAttributes.getBoolean(R.styleable.DragSortListView_use_default_controller, true)) {
                boolean z = obtainStyledAttributes.getBoolean(R.styleable.DragSortListView_remove_enabled, false);
                int i4 = obtainStyledAttributes.getInt(R.styleable.DragSortListView_remove_mode, 1);
                boolean z2 = obtainStyledAttributes.getBoolean(R.styleable.DragSortListView_sort_enabled, true);
                int i5 = obtainStyledAttributes.getInt(R.styleable.DragSortListView_drag_start_mode, 0);
                int resourceId = obtainStyledAttributes.getResourceId(R.styleable.DragSortListView_drag_handle_id, 0);
                int resourceId2 = obtainStyledAttributes.getResourceId(R.styleable.DragSortListView_fling_handle_id, 0);
                int resourceId3 = obtainStyledAttributes.getResourceId(R.styleable.DragSortListView_click_remove_id, 0);
                int color = obtainStyledAttributes.getColor(R.styleable.DragSortListView_float_background_color, -16777216);
                DragSortController dragSortController = new DragSortController(this, resourceId, i5, i4, resourceId3, resourceId2);
                dragSortController.setRemoveEnabled(z);
                dragSortController.setSortEnabled(z2);
                dragSortController.setBackgroundColor(color);
                this.mFloatViewManager = dragSortController;
                setOnTouchListener(dragSortController);
            }
            obtainStyledAttributes.recycle();
            i2 = i3;
        } else {
            i = 150;
        }
        this.mDragScroller = new DragScroller();
        if (i2 > 0) {
            this.mRemoveAnimator = new RemoveAnimator(0.5f, i2);
        }
        if (i > 0) {
            this.mDropAnimator = new DropAnimator(0.5f, i);
        }
        this.mCancelEvent = MotionEvent.obtain(0L, 0L, 3, 0.0f, 0.0f, 0.0f, 0.0f, 0, 0.0f, 0.0f, 0, 0);
        this.mObserver = new DataSetObserver() { // from class: com.mobeta.android.dslv.DragSortListView.2
            private void cancel() {
                if (DragSortListView.this.mDragState == 4) {
                    DragSortListView.this.cancelDrag();
                }
            }

            @Override // android.database.DataSetObserver
            public void onChanged() {
                cancel();
            }

            @Override // android.database.DataSetObserver
            public void onInvalidated() {
                cancel();
            }
        };
    }

    public boolean isDragIdle() {
        return this.mDragState == 0;
    }

    public void setFloatAlpha(float f) {
        this.mCurrFloatAlpha = f;
    }

    public float getFloatAlpha() {
        return this.mCurrFloatAlpha;
    }

    public void setMaxScrollSpeed(float f) {
        this.mMaxScrollSpeed = f;
    }

    @Override // android.widget.AdapterView
    public void setAdapter(ListAdapter listAdapter) {
        if (listAdapter != null) {
            this.mAdapterWrapper = new AdapterWrapper(listAdapter);
            listAdapter.registerDataSetObserver(this.mObserver);
            if (listAdapter instanceof DropListener) {
                setDropListener((DropListener) listAdapter);
            }
            if (listAdapter instanceof DragListener) {
                setDragListener((DragListener) listAdapter);
            }
            if (listAdapter instanceof RemoveListener) {
                setRemoveListener((RemoveListener) listAdapter);
            }
        } else {
            this.mAdapterWrapper = null;
        }
        super.setAdapter((ListAdapter) this.mAdapterWrapper);
    }

    public ListAdapter getInputAdapter() {
        if (this.mAdapterWrapper == null) {
            return null;
        }
        return this.mAdapterWrapper.getAdapter();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public class AdapterWrapper extends BaseAdapter {
        private ListAdapter mAdapter;

        public AdapterWrapper(ListAdapter listAdapter) {
            this.mAdapter = listAdapter;
            this.mAdapter.registerDataSetObserver(new DataSetObserver() { // from class: com.mobeta.android.dslv.DragSortListView.AdapterWrapper.1
                @Override // android.database.DataSetObserver
                public void onChanged() {
                    AdapterWrapper.this.notifyDataSetChanged();
                }

                @Override // android.database.DataSetObserver
                public void onInvalidated() {
                    AdapterWrapper.this.notifyDataSetInvalidated();
                }
            });
        }

        public ListAdapter getAdapter() {
            return this.mAdapter;
        }

        @Override // android.widget.Adapter
        public long getItemId(int i) {
            return this.mAdapter.getItemId(i);
        }

        @Override // android.widget.Adapter
        public Object getItem(int i) {
            return this.mAdapter.getItem(i);
        }

        @Override // android.widget.Adapter
        public int getCount() {
            return this.mAdapter.getCount();
        }

        @Override // android.widget.BaseAdapter, android.widget.ListAdapter
        public boolean areAllItemsEnabled() {
            return this.mAdapter.areAllItemsEnabled();
        }

        @Override // android.widget.BaseAdapter, android.widget.ListAdapter
        public boolean isEnabled(int i) {
            return this.mAdapter.isEnabled(i);
        }

        @Override // android.widget.BaseAdapter, android.widget.Adapter
        public int getItemViewType(int i) {
            return this.mAdapter.getItemViewType(i);
        }

        @Override // android.widget.BaseAdapter, android.widget.Adapter
        public int getViewTypeCount() {
            return this.mAdapter.getViewTypeCount();
        }

        @Override // android.widget.BaseAdapter, android.widget.Adapter
        public boolean hasStableIds() {
            return this.mAdapter.hasStableIds();
        }

        @Override // android.widget.BaseAdapter, android.widget.Adapter
        public boolean isEmpty() {
            return this.mAdapter.isEmpty();
        }

        @Override // android.widget.Adapter
        public View getView(int i, View view, ViewGroup viewGroup) {
            DragSortItemView dragSortItemView;
            DragSortItemView dragSortItemView2;
            if (view != null) {
                dragSortItemView2 = (DragSortItemView) view;
                View childAt = dragSortItemView2.getChildAt(0);
                View view2 = this.mAdapter.getView(i, childAt, DragSortListView.this);
                if (view2 != childAt) {
                    if (childAt != null) {
                        dragSortItemView2.removeViewAt(0);
                    }
                    dragSortItemView2.addView(view2);
                }
            } else {
                View view3 = this.mAdapter.getView(i, null, DragSortListView.this);
                if (view3 instanceof Checkable) {
                    dragSortItemView = new DragSortItemViewCheckable(DragSortListView.this.getContext());
                } else {
                    dragSortItemView = new DragSortItemView(DragSortListView.this.getContext());
                }
                dragSortItemView.setLayoutParams(new AbsListView.LayoutParams(-1, -2));
                if (view3 != null) {
                    dragSortItemView.addView(view3);
                }
                dragSortItemView2 = dragSortItemView;
            }
            DragSortListView.this.adjustItem(i + DragSortListView.this.getHeaderViewsCount(), dragSortItemView2, true);
            return dragSortItemView2;
        }
    }

    private void drawDivider(int i, Canvas canvas) {
        ViewGroup viewGroup;
        int i2;
        int i3;
        Drawable divider = getDivider();
        int dividerHeight = getDividerHeight();
        if (divider == null || dividerHeight == 0 || (viewGroup = (ViewGroup) getChildAt(i - getFirstVisiblePosition())) == null) {
            return;
        }
        int paddingLeft = getPaddingLeft();
        int width = getWidth() - getPaddingRight();
        int height = viewGroup.getChildAt(0).getHeight();
        if (i > this.mSrcPos) {
            i3 = viewGroup.getTop() + height;
            i2 = dividerHeight + i3;
        } else {
            int bottom = viewGroup.getBottom() - height;
            int i4 = bottom - dividerHeight;
            i2 = bottom;
            i3 = i4;
        }
        canvas.save();
        canvas.clipRect(paddingLeft, i3, width, i2);
        divider.setBounds(paddingLeft, i3, width, i2);
        divider.draw(canvas);
        canvas.restore();
    }

    @Override // android.widget.ListView, android.widget.AbsListView, android.view.ViewGroup, android.view.View
    protected void dispatchDraw(Canvas canvas) {
        float f;
        super.dispatchDraw(canvas);
        if (this.mDragState != 0) {
            if (this.mFirstExpPos != this.mSrcPos) {
                drawDivider(this.mFirstExpPos, canvas);
            }
            if (this.mSecondExpPos != this.mFirstExpPos && this.mSecondExpPos != this.mSrcPos) {
                drawDivider(this.mSecondExpPos, canvas);
            }
        }
        if (this.mFloatView != null) {
            int width = this.mFloatView.getWidth();
            int height = this.mFloatView.getHeight();
            int i = this.mFloatLoc.x;
            int width2 = getWidth();
            if (i < 0) {
                i = -i;
            }
            if (i < width2) {
                float f2 = (width2 - i) / width2;
                f = f2 * f2;
            } else {
                f = 0.0f;
            }
            int i2 = (int) (255.0f * this.mCurrFloatAlpha * f);
            canvas.save();
            canvas.translate(this.mFloatLoc.x, this.mFloatLoc.y);
            canvas.clipRect(0, 0, width, height);
            canvas.saveLayerAlpha(0.0f, 0.0f, width, height, i2, 31);
            this.mFloatView.draw(canvas);
            canvas.restore();
            canvas.restore();
        }
    }

    private int getItemHeight(int i) {
        View childAt = getChildAt(i - getFirstVisiblePosition());
        if (childAt != null) {
            return childAt.getHeight();
        }
        return calcItemHeight(i, getChildHeight(i));
    }

    private void printPosData() {
        Log.d("mobeta", "mSrcPos=" + this.mSrcPos + " mFirstExpPos=" + this.mFirstExpPos + " mSecondExpPos=" + this.mSecondExpPos);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public class HeightCache {
        private SparseIntArray mMap;
        private int mMaxSize;
        private ArrayList<Integer> mOrder;

        public HeightCache(int i) {
            this.mMap = new SparseIntArray(i);
            this.mOrder = new ArrayList<>(i);
            this.mMaxSize = i;
        }

        public void add(int i, int i2) {
            int i3 = this.mMap.get(i, -1);
            if (i3 != i2) {
                if (i3 == -1) {
                    if (this.mMap.size() == this.mMaxSize) {
                        this.mMap.delete(this.mOrder.remove(0).intValue());
                    }
                } else {
                    this.mOrder.remove(Integer.valueOf(i));
                }
                this.mMap.put(i, i2);
                this.mOrder.add(Integer.valueOf(i));
            }
        }

        public int get(int i) {
            return this.mMap.get(i, -1);
        }

        public void clear() {
            this.mMap.clear();
            this.mOrder.clear();
        }
    }

    private int getShuffleEdge(int i, int i2) {
        int headerViewsCount = getHeaderViewsCount();
        int footerViewsCount = getFooterViewsCount();
        if (i <= headerViewsCount || i >= getCount() - footerViewsCount) {
            return i2;
        }
        int dividerHeight = getDividerHeight();
        int i3 = this.mFloatViewHeight - this.mItemHeightCollapsed;
        int childHeight = getChildHeight(i);
        int itemHeight = getItemHeight(i);
        if (this.mSecondExpPos <= this.mSrcPos) {
            if (i == this.mSecondExpPos && this.mFirstExpPos != this.mSecondExpPos) {
                i2 = i == this.mSrcPos ? (i2 + itemHeight) - this.mFloatViewHeight : (i2 + (itemHeight - childHeight)) - i3;
            } else if (i > this.mSecondExpPos && i <= this.mSrcPos) {
                i2 -= i3;
            }
        } else if (i > this.mSrcPos && i <= this.mFirstExpPos) {
            i2 += i3;
        } else if (i == this.mSecondExpPos && this.mFirstExpPos != this.mSecondExpPos) {
            i2 += itemHeight - childHeight;
        }
        if (i <= this.mSrcPos) {
            return i2 + (((this.mFloatViewHeight - dividerHeight) - getChildHeight(i - 1)) / 2);
        }
        return i2 + (((childHeight - dividerHeight) - this.mFloatViewHeight) / 2);
    }

    private boolean updatePositions() {
        int i;
        int firstVisiblePosition = getFirstVisiblePosition();
        int i2 = this.mFirstExpPos;
        View childAt = getChildAt(i2 - firstVisiblePosition);
        if (childAt == null) {
            i2 = (getChildCount() / 2) + firstVisiblePosition;
            childAt = getChildAt(i2 - firstVisiblePosition);
        }
        int top = childAt.getTop();
        int height = childAt.getHeight();
        int shuffleEdge = getShuffleEdge(i2, top);
        int dividerHeight = getDividerHeight();
        if (this.mFloatViewMid < shuffleEdge) {
            while (i2 >= 0) {
                i2--;
                int itemHeight = getItemHeight(i2);
                if (i2 == 0) {
                    i = (top - dividerHeight) - itemHeight;
                    break;
                }
                top -= itemHeight + dividerHeight;
                int shuffleEdge2 = getShuffleEdge(i2, top);
                if (this.mFloatViewMid >= shuffleEdge2) {
                    i = shuffleEdge2;
                    break;
                }
                shuffleEdge = shuffleEdge2;
            }
            i = shuffleEdge;
        } else {
            int count = getCount();
            while (i2 < count) {
                if (i2 == count - 1) {
                    i = top + dividerHeight + height;
                    break;
                }
                top += height + dividerHeight;
                int i3 = i2 + 1;
                int itemHeight2 = getItemHeight(i3);
                int shuffleEdge3 = getShuffleEdge(i3, top);
                if (this.mFloatViewMid < shuffleEdge3) {
                    i = shuffleEdge3;
                    break;
                }
                i2 = i3;
                height = itemHeight2;
                shuffleEdge = shuffleEdge3;
            }
            i = shuffleEdge;
        }
        int headerViewsCount = getHeaderViewsCount();
        int footerViewsCount = getFooterViewsCount();
        int i4 = this.mFirstExpPos;
        int i5 = this.mSecondExpPos;
        float f = this.mSlideFrac;
        if (this.mAnimate) {
            int abs = Math.abs(i - shuffleEdge);
            if (this.mFloatViewMid < i) {
                int i6 = shuffleEdge;
                shuffleEdge = i;
                i = i6;
            }
            int i7 = (int) (this.mSlideRegionFrac * 0.5f * abs);
            float f2 = i7;
            int i8 = i + i7;
            int i9 = shuffleEdge - i7;
            if (this.mFloatViewMid < i8) {
                this.mFirstExpPos = i2 - 1;
                this.mSecondExpPos = i2;
                this.mSlideFrac = (0.5f * (i8 - this.mFloatViewMid)) / f2;
            } else if (this.mFloatViewMid < i9) {
                this.mFirstExpPos = i2;
                this.mSecondExpPos = i2;
            } else {
                this.mFirstExpPos = i2;
                this.mSecondExpPos = i2 + 1;
                this.mSlideFrac = 0.5f * (1.0f + ((shuffleEdge - this.mFloatViewMid) / f2));
            }
        } else {
            this.mFirstExpPos = i2;
            this.mSecondExpPos = i2;
        }
        if (this.mFirstExpPos < headerViewsCount) {
            this.mFirstExpPos = headerViewsCount;
            this.mSecondExpPos = headerViewsCount;
            i2 = headerViewsCount;
        } else if (this.mSecondExpPos >= getCount() - footerViewsCount) {
            i2 = (getCount() - footerViewsCount) - 1;
            this.mFirstExpPos = i2;
            this.mSecondExpPos = i2;
        }
        boolean z = (this.mFirstExpPos == i4 && this.mSecondExpPos == i5 && this.mSlideFrac == f) ? false : true;
        if (i2 == this.mFloatPos) {
            return z;
        }
        if (this.mDragListener != null) {
            this.mDragListener.drag(this.mFloatPos - headerViewsCount, i2 - headerViewsCount);
        }
        this.mFloatPos = i2;
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public class SmoothAnimator implements Runnable {
        private float mA;
        private float mAlpha;
        private float mB;
        private float mC;
        private boolean mCanceled;
        private float mD;
        private float mDurationF;
        protected long mStartTime;

        public void onStart() {
        }

        public void onStop() {
        }

        public void onUpdate(float f, float f2) {
        }

        public SmoothAnimator(float f, int i) {
            this.mAlpha = f;
            this.mDurationF = i;
            float f2 = 1.0f / ((this.mAlpha * 2.0f) * (1.0f - this.mAlpha));
            this.mD = f2;
            this.mA = f2;
            this.mB = this.mAlpha / (2.0f * (this.mAlpha - 1.0f));
            this.mC = 1.0f / (1.0f - this.mAlpha);
        }

        public float transform(float f) {
            if (f < this.mAlpha) {
                return this.mA * f * f;
            }
            if (f < 1.0f - this.mAlpha) {
                return this.mB + (this.mC * f);
            }
            float f2 = f - 1.0f;
            return 1.0f - ((this.mD * f2) * f2);
        }

        public void start() {
            this.mStartTime = SystemClock.uptimeMillis();
            this.mCanceled = false;
            onStart();
            DragSortListView.this.post(this);
        }

        public void cancel() {
            this.mCanceled = true;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (this.mCanceled) {
                return;
            }
            float uptimeMillis = ((float) (SystemClock.uptimeMillis() - this.mStartTime)) / this.mDurationF;
            if (uptimeMillis >= 1.0f) {
                onUpdate(1.0f, 1.0f);
                onStop();
            } else {
                onUpdate(uptimeMillis, transform(uptimeMillis));
                DragSortListView.this.post(this);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public class LiftAnimator extends SmoothAnimator {
        private float mFinalDragDeltaY;
        private float mInitDragDeltaY;

        public LiftAnimator(float f, int i) {
            super(f, i);
        }

        @Override // com.mobeta.android.dslv.DragSortListView.SmoothAnimator
        public void onStart() {
            this.mInitDragDeltaY = DragSortListView.this.mDragDeltaY;
            this.mFinalDragDeltaY = DragSortListView.this.mFloatViewHeightHalf;
        }

        @Override // com.mobeta.android.dslv.DragSortListView.SmoothAnimator
        public void onUpdate(float f, float f2) {
            if (DragSortListView.this.mDragState != 4) {
                cancel();
                return;
            }
            DragSortListView.this.mDragDeltaY = (int) ((this.mFinalDragDeltaY * f2) + ((1.0f - f2) * this.mInitDragDeltaY));
            DragSortListView.this.mFloatLoc.y = DragSortListView.this.mY - DragSortListView.this.mDragDeltaY;
            DragSortListView.this.doDragFloatView(true);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public class DropAnimator extends SmoothAnimator {
        private int mDropPos;
        private float mInitDeltaX;
        private float mInitDeltaY;
        private int srcPos;

        public DropAnimator(float f, int i) {
            super(f, i);
        }

        @Override // com.mobeta.android.dslv.DragSortListView.SmoothAnimator
        public void onStart() {
            this.mDropPos = DragSortListView.this.mFloatPos;
            this.srcPos = DragSortListView.this.mSrcPos;
            DragSortListView.this.mDragState = 2;
            this.mInitDeltaY = DragSortListView.this.mFloatLoc.y - getTargetY();
            this.mInitDeltaX = DragSortListView.this.mFloatLoc.x - DragSortListView.this.getPaddingLeft();
        }

        private int getTargetY() {
            int firstVisiblePosition = DragSortListView.this.getFirstVisiblePosition();
            int dividerHeight = (DragSortListView.this.mItemHeightCollapsed + DragSortListView.this.getDividerHeight()) / 2;
            View childAt = DragSortListView.this.getChildAt(this.mDropPos - firstVisiblePosition);
            if (childAt != null) {
                if (this.mDropPos == this.srcPos) {
                    return childAt.getTop();
                }
                if (this.mDropPos >= this.srcPos) {
                    return (childAt.getBottom() + dividerHeight) - DragSortListView.this.mFloatViewHeight;
                }
                return childAt.getTop() - dividerHeight;
            }
            cancel();
            return -1;
        }

        @Override // com.mobeta.android.dslv.DragSortListView.SmoothAnimator
        public void onUpdate(float f, float f2) {
            int targetY = getTargetY();
            int paddingLeft = DragSortListView.this.getPaddingLeft();
            float f3 = DragSortListView.this.mFloatLoc.y - targetY;
            float f4 = DragSortListView.this.mFloatLoc.x - paddingLeft;
            float f5 = 1.0f - f2;
            if (f5 < Math.abs(f3 / this.mInitDeltaY) || f5 < Math.abs(f4 / this.mInitDeltaX)) {
                DragSortListView.this.mFloatLoc.y = targetY + ((int) (this.mInitDeltaY * f5));
                DragSortListView.this.mFloatLoc.x = DragSortListView.this.getPaddingLeft() + ((int) (this.mInitDeltaX * f5));
                DragSortListView.this.doDragFloatView(true);
            }
        }

        @Override // com.mobeta.android.dslv.DragSortListView.SmoothAnimator
        public void onStop() {
            DragSortListView.this.dropFloatView();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public class RemoveAnimator extends SmoothAnimator {
        private int mFirstChildHeight;
        private int mFirstPos;
        private float mFirstStartBlank;
        private float mFloatLocX;
        private int mSecondChildHeight;
        private int mSecondPos;
        private float mSecondStartBlank;
        private int srcPos;

        public RemoveAnimator(float f, int i) {
            super(f, i);
            this.mFirstChildHeight = -1;
            this.mSecondChildHeight = -1;
        }

        @Override // com.mobeta.android.dslv.DragSortListView.SmoothAnimator
        public void onStart() {
            this.mFirstChildHeight = -1;
            this.mSecondChildHeight = -1;
            this.mFirstPos = DragSortListView.this.mFirstExpPos;
            this.mSecondPos = DragSortListView.this.mSecondExpPos;
            this.srcPos = DragSortListView.this.mSrcPos;
            DragSortListView.this.mDragState = 1;
            this.mFloatLocX = DragSortListView.this.mFloatLoc.x;
            if (!DragSortListView.this.mUseRemoveVelocity) {
                DragSortListView.this.destroyFloatView();
                return;
            }
            float width = DragSortListView.this.getWidth() * 2.0f;
            if (DragSortListView.this.mRemoveVelocityX == 0.0f) {
                DragSortListView.this.mRemoveVelocityX = (this.mFloatLocX >= 0.0f ? 1 : -1) * width;
                return;
            }
            float f = width * 2.0f;
            if (DragSortListView.this.mRemoveVelocityX < 0.0f) {
                float f2 = -f;
                if (DragSortListView.this.mRemoveVelocityX > f2) {
                    DragSortListView.this.mRemoveVelocityX = f2;
                    return;
                }
            }
            if (DragSortListView.this.mRemoveVelocityX <= 0.0f || DragSortListView.this.mRemoveVelocityX >= f) {
                return;
            }
            DragSortListView.this.mRemoveVelocityX = f;
        }

        @Override // com.mobeta.android.dslv.DragSortListView.SmoothAnimator
        public void onUpdate(float f, float f2) {
            View childAt;
            float f3 = 1.0f - f2;
            int firstVisiblePosition = DragSortListView.this.getFirstVisiblePosition();
            View childAt2 = DragSortListView.this.getChildAt(this.mFirstPos - firstVisiblePosition);
            if (DragSortListView.this.mUseRemoveVelocity) {
                float uptimeMillis = ((float) (SystemClock.uptimeMillis() - this.mStartTime)) / 1000.0f;
                if (uptimeMillis == 0.0f) {
                    return;
                }
                float f4 = DragSortListView.this.mRemoveVelocityX * uptimeMillis;
                int width = DragSortListView.this.getWidth();
                float f5 = (DragSortListView.this.mRemoveVelocityX > 0.0f ? 1 : -1) * uptimeMillis;
                float f6 = width;
                DragSortListView.this.mRemoveVelocityX = DragSortListView.this.mRemoveVelocityX + (f5 * f6);
                this.mFloatLocX += f4;
                DragSortListView.this.mFloatLoc.x = (int) this.mFloatLocX;
                if (this.mFloatLocX < f6 && this.mFloatLocX > (-width)) {
                    this.mStartTime = SystemClock.uptimeMillis();
                    DragSortListView.this.doDragFloatView(true);
                    return;
                }
            }
            if (childAt2 != null) {
                if (this.mFirstChildHeight == -1) {
                    this.mFirstChildHeight = DragSortListView.this.getChildHeight(this.mFirstPos, childAt2, false);
                    this.mFirstStartBlank = childAt2.getHeight() - this.mFirstChildHeight;
                }
                int max = Math.max((int) (this.mFirstStartBlank * f3), 1);
                ViewGroup.LayoutParams layoutParams = childAt2.getLayoutParams();
                layoutParams.height = this.mFirstChildHeight + max;
                childAt2.setLayoutParams(layoutParams);
            }
            if (this.mSecondPos == this.mFirstPos || (childAt = DragSortListView.this.getChildAt(this.mSecondPos - firstVisiblePosition)) == null) {
                return;
            }
            if (this.mSecondChildHeight == -1) {
                this.mSecondChildHeight = DragSortListView.this.getChildHeight(this.mSecondPos, childAt, false);
                this.mSecondStartBlank = childAt.getHeight() - this.mSecondChildHeight;
            }
            int max2 = Math.max((int) (f3 * this.mSecondStartBlank), 1);
            ViewGroup.LayoutParams layoutParams2 = childAt.getLayoutParams();
            layoutParams2.height = this.mSecondChildHeight + max2;
            childAt.setLayoutParams(layoutParams2);
        }

        @Override // com.mobeta.android.dslv.DragSortListView.SmoothAnimator
        public void onStop() {
            DragSortListView.this.doRemoveItem();
        }
    }

    public void removeItem(int i) {
        this.mUseRemoveVelocity = false;
        removeItem(i, 0.0f);
    }

    public void removeItem(int i, float f) {
        if (this.mDragState == 0 || this.mDragState == 4) {
            if (this.mDragState == 0) {
                this.mSrcPos = getHeaderViewsCount() + i;
                this.mFirstExpPos = this.mSrcPos;
                this.mSecondExpPos = this.mSrcPos;
                this.mFloatPos = this.mSrcPos;
                View childAt = getChildAt(this.mSrcPos - getFirstVisiblePosition());
                if (childAt != null) {
                    childAt.setVisibility(4);
                }
            }
            this.mDragState = 1;
            this.mRemoveVelocityX = f;
            if (this.mInTouchEvent) {
                switch (this.mCancelMethod) {
                    case 1:
                        super.onTouchEvent(this.mCancelEvent);
                        break;
                    case 2:
                        super.onInterceptTouchEvent(this.mCancelEvent);
                        break;
                }
            }
            if (this.mRemoveAnimator != null) {
                this.mRemoveAnimator.start();
            } else {
                doRemoveItem(i);
            }
        }
    }

    public void moveItem(int i, int i2) {
        if (this.mDropListener != null) {
            int count = getInputAdapter().getCount();
            if (i < 0 || i >= count || i2 < 0 || i2 >= count) {
                return;
            }
            this.mDropListener.drop(i, i2);
        }
    }

    public void cancelDrag() {
        if (this.mDragState == 4) {
            this.mDragScroller.stopScrolling(true);
            destroyFloatView();
            clearPositions();
            adjustAllItems();
            if (this.mInTouchEvent) {
                this.mDragState = 3;
            } else {
                this.mDragState = 0;
            }
        }
    }

    private void clearPositions() {
        this.mSrcPos = -1;
        this.mFirstExpPos = -1;
        this.mSecondExpPos = -1;
        this.mFloatPos = -1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void dropFloatView() {
        this.mDragState = 2;
        if (this.mDropListener != null && this.mFloatPos >= 0 && this.mFloatPos < getCount()) {
            int headerViewsCount = getHeaderViewsCount();
            this.mDropListener.drop(this.mSrcPos - headerViewsCount, this.mFloatPos - headerViewsCount);
        }
        destroyFloatView();
        adjustOnReorder();
        clearPositions();
        adjustAllItems();
        if (this.mInTouchEvent) {
            this.mDragState = 3;
        } else {
            this.mDragState = 0;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void doRemoveItem() {
        doRemoveItem(this.mSrcPos - getHeaderViewsCount());
    }

    private void doRemoveItem(int i) {
        this.mDragState = 1;
        if (this.mRemoveListener != null) {
            this.mRemoveListener.remove(i);
        }
        destroyFloatView();
        adjustOnReorder();
        clearPositions();
        if (this.mInTouchEvent) {
            this.mDragState = 3;
        } else {
            this.mDragState = 0;
        }
    }

    private void adjustOnReorder() {
        int firstVisiblePosition = getFirstVisiblePosition();
        if (this.mSrcPos < firstVisiblePosition) {
            View childAt = getChildAt(0);
            setSelectionFromTop(firstVisiblePosition - 1, (childAt != null ? childAt.getTop() : 0) - getPaddingTop());
        }
    }

    public boolean stopDrag(boolean z) {
        this.mUseRemoveVelocity = false;
        return stopDrag(z, 0.0f);
    }

    public boolean stopDragWithVelocity(boolean z, float f) {
        this.mUseRemoveVelocity = true;
        return stopDrag(z, f);
    }

    public boolean stopDrag(boolean z, float f) {
        if (this.mFloatView == null) {
            return false;
        }
        this.mDragScroller.stopScrolling(true);
        if (z) {
            removeItem(this.mSrcPos - getHeaderViewsCount(), f);
        } else if (this.mDropAnimator != null) {
            this.mDropAnimator.start();
        } else {
            dropFloatView();
        }
        return true;
    }

    @Override // android.widget.AbsListView, android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        boolean z = false;
        if (this.mIgnoreTouchEvent) {
            this.mIgnoreTouchEvent = false;
            return false;
        }
        if (!this.mDragEnabled) {
            return super.onTouchEvent(motionEvent);
        }
        boolean z2 = this.mLastCallWasIntercept;
        this.mLastCallWasIntercept = false;
        if (!z2) {
            saveTouchCoords(motionEvent);
        }
        if (this.mDragState == 4) {
            onDragTouchEvent(motionEvent);
            return true;
        }
        if (this.mDragState == 0 && super.onTouchEvent(motionEvent)) {
            z = true;
        }
        int action = motionEvent.getAction() & 255;
        if (action == 1 || action == 3) {
            doActionUpOrCancel();
            return z;
        }
        if (!z) {
            return z;
        }
        this.mCancelMethod = 1;
        return z;
    }

    @Override // android.view.View
    public boolean performClick() {
        return super.performClick();
    }

    private void doActionUpOrCancel() {
        this.mCancelMethod = 0;
        this.mInTouchEvent = false;
        if (this.mDragState == 3) {
            this.mDragState = 0;
        }
        this.mCurrFloatAlpha = this.mFloatAlpha;
        this.mListViewIntercepted = false;
        this.mChildHeightCache.clear();
    }

    private void saveTouchCoords(MotionEvent motionEvent) {
        int action = motionEvent.getAction() & 255;
        if (action != 0) {
            this.mLastX = this.mX;
            this.mLastY = this.mY;
        }
        this.mX = (int) motionEvent.getX();
        this.mY = (int) motionEvent.getY();
        if (action == 0) {
            this.mLastX = this.mX;
            this.mLastY = this.mY;
        }
        this.mOffsetX = ((int) motionEvent.getRawX()) - this.mX;
        this.mOffsetY = ((int) motionEvent.getRawY()) - this.mY;
    }

    public boolean listViewIntercepted() {
        return this.mListViewIntercepted;
    }

    @Override // android.widget.AbsListView, android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        boolean z;
        if (!this.mDragEnabled) {
            return super.onInterceptTouchEvent(motionEvent);
        }
        saveTouchCoords(motionEvent);
        this.mLastCallWasIntercept = true;
        int action = motionEvent.getAction() & 255;
        if (action == 0) {
            if (this.mDragState != 0) {
                this.mIgnoreTouchEvent = true;
                return true;
            }
            this.mInTouchEvent = true;
        }
        if (this.mFloatView != null) {
            z = true;
        } else {
            if (super.onInterceptTouchEvent(motionEvent)) {
                this.mListViewIntercepted = true;
                z = true;
            } else {
                z = false;
            }
            if (action == 1 || action == 3) {
                doActionUpOrCancel();
            } else if (z) {
                this.mCancelMethod = 1;
            } else {
                this.mCancelMethod = 2;
            }
        }
        if (action == 1 || action == 3) {
            this.mInTouchEvent = false;
        }
        return z;
    }

    public void setDragScrollStart(float f) {
        setDragScrollStarts(f, f);
    }

    public void setDragScrollStarts(float f, float f2) {
        if (f2 > 0.5f) {
            this.mDragDownScrollStartFrac = 0.5f;
        } else {
            this.mDragDownScrollStartFrac = f2;
        }
        if (f > 0.5f) {
            this.mDragUpScrollStartFrac = 0.5f;
        } else {
            this.mDragUpScrollStartFrac = f;
        }
        if (getHeight() != 0) {
            updateScrollStarts();
        }
    }

    private void continueDrag(int i, int i2) {
        this.mFloatLoc.x = i - this.mDragDeltaX;
        this.mFloatLoc.y = i2 - this.mDragDeltaY;
        doDragFloatView(true);
        int min = Math.min(i2, this.mFloatViewMid + this.mFloatViewHeightHalf);
        int max = Math.max(i2, this.mFloatViewMid - this.mFloatViewHeightHalf);
        int scrollDir = this.mDragScroller.getScrollDir();
        if (min > this.mLastY && min > this.mDownScrollStartY && scrollDir != 1) {
            if (scrollDir != -1) {
                this.mDragScroller.stopScrolling(true);
            }
            this.mDragScroller.startScrolling(1);
        } else if (max < this.mLastY && max < this.mUpScrollStartY && scrollDir != 0) {
            if (scrollDir != -1) {
                this.mDragScroller.stopScrolling(true);
            }
            this.mDragScroller.startScrolling(0);
        } else {
            if (max < this.mUpScrollStartY || min > this.mDownScrollStartY || !this.mDragScroller.isScrolling()) {
                return;
            }
            this.mDragScroller.stopScrolling(true);
        }
    }

    private void updateScrollStarts() {
        int paddingTop = getPaddingTop();
        float height = (getHeight() - paddingTop) - getPaddingBottom();
        float f = paddingTop;
        this.mUpScrollStartYF = (this.mDragUpScrollStartFrac * height) + f;
        this.mDownScrollStartYF = ((1.0f - this.mDragDownScrollStartFrac) * height) + f;
        this.mUpScrollStartY = (int) this.mUpScrollStartYF;
        this.mDownScrollStartY = (int) this.mDownScrollStartYF;
        this.mDragUpScrollHeight = this.mUpScrollStartYF - f;
        this.mDragDownScrollHeight = (paddingTop + r1) - this.mDownScrollStartYF;
    }

    @Override // android.widget.ListView, android.widget.AbsListView, android.view.View
    protected void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        updateScrollStarts();
    }

    private void adjustAllItems() {
        int firstVisiblePosition = getFirstVisiblePosition();
        int lastVisiblePosition = getLastVisiblePosition();
        int min = Math.min(lastVisiblePosition - firstVisiblePosition, ((getCount() - 1) - getFooterViewsCount()) - firstVisiblePosition);
        for (int max = Math.max(0, getHeaderViewsCount() - firstVisiblePosition); max <= min; max++) {
            View childAt = getChildAt(max);
            if (childAt != null) {
                adjustItem(firstVisiblePosition + max, childAt, false);
            }
        }
    }

    private void adjustItem(int i) {
        View childAt = getChildAt(i - getFirstVisiblePosition());
        if (childAt != null) {
            adjustItem(i, childAt, false);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void adjustItem(int i, View view, boolean z) {
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        int calcItemHeight = (i == this.mSrcPos || i == this.mFirstExpPos || i == this.mSecondExpPos) ? calcItemHeight(i, view, z) : -2;
        if (calcItemHeight != layoutParams.height) {
            layoutParams.height = calcItemHeight;
            view.setLayoutParams(layoutParams);
        }
        if (i == this.mFirstExpPos || i == this.mSecondExpPos) {
            if (i < this.mSrcPos) {
                ((DragSortItemView) view).setGravity(80);
            } else if (i > this.mSrcPos) {
                ((DragSortItemView) view).setGravity(48);
            }
        }
        int visibility = view.getVisibility();
        int i2 = 0;
        if (i == this.mSrcPos && this.mFloatView != null) {
            i2 = 4;
        }
        if (i2 != visibility) {
            view.setVisibility(i2);
        }
    }

    private int getChildHeight(int i) {
        View view;
        if (i == this.mSrcPos) {
            return 0;
        }
        View childAt = getChildAt(i - getFirstVisiblePosition());
        if (childAt != null) {
            return getChildHeight(i, childAt, false);
        }
        int i2 = this.mChildHeightCache.get(i);
        if (i2 != -1) {
            return i2;
        }
        ListAdapter adapter = getAdapter();
        int itemViewType = adapter.getItemViewType(i);
        int viewTypeCount = adapter.getViewTypeCount();
        if (viewTypeCount != this.mSampleViewTypes.length) {
            this.mSampleViewTypes = new View[viewTypeCount];
        }
        if (itemViewType >= 0) {
            if (this.mSampleViewTypes[itemViewType] == null) {
                view = adapter.getView(i, null, this);
                this.mSampleViewTypes[itemViewType] = view;
            } else {
                view = adapter.getView(i, this.mSampleViewTypes[itemViewType], this);
            }
        } else {
            view = adapter.getView(i, null, this);
        }
        int childHeight = getChildHeight(i, view, true);
        this.mChildHeightCache.add(i, childHeight);
        return childHeight;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int getChildHeight(int i, View view, boolean z) {
        if (i == this.mSrcPos) {
            return 0;
        }
        if (i >= getHeaderViewsCount() && i < getCount() - getFooterViewsCount()) {
            view = ((ViewGroup) view).getChildAt(0);
        }
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        if (layoutParams != null && layoutParams.height > 0) {
            return layoutParams.height;
        }
        int height = view.getHeight();
        if (height != 0 && !z) {
            return height;
        }
        measureItem(view);
        return view.getMeasuredHeight();
    }

    private int calcItemHeight(int i, View view, boolean z) {
        return calcItemHeight(i, getChildHeight(i, view, z));
    }

    private int calcItemHeight(int i, int i2) {
        boolean z = this.mAnimate && this.mFirstExpPos != this.mSecondExpPos;
        int i3 = this.mFloatViewHeight - this.mItemHeightCollapsed;
        int i4 = (int) (this.mSlideFrac * i3);
        if (i != this.mSrcPos) {
            return i == this.mFirstExpPos ? z ? i2 + i4 : i2 + i3 : i == this.mSecondExpPos ? (i2 + i3) - i4 : i2;
        }
        if (this.mSrcPos == this.mFirstExpPos) {
            if (z) {
                return i4 + this.mItemHeightCollapsed;
            }
            return this.mFloatViewHeight;
        }
        if (this.mSrcPos == this.mSecondExpPos) {
            return this.mFloatViewHeight - i4;
        }
        return this.mItemHeightCollapsed;
    }

    @Override // android.widget.AbsListView, android.view.View, android.view.ViewParent
    public void requestLayout() {
        if (this.mBlockLayoutRequests) {
            return;
        }
        super.requestLayout();
    }

    private int adjustScroll(int i, View view, int i2, int i3) {
        int i4;
        int i5;
        int childHeight = getChildHeight(i);
        int height = view.getHeight();
        int calcItemHeight = calcItemHeight(i, childHeight);
        if (i != this.mSrcPos) {
            i4 = height - childHeight;
            i5 = calcItemHeight - childHeight;
        } else {
            i4 = height;
            i5 = calcItemHeight;
        }
        int i6 = this.mFloatViewHeight;
        if (this.mSrcPos != this.mFirstExpPos && this.mSrcPos != this.mSecondExpPos) {
            i6 -= this.mItemHeightCollapsed;
        }
        if (i <= i2) {
            if (i > this.mFirstExpPos) {
                return 0 + (i6 - i5);
            }
            return 0;
        }
        if (i == i3) {
            return i <= this.mFirstExpPos ? 0 + (i4 - i6) : i == this.mSecondExpPos ? 0 + (height - calcItemHeight) : 0 + i4;
        }
        if (i <= this.mFirstExpPos) {
            return 0 - i6;
        }
        if (i == this.mSecondExpPos) {
            return 0 - i5;
        }
        return 0;
    }

    private void measureItem(View view) {
        int makeMeasureSpec;
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        if (layoutParams == null) {
            layoutParams = new AbsListView.LayoutParams(-1, -2);
            view.setLayoutParams(layoutParams);
        }
        int childMeasureSpec = ViewGroup.getChildMeasureSpec(this.mWidthMeasureSpec, getListPaddingLeft() + getListPaddingRight(), layoutParams.width);
        if (layoutParams.height > 0) {
            makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(layoutParams.height, 1073741824);
        } else {
            makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(0, 0);
        }
        view.measure(childMeasureSpec, makeMeasureSpec);
    }

    private void measureFloatView() {
        if (this.mFloatView != null) {
            measureItem(this.mFloatView);
            this.mFloatViewHeight = this.mFloatView.getMeasuredHeight();
            this.mFloatViewHeightHalf = this.mFloatViewHeight / 2;
        }
    }

    @Override // android.widget.ListView, android.widget.AbsListView, android.view.View
    protected void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        if (this.mFloatView != null) {
            if (this.mFloatView.isLayoutRequested()) {
                measureFloatView();
            }
            this.mFloatViewOnMeasured = true;
        }
        this.mWidthMeasureSpec = i;
    }

    @Override // android.widget.ListView, android.widget.AbsListView
    protected void layoutChildren() {
        super.layoutChildren();
        if (this.mFloatView != null) {
            if (this.mFloatView.isLayoutRequested() && !this.mFloatViewOnMeasured) {
                measureFloatView();
            }
            this.mFloatView.layout(0, 0, this.mFloatView.getMeasuredWidth(), this.mFloatView.getMeasuredHeight());
            this.mFloatViewOnMeasured = false;
        }
    }

    protected boolean onDragTouchEvent(MotionEvent motionEvent) {
        switch (motionEvent.getAction() & 255) {
            case 1:
                if (this.mDragState == 4) {
                    stopDrag(false);
                }
                doActionUpOrCancel();
                return true;
            case 2:
                continueDrag((int) motionEvent.getX(), (int) motionEvent.getY());
                return true;
            case 3:
                if (this.mDragState == 4) {
                    cancelDrag();
                }
                doActionUpOrCancel();
                return true;
            default:
                return true;
        }
    }

    private void invalidateFloatView() {
        this.mFloatViewInvalidated = true;
    }

    public boolean startDrag(int i, int i2, int i3, int i4) {
        View onCreateFloatView;
        if (!this.mInTouchEvent || this.mFloatViewManager == null || (onCreateFloatView = this.mFloatViewManager.onCreateFloatView(i)) == null) {
            return false;
        }
        return startDrag(i, onCreateFloatView, i2, i3, i4);
    }

    public boolean startDrag(int i, View view, int i2, int i3, int i4) {
        if (this.mDragState != 0 || !this.mInTouchEvent || this.mFloatView != null || view == null || !this.mDragEnabled) {
            return false;
        }
        if (getParent() != null) {
            getParent().requestDisallowInterceptTouchEvent(true);
        }
        int headerViewsCount = i + getHeaderViewsCount();
        this.mFirstExpPos = headerViewsCount;
        this.mSecondExpPos = headerViewsCount;
        this.mSrcPos = headerViewsCount;
        this.mFloatPos = headerViewsCount;
        this.mDragState = 4;
        this.mDragFlags = 0;
        this.mDragFlags = i2 | this.mDragFlags;
        this.mFloatView = view;
        measureFloatView();
        this.mDragDeltaX = i3;
        this.mDragDeltaY = i4;
        this.mDragStartY = this.mY;
        this.mFloatLoc.x = this.mX - this.mDragDeltaX;
        this.mFloatLoc.y = this.mY - this.mDragDeltaY;
        View childAt = getChildAt(this.mSrcPos - getFirstVisiblePosition());
        if (childAt != null) {
            childAt.setVisibility(4);
        }
        switch (this.mCancelMethod) {
            case 1:
                super.onTouchEvent(this.mCancelEvent);
                break;
            case 2:
                super.onInterceptTouchEvent(this.mCancelEvent);
                break;
        }
        requestLayout();
        if (this.mLiftAnimator != null) {
            this.mLiftAnimator.start();
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void doDragFloatView(boolean z) {
        int firstVisiblePosition = getFirstVisiblePosition() + (getChildCount() / 2);
        View childAt = getChildAt(getChildCount() / 2);
        if (childAt == null) {
            return;
        }
        doDragFloatView(firstVisiblePosition, childAt, z);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void doDragFloatView(int i, View view, boolean z) {
        this.mBlockLayoutRequests = true;
        updateFloatView();
        int i2 = this.mFirstExpPos;
        int i3 = this.mSecondExpPos;
        boolean updatePositions = updatePositions();
        if (updatePositions) {
            adjustAllItems();
            setSelectionFromTop(i, (view.getTop() + adjustScroll(i, view, i2, i3)) - getPaddingTop());
            layoutChildren();
        }
        if (updatePositions || z) {
            invalidate();
        }
        this.mBlockLayoutRequests = false;
    }

    private void updateFloatView() {
        if (this.mFloatViewManager != null) {
            this.mTouchLoc.set(this.mX, this.mY);
            this.mFloatViewManager.onDragFloatView(this.mFloatView, this.mFloatLoc, this.mTouchLoc);
        }
        int i = this.mFloatLoc.x;
        int i2 = this.mFloatLoc.y;
        int paddingLeft = getPaddingLeft();
        if ((this.mDragFlags & 1) == 0 && i > paddingLeft) {
            this.mFloatLoc.x = paddingLeft;
        } else if ((this.mDragFlags & 2) == 0 && i < paddingLeft) {
            this.mFloatLoc.x = paddingLeft;
        }
        int headerViewsCount = getHeaderViewsCount();
        int footerViewsCount = getFooterViewsCount();
        int firstVisiblePosition = getFirstVisiblePosition();
        int lastVisiblePosition = getLastVisiblePosition();
        int paddingTop = getPaddingTop();
        if (firstVisiblePosition < headerViewsCount) {
            paddingTop = getChildAt((headerViewsCount - firstVisiblePosition) - 1).getBottom();
        }
        if ((this.mDragFlags & 8) == 0 && firstVisiblePosition <= this.mSrcPos) {
            paddingTop = Math.max(getChildAt(this.mSrcPos - firstVisiblePosition).getTop(), paddingTop);
        }
        int height = getHeight() - getPaddingBottom();
        if (lastVisiblePosition >= (getCount() - footerViewsCount) - 1) {
            height = getChildAt(((getCount() - footerViewsCount) - 1) - firstVisiblePosition).getBottom();
        }
        if ((this.mDragFlags & 4) == 0 && lastVisiblePosition >= this.mSrcPos) {
            height = Math.min(getChildAt(this.mSrcPos - firstVisiblePosition).getBottom(), height);
        }
        if (i2 < paddingTop) {
            this.mFloatLoc.y = paddingTop;
        } else if (i2 + this.mFloatViewHeight > height) {
            this.mFloatLoc.y = height - this.mFloatViewHeight;
        }
        this.mFloatViewMid = this.mFloatLoc.y + this.mFloatViewHeightHalf;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void destroyFloatView() {
        if (this.mFloatView != null) {
            this.mFloatView.setVisibility(8);
            if (this.mFloatViewManager != null) {
                this.mFloatViewManager.onDestroyFloatView(this.mFloatView);
            }
            this.mFloatView = null;
            invalidate();
        }
    }

    public void setFloatViewManager(FloatViewManager floatViewManager) {
        this.mFloatViewManager = floatViewManager;
    }

    public void setDragListener(DragListener dragListener) {
        this.mDragListener = dragListener;
    }

    public void setDragEnabled(boolean z) {
        this.mDragEnabled = z;
    }

    public boolean isDragEnabled() {
        return this.mDragEnabled;
    }

    public void setDropListener(DropListener dropListener) {
        this.mDropListener = dropListener;
    }

    public void setRemoveListener(RemoveListener removeListener) {
        this.mRemoveListener = removeListener;
    }

    public void setDragSortListener(DragSortListener dragSortListener) {
        setDropListener(dragSortListener);
        setDragListener(dragSortListener);
        setRemoveListener(dragSortListener);
    }

    public void setDragScrollProfile(DragScrollProfile dragScrollProfile) {
        if (dragScrollProfile != null) {
            this.mScrollProfile = dragScrollProfile;
        }
    }

    public void moveCheckState(int i, int i2) {
        int i3;
        int i4;
        SparseBooleanArray checkedItemPositions = getCheckedItemPositions();
        if (i2 < i) {
            i4 = i;
            i3 = i2;
        } else {
            i3 = i;
            i4 = i2;
        }
        int i5 = i4 + 1;
        int[] iArr = new int[checkedItemPositions.size()];
        int[] iArr2 = new int[checkedItemPositions.size()];
        int buildRunList = buildRunList(checkedItemPositions, i3, i5, iArr, iArr2);
        if (buildRunList == 1 && iArr[0] == iArr2[0]) {
            return;
        }
        if (i < i2) {
            for (int i6 = 0; i6 != buildRunList; i6++) {
                setItemChecked(rotate(iArr[i6], -1, i3, i5), true);
                setItemChecked(rotate(iArr2[i6], -1, i3, i5), false);
            }
            return;
        }
        for (int i7 = 0; i7 != buildRunList; i7++) {
            setItemChecked(iArr[i7], false);
            setItemChecked(iArr2[i7], true);
        }
    }

    public void removeCheckState(int i) {
        SparseBooleanArray checkedItemPositions = getCheckedItemPositions();
        if (checkedItemPositions.size() == 0) {
            return;
        }
        int[] iArr = new int[checkedItemPositions.size()];
        int[] iArr2 = new int[checkedItemPositions.size()];
        int keyAt = checkedItemPositions.keyAt(checkedItemPositions.size() - 1) + 1;
        int buildRunList = buildRunList(checkedItemPositions, i, keyAt, iArr, iArr2);
        for (int i2 = 0; i2 != buildRunList; i2++) {
            if (iArr[i2] != i && (iArr2[i2] >= iArr[i2] || iArr2[i2] <= i)) {
                setItemChecked(rotate(iArr[i2], -1, i, keyAt), true);
            }
            setItemChecked(rotate(iArr2[i2], -1, i, keyAt), false);
        }
    }

    private static int buildRunList(SparseBooleanArray sparseBooleanArray, int i, int i2, int[] iArr, int[] iArr2) {
        int keyAt;
        int findFirstSetIndex = findFirstSetIndex(sparseBooleanArray, i, i2);
        if (findFirstSetIndex == -1) {
            return 0;
        }
        int keyAt2 = sparseBooleanArray.keyAt(findFirstSetIndex);
        int i3 = keyAt2 + 1;
        int i4 = keyAt2;
        int i5 = 0;
        for (int i6 = findFirstSetIndex + 1; i6 < sparseBooleanArray.size() && (keyAt = sparseBooleanArray.keyAt(i6)) < i2; i6++) {
            if (sparseBooleanArray.valueAt(i6)) {
                if (keyAt == i3) {
                    i3++;
                } else {
                    iArr[i5] = i4;
                    iArr2[i5] = i3;
                    i5++;
                    i3 = keyAt + 1;
                    i4 = keyAt;
                }
            }
        }
        if (i3 == i2) {
            i3 = i;
        }
        iArr[i5] = i4;
        iArr2[i5] = i3;
        int i7 = i5 + 1;
        if (i7 <= 1 || iArr[0] != i) {
            return i7;
        }
        int i8 = i7 - 1;
        if (iArr2[i8] != i) {
            return i7;
        }
        iArr[0] = iArr[i8];
        return i7 - 1;
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x001f, code lost:
    
        if (r2.keyAt(r3) < r4) goto L13;
     */
    /* JADX WARN: Code restructure failed: missing block: B:12:0x0022, code lost:
    
        return r3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:14:?, code lost:
    
        return -1;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static int findFirstSetIndex(android.util.SparseBooleanArray r2, int r3, int r4) {
        /*
            int r0 = r2.size()
            int r3 = insertionIndexForKey(r2, r3)
        L8:
            if (r3 >= r0) goto L19
            int r1 = r2.keyAt(r3)
            if (r1 >= r4) goto L19
            boolean r1 = r2.valueAt(r3)
            if (r1 != 0) goto L19
            int r3 = r3 + 1
            goto L8
        L19:
            if (r3 == r0) goto L23
            int r2 = r2.keyAt(r3)
            if (r2 < r4) goto L22
            goto L23
        L22:
            return r3
        L23:
            r2 = -1
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mobeta.android.dslv.DragSortListView.findFirstSetIndex(android.util.SparseBooleanArray, int, int):int");
    }

    private static int insertionIndexForKey(SparseBooleanArray sparseBooleanArray, int i) {
        int size = sparseBooleanArray.size();
        int i2 = 0;
        while (size - i2 > 0) {
            int i3 = (i2 + size) >> 1;
            if (sparseBooleanArray.keyAt(i3) < i) {
                i2 = i3 + 1;
            } else {
                size = i3;
            }
        }
        return i2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public class DragScroller implements Runnable {
        public static final int DOWN = 1;
        public static final int STOP = -1;
        public static final int UP = 0;
        private float dt;
        private int dy;
        private boolean mAbort;
        private long mCurrTime;
        private int mFirstFooter;
        private int mLastHeader;
        private long mPrevTime;
        private float mScrollSpeed;
        private boolean mScrolling = false;
        private int scrollDir;
        private long tStart;

        public boolean isScrolling() {
            return this.mScrolling;
        }

        public int getScrollDir() {
            if (this.mScrolling) {
                return this.scrollDir;
            }
            return -1;
        }

        public DragScroller() {
        }

        public void startScrolling(int i) {
            if (this.mScrolling) {
                return;
            }
            this.mAbort = false;
            this.mScrolling = true;
            this.tStart = SystemClock.uptimeMillis();
            this.mPrevTime = this.tStart;
            this.scrollDir = i;
            DragSortListView.this.post(this);
        }

        public void stopScrolling(boolean z) {
            if (z) {
                DragSortListView.this.removeCallbacks(this);
                this.mScrolling = false;
            } else {
                this.mAbort = true;
            }
        }

        @Override // java.lang.Runnable
        @SuppressLint({"NewApi"})
        public void run() {
            if (this.mAbort) {
                this.mScrolling = false;
                return;
            }
            int firstVisiblePosition = DragSortListView.this.getFirstVisiblePosition();
            int lastVisiblePosition = DragSortListView.this.getLastVisiblePosition();
            int count = DragSortListView.this.getCount();
            int paddingTop = DragSortListView.this.getPaddingTop();
            int height = (DragSortListView.this.getHeight() - paddingTop) - DragSortListView.this.getPaddingBottom();
            int min = Math.min(DragSortListView.this.mY, DragSortListView.this.mFloatViewMid + DragSortListView.this.mFloatViewHeightHalf);
            int max = Math.max(DragSortListView.this.mY, DragSortListView.this.mFloatViewMid - DragSortListView.this.mFloatViewHeightHalf);
            if (this.scrollDir == 0) {
                View childAt = DragSortListView.this.getChildAt(0);
                if (childAt == null) {
                    this.mScrolling = false;
                    return;
                } else {
                    if (firstVisiblePosition == 0 && childAt.getTop() == paddingTop) {
                        this.mScrolling = false;
                        return;
                    }
                    this.mScrollSpeed = DragSortListView.this.mScrollProfile.getSpeed((DragSortListView.this.mUpScrollStartYF - max) / DragSortListView.this.mDragUpScrollHeight, this.mPrevTime);
                }
            } else {
                View childAt2 = DragSortListView.this.getChildAt(lastVisiblePosition - firstVisiblePosition);
                if (childAt2 == null) {
                    this.mScrolling = false;
                    return;
                } else {
                    if (lastVisiblePosition == count - 1 && childAt2.getBottom() <= height + paddingTop) {
                        this.mScrolling = false;
                        return;
                    }
                    this.mScrollSpeed = -DragSortListView.this.mScrollProfile.getSpeed((min - DragSortListView.this.mDownScrollStartYF) / DragSortListView.this.mDragDownScrollHeight, this.mPrevTime);
                }
            }
            this.mCurrTime = SystemClock.uptimeMillis();
            this.dt = (float) (this.mCurrTime - this.mPrevTime);
            this.dy = Math.round(this.mScrollSpeed * this.dt);
            if (this.dy >= 0) {
                this.dy = Math.min(height, this.dy);
                lastVisiblePosition = firstVisiblePosition;
            } else {
                this.dy = Math.max(-height, this.dy);
            }
            View childAt3 = DragSortListView.this.getChildAt(lastVisiblePosition - firstVisiblePosition);
            int top = childAt3.getTop() + this.dy;
            if (lastVisiblePosition == 0 && top > paddingTop) {
                top = paddingTop;
            }
            DragSortListView.this.mBlockLayoutRequests = true;
            DragSortListView.this.setSelectionFromTop(lastVisiblePosition, top - paddingTop);
            DragSortListView.this.layoutChildren();
            DragSortListView.this.invalidate();
            DragSortListView.this.mBlockLayoutRequests = false;
            DragSortListView.this.doDragFloatView(lastVisiblePosition, childAt3, false);
            this.mPrevTime = this.mCurrTime;
            DragSortListView.this.post(this);
        }
    }
}
