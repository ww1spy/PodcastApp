package mobi.beyondpod.ui.views.player;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.TextView;
import java.util.ArrayList;
import mobi.beyondpod.R;
import mobi.beyondpod.services.player.smartplay.SmartPlaylist;
import mobi.beyondpod.services.player.smartplay.SmartPlaylistManager;

/* loaded from: classes.dex */
public class SmartPlaylistViewAdapter extends BaseAdapter {
    private LayoutInflater _Inflater;
    private ArrayList<SmartPlaylist> _Items = new ArrayList<>();
    private SmartPlayListView _Owner;

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

    public SmartPlaylistViewAdapter(Context context, SmartPlayListView smartPlayListView) {
        this._Inflater = LayoutInflater.from(context);
        this._Owner = smartPlayListView;
    }

    @Override // android.widget.Adapter
    public int getCount() {
        return this._Items.size();
    }

    @Override // android.widget.Adapter
    public Object getItem(int i) {
        return getItemAt(i);
    }

    @Override // android.widget.Adapter
    public View getView(int i, View view, ViewGroup viewGroup) {
        View view2;
        PodcastsViewItem podcastsViewItem;
        SmartPlaylist itemAt = getItemAt(i);
        if (itemAt == null) {
            return view;
        }
        try {
            if (itemAt != null) {
                if (view == null) {
                    view2 = this._Inflater.inflate(R.layout.smart_playlist_item, (ViewGroup) null);
                    try {
                        podcastsViewItem = new PodcastsViewItem();
                        podcastsViewItem.primaryText = (TextView) view2.findViewById(R.id.playlist_title);
                        podcastsViewItem.overflow = (ImageView) view2.findViewById(R.id.playlist_overflow);
                        podcastsViewItem.overflow.setOnClickListener(new View.OnClickListener() { // from class: mobi.beyondpod.ui.views.player.SmartPlaylistViewAdapter.1
                            @Override // android.view.View.OnClickListener
                            public void onClick(View view3) {
                                SmartPlaylist smartPlaylist = (SmartPlaylist) view3.getTag();
                                if (smartPlaylist == null) {
                                    return;
                                }
                                SmartPlaylistViewAdapter.this._Owner.openPlaylistOverflow(view3, smartPlaylist);
                            }
                        });
                        view2.setTag(podcastsViewItem);
                    } catch (Exception e) {
                        e = e;
                        e.printStackTrace();
                        return view2;
                    }
                } else {
                    view2 = view;
                    podcastsViewItem = (PodcastsViewItem) view.getTag();
                }
                SmartPlaylist primarySmartPlay = SmartPlaylistManager.primarySmartPlay();
                podcastsViewItem.primaryText.setText(itemAt.name());
                podcastsViewItem.overflow.setTag(itemAt);
                podcastsViewItem.primaryText.setCompoundDrawablesWithIntrinsicBounds(0, 0, (getCount() <= 1 || primarySmartPlay != itemAt) ? 0 : R.drawable.ic_marker_heart, 0);
                return view2;
            }
            return this._Inflater.inflate(R.layout.playlist_empty, (ViewGroup) null);
        } catch (Exception e2) {
            e = e2;
            view2 = view;
        }
    }

    public SmartPlaylist getItemAt(int i) {
        if (i >= 0 && i < this._Items.size()) {
            return this._Items.get(i);
        }
        if (this._Items.size() > 0) {
            return this._Items.get(0);
        }
        return null;
    }

    public void clear() {
        this._Items.clear();
    }

    public void refresh() {
        notifyDataSetChanged();
    }

    public void reloadPlaylists() {
        this._Items.clear();
        this._Items.addAll(SmartPlaylistManager.getPlaylistsForDiaplay());
        notifyDataSetChanged();
    }

    /* loaded from: classes.dex */
    private static class PodcastsViewItem {
        ImageView overflow;
        TextView primaryText;

        private PodcastsViewItem() {
        }
    }
}
