package mobi.beyondpod.ui.views.publishedepisodes;

import android.content.Context;
import android.graphics.Bitmap;
import android.support.v4.app.FragmentActivity;
import android.support.v4.content.ContextCompat;
import android.text.SpannableString;
import android.text.style.UnderlineSpan;
import android.util.AttributeSet;
import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.android.volley.VolleyError;
import com.android.volley.toolbox.ImageLoader;
import java.util.ArrayList;
import java.util.Date;
import mobi.beyondpod.R;
import mobi.beyondpod.rsscore.Configuration;
import mobi.beyondpod.rsscore.Feed;
import mobi.beyondpod.rsscore.categories.CategoryManager;
import mobi.beyondpod.rsscore.categories.FeedCategory;
import mobi.beyondpod.rsscore.helpers.CoreHelper;
import mobi.beyondpod.rsscore.helpers.DateTime;
import mobi.beyondpod.rsscore.helpers.StringUtils;
import mobi.beyondpod.rsscore.rss.ItemStateHistory;
import mobi.beyondpod.rsscore.rss.entities.RssFeed;
import mobi.beyondpod.schedulercore.OperationBase;
import mobi.beyondpod.schedulercore.OperationUpdateCategory;
import mobi.beyondpod.schedulercore.ScheduleUtils;
import mobi.beyondpod.schedulercore.ScheduledTask;
import mobi.beyondpod.schedulercore.ScheduledTasksManager;
import mobi.beyondpod.sync.ChangeTracker;
import mobi.beyondpod.ui.commands.CommandManager;
import mobi.beyondpod.ui.core.ThemeManager;
import mobi.beyondpod.ui.core.volley.FadingNetworkImageViewFeed;
import mobi.beyondpod.ui.core.volley.ImageLoaderFeed;
import mobi.beyondpod.ui.views.FeedContentDataSource;
import mobi.beyondpod.ui.views.base.colormatcher.ColorScheme;
import mobi.beyondpod.ui.views.base.colormatcher.DominantColorCalculator;
import mobi.beyondpod.ui.views.publishedepisodes.PublishedEpisodesListView;

/* loaded from: classes.dex */
public class PublishedEpisodesHeader extends LinearLayout implements PublishedEpisodesListView.IListViewHeader {
    private static final String TAG = "PublishedEpisodesHeader";
    private View _ActiveContent;
    private View _BottomSpacer;
    Feed _CurrentFeed;
    private View _EpisodeGroup;
    TextView _FeedName;
    TextView _FeedPodcasts;
    private int _ImageHeight;
    ImageLoaderFeed _ImageLoader;
    private int _ImageWidth;
    private String _LastFeed;
    TextView _LastUpdatedDate;
    TextView _NextUpdateDate;
    private ImageView _OpenFeedSettings;
    private PublishedEpisodesListView _Owner;
    View _Progress;
    ImageView _ToggleExtras;
    private static final String MAX_S = CoreHelper.loadResourceString(R.string.feed_content_list_view__max_s);
    private static final String DISABLED = CoreHelper.loadResourceString(R.string.feed_content_list_view_disabled);
    private static final String CONFIGURE = CoreHelper.loadResourceString(R.string.feed_content_list_view_configure);
    private static final String THIS_FEED_IS_S_DAYS_OLD = CoreHelper.loadResourceString(R.string.feed_content_list_view_this_feed_is_s_days_old);

    public PublishedEpisodesHeader(Context context) {
        super(context);
        this._ImageWidth = -1;
        this._ImageHeight = -1;
    }

    public PublishedEpisodesHeader(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this._ImageWidth = -1;
        this._ImageHeight = -1;
    }

