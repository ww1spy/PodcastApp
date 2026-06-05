package mobi.beyondpod.ui.views.impexp;

import android.graphics.Color;
import android.support.v7.widget.RecyclerView;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import java.util.HashMap;
import java.util.List;
import mobi.beyondpod.R;
import mobi.beyondpod.ui.core.volley.FadingNetworkImageView;
import mobi.beyondpod.ui.core.volley.ImageLoader;
import mobi.beyondpod.ui.views.notifications.NotificationPreferences;

/* loaded from: classes.dex */
class PublishersGridViewAdapter extends RecyclerView.Adapter<RecyclerView.ViewHolder> {
    static int RESULT_FORMAT_CATEGORIES = 1;
    static int RESULT_FORMAT_INTERESTS = 3;
    static int RESULT_FORMAT_PUBLISHERS = 0;
    static int RESULT_FORMAT_REGIONS = 2;
    HashMap<String, CategoryInfo> _CategoryNames = new HashMap<>(16);
    int[] _InterestColors;
    SearchResultFragmentBase _Owner;
    private int _ResultFormat;
    private List<FeedSearchResult> items;
    private ImageLoader mImageLoader;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static class CategoryInfo {
        String CategoryName;
        int CategoryResourceID;

        private CategoryInfo(String str, String str2) {
            this.CategoryName = str;
            if (NotificationPreferences.YES.equals(str2)) {
                this.CategoryResourceID = R.drawable.ic_channel_business;
                return;
            }
            if ("2".equals(str2)) {
                this.CategoryResourceID = R.drawable.ic_channel_commedy;
                return;
            }
            if ("3".equals(str2)) {
                this.CategoryResourceID = R.drawable.ic_channel_education;
                return;
            }
            if ("4".equals(str2)) {
                this.CategoryResourceID = R.drawable.ic_channel_games;
                return;
            }
            if ("5".equals(str2)) {
                this.CategoryResourceID = R.drawable.ic_channel_government;
                return;
            }
            if ("6".equals(str2)) {
                this.CategoryResourceID = R.drawable.ic_channel_health;
                return;
            }
            if ("7".equals(str2)) {
                this.CategoryResourceID = R.drawable.ic_channel_family;
                return;
            }
            if ("8".equals(str2)) {
                this.CategoryResourceID = R.drawable.ic_channel_entertainment;
                return;
            }
            if ("9".equals(str2)) {
                this.CategoryResourceID = R.drawable.ic_channel_news;
                return;
            }
            if ("10".equals(str2)) {
                this.CategoryResourceID = R.drawable.ic_channel_religion;
                return;
            }
            if ("11".equals(str2)) {
                this.CategoryResourceID = R.drawable.ic_channel_science;
                return;
            }
            if ("12".equals(str2)) {
                this.CategoryResourceID = R.drawable.ic_channel_culture;
                return;
            }
            if ("13".equals(str2)) {
                this.CategoryResourceID = R.drawable.ic_channel_sports;
                return;
            }
            if ("14".equals(str2)) {
                this.CategoryResourceID = R.drawable.ic_channel_technology;
            } else if ("15".equals(str2)) {
                this.CategoryResourceID = R.drawable.ic_channel_arts;
            } else if ("16".equals(str2)) {
                this.CategoryResourceID = R.drawable.ic_channel_tv;
            }
        }
    }

    public PublishersGridViewAdapter(SearchResultFragmentBase searchResultFragmentBase, List<FeedSearchResult> list, ImageLoader imageLoader, int i) {
        this._ResultFormat = RESULT_FORMAT_PUBLISHERS;
        this.items = list;
        this.mImageLoader = imageLoader;
        this._ResultFormat = i;
        this._Owner = searchResultFragmentBase;
        String[] stringArray = this._Owner.getResources().getStringArray(R.array.add_feed_interests_colors);
        this._InterestColors = new int[stringArray.length];
        for (int i2 = 0; i2 != stringArray.length; i2++) {
            try {
                this._InterestColors[i2] = Color.parseColor(stringArray[i2]);
            } catch (Exception unused) {
                this._InterestColors[i2] = -16776961;
            }
        }
        String[] stringArray2 = this._Owner.getResources().getStringArray(R.array.add_feed_category_names);
        String[] stringArray3 = this._Owner.getResources().getStringArray(R.array.add_feed_category_ids);
        for (int i3 = 0; i3 != stringArray3.length; i3++) {
            this._CategoryNames.put(stringArray3[i3], new CategoryInfo(stringArray2[i3], stringArray3[i3]));
        }
    }

