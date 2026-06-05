package mobi.beyondpod.ui.views.onboarding.startup;

import android.content.Context;
import android.graphics.Color;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.TextView;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import mobi.beyondpod.R;

/* loaded from: classes.dex */
public class SampleContentAdapter extends BaseAdapter {
    public static final int MAX_SELECTED_CATEGORIES = 15;
    Context _Context;
    List<SampleContent> _SampleContent = new ArrayList(16);

    @Override // android.widget.Adapter
    public final long getItemId(int i) {
        return i;
    }

    public SampleContentAdapter(Context context) {
        this._Context = context;
        String[] stringArray = context.getResources().getStringArray(R.array.sample_content_category_names);
        String[] stringArray2 = context.getResources().getStringArray(R.array.sample_content_category_ids);
        String[] stringArray3 = context.getResources().getStringArray(R.array.sample_content_category_colors);
        for (int i = 0; i != stringArray.length; i++) {
            this._SampleContent.add(new SampleContent(stringArray2[i], stringArray[i], stringArray3[i]));
        }
    }

    @Override // android.widget.Adapter
    public View getView(int i, View view, ViewGroup viewGroup) {
        SampleContentHolder sampleContentHolder;
        if (view == null) {
            view = LayoutInflater.from(this._Context).inflate(R.layout.first_run_sample_content_grid_item, (ViewGroup) null);
            sampleContentHolder = new SampleContentHolder();
            sampleContentHolder.background = view;
            sampleContentHolder.checked = view.findViewById(R.id.checkMark);
            sampleContentHolder.categoryName = (TextView) view.findViewById(R.id.categoryTitle);
            view.setTag(sampleContentHolder);
        } else {
            sampleContentHolder = (SampleContentHolder) view.getTag();
        }
        SampleContent itemAt = getItemAt(i);
        sampleContentHolder.categoryName.setText(itemAt.name);
        sampleContentHolder.background.setBackgroundColor(itemAt.categoryColor);
        sampleContentHolder.checked.setVisibility(itemAt.isChecked ? 0 : 4);
        return view;
    }

    @Override // android.widget.Adapter
    public final int getCount() {
        return this._SampleContent.size();
    }

    @Override // android.widget.Adapter
    public Object getItem(int i) {
        return getItemAt(i);
    }

    public final SampleContent getItemAt(int i) {
        return this._SampleContent.get(i);
    }

    public void toggleItem(int i) {
        SampleContent itemAt = getItemAt(i);
        if (!itemAt.isChecked) {
            itemAt.isChecked = true;
            if (getCheckedItemsCount() > 15) {
                uncheckOverflowItemFarthestFromItem(i);
            }
        } else {
            itemAt.isChecked = false;
        }
        notifyDataSetChanged();
    }

    public int getCheckedItemsCount() {
        Iterator<SampleContent> it = this._SampleContent.iterator();
        int i = 0;
        while (it.hasNext()) {
            if (it.next().isChecked) {
                i++;
            }
        }
        return i;
    }

    public List<SampleContent> getCheckedItems() {
        ArrayList arrayList = new ArrayList(16);
        for (SampleContent sampleContent : this._SampleContent) {
            if (sampleContent.isChecked) {
                arrayList.add(sampleContent);
            }
        }
        return arrayList;
    }

    private void uncheckOverflowItemFarthestFromItem(int i) {
        int integer = this._Context.getResources().getInteger(R.integer.first_run_sample_category_grid_num_columns);
        int i2 = i % integer;
        int i3 = i / integer;
        int i4 = 0;
        int i5 = 0;
        for (SampleContent sampleContent : this._SampleContent) {
            if (sampleContent.isChecked) {
                int indexOf = this._SampleContent.indexOf(sampleContent);
                int abs = Math.abs(i3 - (indexOf / integer)) + Math.abs(i2 - (indexOf % integer));
                if (abs > i5) {
                    i4 = indexOf;
                    i5 = abs;
                }
            }
        }
        getItemAt(i4).isChecked = false;
    }

    /* loaded from: classes.dex */
    private static class SampleContentHolder {
        View background;
        TextView categoryName;
        View checked;

        private SampleContentHolder() {
        }
    }

    /* loaded from: classes.dex */
    public static class SampleContent {
        public int categoryColor;
        public String categoryId;
        public boolean isChecked = false;
        public String name;

        public SampleContent(String str, String str2, String str3) {
            this.categoryId = str;
            this.name = str2;
            this.categoryColor = Color.parseColor(str3);
        }
    }
}
