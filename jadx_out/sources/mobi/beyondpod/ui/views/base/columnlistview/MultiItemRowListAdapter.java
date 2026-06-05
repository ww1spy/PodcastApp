package mobi.beyondpod.ui.views.base.columnlistview;

import android.content.Context;
import android.database.DataSetObserver;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AbsListView;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.WrapperListAdapter;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.UUID;
import mobi.beyondpod.R;
import mobi.beyondpod.ui.views.base.columnlistview.SectionedListViewAdapter;

/* loaded from: classes.dex */
public class MultiItemRowListAdapter implements WrapperListAdapter, SectionedListViewAdapter.ISectionedAdapter {
    private final int _CellSpacingL;
    private final int _ItemsPerRow;
    private int _RowHPadding;
    private final AbsListView.LayoutParams _RowLayoutParams;
    private final MultiItemRowChildAdapter mAdapter;
    private final WeakReference<Context> mContextReference;
    private final LinearLayout.LayoutParams mItemLayoutParams;

    /* loaded from: classes.dex */
    public interface MultiItemRowChildAdapter extends ListAdapter {
        View buildConvertView(ViewGroup viewGroup);
    }

    public MultiItemRowListAdapter(Context context, MultiItemRowChildAdapter multiItemRowChildAdapter, int i, int i2, int i3, int i4) {
        if (i <= 0) {
            throw new IllegalArgumentException("Number of items per row must be positive");
        }
        this.mContextReference = new WeakReference<>(context);
        this.mAdapter = multiItemRowChildAdapter;
        this._ItemsPerRow = i;
        this._CellSpacingL = i2;
        this.mItemLayoutParams = new LinearLayout.LayoutParams(0, i4);
        this.mItemLayoutParams.setMargins(i2, i3, 0, 0);
        this.mItemLayoutParams.weight = 1.0f;
        this._RowLayoutParams = new AbsListView.LayoutParams(-1, -2);
        this._RowHPadding = context.getResources().getDimensionPixelSize(R.dimen.main_screen_h_margin);
    }

    @Override // android.widget.Adapter
    public boolean isEmpty() {
        return this.mAdapter == null || this.mAdapter.isEmpty();
    }

    @Override // android.widget.Adapter
    public int getCount() {
        if (this.mAdapter != null) {
            return (int) Math.ceil((1.0f * this.mAdapter.getCount()) / this._ItemsPerRow);
        }
        return 0;
    }

    @Override // android.widget.ListAdapter
    public boolean areAllItemsEnabled() {
        if (this.mAdapter != null) {
            return this.mAdapter.areAllItemsEnabled();
        }
        return true;
    }

    @Override // android.widget.ListAdapter
    public boolean isEnabled(int i) {
        if (this.mAdapter == null) {
            return true;
        }
        boolean z = false;
        for (int i2 = 0; i2 < this._ItemsPerRow; i2++) {
            int i3 = (this._ItemsPerRow * i) + i2;
            if (i3 < this.mAdapter.getCount()) {
                z |= this.mAdapter.isEnabled(i3);
            }
        }
        return z;
    }

