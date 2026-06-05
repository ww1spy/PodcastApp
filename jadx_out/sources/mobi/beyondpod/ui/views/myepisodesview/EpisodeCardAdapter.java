package mobi.beyondpod.ui.views.myepisodesview;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.Checkable;
import java.util.ArrayList;
import java.util.List;
import java.util.UUID;
import mobi.beyondpod.R;
import mobi.beyondpod.rsscore.Track;
import mobi.beyondpod.ui.views.base.columnlistview.MultiItemRowListAdapter;
import mobi.beyondpod.ui.views.base.columnlistview.SectionedListViewAdapter;
import mobi.beyondpod.ui.views.myepisodesview.cards.EpisodeCardBase;
import mobi.beyondpod.ui.views.myepisodesview.cards.EpisodeCardFactory;

/* loaded from: classes.dex */
public class EpisodeCardAdapter extends BaseAdapter implements SectionedListViewAdapter.ISectionedAdapter, MultiItemRowListAdapter.MultiItemRowChildAdapter {
    public static final UUID AdapterID = UUID.fromString("AABBCCDD-0000-0000-0000-000000000001");
    private Context _Context;
    private ICardAdapterOwner _Owner;
    private View.OnClickListener _overflowListener = new View.OnClickListener() { // from class: mobi.beyondpod.ui.views.myepisodesview.EpisodeCardAdapter.1
        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            Track findEpisodeInParent = EpisodeCardAdapter.this.findEpisodeInParent(view);
            if (EpisodeCardAdapter.this._Owner.isMultiSelecting()) {
                EpisodeCardAdapter.this._Owner.onItemSelected(view, findEpisodeInParent);
            } else {
                if (findEpisodeInParent == null) {
                    return;
                }
                EpisodeCardAdapter.this._Owner.showCardMenu(view, findEpisodeInParent);
            }
        }
    };
    private View.OnClickListener _cardFaceListener = new View.OnClickListener() { // from class: mobi.beyondpod.ui.views.myepisodesview.EpisodeCardAdapter.2
        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            EpisodeCardAdapter.this._Owner.onItemSelected(view, (Track) view.getTag(R.id.card_episode));
        }
    };
    private View.OnLongClickListener _cardFaceLongClickListener = new View.OnLongClickListener() { // from class: mobi.beyondpod.ui.views.myepisodesview.EpisodeCardAdapter.3
        /* JADX WARN: Multi-variable type inference failed */
        @Override // android.view.View.OnLongClickListener
        public boolean onLongClick(View view) {
            if (EpisodeCardAdapter.this._Owner.isMultiSelecting()) {
                return false;
            }
            ((Checkable) view).setChecked(true);
            EpisodeCardAdapter.this._Owner.onItemLongPressed((Track) view.getTag(R.id.card_episode));
            return true;
        }
    };
    private View.OnClickListener _playPauseListener = new View.OnClickListener() { // from class: mobi.beyondpod.ui.views.myepisodesview.EpisodeCardAdapter.4
        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            Track findEpisodeInParent = EpisodeCardAdapter.this.findEpisodeInParent(view);
            if (EpisodeCardAdapter.this._Owner.isMultiSelecting()) {
                EpisodeCardAdapter.this._Owner.onItemSelected(view, findEpisodeInParent);
            } else if (findEpisodeInParent != null) {
                EpisodeCardAdapter.this._Owner.onPlayPause(findEpisodeInParent);
            }
        }
    };
    private View.OnClickListener _downloadListener = new View.OnClickListener() { // from class: mobi.beyondpod.ui.views.myepisodesview.EpisodeCardAdapter.5
        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            Track findEpisodeInParent = EpisodeCardAdapter.this.findEpisodeInParent(view);
            if (EpisodeCardAdapter.this._Owner.isMultiSelecting()) {
                EpisodeCardAdapter.this._Owner.onItemSelected(view, findEpisodeInParent);
            } else if (findEpisodeInParent != null) {
                EpisodeCardAdapter.this._Owner.onDownload(findEpisodeInParent);
            }
        }
    };
    private View.OnClickListener _playlistListener = new View.OnClickListener() { // from class: mobi.beyondpod.ui.views.myepisodesview.EpisodeCardAdapter.6
        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            Track findEpisodeInParent = EpisodeCardAdapter.this.findEpisodeInParent(view);
            if (EpisodeCardAdapter.this._Owner.isMultiSelecting()) {
                EpisodeCardAdapter.this._Owner.onItemSelected(view, findEpisodeInParent);
            } else if (findEpisodeInParent != null) {
                EpisodeCardAdapter.this._Owner.onAddRemovePlaylist(findEpisodeInParent);
            }
        }
    };
    private ArrayList<Track> mItems = new ArrayList<>();

    /* loaded from: classes.dex */
    public interface ICardAdapterOwner {
        boolean isItemSelected(Track track);

        boolean isMultiSelecting();

        void onAddRemovePlaylist(Track track);

        void onDownload(Track track);

        void onItemLongPressed(Track track);

        void onItemSelected(View view, Track track);

        void onPlayPause(Track track);

        void showCardMenu(View view, Track track);
    }

    @Override // android.widget.Adapter
    public long getItemId(int i) {
        return 0L;
    }

    public EpisodeCardAdapter(Context context, ICardAdapterOwner iCardAdapterOwner, List<Track> list) {
        this._Context = context;
        this._Owner = iCardAdapterOwner;
        this.mItems.addAll(list);
    }

    @Override // android.widget.Adapter
    public int getCount() {
        if (this.mItems == null) {
            return 0;
        }
        return this.mItems.size();
    }

    @Override // android.widget.Adapter
    public Object getItem(int i) {
        if (this.mItems == null || i < 0 || i >= this.mItems.size()) {
            return null;
        }
        return this.mItems.get(i);
    }

    @Override // android.widget.Adapter, mobi.beyondpod.ui.views.base.columnlistview.SectionedListViewAdapter.ISectionedAdapter
    public View getView(int i, View view, ViewGroup viewGroup) {
        Track track = this.mItems.get(i);
        if (view == null) {
            view = buildConvertView(viewGroup);
        }
        EpisodeCardBase episodeCardBase = (EpisodeCardBase) view.getTag();
        view.setTag(R.id.card_episode, track);
        episodeCardBase.setFaceListeners(this._cardFaceListener, this._cardFaceLongClickListener);
        episodeCardBase.buildItem(((MyEpisodesListView) this._Owner).getImageLoader(), track);
        if (this._Owner.isItemSelected(track)) {
            ((Checkable) view).setChecked(true);
        } else {
            ((Checkable) view).setChecked(false);
        }
        return view;
    }

    @Override // mobi.beyondpod.ui.views.base.columnlistview.MultiItemRowListAdapter.MultiItemRowChildAdapter
    public View buildConvertView(ViewGroup viewGroup) {
        EpisodeCardBase buildEpisodeCard = EpisodeCardFactory.buildEpisodeCard(this._Context);
        buildEpisodeCard.setButtonListeners(this._playPauseListener, this._downloadListener, this._playlistListener, this._overflowListener);
        return buildEpisodeCard.getCardRoot();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Track findEpisodeInParent(View view) {
        do {
            Object tag = view.getTag(R.id.card_episode);
            if (tag == null) {
                Object parent = view.getParent();
                view = (parent == null || !(parent instanceof View)) ? null : (View) parent;
            } else {
                return (Track) tag;
            }
        } while (view != null);
        return null;
    }

    @Override // mobi.beyondpod.ui.views.base.columnlistview.SectionedListViewAdapter.ISectionedAdapter
    public int getRowCount() {
        return getCount();
    }

    @Override // mobi.beyondpod.ui.views.base.columnlistview.SectionedListViewAdapter.ISectionedAdapter
    public UUID getAdapterId() {
        return AdapterID;
    }

    @Override // mobi.beyondpod.ui.views.base.columnlistview.SectionedListViewAdapter.ISectionedAdapter
    public int getItemCount() {
        return getCount();
    }

    @Override // mobi.beyondpod.ui.views.base.columnlistview.SectionedListViewAdapter.ISectionedAdapter
    public Object getItemAtPosition(int i) {
        return getItem(i);
    }

    @Override // mobi.beyondpod.ui.views.base.columnlistview.SectionedListViewAdapter.ISectionedAdapter
    public int getItemRow(Object obj) {
        int indexOf;
        if (obj != null && (indexOf = this.mItems.indexOf(obj)) >= 0) {
            return indexOf;
        }
        return 0;
    }

    @Override // mobi.beyondpod.ui.views.base.columnlistview.SectionedListViewAdapter.ISectionedAdapter
    public Object getFirstItemAtRow(int i) {
        return getItemAtPosition(i);
    }
}
