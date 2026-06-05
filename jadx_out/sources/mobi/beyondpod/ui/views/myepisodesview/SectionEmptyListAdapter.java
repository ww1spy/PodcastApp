package mobi.beyondpod.ui.views.myepisodesview;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import java.util.UUID;
import mobi.beyondpod.R;
import mobi.beyondpod.ui.views.base.columnlistview.SectionedListViewAdapter;

/* loaded from: classes.dex */
public class SectionEmptyListAdapter implements SectionedListViewAdapter.ISectionedAdapter {
    public static final UUID AdapterID = UUID.fromString("AABBCCDD-0000-0000-0000-000000000003");
    private String _ActionText;
    private Context _Context;
    private String _EmptyText;
    private IEpmtyListAdapterOwner _Owner;

    /* loaded from: classes.dex */
    public interface IEpmtyListAdapterOwner {
        void onEmptyViewSelected();
    }

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

    public SectionEmptyListAdapter(Context context, IEpmtyListAdapterOwner iEpmtyListAdapterOwner, String str, String str2) {
        this._Context = context;
        this._EmptyText = str;
        this._ActionText = str2;
        this._Owner = iEpmtyListAdapterOwner;
    }

    @Override // mobi.beyondpod.ui.views.base.columnlistview.SectionedListViewAdapter.ISectionedAdapter
    public View getView(int i, View view, ViewGroup viewGroup) {
        if (view == null) {
            view = View.inflate(this._Context, R.layout.section_divider_list_empty, null);
        }
        ((TextView) view.findViewById(R.id.empty_text)).setText(this._EmptyText);
        ((TextView) view.findViewById(R.id.action_text)).setText(this._ActionText);
        View findViewById = view.findViewById(R.id.section_group);
        if (this._Owner != null) {
            findViewById.setOnClickListener(new View.OnClickListener() { // from class: mobi.beyondpod.ui.views.myepisodesview.SectionEmptyListAdapter.1
                @Override // android.view.View.OnClickListener
                public void onClick(View view2) {
                    SectionEmptyListAdapter.this._Owner.onEmptyViewSelected();
                }
            });
        }
        return view;
    }

    @Override // mobi.beyondpod.ui.views.base.columnlistview.SectionedListViewAdapter.ISectionedAdapter
    public UUID getAdapterId() {
        return AdapterID;
    }
}