    @Override // android.widget.Adapter
    public Object getItem(int i) {
        if (this.mAdapter == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList(this._ItemsPerRow);
        for (int i2 = 0; i2 < this._ItemsPerRow; i2++) {
            int i3 = (this._ItemsPerRow * i) + i2;
            if (i3 < this.mAdapter.getCount()) {
                arrayList.add(this.mAdapter.getItem(i3));
            }
        }
        return arrayList;
    }

    @Override // android.widget.Adapter
    public long getItemId(int i) {
        if (this.mAdapter != null) {
            return i;
        }
        return -1L;
    }

    @Override // android.widget.Adapter
    public boolean hasStableIds() {
        if (this.mAdapter != null) {
            return this.mAdapter.hasStableIds();
        }
        return false;
    }

    @Override // android.widget.Adapter, mobi.beyondpod.ui.views.base.columnlistview.SectionedListViewAdapter.ISectionedAdapter
    public View getView(int i, View view, ViewGroup viewGroup) {
        LinearLayout linearLayout;
        View buildConvertView;
        Context context = this.mContextReference.get();
        if (context == null || this.mAdapter == null) {
            return null;
        }
        if (view == null || !(view instanceof LinearLayout) || !view.getTag().equals(Integer.valueOf(this._ItemsPerRow))) {
            linearLayout = new LinearLayout(context);
            linearLayout.setPadding(this._RowHPadding, 0, this._CellSpacingL + this._RowHPadding, 0);
            linearLayout.setLayoutParams(this._RowLayoutParams);
            linearLayout.setOrientation(0);
            linearLayout.setBaselineAligned(false);
            linearLayout.setTag(Integer.valueOf(this._ItemsPerRow));
        } else {
            linearLayout = (LinearLayout) view;
        }
        int i2 = 0;
        while (i2 < this._ItemsPerRow) {
            View childAt = i2 < linearLayout.getChildCount() ? linearLayout.getChildAt(i2) : null;
            int i3 = (this._ItemsPerRow * i) + i2;
            if (i3 < this.mAdapter.getCount()) {
                buildConvertView = this.mAdapter.getView(i3, childAt, linearLayout);
                buildConvertView.setVisibility(0);
            } else {
                buildConvertView = childAt == null ? this.mAdapter.buildConvertView(linearLayout) : childAt;
                buildConvertView.setVisibility(4);
            }
            if (buildConvertView != childAt || i2 >= linearLayout.getChildCount()) {
                buildConvertView.setLayoutParams(this.mItemLayoutParams);
                linearLayout.addView(buildConvertView, i2);
            }
            i2++;
        }
        return linearLayout;
    }

    @Override // android.widget.Adapter
    public int getItemViewType(int i) {
        if (this.mAdapter != null) {
            return this.mAdapter.getItemViewType(i);
        }
        return -1;
    }

    @Override // android.widget.Adapter
    public int getViewTypeCount() {
        if (this.mAdapter != null) {
            return this.mAdapter.getViewTypeCount();
        }
        return 1;
    }

    @Override // android.widget.Adapter
    public void registerDataSetObserver(DataSetObserver dataSetObserver) {
        if (this.mAdapter != null) {
            this.mAdapter.registerDataSetObserver(dataSetObserver);
        }
    }

    @Override // android.widget.Adapter
    public void unregisterDataSetObserver(DataSetObserver dataSetObserver) {
        if (this.mAdapter != null) {
            this.mAdapter.unregisterDataSetObserver(dataSetObserver);
        }
    }

    @Override // android.widget.WrapperListAdapter
    public ListAdapter getWrappedAdapter() {
        return this.mAdapter;
    }

    @Override // mobi.beyondpod.ui.views.base.columnlistview.SectionedListViewAdapter.ISectionedAdapter
    public int getRowCount() {
        return getCount();
    }

    @Override // mobi.beyondpod.ui.views.base.columnlistview.SectionedListViewAdapter.ISectionedAdapter
    public UUID getAdapterId() {
        return ((SectionedListViewAdapter.ISectionedAdapter) this.mAdapter).getAdapterId();
    }

    @Override // mobi.beyondpod.ui.views.base.columnlistview.SectionedListViewAdapter.ISectionedAdapter
    public int getItemCount() {
        if (this.mAdapter != null) {
            return this.mAdapter.getCount();
        }
        return 0;
    }

    @Override // mobi.beyondpod.ui.views.base.columnlistview.SectionedListViewAdapter.ISectionedAdapter
    public Object getFirstItemAtRow(int i) {
        return this.mAdapter.getItem(i * this._ItemsPerRow);
    }

    @Override // mobi.beyondpod.ui.views.base.columnlistview.SectionedListViewAdapter.ISectionedAdapter
    public Object getItemAtPosition(int i) {
        if (this.mAdapter != null) {
            return this.mAdapter.getItem(i);
        }
        return null;
    }

    @Override // mobi.beyondpod.ui.views.base.columnlistview.SectionedListViewAdapter.ISectionedAdapter
    public int getItemRow(Object obj) {
        if (obj == null) {
            return 0;
        }
        for (int i = 0; i != this.mAdapter.getCount(); i++) {
            if (obj == this.mAdapter.getItem(i)) {
                return (int) Math.ceil((1.0f * i) / this._ItemsPerRow);
            }
        }
        return 0;
    }
}
