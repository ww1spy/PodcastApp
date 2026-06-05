package mobi.beyondpod.ui.views.impexp;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.support.v4.content.ContextCompat;
import android.support.v4.view.ViewPager;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.HorizontalScrollView;
import android.widget.LinearLayout;
import android.widget.TextView;
import mobi.beyondpod.R;
import mobi.beyondpod.rsscore.helpers.AnalyticsTracker;

/* loaded from: classes.dex */
public class AddFeedSectionsTabStrip extends HorizontalScrollView {
    private AddFeedView addFeedView;
    private int currentPosition;
    private float currentPositionOffset;
    private Paint dividerPaint;
    private int lastIndicatorPosition;
    private int lastScrollX;
    private final PageListener pageListener;
    private ViewPager pager;
    private Paint rectPaint;
    private int tabTotal;
    private LinearLayout tabsContainer;

    public AddFeedSectionsTabStrip(Context context) {
        this(context, null);
        this.rectPaint = new Paint();
        this.dividerPaint = new Paint();
    }

    public AddFeedSectionsTabStrip(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
        this.rectPaint = new Paint();
        this.dividerPaint = new Paint();
    }

    public AddFeedSectionsTabStrip(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.pageListener = new PageListener();
        this.lastIndicatorPosition = -1;
        this.currentPosition = 0;
        this.currentPositionOffset = 0.0f;
        this.lastScrollX = 0;
        this.rectPaint = new Paint();
        this.dividerPaint = new Paint();
        setFillViewport(true);
        setWillNotDraw(false);
        this.tabsContainer = (LinearLayout) LayoutInflater.from(context).inflate(R.layout.popular_categories_tab_container, (ViewGroup) null);
        addView(this.tabsContainer);
        this.tabsContainer.removeAllViews();
        String[] stringArray = getResources().getStringArray(R.array.add_feed_section_names);
        this.tabTotal = stringArray.length;
        for (int i2 = 0; i2 < this.tabTotal; i2++) {
            addTab(context, i2, stringArray[i2]);
        }
    }

    private void addTab(Context context, final int i, String str) {
        TextView textView = (TextView) LayoutInflater.from(context).inflate(R.layout.popular_categories_item, (ViewGroup) null);
        textView.setText(str);
        textView.setOnClickListener(new View.OnClickListener() { // from class: mobi.beyondpod.ui.views.impexp.AddFeedSectionsTabStrip.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                AddFeedSectionsTabStrip.this.addFeedView.onCategoryChanged(AddFeedSectionsTabStrip.this.getResources().getStringArray(R.array.add_feed_section_values)[i]);
                AddFeedSectionsTabStrip.this.pager.setCurrentItem(i);
            }
        });
        this.tabsContainer.addView(textView, i);
    }

    public void setViewPager(ViewPager viewPager) {
        this.pager = viewPager;
        viewPager.addOnPageChangeListener(this.pageListener);
    }

    public void setAddFeedView(AddFeedView addFeedView) {
        this.addFeedView = addFeedView;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void scrollToChild(int i, int i2) {
        if (this.tabTotal == 0) {
            return;
        }
        if (this.lastIndicatorPosition != i && i2 == 0) {
            ((TextView) this.tabsContainer.getChildAt(i)).setSelected(true);
            if (this.lastIndicatorPosition >= 0) {
                ((TextView) this.tabsContainer.getChildAt(this.lastIndicatorPosition)).setSelected(false);
            }
            this.lastIndicatorPosition = i;
        }
        int left = this.tabsContainer.getChildAt(i).getLeft() + i2;
        if (i > 0 || i2 > 0) {
            left = (int) (left - getResources().getDimension(R.dimen.popular_categories_scroll_offset));
        }
        if (left != this.lastScrollX) {
            this.lastScrollX = left;
            scrollTo(left, 0);
        }
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        if (isInEditMode() || this.tabTotal == 0) {
            return;
        }
        int height = getHeight();
        View childAt = this.tabsContainer.getChildAt(this.currentPosition);
        float left = childAt.getLeft();
        float right = childAt.getRight();
        if (this.currentPositionOffset > 0.0f && this.currentPosition < this.tabTotal - 1) {
            View childAt2 = this.tabsContainer.getChildAt(this.currentPosition + 1);
            float left2 = childAt2.getLeft();
            float right2 = childAt2.getRight();
            left = (this.currentPositionOffset * left2) + ((1.0f - this.currentPositionOffset) * left);
            right = (this.currentPositionOffset * right2) + ((1.0f - this.currentPositionOffset) * right);
        }
        this.rectPaint.setAntiAlias(true);
        this.rectPaint.setStyle(Paint.Style.FILL);
        this.rectPaint.setColor(ContextCompat.getColor(getContext(), R.color.bp_orange));
        float f = height;
        canvas.drawRect(left, f - getResources().getDimension(R.dimen.popular_categories_indicator_height), right, f, this.rectPaint);
        this.dividerPaint.setAntiAlias(true);
        this.dividerPaint.setStrokeWidth(getResources().getDimension(R.dimen.popular_categories_divider_width));
        this.dividerPaint.setColor(ContextCompat.getColor(getContext(), R.color.popular_categories_divider));
        for (int i = 0; i < this.tabTotal - 1; i++) {
            View childAt3 = this.tabsContainer.getChildAt(i);
            canvas.drawLine(childAt3.getRight(), getResources().getDimension(R.dimen.popular_categories_divider_padding), childAt3.getRight(), f - getResources().getDimension(R.dimen.popular_categories_divider_padding), this.dividerPaint);
        }
    }

    /* loaded from: classes.dex */
    private class PageListener implements ViewPager.OnPageChangeListener {
        private PageListener() {
        }

        @Override // android.support.v4.view.ViewPager.OnPageChangeListener
        public void onPageScrolled(int i, float f, int i2) {
            AddFeedSectionsTabStrip.this.currentPosition = i;
            AddFeedSectionsTabStrip.this.currentPositionOffset = f;
            AddFeedSectionsTabStrip.this.scrollToChild(i, (int) (f * AddFeedSectionsTabStrip.this.tabsContainer.getChildAt(i).getWidth()));
            AddFeedSectionsTabStrip.this.invalidate();
        }

        @Override // android.support.v4.view.ViewPager.OnPageChangeListener
        public void onPageScrollStateChanged(int i) {
            if (i == 0) {
                AddFeedSectionsTabStrip.this.scrollToChild(AddFeedSectionsTabStrip.this.pager.getCurrentItem(), 0);
            }
        }

        @Override // android.support.v4.view.ViewPager.OnPageChangeListener
        public void onPageSelected(int i) {
            switch (i) {
                case 0:
                    AnalyticsTracker.onViewDisplayed(10);
                    return;
                case 1:
                    AnalyticsTracker.onViewDisplayed(11);
                    return;
                case 2:
                    AnalyticsTracker.onViewDisplayed(12);
                    return;
                case 3:
                    AnalyticsTracker.onViewDisplayed(13);
                    return;
                case 4:
                    AnalyticsTracker.onViewDisplayed(14);
                    return;
                case 5:
                    AnalyticsTracker.onViewDisplayed(15);
                    return;
                default:
                    return;
            }
        }
    }
}
