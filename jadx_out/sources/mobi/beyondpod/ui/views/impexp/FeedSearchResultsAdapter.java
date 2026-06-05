package mobi.beyondpod.ui.views.impexp;

import android.support.v7.widget.RecyclerView;
import android.text.format.DateUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import java.util.Date;
import java.util.List;
import mobi.beyondpod.R;
import mobi.beyondpod.rsscore.Feed;
import mobi.beyondpod.rsscore.categories.CategoryManager;
import mobi.beyondpod.rsscore.helpers.CoreHelper;
import mobi.beyondpod.rsscore.helpers.StringUtils;
import mobi.beyondpod.rsscore.repository.FeedRepository;
import mobi.beyondpod.ui.core.volley.FadingNetworkImageView;
import mobi.beyondpod.ui.core.volley.ImageLoader;
import mobi.beyondpod.ui.views.publishedepisodes.FeedPreviewActivity;

/* loaded from: classes.dex */
public class FeedSearchResultsAdapter extends RecyclerView.Adapter<RecyclerView.ViewHolder> {
    private static final String IN_S = CoreHelper.loadResourceString(R.string.opml_view_adapter_in_s);
    private static final String SUBSCRIBED = CoreHelper.loadResourceString(R.string.opml_view_adapter_subscribed);
    private static final int TYPE_FOOTER = 0;
    private static final int TYPE_ITEM = 1;
    private SearchResultFragmentBase _Owner;
    private Boolean displayFooter = false;
    private int entryViewResourceId;
    private View footerView;
    private List<FeedSearchResult> items;
    private ImageLoader mImageLoader;

    public FeedSearchResultsAdapter(SearchResultFragmentBase searchResultFragmentBase, int i, List<FeedSearchResult> list, ImageLoader imageLoader, View view) {
        this.items = list;
        this.entryViewResourceId = i;
        this.mImageLoader = imageLoader;
        this._Owner = searchResultFragmentBase;
        this.footerView = view;
    }

