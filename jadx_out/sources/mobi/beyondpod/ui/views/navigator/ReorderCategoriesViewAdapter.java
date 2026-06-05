package mobi.beyondpod.ui.views.navigator;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.TextView;
import mobi.beyondpod.R;
import mobi.beyondpod.rsscore.categories.CategoryList;
import mobi.beyondpod.rsscore.categories.FeedCategory;

/* loaded from: classes.dex */
public class ReorderCategoriesViewAdapter extends BaseAdapter {
    private Context _Context;
    private CategoryList _Items = new CategoryList();
    private LayoutInflater mInflater;

    @Override // android.widget.Adapter
    public long getItemId(int i) {
        return i;
    }

    @Override // android.widget.BaseAdapter, android.widget.Adapter
    public int getItemViewType(int i) {
        return 0;
    }

    @Override // android.widget.BaseAdapter, android.widget.Adapter
    public int getViewTypeCount() {
        return 1;
    }

    @Override // android.widget.BaseAdapter, android.widget.ListAdapter
    public boolean isEnabled(int i) {
        return true;
    }

    public ReorderCategoriesViewAdapter(Context context) {
        this._Context = context;
        this.mInflater = LayoutInflater.from(this._Context);
    }

    @Override // android.widget.Adapter
    public int getCount() {
        return this._Items.size();
    }

    @Override // android.widget.Adapter
    public Object getItem(int i) {
        if (i < getCount()) {
            return this._Items.get(i);
        }
        return null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r5v0, types: [android.view.View] */
    /* JADX WARN: Type inference failed for: r5v1 */
    /* JADX WARN: Type inference failed for: r5v2 */
    /* JADX WARN: Type inference failed for: r5v3, types: [mobi.beyondpod.ui.views.navigator.ReorderCategoriesViewAdapter$CategoryViewItem] */
    /* JADX WARN: Type inference failed for: r5v6 */
    @Override // android.widget.Adapter
    public View getView(int i, View view, ViewGroup viewGroup) {
        View view2;
        View view3;
        try {
            if (view == 0) {
                view2 = this.mInflater.inflate(R.layout.navigator_reorder_category_item, (ViewGroup) null);
                try {
                    CategoryViewItem categoryViewItem = new CategoryViewItem();
                    categoryViewItem.primaryText = (TextView) view2.findViewById(R.id.category_name);
                    categoryViewItem.colorIndicator = view2.findViewById(R.id.category_color_v);
                    view2.setTag(categoryViewItem);
                    view = categoryViewItem;
                    view2 = view2;
                } catch (Exception e) {
                    e = e;
                    e.printStackTrace();
                    view3 = view2;
                    return view3;
                }
            } else {
                view2 = view;
                view = (CategoryViewItem) view.getTag();
            }
            FeedCategory feedCategory = this._Items.get(i);
            view.primaryText.setText(feedCategory.name());
            view.colorIndicator.setVisibility(8);
            view3 = view2;
            if (feedCategory.color() != 0) {
                view.colorIndicator.setVisibility(0);
                view.colorIndicator.setBackgroundColor(feedCategory.color());
                view3 = view2;
            }
        } catch (Exception e2) {
            e = e2;
            view2 = view;
        }
        return view3;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setCategories(CategoryList categoryList) {
        this._Items.clear();
        this._Items.addAll(categoryList);
        notifyDataSetChanged();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void clearContent() {
        this._Items.clear();
        notifyDataSetChanged();
    }

    public FeedCategory getCategoryAtPosition(int i) {
        return (FeedCategory) getItem(i);
    }

    /* loaded from: classes.dex */
    private static class CategoryViewItem {
        View colorIndicator;
        TextView primaryText;

        private CategoryViewItem() {
        }
    }
}
