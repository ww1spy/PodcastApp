package mobi.beyondpod.ui.views.publishedepisodes;

import android.content.Context;
import android.graphics.Bitmap;
import android.support.v4.app.FragmentActivity;
import android.util.AttributeSet;
import android.view.View;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.android.volley.VolleyError;
import com.android.volley.toolbox.ImageLoader;
import mobi.beyondpod.R;
import mobi.beyondpod.rsscore.Feed;
import mobi.beyondpod.rsscore.helpers.StringUtils;
import mobi.beyondpod.rsscore.repository.FeedRepository;
import mobi.beyondpod.rsscore.rss.entities.RssFeed;
import mobi.beyondpod.ui.core.volley.FadingNetworkImageViewFeed;
import mobi.beyondpod.ui.core.volley.ImageLoaderFeed;
import mobi.beyondpod.ui.views.FeedContentDataSource;
import mobi.beyondpod.ui.views.base.colormatcher.ColorScheme;
import mobi.beyondpod.ui.views.base.colormatcher.DominantColorCalculator;
import mobi.beyondpod.ui.views.publishedepisodes.PublishedEpisodesListView;

/* loaded from: classes.dex */
public class PublishedEpisodesPreviewHeader extends RelativeLayout implements PublishedEpisodesListView.IListViewHeader {
    private static final String TAG = "PublishedEpisodesPreviewHeader";
    TextView _ActionSubscribe;
    Feed _CurrentFeed;
    View _ExtrasGroup;
    TextView _FeedName;
    TextView _FeedSummary;
    private int _ImageHeight;
    ImageLoaderFeed _ImageLoader;
    private int _ImageWidth;
    private PublishedEpisodesListView _Owner;
    View _Progress;
    ImageView _ToggleExtras;

    @Override // mobi.beyondpod.ui.views.publishedepisodes.PublishedEpisodesListView.IListViewHeader
    public void notifyCardSizeChanged() {
    }

    public PublishedEpisodesPreviewHeader(Context context) {
        super(context);
        this._ImageWidth = -1;
        this._ImageHeight = -1;
    }

    public PublishedEpisodesPreviewHeader(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this._ImageWidth = -1;
        this._ImageHeight = -1;
    }

    public PublishedEpisodesPreviewHeader(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this._ImageWidth = -1;
        this._ImageHeight = -1;
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        super.onFinishInflate();
        this._Progress = findViewById(R.id.feedLoadProgress);
        this._FeedName = (TextView) findViewById(R.id.feedName);
        this._FeedSummary = (TextView) findViewById(R.id.feedSummary);
        this._ActionSubscribe = (TextView) findViewById(R.id.actionSubscribe);
        this._ImageHeight = (int) getResources().getDimension(R.dimen.feed_navigator_icon_height);
        this._ImageWidth = (int) getResources().getDimension(R.dimen.feed_navigator_icon_width);
        this._ExtrasGroup = findViewById(R.id.extrasGroup);
        this._ToggleExtras = (ImageView) findViewById(R.id.toggleExtras);
        setOnClickListener(new View.OnClickListener() { // from class: mobi.beyondpod.ui.views.publishedepisodes.PublishedEpisodesPreviewHeader.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                PublishedEpisodesPreviewHeader.this.toggleExtras(PublishedEpisodesPreviewHeader.this._ExtrasGroup.getVisibility() == 8);
            }
        });
        this._ActionSubscribe.setOnClickListener(new View.OnClickListener() { // from class: mobi.beyondpod.ui.views.publishedepisodes.PublishedEpisodesPreviewHeader.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                PublishedEpisodesPreviewHeader.this._Owner.subscribeToCurrentFeed();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void toggleExtras(boolean z) {
        this._ExtrasGroup.setVisibility(z ? 0 : 8);
        this._ToggleExtras.setVisibility(0);
        this._ToggleExtras.setImageResource(z ? R.drawable.ic_caret_up_lt_sm : R.drawable.ic_caret_down_lt_sm);
        this._FeedName.setMaxLines(z ? 4 : 1);
    }

    @Override // mobi.beyondpod.ui.views.publishedepisodes.PublishedEpisodesListView.IListViewHeader
    public void initialize(PublishedEpisodesListView publishedEpisodesListView, FragmentActivity fragmentActivity) {
        this._Owner = publishedEpisodesListView;
        this._ImageLoader = new ImageLoaderFeed(fragmentActivity);
    }

    @Override // mobi.beyondpod.ui.views.publishedepisodes.PublishedEpisodesListView.IListViewHeader
    public void setCurrentFeed(Feed feed) {
        this._CurrentFeed = feed;
        if (this._CurrentFeed != null) {
            this._FeedName.setText(this._CurrentFeed.getName());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateBackground(ColorScheme colorScheme) {
        setBackgroundColor(ColorScheme.normalizeColor(colorScheme.PrimaryVibrantColor, 80, 120));
        toggleExtras(true);
    }

    @Override // mobi.beyondpod.ui.views.publishedepisodes.PublishedEpisodesListView.IListViewHeader
    public void refreshContent() {
        if (this._CurrentFeed == null) {
            return;
        }
        this._FeedName.setText(this._CurrentFeed.getName());
        RssFeed currentRssFeed = FeedContentDataSource.currentRssFeed();
        if (currentRssFeed == null) {
            return;
        }
        String generateFeedImageUrl = FadingNetworkImageViewFeed.generateFeedImageUrl(this._CurrentFeed);
        this._FeedSummary.setText(StringUtils.fromHtml(currentRssFeed.Description));
        if (StringUtils.isNullOrEmpty(generateFeedImageUrl)) {
            updateBackground(DominantColorCalculator.getDefaultColors());
        } else {
            this._ImageLoader.get(generateFeedImageUrl, this._CurrentFeed, new ImageLoader.ImageListener() { // from class: mobi.beyondpod.ui.views.publishedepisodes.PublishedEpisodesPreviewHeader.3
                @Override // com.android.volley.Response.ErrorListener
                public void onErrorResponse(VolleyError volleyError) {
                    PublishedEpisodesPreviewHeader.this.updateBackground(DominantColorCalculator.getDefaultColors());
                }

                @Override // com.android.volley.toolbox.ImageLoader.ImageListener
                public void onResponse(ImageLoader.ImageContainer imageContainer, boolean z) {
                    Bitmap bitmap = imageContainer.getBitmap();
                    if (bitmap != null) {
                        PublishedEpisodesPreviewHeader.this.updateBackground(DominantColorCalculator.getColorScheme(bitmap));
                    }
                }
            }, this._ImageWidth, this._ImageHeight);
        }
    }

    @Override // mobi.beyondpod.ui.views.publishedepisodes.PublishedEpisodesListView.IListViewHeader
    public void toggleProgressIndicator(boolean z) {
        this._Progress.setVisibility(z ? 0 : 8);
    }

    @Override // android.view.View
    public void onWindowFocusChanged(boolean z) {
        Feed feedByUrl;
        super.onWindowFocusChanged(z);
        if (z) {
            Feed currentFeed = this._Owner.currentFeed();
            if (currentFeed != null && (feedByUrl = FeedRepository.getFeedByUrl(currentFeed.getFeedUrl())) != null) {
                this._ActionSubscribe.setText(getResources().getString(R.string.opml_view_adapter_in_s, feedByUrl.getCategories().getPrimary().name()));
            } else {
                this._ActionSubscribe.setText(R.string.add_feed_subscribe);
            }
        }
    }
}