    @Override // android.support.v7.widget.RecyclerView.Adapter
    public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
        if (i == 1) {
            return new ViewHolder(LayoutInflater.from(viewGroup.getContext()).inflate(this.entryViewResourceId, viewGroup, false), this.items, this);
        }
        return new FooterViewHolder(this.footerView);
    }

    @Override // android.support.v7.widget.RecyclerView.Adapter
    public void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i) {
        if (i >= this.items.size()) {
            return;
        }
        ViewHolder viewHolder2 = (ViewHolder) viewHolder;
        FeedSearchResult feedSearchResult = this.items.get(i);
        if (feedSearchResult != null) {
            Feed feedByUrl = FeedRepository.getFeedByUrl(feedSearchResult.getLink());
            if (feedByUrl != null) {
                String name = feedByUrl.getCategories().getPrimary().name();
                String name2 = feedByUrl.getCategories().getSecondary().name();
                String name3 = CategoryManager.Unassigned.name();
                if (!name3.equals(name)) {
                    name2 = name;
                } else if (name3.equals(name2)) {
                    name2 = name3;
                }
                viewHolder2.btnSubscribe.setText(name2.equals(name3) ? SUBSCRIBED : String.format(IN_S, name2));
                viewHolder2.btnSubscribe.setEnabled(false);
            } else {
                viewHolder2.btnSubscribe.setText(R.string.search_result_item_subscribe);
                viewHolder2.btnSubscribe.setEnabled(true);
            }
            String originatingFeed = feedSearchResult.getOriginatingFeed();
            if (StringUtils.isNullOrEmpty(originatingFeed)) {
                Date pubDateAsDate = feedSearchResult.getPubDateAsDate();
                if (pubDateAsDate != null) {
                    originatingFeed = DateUtils.formatDateTime(this._Owner.getActivity(), pubDateAsDate.getTime(), 65536);
                }
                viewHolder2.ranking.setVisibility(8);
            } else {
                viewHolder2.ranking.setVisibility(0);
                viewHolder2.ranking.setText(Integer.toString(i + 1));
            }
            viewHolder2.originatingFeed.setText(originatingFeed);
            viewHolder2.originatingFeed.getLayoutParams().height = StringUtils.isNullOrEmpty(originatingFeed) ? 0 : -2;
            viewHolder2.title.setText(feedSearchResult.getTitle());
            viewHolder2.description.setText(feedSearchResult.getDescription());
            if (StringUtils.equals(feedSearchResult.getType(), "video")) {
                viewHolder2.image.setErrorImageResId(R.drawable.podcast_list_movie_bg);
            } else {
                viewHolder2.image.setErrorImageResId(R.drawable.podcast_list_audio_bg);
            }
            viewHolder2.image.setImageUrl(feedSearchResult.getImageUrl(), this.mImageLoader);
        }
    }

    @Override // android.support.v7.widget.RecyclerView.Adapter
    public int getItemCount() {
        if (this.displayFooter.booleanValue()) {
            return this.items.size() + 1;
        }
        return this.items.size();
    }

    @Override // android.support.v7.widget.RecyclerView.Adapter
    public int getItemViewType(int i) {
        return i >= this.items.size() ? 0 : 1;
    }

    /* loaded from: classes.dex */
    public class ViewHolder extends RecyclerView.ViewHolder {
        public TextView btnSubscribe;
        public TextView description;
        public FadingNetworkImageView image;
        public TextView originatingFeed;
        public TextView ranking;
        public TextView title;

        public ViewHolder(final View view, final List<FeedSearchResult> list, final FeedSearchResultsAdapter feedSearchResultsAdapter) {
            super(view);
            this.title = (TextView) view.findViewById(R.id.title);
            this.description = (TextView) view.findViewById(R.id.description);
            this.originatingFeed = (TextView) view.findViewById(R.id.source);
            this.image = (FadingNetworkImageView) view.findViewById(R.id.image);
            this.image.setFadeInImage(true);
            this.image.setDefaultImageResId(R.drawable.image_loading_light_bg);
            this.image.setMaxImageSize(view.getContext().getResources().getDimensionPixelSize(R.dimen.feed_search_feed_icon_width), view.getContext().getResources().getDimensionPixelSize(R.dimen.feed_search_feed_icon_height));
            this.btnSubscribe = (TextView) view.findViewById(R.id.subscribe);
            this.ranking = (TextView) view.findViewById(R.id.episodeRank);
            this.btnSubscribe.setOnClickListener(new View.OnClickListener() { // from class: mobi.beyondpod.ui.views.impexp.FeedSearchResultsAdapter.ViewHolder.1
                @Override // android.view.View.OnClickListener
                public void onClick(View view2) {
                    FeedSearchResult feedSearchResult = (FeedSearchResult) list.get(ViewHolder.this.getAdapterPosition());
                    String originatingFeed = feedSearchResult.getOriginatingFeed();
                    if (StringUtils.isNullOrEmpty(originatingFeed)) {
                        originatingFeed = feedSearchResult.getTitle();
                    }
                    FeedPreviewActivity.subscribeFeed(view.getContext(), feedSearchResult.getLink(), originatingFeed, null);
                    feedSearchResultsAdapter.notifyDataSetChanged();
                }
            });
            view.setOnClickListener(new View.OnClickListener() { // from class: mobi.beyondpod.ui.views.impexp.FeedSearchResultsAdapter.ViewHolder.2
                @Override // android.view.View.OnClickListener
                public void onClick(View view2) {
                    int adapterPosition = ViewHolder.this.getAdapterPosition();
                    if (adapterPosition > 0) {
                        feedSearchResultsAdapter.onItemClicked((FeedSearchResult) list.get(adapterPosition));
                    }
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onItemClicked(FeedSearchResult feedSearchResult) {
        this._Owner.itemSelected(feedSearchResult);
    }

    public void setDisplayFooter(Boolean bool) {
        this.displayFooter = bool;
    }

    public Boolean getDisplayFooter() {
        return this.displayFooter;
    }

    /* loaded from: classes.dex */
    public class FooterViewHolder extends RecyclerView.ViewHolder {
        public FooterViewHolder(View view) {
            super(view);
        }
    }
}
