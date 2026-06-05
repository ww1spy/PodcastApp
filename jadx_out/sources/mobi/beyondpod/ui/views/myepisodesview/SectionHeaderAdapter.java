package mobi.beyondpod.ui.views.myepisodesview;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import java.util.UUID;
import mobi.beyondpod.R;
import mobi.beyondpod.ui.views.base.columnlistview.SectionedListViewAdapter;

/* loaded from: classes.dex */
public class SectionHeaderAdapter implements SectionedListViewAdapter.ISectionedAdapter {
    public static final UUID AdapterID = UUID.fromString("AABBCCDD-0000-0000-0000-000000000002");
    private Context _Context;
    private String _Title;

    @Override // mobi.beyondpod.ui.views.base.columnlistview.SectionedListViewAdapter.ISectionedAdapter
    public Object getFirstItemAtRow(int i) {
        return null;
    }

    @Override // mobi.beyondpod.ui.views.base.columnlistview.SectionedListViewAdapter.ISectionedAdapter
    public Object getItemAtPosition(int i) {
        return null;
    }

    @Override // mobi.beyondpod.ui.views.base.columnlistview.SectionedListViewAdapter.ISectionedAdapter
    public int getItemCount() {
        return 0;
    }

    @Override // mobi.beyondpod.ui.views.base.columnlistview.SectionedListViewAdapter.ISectionedAdapter
    public int getItemRow(Object obj) {
        return 0;
    }

    @Override // mobi.beyondpod.ui.views.base.columnlistview.SectionedListViewAdapter.ISectionedAdapter
    public int getRowCount() {
        return 1;
    }

    public SectionHeaderAdapter(Context context, String str) {
        this._Context = context;
        this._Title = str;
    }

    @Override // mobi.beyondpod.ui.views.base.columnlistview.SectionedListViewAdapter.ISectionedAdapter
    public View getView(int i, View view, ViewGroup viewGroup) {
        if (view == null) {
            Holder holder = new Holder();
            view = View.inflate(this._Context, R.layout.section_divider_episode, null);
            holder.Title = (TextView) view.findViewById(R.id.section_name);
            view.setTag(holder);
        }
        ((Holder) view.getTag()).Title.setText(this._Title);
        return view;
    }

    /* loaded from: classes.dex */
    class Holder {
        TextView Title;

        Holder() {
        }
    }

    @Override // mobi.beyondpod.ui.views.base.columnlistview.SectionedListViewAdapter.ISectionedAdapter
    public UUID getAdapterId() {
        return AdapterID;
    }
}
