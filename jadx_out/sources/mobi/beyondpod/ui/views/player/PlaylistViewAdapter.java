package mobi.beyondpod.ui.views.player;

import android.content.Context;
import android.support.v4.content.ContextCompat;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.TextView;
import java.util.ArrayList;
import java.util.Formatter;
import java.util.Iterator;
import java.util.Locale;
import mobi.beyondpod.BeyondPodApplication;
import mobi.beyondpod.R;
import mobi.beyondpod.rsscore.Configuration;
import mobi.beyondpod.rsscore.Track;
import mobi.beyondpod.rsscore.TrackList;
import mobi.beyondpod.rsscore.helpers.CoreHelper;
import mobi.beyondpod.rsscore.helpers.DateTime;
import mobi.beyondpod.rsscore.helpers.StringUtils;
import mobi.beyondpod.ui.core.volley.FadingNetworkImageViewTrack;
import mobi.beyondpod.ui.views.base.ProgressImageView;
import mobi.beyondpod.ui.views.base.UIUtils;

/* loaded from: classes.dex */
public class PlaylistViewAdapter extends BaseAdapter {
    private int _ImageHeight;
    private int _ImageWidth;
    private LayoutInflater _Inflater;
    private ArrayList<ListDataItem> _Items = new ArrayList<>();
    private PlaylistListView _Owner;
    private static StringBuilder sInfoTextStringBuilder = new StringBuilder();
    private static Formatter sInfoTextFormatter = new Formatter(sInfoTextStringBuilder, Locale.getDefault());

    @Override // android.widget.Adapter
    public long getItemId(int i) {
        return i;
    }

    @Override // android.widget.BaseAdapter, android.widget.Adapter
    public int getViewTypeCount() {
        return 2;
    }

    public PlaylistViewAdapter(Context context, PlaylistListView playlistListView) {
        this._Inflater = LayoutInflater.from(context);
        this._Owner = playlistListView;
        this._ImageWidth = this._Owner.getContext().getResources().getDimensionPixelSize(R.dimen.playlist_episode_image_width);
        this._ImageHeight = this._Owner.getContext().getResources().getDimensionPixelSize(R.dimen.playlist_episode_image_height);
    }

    @Override // android.widget.Adapter
    public int getCount() {
        return this._Items.size();
    }

    @Override // android.widget.Adapter
    public Object getItem(int i) {
        return getItemAt(i);
    }

    @Override // android.widget.BaseAdapter, android.widget.ListAdapter
    public boolean isEnabled(int i) {
        ListDataItem itemAt = getItemAt(i);
        return (itemAt == null || itemAt.track == null) ? false : true;
    }

    @Override // android.widget.BaseAdapter, android.widget.Adapter
    public int getItemViewType(int i) {
        ListDataItem itemAt = getItemAt(i);
        if (itemAt == null) {
            return -1;
        }
        if (itemAt.track == null && itemAt.name == null) {
            return -1;
        }
        return itemAt.track == null ? 0 : 1;
    }

