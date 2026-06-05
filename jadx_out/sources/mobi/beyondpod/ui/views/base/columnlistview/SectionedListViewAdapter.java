package mobi.beyondpod.ui.views.base.columnlistview;

import android.util.SparseArray;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.UUID;
import mobi.beyondpod.rsscore.helpers.StringUtils;

/* loaded from: classes.dex */
public class SectionedListViewAdapter extends BaseAdapter {
    private List<UUID> _AdapterIDs;
    int _NumRows;
    private ArrayList<ISectionedAdapter> _Sections = new ArrayList<>();
    SparseArray<ISectionedAdapter> _RowSectionMap = new SparseArray<>();

    /* loaded from: classes.dex */
    public interface ISectionedAdapter {
        UUID getAdapterId();

        Object getFirstItemAtRow(int i);

        Object getItemAtPosition(int i);

        int getItemCount();

        int getItemRow(Object obj);

        int getRowCount();

        View getView(int i, View view, ViewGroup viewGroup);
    }

    @Override // android.widget.BaseAdapter, android.widget.ListAdapter
    public boolean areAllItemsEnabled() {
        return false;
    }

    @Override // android.widget.Adapter
    public Object getItem(int i) {
        return null;
    }

    @Override // android.widget.Adapter
    public long getItemId(int i) {
        return 0L;
    }

    @Override // android.widget.BaseAdapter, android.widget.ListAdapter
    public boolean isEnabled(int i) {
        return false;
    }

    public SectionedListViewAdapter(UUID[] uuidArr) {
        this._AdapterIDs = new ArrayList();
        this._AdapterIDs = Arrays.asList(uuidArr);
    }

    public void setSections(List<ISectionedAdapter> list) {
        this._Sections.clear();
        if (list != null) {
            this._Sections.addAll(list);
        }
        updateRowMap();
        notifyDataSetChanged();
    }

    public ISectionedAdapter getSection(UUID uuid) {
        Iterator<ISectionedAdapter> it = this._Sections.iterator();
        while (it.hasNext()) {
            ISectionedAdapter next = it.next();
            if (next.getAdapterId().equals(uuid)) {
                return next;
            }
        }
        return null;
    }

    @Override // android.widget.BaseAdapter, android.widget.Adapter
    public int getItemViewType(int i) {
        return this._AdapterIDs.indexOf(this._RowSectionMap.get(getAdapterStartForPos(i)).getAdapterId());
    }

    @Override // android.widget.BaseAdapter, android.widget.Adapter
    public int getViewTypeCount() {
        return this._AdapterIDs.size();
    }

    @Override // android.widget.Adapter
    public int getCount() {
        return this._NumRows;
    }

    @Override // android.widget.BaseAdapter
    public void notifyDataSetChanged() {
        updateRowMap();
        super.notifyDataSetChanged();
    }

    @Override // android.widget.Adapter
    public View getView(int i, View view, ViewGroup viewGroup) {
        int adapterStartForPos = getAdapterStartForPos(i);
        return this._RowSectionMap.get(adapterStartForPos).getView(i - adapterStartForPos, view, viewGroup);
    }

    private int getAdapterStartForPos(int i) {
        int keyAt;
        int i2 = 0;
        int i3 = 0;
        while (i2 < this._RowSectionMap.size() && (keyAt = this._RowSectionMap.keyAt(i2)) <= i) {
            i2++;
            i3 = keyAt;
        }
        return i3;
    }

    private int getStartPositionForAdapter(ISectionedAdapter iSectionedAdapter) {
        for (int i = 0; i < this._RowSectionMap.size(); i++) {
            if (iSectionedAdapter == this._RowSectionMap.valueAt(i)) {
                return this._RowSectionMap.keyAt(i);
            }
        }
        return -1;
    }

    private void updateRowMap() {
        this._RowSectionMap.clear();
        int i = 0;
        this._NumRows = 0;
        Iterator<ISectionedAdapter> it = this._Sections.iterator();
        while (it.hasNext()) {
            ISectionedAdapter next = it.next();
            this._RowSectionMap.put(i, next);
            i += next.getRowCount();
            this._NumRows += next.getRowCount();
        }
    }

    public List<Object> getAllSectionItems() {
        ArrayList arrayList = new ArrayList();
        Iterator<ISectionedAdapter> it = this._Sections.iterator();
        while (it.hasNext()) {
            ISectionedAdapter next = it.next();
            for (int i = 0; i != next.getItemCount(); i++) {
                Object itemAtPosition = next.getItemAtPosition(i);
                if (itemAtPosition != null) {
                    arrayList.add(itemAtPosition);
                }
            }
        }
        return arrayList;
    }

    public int getAllSectionItemsCount() {
        return getAllSectionItems().size();
    }

    /* loaded from: classes.dex */
    public static class ItemLocation {
        public int sectionIndex = 0;
        public Object item = null;

        /* loaded from: classes.dex */
        public interface IObjectMapper {
            Object mapFromString(String str);

            String mapToString(Object obj);
        }

        public String serialize(IObjectMapper iObjectMapper) {
            Object[] objArr = new Object[2];
            objArr[0] = Integer.valueOf(this.sectionIndex);
            objArr[1] = this.item == null ? "" : iObjectMapper.mapToString(this.item);
            return String.format("%03d|%s", objArr);
        }

        public static ItemLocation deserialize(String str, IObjectMapper iObjectMapper) {
            ItemLocation itemLocation = new ItemLocation();
            if (StringUtils.isNullOrEmpty(str)) {
                return itemLocation;
            }
            if (str.length() > 3) {
                itemLocation.sectionIndex = StringUtils.safeParseInt(str.substring(0, 3), 0);
            }
            if (str.length() > 4) {
                itemLocation.item = iObjectMapper.mapFromString(str.substring(4));
            }
            return itemLocation;
        }

        public String toString() {
            return String.format("Section: %s, item: %s", Integer.valueOf(this.sectionIndex), this.item);
        }
    }

    public ItemLocation getItemIdForPosition(int i) {
        int adapterStartForPos;
        ISectionedAdapter iSectionedAdapter;
        ItemLocation itemLocation = new ItemLocation();
        if (i >= 0 && (iSectionedAdapter = this._RowSectionMap.get((adapterStartForPos = getAdapterStartForPos(i)))) != null) {
            itemLocation.sectionIndex = this._Sections.indexOf(iSectionedAdapter);
            itemLocation.item = iSectionedAdapter.getFirstItemAtRow(i - adapterStartForPos);
        }
        return itemLocation;
    }

    public int getPositionForItemID(ItemLocation itemLocation) {
        ISectionedAdapter iSectionedAdapter;
        if (itemLocation != null && itemLocation.sectionIndex >= 0 && itemLocation.sectionIndex < this._Sections.size() && (iSectionedAdapter = this._Sections.get(itemLocation.sectionIndex)) != null) {
            return getStartPositionForAdapter(iSectionedAdapter) + iSectionedAdapter.getItemRow(itemLocation.item);
        }
        return 0;
    }
}
