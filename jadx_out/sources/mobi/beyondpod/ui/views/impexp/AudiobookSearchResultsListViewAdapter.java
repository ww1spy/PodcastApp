package mobi.beyondpod.ui.views.impexp;

import android.support.v7.widget.RecyclerView;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import java.util.Formatter;
import java.util.List;
import java.util.Locale;
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
class AudiobookSearchResultsListViewAdapter extends RecyclerView.Adapter<RecyclerView.ViewHolder> {
    private static final int TYPE_FOOTER = 0;
    private static final int TYPE_ITEM = 1;
    private View _FooterView;
    private List<FeedSearchResult> _Items;
    SearchResultFragmentBase _Owner;
    private int _entryViewResourceId;
    private Boolean displayFooter = false;
    private ImageLoader mImageLoader;
    private static StringBuilder sFormatBuilder = new StringBuilder();
    private static Formatter sFormatter = new Formatter(sFormatBuilder, Locale.getDefault());
    private static final String IN_S = CoreHelper.loadResourceString(R.string.opml_view_adapter_in_s);
    private static final String SUBSCRIBED = CoreHelper.loadResourceString(R.string.opml_view_adapter_subscribed);

    public AudiobookSearchResultsListViewAdapter(SearchResultFragmentBase searchResultFragmentBase, int i, List<FeedSearchResult> list, ImageLoader imageLoader, View view) {
        this._Items = list;
        this._entryViewResourceId = i;
        this.mImageLoader = imageLoader;
        this._FooterView = view;
        this._Owner = searchResultFragmentBase;
    }

    @Override // android.support.v7.widget.RecyclerView.Adapter
    public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
        if (i == 1) {
            return new ViewHolder(LayoutInflater.from(viewGroup.getContext()).inflate(this._entryViewResourceId, viewGroup, false), this._Items, this);
        }
        return new FooterViewHolder(this._FooterView);
    }

    @Override // android.support.v7.widget.RecyclerView.Adapter
    public void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i) {
        if (i >= this._Items.size()) {
            return;
        }
        ViewHolder viewHolder2 = (ViewHolder) viewHolder;
        viewHolder2.btnSubscribe.setTag(Integer.valueOf(i));
        FeedSearchResult feedSearchResult = this._Items.get(i);
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
            viewHolder2.originatingFeed.setText(feedSearchResult.getOriginatingFeed());
            viewHolder2.originatingFeed.getLayoutParams().height = StringUtils.isNullOrEmpty(feedSearchResult.getOriginatingFeed()) ? 0 : -2;
            viewHolder2.title.setText(feedSearchResult.getTitle());
            viewHolder2.description.setText(feedSearchResult.getDescription());
            sFormatBuilder.setLength(0);
            TextView textView = viewHolder2.LanguageTime;
            Formatter formatter = sFormatter;
            Object[] objArr = new Object[2];
            objArr[0] = feedSearchResult.getLanguage();
            objArr[1] = feedSearchResult.getTotalTime() == null ? "" : feedSearchResult.getTotalTime();
            textView.setText(formatter.format("%s%s", objArr).toString());
            viewHolder2.image.setImageUrl(feedSearchResult.getImageUrl(), this.mImageLoader);
        }
    }

    @Override // android.support.v7.widget.RecyclerView.Adapter
    public int getItemCount() {
        if (this.displayFooter.booleanValue()) {
            return this._Items.size() + 1;
        }
        return this._Items.size();
    }

    @Override // android.support.v7.widget.RecyclerView.Adapter
    public int getItemViewType(int i) {
        return i >= this._Items.size() ? 0 : 1;
    }

    /* loaded from: classes.dex */
    public class ViewHolder extends RecyclerView.ViewHolder {
        public TextView LanguageTime;
        public TextView btnSubscribe;
        public TextView description;
        public FadingNetworkImageView image;
        public TextView originatingFeed;
        public TextView title;

        public ViewHolder(final View view, final List<FeedSearchResult> list, final AudiobookSearchResultsListViewAdapter audiobookSearchResultsListViewAdapter) {
            super(view);
            this.title = (TextView) view.findViewById(R.id.title);
            this.description = (TextView) view.findViewById(R.id.description);
            this.originatingFeed = (TextView) view.findViewById(R.id.source);
            this.image = (FadingNetworkImageView) view.findViewById(R.id.image);
            this.image.setFadeInImage(true);
            this.image.setDefaultImageResId(R.drawable.image_loading_light_bg);
            this.image.setErrorImageResId(R.drawable.librivox);
            this.image.setMaxImageSize(view.getContext().getResources().getDimensionPixelSize(R.dimen.feed_search_feed_icon_width), view.getContext().getResources().getDimensionPixelSize(R.dimen.feed_search_feed_icon_height));
            this.btnSubscribe = (TextView) view.findViewById(R.id.subscribe);
            this.LanguageTime = (TextView) view.findViewById(R.id.language);
            this.btnSubscribe.setOnClickListener(new View.OnClickListener() { // from class: mobi.beyondpod.ui.views.impexp.AudiobookSearchResultsListViewAdapter.ViewHolder.1
                @Override // android.view.View.OnClickListener
                public void onClick(View view2) {
                    FeedSearchResult feedSearchResult = (FeedSearchResult) list.get(ViewHolder.this.getAdapterPosition());
                    FeedPreviewActivity.subscribeFeed(view.getContext(), feedSearchResult.getLink(), feedSearchResult.getTitle(), feedSearchResult.getImageUrl());
                }
            });
            view.setOnClickListener(new View.OnClickListener() { // from class: mobi.beyondpod.ui.views.impexp.AudiobookSearchResultsListViewAdapter.ViewHolder.2
                @Override // android.view.View.OnClickListener
                public void onClick(View view2) {
                    audiobookSearchResultsListViewAdapter.onItemClicked((FeedSearchResult) list.get(ViewHolder.this.getAdapterPosition()));
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onItemClicked(FeedSearchResult feedSearchResult) {
        this._Owner.itemSelected(feedSearchResult);
    }

    public void displayFooter(Boolean bool) {
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
