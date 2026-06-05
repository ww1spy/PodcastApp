package mobi.beyondpod.ui.views.myepisodesview;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import java.util.UUID;
import mobi.beyondpod.R;
import mobi.beyondpod.rsscore.helpers.CoreHelper;
import mobi.beyondpod.ui.views.base.columnlistview.SectionedListViewAdapter;

/* loaded from: classes.dex */
public class SectionMyEpisodesHeaderAdapter implements SectionedListViewAdapter.ISectionedAdapter {
    public static final UUID AdapterID = UUID.fromString("AABBCCDD-0000-0000-0000-000000000006");
    private Context _Context;
    private IMyEpisodesHeaderAdapterOwner _Owner;

    /* loaded from: classes.dex */
    public interface IMyEpisodesHeaderAdapterOwner {
        int getDividerColor();

        String getHeaderTitle();

        int getNumEpisodes();

        CoreHelper.TrackSizeInfo getTotalSize();
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

    public SectionMyEpisodesHeaderAdapter(Context context, IMyEpisodesHeaderAdapterOwner iMyEpisodesHeaderAdapterOwner) {
        this._Owner = iMyEpisodesHeaderAdapterOwner;
        this._Context = context;
    }

    @Override // mobi.beyondpod.ui.views.base.columnlistview.SectionedListViewAdapter.ISectionedAdapter
    public View getView(int i, View view, ViewGroup viewGroup) {
        if (view == null || !(view.getTag() instanceof Holder)) {
            Holder holder = new Holder();
            View inflate = View.inflate(this._Context, R.layout.section_divider_my_episodes, null);
            holder.Title = (TextView) inflate.findViewById(R.id.section_title);
            holder.SubTitle = (TextView) inflate.findViewById(R.id.section_subTitle);
            holder.SubTitle1 = (TextView) inflate.findViewById(R.id.section_subTitle1);
            holder.SectionDivider = inflate.findViewById(R.id.section_divider);
            inflate.setTag(holder);
            view = inflate;
        }
        Holder holder2 = (Holder) view.getTag();
        holder2.Title.setText(this._Owner.getHeaderTitle());
        int numEpisodes = this._Owner.getNumEpisodes();
        holder2.SubTitle.setText(numEpisodes > 0 ? this._Context.getResources().getQuantityString(R.plurals.plr_episodes, numEpisodes, Integer.valueOf(numEpisodes)) : null);
        long j = this._Owner.getTotalSize().sizeOnDisk;
        holder2.SubTitle1.setText(j > 0 ? CoreHelper.getFileLengthAsString(Long.valueOf(j)) : null);
        holder2.SectionDivider.setBackgroundColor(this._Owner.getDividerColor());
        return view;
    }

    /* loaded from: classes.dex */
    class Holder {
        View SectionDivider;
        TextView SubTitle;
        TextView SubTitle1;
        TextView Title;

        Holder() {
        }
    }

    @Override // mobi.beyondpod.ui.views.base.columnlistview.SectionedListViewAdapter.ISectionedAdapter
    public UUID getAdapterId() {
        return AdapterID;
    }
}
