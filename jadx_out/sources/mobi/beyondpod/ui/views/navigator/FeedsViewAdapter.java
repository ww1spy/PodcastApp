package mobi.beyondpod.ui.views.navigator;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.support.v4.content.ContextCompat;
import android.util.Property;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.TextView;
import com.android.volley.VolleyError;
import com.android.volley.toolbox.ImageLoader;
import java.util.Date;
import java.util.Formatter;
import java.util.Locale;
import mobi.beyondpod.R;
import mobi.beyondpod.downloadengine.EnclosureDownloadManager;
import mobi.beyondpod.downloadengine.RssFeedUpdateManager;
import mobi.beyondpod.rsscore.Configuration;
import mobi.beyondpod.rsscore.Feed;
import mobi.beyondpod.rsscore.categories.CategoryManager;
import mobi.beyondpod.rsscore.categories.FeedCategory;
import mobi.beyondpod.rsscore.helpers.CoreHelper;
import mobi.beyondpod.rsscore.helpers.DateTime;
import mobi.beyondpod.rsscore.helpers.StringUtils;
import mobi.beyondpod.rsscore.repository.FeedRepository;
import mobi.beyondpod.schedulercore.ScheduleUtils;
import mobi.beyondpod.schedulercore.ScheduledTask;
import mobi.beyondpod.ui.core.FeedImageCache;
import mobi.beyondpod.ui.core.volley.FadingNetworkImageViewFeed;
import mobi.beyondpod.ui.core.volley.ImageLoaderFeed;
import mobi.beyondpod.ui.views.navigator.FeedListViewDataSource;

/* loaded from: classes.dex */
public class FeedsViewAdapter extends BaseAdapter {
    private static final String TAG = "FeedsViewAdapter";
    private Drawable _CaretDown;
    private Drawable _CaretUp;
    private Typeface _ChildTypeface;
    private FeedListViewDataSource _DataSource = new FeedListViewDataSource();
    private Feed _Feed;
    private CharSequence _IfEmptyText;
    private int _ImageHeight;
    private int _ImageWidth;
    private LayoutInflater _Inflater;
    private FeedsListView _Owner;
    private final int _ParentColorHNormalColor;
    private int _ParentNormalTextColor;
    private Typeface _ParentNormalTypeface;
    private Typeface _ParentSelectedTypeface;
    private final int _TitleHasUnread;
    private final int _TitleNoUnred;
    private static final String FEEDS = CoreHelper.loadResourceString(R.string.feeds_status_feeds);
    private static final String S_PENDING = CoreHelper.loadResourceString(R.string.feeds_status_s_pending);
    private static final String DOWNLOADING = CoreHelper.loadResourceString(R.string.feeds_status_downloading);
    private static final String OF = CoreHelper.loadResourceString(R.string.feeds_status_of);
    private static final String UPDATING = CoreHelper.loadResourceString(R.string.feeds_status_updating);
    private static final String BACK_TO_PARENT = CoreHelper.loadResourceString(R.string.feeds_status_back_to_s);
    private static final String UNREAD = CoreHelper.loadResourceString(R.string.feedList_num_unread);
    private static final String MY_FEEDS = CoreHelper.loadResourceString(R.string.navigator_drawer_title);
    private static StringBuilder sInfoTextStringBuilder = new StringBuilder();
    private static Formatter sInfoTextFormatter = new Formatter(sInfoTextStringBuilder, Locale.getDefault());

    public boolean areAllItemsSelectable() {
        return false;
    }

    @Override // android.widget.Adapter
    public long getItemId(int i) {
        return i;
    }

    @Override // android.widget.BaseAdapter, android.widget.Adapter
    public int getViewTypeCount() {
        return 2;
    }

    public void setIfEmptyText(CharSequence charSequence) {
        this._IfEmptyText = charSequence;
    }

