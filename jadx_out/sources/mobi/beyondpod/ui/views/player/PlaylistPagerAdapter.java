package mobi.beyondpod.ui.views.player;

import android.os.Parcelable;
import android.support.v4.content.ContextCompat;
import android.support.v4.view.PagerAdapter;
import android.support.v4.view.ViewPager;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import java.util.ArrayList;
import java.util.Formatter;
import java.util.Locale;
import mobi.beyondpod.BeyondPodApplication;
import mobi.beyondpod.R;
import mobi.beyondpod.rsscore.Track;
import mobi.beyondpod.rsscore.TrackList;
import mobi.beyondpod.rsscore.helpers.DateTime;
import mobi.beyondpod.rsscore.helpers.StringUtils;
import mobi.beyondpod.ui.core.volley.FadingNetworkImageViewTrack;
import mobi.beyondpod.ui.views.base.ProgressImageView;
import mobi.beyondpod.ui.views.base.UIUtils;

/* loaded from: classes.dex */
public class PlaylistPagerAdapter extends PagerAdapter {
    private static final int MENU_DELETE_PODCAST = 1;
    private static final int MENU_PODCAST_INFO = 4;
    private static final int MENU_REMOVE_FROM_PLAYLIST = 2;
    private static final int MENU_SHARE_PODCAST_URL = 3;
    private static final int MENU_TOGGLE_LOCK_PODCAST = 6;
    private static final int MENU_TOGGLE_PLAYED = 5;
    private static StringBuilder sFormatBuilder = new StringBuilder();
    private static Formatter sFormatter = new Formatter(sFormatBuilder, Locale.getDefault());
    private int _ImageHeight;
    private int _ImageWidth;
    private PlaylistPager _Owner;
    private float _PageWidth;
    private ArrayList<View> _RecycledWebViews = new ArrayList<>();
    private TrackList _Items = new TrackList();

    @Override // android.support.v4.view.PagerAdapter
    public boolean isViewFromObject(View view, Object obj) {
        return view == obj;
    }

    @Override // android.support.v4.view.PagerAdapter
    public void restoreState(Parcelable parcelable, ClassLoader classLoader) {
    }

    @Override // android.support.v4.view.PagerAdapter
    public Parcelable saveState() {
        return null;
    }

    public PlaylistPagerAdapter(PlaylistPager playlistPager) {
        this._Owner = playlistPager;
        int integer = this._Owner.getResources().getInteger(R.integer.episode_card_playlist_ips);
        this._ImageWidth = playlistPager.getContext().getResources().getDimensionPixelSize(R.dimen.playlist_card_episode_image_width);
        this._ImageHeight = playlistPager.getContext().getResources().getDimensionPixelSize(R.dimen.playlist_card_episode_image_height);
        this._PageWidth = 1.0f / integer;
    }

    @Override // android.support.v4.view.PagerAdapter
    public int getCount() {
        return this._Items.size();
    }

    @Override // android.support.v4.view.PagerAdapter
    @Deprecated
    public Object instantiateItem(View view, int i) {
        View episodeView = getEpisodeView();
        loadItemData(episodeView, this._Items.get(i));
        ((ViewPager) view).addView(episodeView, 0);
        return episodeView;
    }