    @Override // android.support.v7.widget.RecyclerView.Adapter
    public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
        int i2;
        if (this._ResultFormat == RESULT_FORMAT_PUBLISHERS) {
            i2 = R.layout.publisher_search_result_grid_item_publishers;
        } else if (this._ResultFormat == RESULT_FORMAT_CATEGORIES) {
            i2 = R.layout.publisher_search_result_grid_item_categories;
        } else {
            i2 = this._ResultFormat == RESULT_FORMAT_REGIONS ? R.layout.publisher_search_result_grid_item_regions : R.layout.publisher_search_result_grid_item_interests;
        }
        return new ViewHolder(LayoutInflater.from(viewGroup.getContext()).inflate(i2, viewGroup, false), this._ResultFormat, this);
    }

    @Override // android.support.v7.widget.RecyclerView.Adapter
    public void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i) {
        ViewHolder viewHolder2 = (ViewHolder) viewHolder;
        FeedSearchResult feedSearchResult = this.items.get(i);
        if (this._ResultFormat == RESULT_FORMAT_PUBLISHERS) {
            getPublishersView(feedSearchResult, viewHolder2);
            return;
        }
        if (this._ResultFormat == RESULT_FORMAT_CATEGORIES) {
            getCategoriesView(i, feedSearchResult, viewHolder2);
        } else if (this._ResultFormat == RESULT_FORMAT_REGIONS) {
            getRegionsView(feedSearchResult, viewHolder2);
        } else {
            getInterestsView(i, feedSearchResult, viewHolder2);
        }
    }

    @Override // android.support.v7.widget.RecyclerView.Adapter
    public int getItemCount() {
        return this.items.size();
    }

    @Override // android.support.v7.widget.RecyclerView.Adapter
    public int getItemViewType(int i) {
        return this._ResultFormat;
    }

    private void getInterestsView(int i, FeedSearchResult feedSearchResult, ViewHolder viewHolder) {
        viewHolder.title.setText(feedSearchResult.getTitle());
        viewHolder.bgTile.setBackgroundColor(getColorForPosition(i));
    }

    private void getPublishersView(FeedSearchResult feedSearchResult, ViewHolder viewHolder) {
        viewHolder.image.setImageUrl(feedSearchResult.getImageUrl(), this.mImageLoader);
    }

    private void getRegionsView(FeedSearchResult feedSearchResult, ViewHolder viewHolder) {
        viewHolder.title.setText(feedSearchResult.getTitle());
        viewHolder.image.setImageUrl(feedSearchResult.getImageUrl(), this.mImageLoader);
    }

    private void getCategoriesView(int i, FeedSearchResult feedSearchResult, ViewHolder viewHolder) {
        CategoryInfo categoryInfo = this._CategoryNames.get(feedSearchResult.getLink());
        if (categoryInfo != null) {
            viewHolder.title.setText(categoryInfo.CategoryName);
            viewHolder.categoryImage.setImageResource(categoryInfo.CategoryResourceID);
            viewHolder.categoryImage.setBackgroundColor(getColorForPosition(i));
        }
    }

    private int getColorForPosition(int i) {
        if (i >= this._InterestColors.length) {
            i %= this._InterestColors.length;
        }
        return this._InterestColors[i];
    }

    public int getResultFormat() {
        return this._ResultFormat;
    }

    public void setResultFormat(int i) {
        this._ResultFormat = i;
    }

    /* loaded from: classes.dex */
    public class ViewHolder extends RecyclerView.ViewHolder {
        public View bgTile;
        public ImageView categoryImage;
        public FadingNetworkImageView image;
        public TextView title;

        public ViewHolder(View view, int i, final PublishersGridViewAdapter publishersGridViewAdapter) {
            super(view);
            if (i == PublishersGridViewAdapter.RESULT_FORMAT_PUBLISHERS) {
                this.image = (FadingNetworkImageView) view.findViewById(R.id.iv_result);
                this.image.setFadeInImage(true);
                this.image.setDefaultImageResId(R.drawable.image_loading_light_bg);
                this.image.setErrorImageResId(R.drawable.ic_channel_unknown);
                this.image.setMaxImageSize(view.getContext().getResources().getDimensionPixelSize(R.dimen.publisherList_icon_width), view.getContext().getResources().getDimensionPixelSize(R.dimen.publisherList_icon_width));
            } else if (i == PublishersGridViewAdapter.RESULT_FORMAT_CATEGORIES) {
                this.title = (TextView) view.findViewById(R.id.iv_title);
                this.categoryImage = (ImageView) view.findViewById(R.id.iv_result);
            } else if (i == PublishersGridViewAdapter.RESULT_FORMAT_REGIONS) {
                this.title = (TextView) view.findViewById(R.id.iv_title);
                this.image = (FadingNetworkImageView) view.findViewById(R.id.iv_result);
                this.image.setFadeInImage(true);
                this.image.setDefaultImageResId(R.drawable.image_loading_wide_bg);
                this.image.setErrorImageResId(R.drawable.ic_channel_unknown);
                this.image.setMaxImageSize(view.getContext().getResources().getDimensionPixelSize(R.dimen.publisherList_icon_width), view.getContext().getResources().getDimensionPixelSize(R.dimen.publisherList_icon_height));
            } else {
                this.title = (TextView) view.findViewById(R.id.interest_title);
                this.bgTile = view.findViewById(R.id.iv_result);
            }
            view.setOnClickListener(new View.OnClickListener() { // from class: mobi.beyondpod.ui.views.impexp.PublishersGridViewAdapter.ViewHolder.1
                @Override // android.view.View.OnClickListener
                public void onClick(View view2) {
                    publishersGridViewAdapter.onItemClicked((FeedSearchResult) PublishersGridViewAdapter.this.items.get(ViewHolder.this.getAdapterPosition()));
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onItemClicked(FeedSearchResult feedSearchResult) {
        this._Owner.itemSelected(feedSearchResult);
    }
}