    @Override // android.widget.Adapter
    public View getView(int i, View view, ViewGroup viewGroup) {
        View view2;
        PodcastsViewItem podcastsViewItem;
        ListDataItem itemAt = getItemAt(i);
        if (itemAt == null) {
            return view;
        }
        try {
            if (itemAt.track != null) {
                if (view == null) {
                    view2 = this._Inflater.inflate(R.layout.playlist_episode_item, (ViewGroup) null);
                    try {
                        podcastsViewItem = new PodcastsViewItem();
                        podcastsViewItem.primaryText = (TextView) view2.findViewById(R.id.playlist_title);
                        podcastsViewItem.duration = (TextView) view2.findViewById(R.id.playlist_duration);
                        podcastsViewItem.primaryImage = (ProgressImageView) view2.findViewById(R.id.playlist_image);
                        podcastsViewItem.dragDropHandle = view2.findViewById(R.id.playlist_dragdrop_handle);
                        podcastsViewItem.primaryImage.setFadeInImage(false);
                        podcastsViewItem.primaryImage.setMaxImageSize(this._ImageWidth, this._ImageHeight);
                        podcastsViewItem.overflow = (ImageView) view2.findViewById(R.id.playlist_overflow);
                        podcastsViewItem.overflow.setOnClickListener(new View.OnClickListener() { // from class: mobi.beyondpod.ui.views.player.PlaylistViewAdapter.1
                            @Override // android.view.View.OnClickListener
                            public void onClick(View view3) {
                                Track track = (Track) view3.getTag();
                                if (track == null) {
                                    return;
                                }
                                PlaylistViewAdapter.this._Owner.openTrackOverflow(view3, track);
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
                buildViewItem(podcastsViewItem, itemAt.track, viewGroup);
                return view2;
            }
            return this._Inflater.inflate(R.layout.playlist_empty, (ViewGroup) null);
        } catch (Exception e2) {
            e = e2;
            view2 = view;
        }
    }

    private ListDataItem getItemAt(int i) {
        if (i >= 0 && i < this._Items.size()) {
            return this._Items.get(i);
        }
        if (this._Items.size() > 0) {
            return this._Items.get(0);
        }
        return null;
    }

    private void buildViewItem(PodcastsViewItem podcastsViewItem, Track track, ViewGroup viewGroup) {
        podcastsViewItem.primaryText.setText(track.displayName());
        assignTrackPrimaryImage(podcastsViewItem, track);
        String formatEpisodeTimeAsRemaining = UIUtils.formatEpisodeTimeAsRemaining(this._Owner.getContext(), track);
        if (Configuration.allowHidingRead()) {
            String formatDateTimeToday = DateTime.formatDateTimeToday(track.getLastModifiedDate());
            if (StringUtils.isNullOrEmpty(formatEpisodeTimeAsRemaining)) {
                podcastsViewItem.duration.setText(formatDateTimeToday);
            } else {
                sInfoTextStringBuilder.setLength(0);
                podcastsViewItem.duration.setText(sInfoTextFormatter.format("%s • %s", formatDateTimeToday, formatEpisodeTimeAsRemaining).toString());
            }
        } else {
            podcastsViewItem.duration.setText(formatEpisodeTimeAsRemaining);
        }
        podcastsViewItem.overflow.setTag(track);
        podcastsViewItem.overflow.setVisibility(this._Owner.isMultiSelecting() ? 4 : 0);
        podcastsViewItem.dragDropHandle.setVisibility(this._Owner.isMultiSelecting() ? 4 : 0);
        podcastsViewItem.primaryText.setTextColor(track.isPlayed() ? ContextCompat.getColor(this._Owner.getContext(), R.color.episode_card_playlist_played_title_color) : ContextCompat.getColor(this._Owner.getContext(), R.color.episode_card_playlist_title_color));
    }

    private void assignTrackPrimaryImage(PodcastsViewItem podcastsViewItem, Track track) {
        podcastsViewItem.primaryImage.setErrorImageResId(FadingNetworkImageViewTrack.getDefaultImage(track.contentType()));
        podcastsViewItem.primaryImage.setProgress((int) Math.ceil(track.playedAsFraction() * 100.0f));
        if (track.isFullyDownloaded()) {
            podcastsViewItem.primaryImage.setTrack(track, this._Owner.getImageLoader());
        } else {
            podcastsViewItem.primaryImage.setFeed(track.getParentFeed(), this._Owner.getImageLoader());
        }
        int currentPlayState = track.getCurrentPlayState();
        int i = track == BeyondPodApplication.getInstance().playList().currentTrack() ? currentPlayState == 1 ? R.drawable.ic_marker_play : (currentPlayState == 3 || currentPlayState == 6) ? R.drawable.ic_marker_preparing : R.drawable.ic_marker_pause : 0;
        boolean z = !track.exists();
        boolean locked = track.locked();
        podcastsViewItem.duration.setCompoundDrawablesWithIntrinsicBounds(i, 0, (locked && z) ? R.drawable.ic_marker_stream_favorite : track.getDownloadStatus() == 4 ? R.drawable.ic_marker_warning : locked ? R.drawable.ic_marker_heart : z ? R.drawable.ic_marker_stream : 0, 0);
    }

    public void clear() {
        this._Items.clear();
    }

    public Track getTrackAt(int i) {
        Object item = getItem(i);
        if (item != null) {
            return ((ListDataItem) item).track;
        }
        return null;
    }

    public void refresh() {
        notifyDataSetChanged();
    }

    public void reloadTracks() {
        float f;
        this._Items.clear();
        TrackList trackList = new TrackList();
        trackList.addAll(BeyondPodApplication.getInstance().playList().getTracks());
        if (trackList.size() > 0) {
            generateItemsFromTrackList(trackList);
        } else {
            this._Items.add(new ListDataItem(null, null));
        }
        if (this._Items.size() > 20) {
            f = 2.0f;
        } else {
            f = this._Items.size() > 40 ? 3.0f : 4.0f;
        }
        this._Owner.setMaxScrollSpeed(f);
        notifyDataSetChanged();
    }

    private void generateItemsFromTrackList(TrackList trackList) {
        Iterator<Track> it = trackList.iterator();
        while (it.hasNext()) {
            this._Items.add(new ListDataItem(null, it.next()));
        }
    }

    public CoreHelper.TrackSizeInfo getCurrentTracksSizeOnDisk() {
        CoreHelper.TrackSizeInfo trackSizeInfo = new CoreHelper.TrackSizeInfo();
        Iterator<ListDataItem> it = this._Items.iterator();
        while (it.hasNext()) {
            ListDataItem next = it.next();
            if (next.track != null) {
                trackSizeInfo.sizeOnDisk += next.track.getSizeOnDisk();
                if (next.track.contentType() != 3) {
                    trackSizeInfo.totalTime += next.track.getTotalTime();
                    if (next.track.getTotalTime() == 0) {
                        trackSizeInfo.totalTimeIsApproximate = true;
                    }
                }
            }
        }
        return trackSizeInfo;
    }

    public int getTrackIndex(Track track) {
        if (track == null) {
            return -1;
        }
        for (int i = 0; i != this._Items.size(); i++) {
            if (this._Items.get(i).track == track) {
                return i;
            }
        }
        return -1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static class ListDataItem {
        String name;
        Track track;

        public ListDataItem(String str, Track track) {
            this.name = str;
            this.track = track;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static class PodcastsViewItem {
        View dragDropHandle;
        TextView duration;
        ImageView overflow;
        ProgressImageView primaryImage;
        TextView primaryText;

        private PodcastsViewItem() {
        }
    }
}