    @Override // android.support.v4.view.PagerAdapter
    public Object instantiateItem(ViewGroup viewGroup, int i) {
        View episodeView = getEpisodeView();
        loadItemData(episodeView, this._Items.get(i));
        viewGroup.addView(episodeView, 0);
        return episodeView;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void loadItemData(View view, final Track track) {
        if (view.getTag() == null) {
            Holder holder = new Holder();
            holder.image = (ProgressImageView) view.findViewById(R.id.image);
            holder.image.setFadeInImage(true);
            holder.image.setMaxImageSize(this._ImageWidth, this._ImageHeight);
            holder.image.setImageDrawable(null);
            holder.image.setDefaultImageResId(R.drawable.image_loading_bg);
            holder.image.setErrorImageResId(FadingNetworkImageViewTrack.getDefaultImage(1));
            holder.title = (TextView) view.findViewById(R.id.title);
            holder.description = (TextView) view.findViewById(R.id.description);
            holder.date = (TextView) view.findViewById(R.id.date);
            holder.card = view.findViewById(R.id.card);
            view.setTag(holder);
        }
        Holder holder2 = (Holder) view.getTag();
        view.setTag(R.id.card_episode, track);
        view.setOnClickListener(new View.OnClickListener() { // from class: mobi.beyondpod.ui.views.player.PlaylistPagerAdapter.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view2) {
                PlaylistPagerAdapter.this._Owner.episodePlayPause(track);
            }
        });
        sFormatBuilder.setLength(0);
        holder2.date.setText(sFormatter.format("%s • %s", DateTime.formatDateTimeToday(track.getLastModifiedDate()), UIUtils.formatEpisodeTimeAsRemaining(this._Owner.getContext(), track)).toString());
        holder2.date.setCompoundDrawablesWithIntrinsicBounds(track.locked() ? R.drawable.ic_marker_heart : 0, 0, track.getDownloadStatus() == 4 ? R.drawable.ic_marker_warning : !track.exists() ? R.drawable.ic_marker_stream : 0, 0);
        holder2.date.setTextColor(track.isPlayed() ? ContextCompat.getColor(this._Owner.getContext(), R.color.episode_card_playlist_played_time_color) : ContextCompat.getColor(this._Owner.getContext(), R.color.episode_card_playlist_time_color));
        holder2.title.setText(track.displayName());
        if (holder2.description != null) {
            holder2.description.setText(StringUtils.isNullOrEmpty(track.trackDescription()) ? track.getParentFeed().getName() : track.trackDescription());
        }
        if (track == BeyondPodApplication.getInstance().playList().currentTrack()) {
            holder2.card.setBackgroundColor(ContextCompat.getColor(this._Owner.getContext(), R.color.episode_card_playlist_current_bg_color));
            if (holder2.description != null) {
                holder2.description.setTextColor(ContextCompat.getColor(this._Owner.getContext(), R.color.episode_card_playlist_current_description_color));
            }
            holder2.title.setTextColor(ContextCompat.getColor(this._Owner.getContext(), R.color.episode_card_playlist_current_title_color));
        } else {
            holder2.card.setBackgroundColor(ContextCompat.getColor(this._Owner.getContext(), R.color.episode_card_playlist_bg_color));
            if (holder2.description != null) {
                holder2.description.setTextColor(ContextCompat.getColor(this._Owner.getContext(), R.color.episode_card_playlist_description_color));
            }
            holder2.title.setTextColor(track.isPlayed() ? ContextCompat.getColor(this._Owner.getContext(), R.color.episode_card_playlist_played_title_color) : ContextCompat.getColor(this._Owner.getContext(), R.color.episode_card_playlist_title_color));
        }
        if (track.isFullyDownloaded()) {
            holder2.image.setTrack(track, this._Owner.getImageLoader());
        } else {
            holder2.image.setFeed(track.getParentFeed(), this._Owner.getImageLoader());
        }
        holder2.image.setProgress((int) Math.ceil(track.playedAsFraction() * 100.0f));
    }

    @Override // android.support.v4.view.PagerAdapter
    public float getPageWidth(int i) {
        return this._PageWidth;
    }

    @Override // android.support.v4.view.PagerAdapter
    @Deprecated
    public void destroyItem(View view, int i, Object obj) {
        View view2 = (View) obj;
        ((ViewPager) view).removeView(view2);
        putEpisodeView(view2);
    }

    @Override // android.support.v4.view.PagerAdapter
    public void destroyItem(ViewGroup viewGroup, int i, Object obj) {
        View view = (View) obj;
        viewGroup.removeView(view);
        putEpisodeView(view);
    }

    private View getEpisodeView() {
        if (this._RecycledWebViews.size() > 0) {
            View view = this._RecycledWebViews.get(0);
            this._RecycledWebViews.remove(0);
            return view;
        }
        return createEpisodeView();
    }

    private void putEpisodeView(View view) {
        view.setTag(null);
        view.setTag(R.id.card_episode, null);
        this._RecycledWebViews.add(view);
    }

    private View createEpisodeView() {
        return PlaylistPager.inflate(this._Owner.getContext(), this._Owner.getResources().getInteger(R.integer.episode_card_playlist_layout_type) == 2 ? R.layout.episode_card_playlist_type_2 : R.layout.episode_card_playlist_type_1, null);
    }

    public void reloadTracks() {
        this._Items.clear();
        this._Items.addAll(BeyondPodApplication.getInstance().playList().getTracks());
        notifyDataSetChanged();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class Holder {
        View card;
        TextView date;
        TextView description;
        ProgressImageView image;
        TextView title;

        Holder() {
        }
    }
}