    public PublishedEpisodesHeader(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this._ImageWidth = -1;
        this._ImageHeight = -1;
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        super.onFinishInflate();
        this._ImageHeight = (int) getResources().getDimension(R.dimen.feed_navigator_icon_height);
        this._ImageWidth = (int) getResources().getDimension(R.dimen.feed_navigator_icon_width);
        this._Progress = findViewById(R.id.feedLoadProgress);
        this._FeedName = (TextView) findViewById(R.id.feedName);
        this._LastUpdatedDate = (TextView) findViewById(R.id.feedLastUpdated);
        this._NextUpdateDate = (TextView) findViewById(R.id.feedNextUpdate);
        this._FeedPodcasts = (TextView) findViewById(R.id.feedEpisodes);
        this._ToggleExtras = (ImageView) findViewById(R.id.toggleExtras);
        this._OpenFeedSettings = (ImageView) findViewById(R.id.openSettings);
        this._ActiveContent = findViewById(R.id.activeContentGroup);
        this._BottomSpacer = findViewById(R.id.headerBottomSpacer);
        this._OpenFeedSettings.setOnClickListener(new View.OnClickListener() { // from class: mobi.beyondpod.ui.views.publishedepisodes.PublishedEpisodesHeader.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                CommandManager.cmdEditFeed(PublishedEpisodesHeader.this._CurrentFeed, -1);
            }
        });
        this._OpenFeedSettings.setOnLongClickListener(new View.OnLongClickListener() { // from class: mobi.beyondpod.ui.views.publishedepisodes.PublishedEpisodesHeader.2
            @Override // android.view.View.OnLongClickListener
            public boolean onLongClick(View view) {
                PublishedEpisodesHeader.this._Owner.refreshCurrentFeed(true, true);
                return true;
            }
        });
        findViewById(R.id.feedNextUpdateGroup).setOnClickListener(new View.OnClickListener() { // from class: mobi.beyondpod.ui.views.publishedepisodes.PublishedEpisodesHeader.3
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (PublishedEpisodesHeader.this._CurrentFeed == null) {
                    return;
                }
                FeedCategory feedCategory = null;
                ScheduledTask firstScheduledTask = PublishedEpisodesHeader.this.getFirstScheduledTask();
                if (firstScheduledTask != null) {
                    if (firstScheduledTask.active && !firstScheduledTask.existsOnDevice()) {
                        ScheduledTasksManager.rescheduleAllActiveTasks();
                        PublishedEpisodesHeader.this.refreshContent();
                        return;
                    } else {
                        OperationBase operation = firstScheduledTask.operation();
                        if (operation instanceof OperationUpdateCategory) {
                            feedCategory = CategoryManager.getCategoryByValue(((OperationUpdateCategory) operation).getCategoryToUpdate());
                        }
                    }
                }
                if (feedCategory == null) {
                    feedCategory = PublishedEpisodesHeader.this._CurrentFeed.getCategories().getPrimary();
                }
                PublishedEpisodesHeader.this._Owner.setCategorySchedule(feedCategory);
            }
        });
        this._EpisodeGroup = findViewById(R.id.feedEpisodesGroup);
        this._EpisodeGroup.setOnClickListener(new View.OnClickListener() { // from class: mobi.beyondpod.ui.views.publishedepisodes.PublishedEpisodesHeader.4
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (PublishedEpisodesHeader.this._CurrentFeed == null) {
                    return;
                }
                if (PublishedEpisodesHeader.this._CurrentFeed.getPodcastDownloadAction() == 1 || PublishedEpisodesHeader.this._CurrentFeed.getPodcastDownloadAction() == 2) {
                    CommandManager.cmdEditFeed(PublishedEpisodesHeader.this._CurrentFeed, R.id.fp_keep_at_most);
                } else if (PublishedEpisodesHeader.this._CurrentFeed.getPodcastDownloadAction() == 4 || PublishedEpisodesHeader.this._CurrentFeed.getPodcastDownloadAction() == 5) {
                    CommandManager.cmdEditFeed(PublishedEpisodesHeader.this._CurrentFeed, R.id.fp_num_podcasts_to_download);
                }
            }
        });
        this._ToggleExtras.setOnClickListener(new View.OnClickListener() { // from class: mobi.beyondpod.ui.views.publishedepisodes.PublishedEpisodesHeader.5
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                View findViewById = PublishedEpisodesHeader.this.findViewById(R.id.extrasGroup);
                if (findViewById != null) {
                    findViewById.setVisibility(findViewById.getVisibility() == 8 ? 0 : 8);
                    PublishedEpisodesHeader.this._ToggleExtras.setImageResource(findViewById.getVisibility() == 8 ? R.drawable.ic_caret_down_lt_sm : R.drawable.ic_caret_up_lt_sm);
                }
            }
        });
        notifyCardSizeChanged();
    }

    @Override // mobi.beyondpod.ui.views.publishedepisodes.PublishedEpisodesListView.IListViewHeader
    public void initialize(PublishedEpisodesListView publishedEpisodesListView, FragmentActivity fragmentActivity) {
        this._Owner = publishedEpisodesListView;
        this._ImageLoader = new ImageLoaderFeed(fragmentActivity);
    }

    @Override // mobi.beyondpod.ui.views.publishedepisodes.PublishedEpisodesListView.IListViewHeader
    public void notifyCardSizeChanged() {
        this._BottomSpacer.setVisibility(Configuration.publishedEpisodeCardSize() == 3 && getContext().getResources().getDimensionPixelSize(R.dimen.card_view_item_top_margin_small) < 5 ? 0 : 8);
    }

    @Override // mobi.beyondpod.ui.views.publishedepisodes.PublishedEpisodesListView.IListViewHeader
    public void setCurrentFeed(Feed feed) {
        this._CurrentFeed = feed;
        String generateFeedImageUrl = FadingNetworkImageViewFeed.generateFeedImageUrl(this._CurrentFeed);
        if (ThemeManager.isDarkTheme()) {
            this._ActiveContent.setBackgroundColor(ContextCompat.getColor(getContext(), R.color.published_episodes_header_dark_theme));
            return;
        }
        if (StringUtils.isNullOrEmpty(generateFeedImageUrl)) {
            updateBackground(DominantColorCalculator.getDefaultColors());
        } else {
            if (StringUtils.equalsIgnoreCase(generateFeedImageUrl, this._LastFeed)) {
                return;
            }
            this._LastFeed = generateFeedImageUrl;
            this._ImageLoader.get(generateFeedImageUrl, this._CurrentFeed, new ImageLoader.ImageListener() { // from class: mobi.beyondpod.ui.views.publishedepisodes.PublishedEpisodesHeader.6
                @Override // com.android.volley.Response.ErrorListener
                public void onErrorResponse(VolleyError volleyError) {
                    PublishedEpisodesHeader.this.updateBackground(DominantColorCalculator.getDefaultColors());
                }

                @Override // com.android.volley.toolbox.ImageLoader.ImageListener
                public void onResponse(ImageLoader.ImageContainer imageContainer, boolean z) {
                    Bitmap bitmap = imageContainer.getBitmap();
                    if (bitmap != null) {
                        PublishedEpisodesHeader.this.updateBackground(DominantColorCalculator.getColorScheme(bitmap));
                    }
                }
            }, this._ImageWidth, this._ImageHeight);
            refreshContent();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateBackground(ColorScheme colorScheme) {
        this._ActiveContent.setBackgroundColor(ColorScheme.normalizeColor(colorScheme.PrimaryVibrantColor, 80, ThemeManager.isDarkTheme() ? 90 : 180));
    }

    @Override // mobi.beyondpod.ui.views.publishedepisodes.PublishedEpisodesListView.IListViewHeader
    public void refreshContent() {
        if (this._CurrentFeed == null) {
            return;
        }
        setVisibility(0);
        this._LastUpdatedDate.setCompoundDrawablesWithIntrinsicBounds(((this._CurrentFeed.isGReaderFeed() && ItemStateHistory.hasUnsynchronizedGoogleReaderItems()) || ChangeTracker.hasUploadPendingChanges()) ? R.drawable.ic_browser_reader : 0, 0, 0, 0);
        this._FeedName.setText(this._CurrentFeed.getName());
        RssFeed currentRssFeed = FeedContentDataSource.currentRssFeed();
        if (currentRssFeed == null) {
            this._LastUpdatedDate.setText("");
            this._NextUpdateDate.setText("");
            this._FeedPodcasts.setText("");
            return;
        }
        try {
            if (currentRssFeed.getDaysOld() > 0) {
                this._LastUpdatedDate.setText(String.format(THIS_FEED_IS_S_DAYS_OLD, Integer.valueOf(currentRssFeed.getDaysOld())));
            } else if (currentRssFeed.LastRetrievalDate != null) {
                this._LastUpdatedDate.setText(DateTime.formatDateTime(currentRssFeed.LastRetrievalDate));
            }
            String str = CONFIGURE;
            ScheduledTask firstScheduledTask = getFirstScheduledTask();
            if (firstScheduledTask != null) {
                if (firstScheduledTask.active && firstScheduledTask.existsOnDevice()) {
                    str = DateTime.formatDateTime(firstScheduledTask.event.startTime());
                }
                str = DISABLED;
            }
            SpannableString spannableString = new SpannableString(str);
            if (firstScheduledTask == null || !firstScheduledTask.active || !firstScheduledTask.existsOnDevice()) {
                spannableString.setSpan(new UnderlineSpan(), 0, spannableString.length(), 33);
            }
            this._NextUpdateDate.setText(spannableString);
            if (this._CurrentFeed != null && this._CurrentFeed.hasPodcasts()) {
                this._EpisodeGroup.setVisibility(0);
                String format = String.format("%s ", Integer.valueOf(this._CurrentFeed.tracks().size()));
                if (this._CurrentFeed.getPodcastDownloadAction() != 1 && this._CurrentFeed.getPodcastDownloadAction() != 2) {
                    if (this._CurrentFeed.getPodcastDownloadAction() != 4 && this._CurrentFeed.getPodcastDownloadAction() != 5) {
                        this._FeedPodcasts.setText(format);
                        return;
                    }
                    SpannableString spannableString2 = new SpannableString(format + String.format(MAX_S, Integer.valueOf(this._CurrentFeed.getMaxNumberPodcastToDownload())));
                    spannableString2.setSpan(new UnderlineSpan(), format.length(), spannableString2.length(), 33);
                    this._FeedPodcasts.setText(spannableString2);
                    return;
                }
                SpannableString spannableString3 = new SpannableString(format + String.format(MAX_S, Integer.valueOf(this._CurrentFeed.getKeepAtMostPodcasts())));
                spannableString3.setSpan(new UnderlineSpan(), format.length(), spannableString3.length(), 33);
                this._FeedPodcasts.setText(spannableString3);
                return;
            }
            this._EpisodeGroup.setVisibility(8);
        } catch (Exception e) {
            CoreHelper.logException(TAG, "failed to refresh ContentListView header", e);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public ScheduledTask getFirstScheduledTask() {
        if (this._CurrentFeed == null) {
            return null;
        }
        FeedCategory primary = this._CurrentFeed.getCategories().getPrimary();
        FeedCategory secondary = this._CurrentFeed.getCategories().getSecondary();
        ScheduledTask scheduledTaskForCategory = ScheduleUtils.getScheduledTaskForCategory(primary);
        ScheduledTask scheduledTaskForCategory2 = ScheduleUtils.getScheduledTaskForCategory(secondary);
        ScheduledTask scheduledTaskForCategory3 = ScheduleUtils.getScheduledTaskForCategory(CategoryManager.AllFeeds);
        Date date = new Date(Long.MAX_VALUE);
        Date date2 = new Date(Long.MAX_VALUE);
        Date date3 = new Date(Long.MAX_VALUE);
        ArrayList arrayList = new ArrayList();
        if (scheduledTaskForCategory != null && scheduledTaskForCategory.active && scheduledTaskForCategory.existsOnDevice()) {
            date = scheduledTaskForCategory.event.startTime();
            arrayList.add(scheduledTaskForCategory);
        }
        if (scheduledTaskForCategory2 != null && scheduledTaskForCategory2.active && scheduledTaskForCategory2.existsOnDevice()) {
            date2 = scheduledTaskForCategory2.event.startTime();
            arrayList.add(scheduledTaskForCategory2);
        }
        if (scheduledTaskForCategory3 != null && scheduledTaskForCategory3.active && scheduledTaskForCategory3.existsOnDevice()) {
            date3 = scheduledTaskForCategory3.event.startTime();
            arrayList.add(scheduledTaskForCategory3);
        }
        return (date.getTime() == date2.getTime() && date.getTime() == date3.getTime()) ? scheduledTaskForCategory : ScheduleUtils.getEarliestTask(arrayList);
    }

    @Override // mobi.beyondpod.ui.views.publishedepisodes.PublishedEpisodesListView.IListViewHeader
    public void toggleProgressIndicator(boolean z) {
        this._Progress.setVisibility(z ? 0 : 8);
    }
}
