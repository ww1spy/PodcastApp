package mobi.beyondpod.ui.views.base;

import android.content.Context;
import android.graphics.Rect;
import android.support.v7.widget.RecyclerView;
import android.util.AttributeSet;
import android.view.View;

/* loaded from: classes.dex */
public class BPRecyclerView extends RecyclerView {
    protected View emptyView;
    final RecyclerView.AdapterDataObserver observer;

    public BPRecyclerView(Context context) {
        super(context);
        this.emptyView = null;
        this.observer = new RecyclerView.AdapterDataObserver() { // from class: mobi.beyondpod.ui.views.base.BPRecyclerView.1
            @Override // android.support.v7.widget.RecyclerView.AdapterDataObserver
            public void onChanged() {
                super.onChanged();
                BPRecyclerView.this.checkIfEmpty();
            }
        };
    }

    public BPRecyclerView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.emptyView = null;
        this.observer = new RecyclerView.AdapterDataObserver() { // from class: mobi.beyondpod.ui.views.base.BPRecyclerView.1
            @Override // android.support.v7.widget.RecyclerView.AdapterDataObserver
            public void onChanged() {
                super.onChanged();
                BPRecyclerView.this.checkIfEmpty();
            }
        };
    }

    public BPRecyclerView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.emptyView = null;
        this.observer = new RecyclerView.AdapterDataObserver() { // from class: mobi.beyondpod.ui.views.base.BPRecyclerView.1
            @Override // android.support.v7.widget.RecyclerView.AdapterDataObserver
            public void onChanged() {
                super.onChanged();
                BPRecyclerView.this.checkIfEmpty();
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void checkIfEmpty() {
        if (this.emptyView == null || getAdapter() == null) {
            return;
        }
        this.emptyView.setVisibility(getAdapter().getItemCount() > 0 ? 8 : 0);
    }

    @Override // android.support.v7.widget.RecyclerView
    public void setAdapter(RecyclerView.Adapter adapter) {
        RecyclerView.Adapter adapter2 = getAdapter();
        if (adapter2 != null) {
            adapter2.unregisterAdapterDataObserver(this.observer);
        }
        super.setAdapter(adapter);
        if (adapter != null) {
            adapter.registerAdapterDataObserver(this.observer);
        }
    }

    public void setEmptyView(View view) {
        this.emptyView = view;
        checkIfEmpty();
    }

    /* loaded from: classes.dex */
    public static class ItemSpacerDecoration extends RecyclerView.ItemDecoration {
        private int _hSpace;
        private int _vSpace;

        public ItemSpacerDecoration(int i, int i2) {
            this._hSpace = i;
            this._vSpace = i2;
        }

        @Override // android.support.v7.widget.RecyclerView.ItemDecoration
        public void getItemOffsets(Rect rect, View view, RecyclerView recyclerView, RecyclerView.State state) {
            rect.left = this._hSpace;
            rect.right = this._hSpace;
            rect.bottom = this._vSpace;
        }
    }
}
