package com.mobeta.android.dslv;

import android.graphics.Bitmap;
import android.graphics.Point;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.ListView;
import com.mobeta.android.dslv.DragSortListView;

/* loaded from: classes.dex */
public class SimpleFloatViewManager implements DragSortListView.FloatViewManager {
    private int mFloatBGColor = -16777216;
    private Bitmap mFloatBitmap;
    private ImageView mImageView;
    private ListView mListView;

    @Override // com.mobeta.android.dslv.DragSortListView.FloatViewManager
    public void onDragFloatView(View view, Point point, Point point2) {
    }

    public SimpleFloatViewManager(ListView listView) {
        this.mListView = listView;
    }

    public void setBackgroundColor(int i) {
        this.mFloatBGColor = i;
    }

    @Override // com.mobeta.android.dslv.DragSortListView.FloatViewManager
    public View onCreateFloatView(int i) {
        View childAt = this.mListView.getChildAt((i + this.mListView.getHeaderViewsCount()) - this.mListView.getFirstVisiblePosition());
        if (childAt == null) {
            return null;
        }
        childAt.setPressed(false);
        try {
            childAt.setDrawingCacheEnabled(true);
            this.mFloatBitmap = Bitmap.createBitmap(childAt.getDrawingCache());
            childAt.setDrawingCacheEnabled(false);
            if (this.mImageView == null) {
                this.mImageView = new ImageView(this.mListView.getContext());
            }
            this.mImageView.setBackgroundColor(this.mFloatBGColor);
            this.mImageView.setPadding(0, 0, 0, 0);
            this.mImageView.setImageBitmap(this.mFloatBitmap);
            this.mImageView.setLayoutParams(new ViewGroup.LayoutParams(childAt.getWidth(), childAt.getHeight()));
            return this.mImageView;
        } catch (Throwable th) {
            childAt.setDrawingCacheEnabled(false);
            throw th;
        }
    }

    @Override // com.mobeta.android.dslv.DragSortListView.FloatViewManager
    public void onDestroyFloatView(View view) {
        ((ImageView) view).setImageDrawable(null);
        this.mFloatBitmap.recycle();
        this.mFloatBitmap = null;
    }
}