    public FeedsViewAdapter(Context context, FeedsListView feedsListView) {
        this._ImageHeight = 70;
        this._ImageWidth = 70;
        this._Inflater = LayoutInflater.from(context);
        this._Owner = feedsListView;
        this._ImageHeight = (int) this._Owner.getContext().getResources().getDimension(R.dimen.feed_navigator_icon_height);
        this._ImageWidth = (int) this._Owner.getContext().getResources().getDimension(R.dimen.feed_navigator_icon_width);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(mobi.beyondpod.evo.R.styleable.NavigatorDrawer);
        this._ParentNormalTextColor = obtainStyledAttributes.getColor(5, ContextCompat.getColor(context, R.color.navigator_category_text));
        this._ParentColorHNormalColor = obtainStyledAttributes.getColor(4, ContextCompat.getColor(context, R.color.navigator_category_no_color_underline));
        this._CaretUp = obtainStyledAttributes.getDrawable(2);
        this._CaretDown = obtainStyledAttributes.getDrawable(1);
        obtainStyledAttributes.recycle();
        this._ParentSelectedTypeface = Typeface.create(Typeface.SANS_SERIF, 1);
        this._TitleHasUnread = ContextCompat.getColor(context, R.color.card_title_normal);
        this._TitleNoUnred = ContextCompat.getColor(context, R.color.card_title_not_my);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Feed getRootFeed() {
        return this._Feed;
    }

    @Override // android.widget.Adapter
    public int getCount() {
        return this._DataSource.size();
    }

    @Override // android.widget.Adapter
    public Object getItem(int i) {
        return this._DataSource.getAtPosition(i);
    }

    @Override // android.widget.BaseAdapter, android.widget.ListAdapter
    public boolean isEnabled(int i) {
        return this._DataSource.getAtPosition(i) != null;
    }

    @Override // android.widget.BaseAdapter, android.widget.Adapter
    public int getItemViewType(int i) {
        FeedListViewDataSource.ListDataItem atPosition = this._DataSource.getAtPosition(i);
        if (atPosition == null) {
            return -1;
        }
        if (atPosition.Feed == null && atPosition.Category == null) {
            return -1;
        }
        return atPosition.Feed == null ? 0 : 1;
    }

    @Override // android.widget.Adapter
    public View getView(int i, View view, ViewGroup viewGroup) {
        FeedListViewDataSource.ListDataItem atPosition = this._DataSource.getAtPosition(i);
        if (atPosition == null) {
            return this._Inflater.inflate(R.layout.list_view_empty_view, (ViewGroup) null);
        }
        try {
        } catch (Exception e) {
            CoreHelper.logException(TAG, "failed to get feeds view item", e);
        }
        if (atPosition.Feed != null) {
            return buildFeedViewItem(view, atPosition.Feed);
        }
        if (atPosition.Category != null) {
            return buildCategoryViewItem(view, atPosition.Category);
        }
        if (view == null) {
            view = this._Inflater.inflate(R.layout.feeds_list_view_empty_view, (ViewGroup) null);
        }
        TextView textView = (TextView) view;
        if (this._DataSource.size() == 1) {
            if (!hasHiddenFeeds()) {
                textView.setText(this._IfEmptyText);
            } else {
                textView.setText(R.string.feed_list_empty_all_read);
            }
        } else if (hasHiddenFeeds()) {
            textView.setText(R.string.feed_list_show_read);
        } else if (hasReadFeeds()) {
            textView.setText(R.string.feed_list_hide_read);
        }
        return view;
    }

    public void expandCollapseCategory(final ImageView imageView, FeedCategory feedCategory, boolean z) {
        ObjectAnimator ofFloat;
        this._DataSource.expandCollapseCategory(feedCategory, z);
        imageView.setTag(R.id.navigator_parent_animating, "A");
        reloadFeeds();
        int integer = this._Owner.getContext().getResources().getInteger(android.R.integer.config_shortAnimTime);
        if (z) {
            ofFloat = ObjectAnimator.ofFloat(imageView, (Property<ImageView, Float>) View.ROTATION, 0.0f, 180.0f);
            ofFloat.addListener(new AnimatorListenerAdapter() { // from class: mobi.beyondpod.ui.views.navigator.FeedsViewAdapter.1
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationStart(Animator animator) {
                    imageView.setImageDrawable(FeedsViewAdapter.this._CaretDown);
                }

                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator) {
                    imageView.setRotation(0.0f);
                    imageView.setImageDrawable(FeedsViewAdapter.this._CaretUp);
                    imageView.setTag(R.id.navigator_parent_animating, null);
                }
            });
        } else {
            ofFloat = ObjectAnimator.ofFloat(imageView, (Property<ImageView, Float>) View.ROTATION, 0.0f, -180.0f);
            ofFloat.addListener(new AnimatorListenerAdapter() { // from class: mobi.beyondpod.ui.views.navigator.FeedsViewAdapter.2
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationStart(Animator animator) {
                    imageView.setImageDrawable(FeedsViewAdapter.this._CaretUp);
                }

                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator) {
                    imageView.setRotation(0.0f);
                    imageView.setImageDrawable(FeedsViewAdapter.this._CaretDown);
                    imageView.setTag(R.id.navigator_parent_animating, null);
                }
            });
        }
        ofFloat.setDuration(integer);
        ofFloat.start();
    }

    private View buildCategoryViewItem(View view, FeedCategory feedCategory) {
        FeedsViewItem feedsViewItem;
        if (view == null) {
            view = this._Inflater.inflate(R.layout.navigator_parent, (ViewGroup) null);
            feedsViewItem = new FeedsViewItem();
            feedsViewItem.primaryText = (TextView) view.findViewById(R.id.category_name);
            feedsViewItem.secondaryText = (TextView) view.findViewById(R.id.category_info);
            feedsViewItem.overflow = (ImageView) view.findViewById(R.id.category_overflow);
            feedsViewItem.expander = (ImageView) view.findViewById(R.id.category_expander);
            feedsViewItem.colorH = view.findViewById(R.id.category_color_h);
            feedsViewItem.colorV = view.findViewById(R.id.category_color_v);
            if (this._ParentNormalTypeface == null) {
                this._ParentNormalTypeface = feedsViewItem.primaryText.getTypeface();
            }
            feedsViewItem.expander.setOnClickListener(new View.OnClickListener() { // from class: mobi.beyondpod.ui.views.navigator.FeedsViewAdapter.3
                @Override // android.view.View.OnClickListener
                public void onClick(View view2) {
                    FeedCategory feedCategory2 = (FeedCategory) view2.getTag(R.id.navigator_parent_category);
                    if (feedCategory2 == null) {
                        return;
                    }
                    FeedsViewAdapter.this.expandCollapseCategory((ImageView) view2, feedCategory2, !FeedsViewAdapter.this._DataSource.isCategoryExpanded(feedCategory2));
                }
            });
            feedsViewItem.overflow.setOnClickListener(new View.OnClickListener() { // from class: mobi.beyondpod.ui.views.navigator.FeedsViewAdapter.4
                @Override // android.view.View.OnClickListener
                public void onClick(View view2) {
                    FeedCategory feedCategory2 = (FeedCategory) view2.getTag();
                    if (feedCategory2 == null) {
                        return;
                    }
                    FeedsViewAdapter.this._Owner.editCategory(view2, feedCategory2);
                }
            });
            view.setTag(feedsViewItem);
        } else {
            feedsViewItem = (FeedsViewItem) view.getTag();
        }
        feedsViewItem.primaryText.setText(feedCategory.name());
        feedsViewItem.colorH.setVisibility(8);
        feedsViewItem.colorV.setVisibility(8);
        if (feedCategory.color() == 0) {
            feedsViewItem.primaryText.setTextColor(this._ParentNormalTextColor);
            if (this._DataSource.isCategoryExpanded(feedCategory)) {
                feedsViewItem.colorH.setVisibility(0);
                feedsViewItem.colorH.setBackgroundColor(this._ParentColorHNormalColor);
            }
        } else if (this._DataSource.isCategoryExpanded(feedCategory)) {
            feedsViewItem.colorH.setVisibility(0);
            feedsViewItem.colorH.setBackgroundColor(feedCategory.color());
        } else {
            feedsViewItem.colorV.setVisibility(0);
            feedsViewItem.colorV.setBackgroundColor(feedCategory.color());
        }
        feedsViewItem.overflow.setVisibility(this._Owner.isEditingFeeds() ? 0 : 8);
        feedsViewItem.overflow.setTag(feedCategory);
        if (CategoryManager.hasUserCategories()) {
            if (feedsViewItem.expander.getTag(R.id.navigator_parent_animating) == null) {
                feedsViewItem.expander.setImageDrawable(this._DataSource.isCategoryExpanded(feedCategory) ? this._CaretUp : this._CaretDown);
            }
            feedsViewItem.expander.setTag(R.id.navigator_parent_category, feedCategory);
            feedsViewItem.expander.setVisibility(0);
        } else {
            feedsViewItem.expander.setVisibility(8);
        }
        if (Configuration.getActiveFeedFilter() == null && feedCategory == Configuration.getActiveFeedCategory()) {
            feedsViewItem.primaryText.setTypeface(this._ParentSelectedTypeface);
        } else {
            feedsViewItem.primaryText.setTypeface(this._ParentNormalTypeface);
        }
        if (this._Owner.isEditingFeeds()) {
            ScheduledTask scheduledTaskForCategory = ScheduleUtils.getScheduledTaskForCategory(feedCategory);
            if (scheduledTaskForCategory != null && scheduledTaskForCategory.active && scheduledTaskForCategory.existsOnDevice()) {
                Date startTime = scheduledTaskForCategory.event.startTime();
                feedsViewItem.secondaryText.setVisibility(0);
                feedsViewItem.secondaryText.setText(DateTime.formatTime(startTime) + " " + DateTime.formatDate(startTime));
            } else {
                feedsViewItem.secondaryText.setVisibility(8);
            }
        } else {
            feedsViewItem.secondaryText.setVisibility(8);
        }
        return view;
    }

    private View buildFeedViewItem(View view, Feed feed) {
        FeedsViewItem feedsViewItem;
        if (view == null) {
            view = this._Inflater.inflate(R.layout.navigator_child, (ViewGroup) null);
            feedsViewItem = new FeedsViewItem();
            feedsViewItem.primaryText = (TextView) view.findViewById(R.id.feed_title);
            feedsViewItem.secondaryText = (TextView) view.findViewById(R.id.feed_Info);
            feedsViewItem.primaryImage = (FadingNetworkImageViewFeed) view.findViewById(R.id.feed_PrimaryImage);
            feedsViewItem.primaryImage.setFadeInImage(false);
            feedsViewItem.primaryImage.setMaxImageSize(this._ImageWidth, this._ImageHeight);
            feedsViewItem.numEpisodes = (TextView) view.findViewById(R.id.feed_num_episodes);
            feedsViewItem.overlayImage = (ImageView) view.findViewById(R.id.feed_PrimaryOverlayImage);
            feedsViewItem.overflow = (ImageView) view.findViewById(R.id.feed_overflow);
            if (this._ChildTypeface == null) {
                this._ChildTypeface = feedsViewItem.primaryText.getTypeface();
            }
            feedsViewItem.overflow.setOnClickListener(new View.OnClickListener() { // from class: mobi.beyondpod.ui.views.navigator.FeedsViewAdapter.5
                @Override // android.view.View.OnClickListener
                public void onClick(View view2) {
                    Feed feed2 = (Feed) view2.getTag();
                    if (feed2 == null) {
                        return;
                    }
                    FeedsViewAdapter.this._Owner.editFeed(view2, feed2);
                }
            });
            view.setTag(feedsViewItem);
        } else {
            feedsViewItem = (FeedsViewItem) view.getTag();
        }
        feedsViewItem.primaryText.setText(feed.getName());
        if (feed == Configuration.getActiveFeedFilter()) {
            feedsViewItem.primaryText.setTypeface(this._ChildTypeface, 1);
        } else {
            feedsViewItem.primaryText.setTypeface(this._ChildTypeface, 0);
        }
        String infoTextForFeed = getInfoTextForFeed(feed);
        if (StringUtils.isNullOrEmpty(infoTextForFeed) || this._Owner.isEditingFeeds()) {
            feedsViewItem.secondaryText.setVisibility(8);
        } else {
            feedsViewItem.secondaryText.setText(infoTextForFeed);
            feedsViewItem.secondaryText.setVisibility(0);
        }
        int type = feed.getType();
        if (feed.equals(FeedRepository.getGoUpPlaceholder())) {
            feedsViewItem.primaryImage.setErrorImageResId(R.drawable.ic_action_undo);
            TextView textView = feedsViewItem.primaryText;
            Formatter formatter = sInfoTextFormatter;
            String str = BACK_TO_PARENT;
            Object[] objArr = new Object[1];
            objArr[0] = this._Feed.isSubFeed() ? this._Feed.parentFeed().getName() : MY_FEEDS;
            textView.setText(formatter.format(str, objArr).toString());
        } else if (type == 1) {
            feedsViewItem.primaryImage.setErrorImageResId(feed.isSubFeed() ? R.drawable.ic_action_folder_open_blue : R.drawable.ic_action_folder_open_yellow);
        } else if (type == 4) {
            feedsViewItem.primaryImage.setErrorImageResId(R.drawable.default_feed_image);
        } else if (type == 2 || type == 3 || type == 5) {
            feedsViewItem.primaryImage.setErrorImageResId(FeedImageCache.getDefaultImageResId(feed));
        }
        feedsViewItem.primaryImage.setFeed(feed, this._Owner.getImageLoader());
        feedsViewItem.primaryImage.setTag(feed);
        feedsViewItem.overlayImage.setVisibility(8);
        if (feed.updateFailed || feed.downloadFailed) {
            feedsViewItem.overlayImage.setImageResource(R.drawable.ic_marker_warning);
            feedsViewItem.overlayImage.setVisibility(0);
        }
        feedsViewItem.numEpisodes.setVisibility(8);
        if (feed.allowsEnclosures() && feed.tracks().size() > 0 && !this._Owner.isEditingFeeds()) {
            feedsViewItem.numEpisodes.setText(Integer.toString(feed.tracks().size()));
            feedsViewItem.numEpisodes.setVisibility(0);
            feedsViewItem.numEpisodes.setVisibility(0);
            feedsViewItem.numEpisodes.setTag(feed.id());
        }
        feedsViewItem.overflow.setVisibility(this._Owner.isEditingFeeds() ? 0 : 8);
        feedsViewItem.overflow.setTag(feed);
        return view;
    }

    private static String getInfoTextForFeed(Feed feed) {
        sInfoTextStringBuilder.setLength(0);
        if (RssFeedUpdateManager.isUpdating() && RssFeedUpdateManager.currentFeed() == feed) {
            if (feed.getUpdateSize() <= 0) {
                Formatter formatter = sInfoTextFormatter;
                Object[] objArr = new Object[2];
                objArr[0] = UPDATING;
                objArr[1] = feed.getUpdatedPortion() > 0 ? CoreHelper.getFileLengthAsString(Long.valueOf(feed.getUpdatedPortion())) : "";
                return formatter.format("%s %s...", objArr).toString();
            }
            return sInfoTextFormatter.format("%s %s%% %s %s...", UPDATING, Integer.valueOf(feed.updatePercent()), OF, CoreHelper.getFileLengthAsString(Long.valueOf(feed.getUpdateSize()))).toString();
        }
        if (EnclosureDownloadManager.isDownloading() && EnclosureDownloadManager.currentFeed() == feed) {
            return sInfoTextFormatter.format("%s %s %s %s...", DOWNLOADING, Integer.valueOf(feed.numDownloadedEnclosures + 1), OF, Integer.valueOf(feed.numEnclosuresAvailableForDownload)).toString();
        }
        if (EnclosureDownloadManager.isDownloading() && !feed.downloadFailed && feed.numEnclosuresAvailableForDownload > 0 && feed.numDownloadedEnclosures == 0) {
            return sInfoTextFormatter.format(S_PENDING, Integer.valueOf(feed.numEnclosuresAvailableForDownload)).toString();
        }
        if (feed.subFeeds().size() > 0) {
            return sInfoTextFormatter.format("%s %s", Integer.valueOf(feed.subFeeds().size()), FEEDS).toString();
        }
        if (feed.numUnreadItems() > 0) {
            return Configuration.allowHidingRead() ? sInfoTextFormatter.format("%s %s • %s", Integer.valueOf(feed.numUnreadItems()), UNREAD, DateTime.formatDateTime(feed.getLastModifiedDate())).toString() : sInfoTextFormatter.format("%s %s", Integer.valueOf(feed.numUnreadItems()), UNREAD).toString();
        }
        if (Configuration.allowHidingRead() && feed.hasUrl()) {
            return DateTime.formatDateTime(feed.getLastModifiedDate());
        }
        return null;
    }

    public void clear() {
        this._Feed = null;
        this._DataSource.clear();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Feed getFeedAtPosition(int i) {
        Object item = getItem(i);
        if (item != null) {
            return ((FeedListViewDataSource.ListDataItem) item).Feed;
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public FeedCategory getCategoryAtPosition(int i) {
        Object item = getItem(i);
        if (item != null) {
            return ((FeedListViewDataSource.ListDataItem) item).Category;
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setRootFeed(Feed feed) {
        this._Feed = feed;
        this._DataSource.clear();
        if (Configuration.getHideReadFeeds() && !Configuration.allowHidingRead()) {
            Configuration.setHideReadFeeds(false);
        }
        if (feed != null && feed.subFeeds().size() > 0) {
            this._DataSource.filterAndGroupByFirstCategory(this._Feed, Configuration.getHideReadFeeds());
        }
        notifyDataSetChanged();
    }

    public void expandFirstCategory() {
        this._DataSource.expandFirstCategory();
        notifyDataSetChanged();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static class FeedsViewItem {
        View colorH;
        View colorV;
        ImageView expander;
        TextView numEpisodes;
        ImageView overflow;
        ImageView overlayImage;
        FadingNetworkImageViewFeed primaryImage;
        TextView primaryText;
        TextView secondaryText;

        private FeedsViewItem() {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int getFeedIndex(Feed feed) {
        if (feed == null) {
            return -1;
        }
        return this._DataSource.getFeedIndex(feed);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int getCategoryIndex(FeedCategory feedCategory) {
        if (feedCategory == null) {
            return -1;
        }
        return this._DataSource.getCategoryIndex(feedCategory);
    }

    public void reloadFeeds() {
        setRootFeed(this._Feed);
    }

    public int feedCount() {
        return this._DataSource.feedCount();
    }

    public int hiddenFeedCount() {
        return this._DataSource.hiddenFeedCount();
    }

    public Feed nextFeed(Feed feed) {
        Feed feedAtPosition;
        int feedIndex = getFeedIndex(feed);
        do {
            feedIndex++;
            if (feedIndex < 0 || feedIndex >= getCount()) {
                return null;
            }
            feedAtPosition = getFeedAtPosition(feedIndex);
        } while (!isFeedValidForNextPrev(feedAtPosition));
        return feedAtPosition;
    }

    public Feed previousFeed(Feed feed) {
        Feed feedAtPosition;
        int feedIndex = getFeedIndex(feed);
        if (feedIndex < 0) {
            return null;
        }
        do {
            feedIndex--;
            if (feedIndex < 0) {
                return null;
            }
            feedAtPosition = getFeedAtPosition(feedIndex);
        } while (!isFeedValidForNextPrev(feedAtPosition));
        return feedAtPosition;
    }

    public Feed nextUnreadFeed(Feed feed) {
        int feedIndex = getFeedIndex(feed);
        if (feedIndex < 0) {
            return null;
        }
        int i = feedIndex + 1;
        while (i != feedIndex) {
            if (i < getCount()) {
                Feed feedAtPosition = getFeedAtPosition(i);
                if (isFeedValidForNextPrev(feedAtPosition) && feedAtPosition.hasUnreadItems()) {
                    return feedAtPosition;
                }
                i++;
            } else {
                i = 0;
            }
        }
        return null;
    }

    private boolean isFeedValidForNextPrev(Feed feed) {
        return (feed == null || feed.getType() == 4 || feed.getType() == 1 || FeedRepository.getFeedById(feed.id()) == null) ? false : true;
    }

    public boolean hasReadFeeds() {
        return this._DataSource.hasReadFeeds();
    }

    public void toggleReadFeeds(boolean z) {
        Configuration.setHideReadFeeds(!z);
        reloadFeeds();
    }

    public boolean hasHiddenFeeds() {
        return this._DataSource.hasHiddenReadFeeds();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void prefetchItemImages() {
        int min = Math.min(this._Owner.getChildCount(), 10);
        int min2 = Math.min(2 * this._Owner.getChildCount(), min * 2);
        int max = Math.max(this._Owner.getFirstVisiblePosition() - min, 0);
        int firstVisiblePosition = this._Owner.getFirstVisiblePosition();
        if (max >= 0 && max < firstVisiblePosition) {
            while (max < firstVisiblePosition) {
                prefetchImageForFeed(getFeedAtPosition(max));
                max++;
            }
        }
        int firstVisiblePosition2 = (this._Owner.getFirstVisiblePosition() + this._Owner.getChildCount()) - 1;
        int min3 = Math.min(min2 + firstVisiblePosition2, getCount());
        if (firstVisiblePosition2 < min3) {
            while (firstVisiblePosition2 < min3) {
                prefetchImageForFeed(getFeedAtPosition(firstVisiblePosition2));
                firstVisiblePosition2++;
            }
        }
    }

    private void prefetchImageForFeed(Feed feed) {
        if (feed == null) {
            return;
        }
        int type = feed.getType();
        if (type == 2 || type == 3 || type == 5) {
            String generateFeedImageUrl = FadingNetworkImageViewFeed.generateFeedImageUrl(feed);
            if (StringUtils.isNullOrEmpty(generateFeedImageUrl)) {
                return;
            }
            ((ImageLoaderFeed) this._Owner.getImageLoader()).get(generateFeedImageUrl, feed, new ImageLoader.ImageListener() { // from class: mobi.beyondpod.ui.views.navigator.FeedsViewAdapter.6
                @Override // com.android.volley.Response.ErrorListener
                public void onErrorResponse(VolleyError volleyError) {
                }

                @Override // com.android.volley.toolbox.ImageLoader.ImageListener
                public void onResponse(ImageLoader.ImageContainer imageContainer, boolean z) {
                }
            }, this._ImageWidth, this._ImageHeight);
        }
    }
}
