package mobi.beyondpod.ui.views.navigator;

import android.content.Context;
import android.graphics.Color;
import android.support.v4.content.ContextCompat;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextSwitcher;
import android.widget.TextView;
import android.widget.ViewSwitcher;
import mobi.beyondpod.R;
import mobi.beyondpod.downloadengine.IHttpClient;
import mobi.beyondpod.rsscore.Configuration;
import mobi.beyondpod.rsscore.categories.CategoryManager;
import mobi.beyondpod.rsscore.categories.FeedCategory;
import mobi.beyondpod.rsscore.helpers.DateTime;
import mobi.beyondpod.rsscore.helpers.StringUtils;
import mobi.beyondpod.ui.core.ThemeManager;

/* loaded from: classes.dex */
public class NavigatorHeader extends FrameLayout {
    private static final String TAG = "NavigatorHeader";
    private View _ABUpdate;
    private int _Category;
    private int _Default;
    TextSwitcher _FeedFilter;
    int _Green;
    private ImageView _HeaderImage;
    private int _Home;
    private int _ImageId;
    private String _LabelAllFeeds;
    private String _LabelNewFeeds;
    private int _LastCategoryColor;
    private TextView _LastUpdated;
    private INavigatorHeaderOwner _Owner;
    private View _Progress;
    int _Red;
    private View _StartUpdate;
    int _Yellow;
    private String _previousSubtitle;

    /* loaded from: classes.dex */
    public interface INavigatorHeaderOwner {
        void showHideNewFeeds(boolean z);

        void startStopUpdate();
    }

    public void refreshHeaderImage() {
        int i = this._Default;
        if (ThemeManager.isDarkTheme()) {
            this._LastCategoryColor = 0;
        } else {
            FeedCategory activeFeedCategory = Configuration.getActiveFeedCategory();
            if (Configuration.actionBarUsesCategoryColor() && activeFeedCategory != null && activeFeedCategory.color() != 0) {
                if (this._Category < 0 || this._LastCategoryColor != activeFeedCategory.color()) {
                    this._LastCategoryColor = activeFeedCategory.color();
                    this._Category = this._LastCategoryColor;
                }
                i = this._Category;
            } else {
                i = CategoryManager.CategoryHome.equals(Configuration.getActiveFeedCategory()) ? this._Home : this._Default;
            }
        }
        setImageFrame(i);
    }

    private void setImageFrame(int i) {
        setBackgroundColor(i);
        if (this._ImageId > 0) {
            this._HeaderImage.setImageResource(this._ImageId);
            return;
        }
        if (i == this._Red || i == this._Home) {
            crossfadeImage(R.drawable.bg_navigator_header_02);
        } else if (i == this._Yellow) {
            crossfadeImage(R.drawable.bg_navigator_header_03);
        } else {
            crossfadeImage(R.drawable.bg_navigator_header_01);
        }
    }

    private void crossfadeImage(int i) {
        try {
            this._HeaderImage.setImageResource(i);
        } catch (OutOfMemoryError unused) {
            this._HeaderImage.setImageDrawable(null);
        }
    }

    public NavigatorHeader(Context context) {
        super(context);
        this._Category = -1;
        this._Red = Color.rgb(255, 37, 68);
        this._Green = Color.rgb(123, IHttpClient.SC_NO_CONTENT, 43);
        this._Yellow = Color.rgb(239, 183, 45);
        this._ImageId = -1;
    }

    public NavigatorHeader(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this._Category = -1;
        this._Red = Color.rgb(255, 37, 68);
        this._Green = Color.rgb(123, IHttpClient.SC_NO_CONTENT, 43);
        this._Yellow = Color.rgb(239, 183, 45);
        this._ImageId = -1;
    }

    public NavigatorHeader(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this._Category = -1;
        this._Red = Color.rgb(255, 37, 68);
        this._Green = Color.rgb(123, IHttpClient.SC_NO_CONTENT, 43);
        this._Yellow = Color.rgb(239, 183, 45);
        this._ImageId = -1;
    }

    public void setOwner(INavigatorHeaderOwner iNavigatorHeaderOwner) {
        this._Owner = iNavigatorHeaderOwner;
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        super.onFinishInflate();
        this._Home = ContextCompat.getColor(getContext(), R.color.bp_orange);
        this._Default = ContextCompat.getColor(getContext(), R.color.bp_primary_dark);
        this._ABUpdate = findViewById(R.id.ab_refresh);
        this._Progress = findViewById(R.id.progress);
        this._StartUpdate = findViewById(R.id.refresh);
        this._LastUpdated = (TextView) findViewById(R.id.last_updated);
        this._HeaderImage = (ImageView) findViewById(R.id.navdrawer_image);
        this._HeaderImage.setOnClickListener(new View.OnClickListener() { // from class: mobi.beyondpod.ui.views.navigator.NavigatorHeader.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (NavigatorHeader.this._ImageId == R.drawable.bg_navigator_header_01) {
                    NavigatorHeader.this._ImageId = R.drawable.bg_navigator_header_02;
                } else if (NavigatorHeader.this._ImageId == R.drawable.bg_navigator_header_02) {
                    NavigatorHeader.this._ImageId = R.drawable.bg_navigator_header_03;
                } else {
                    NavigatorHeader.this._ImageId = R.drawable.bg_navigator_header_01;
                }
                NavigatorHeader.this._HeaderImage.setImageResource(NavigatorHeader.this._ImageId);
            }
        });
        this._LabelNewFeeds = getResources().getString(R.string.navigator_feed_filter_new_only);
        this._LabelAllFeeds = getResources().getString(R.string.navigator_feed_filter_all);
        this._FeedFilter = (TextSwitcher) findViewById(R.id.feedFilter);
        this._FeedFilter.setFactory(new ViewSwitcher.ViewFactory() { // from class: mobi.beyondpod.ui.views.navigator.NavigatorHeader.2
            @Override // android.widget.ViewSwitcher.ViewFactory
            public View makeView() {
                return LayoutInflater.from(NavigatorHeader.this.getContext()).inflate(R.layout.navigator_header_switcher_item, (ViewGroup) NavigatorHeader.this._FeedFilter, false);
            }
        });
        findViewById(R.id.feedFilterSwitcher).setOnClickListener(new View.OnClickListener() { // from class: mobi.beyondpod.ui.views.navigator.NavigatorHeader.3
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (NavigatorHeader.this._Owner != null) {
                    NavigatorHeader.this._Owner.showHideNewFeeds(Configuration.getHideReadFeeds());
                    NavigatorHeader.this.updateFeedFilter();
                }
            }
        });
        this._ABUpdate.setOnClickListener(new View.OnClickListener() { // from class: mobi.beyondpod.ui.views.navigator.NavigatorHeader.4
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (NavigatorHeader.this._Owner != null) {
                    NavigatorHeader.this._Owner.startStopUpdate();
                }
            }
        });
        updateFeedFilter();
        refreshHeaderImage();
    }

    public void toggleUpdateAnimation(boolean z) {
        if (z) {
            this._Progress.setVisibility(0);
            this._StartUpdate.setVisibility(8);
            this._LastUpdated.setText(getResources().getString(R.string.update_and_download_updating_s, ""));
            this._LastUpdated.setVisibility(0);
            return;
        }
        this._Progress.setVisibility(8);
        this._StartUpdate.setVisibility(0);
        if (Configuration.getLastUpdateAndDownloadManagerRunTime() != null) {
            this._LastUpdated.setText(getResources().getString(R.string.navigator_updated, DateTime.formatTimeRelative(Configuration.getLastUpdateAndDownloadManagerRunTime())));
            this._LastUpdated.setVisibility(0);
        } else {
            this._LastUpdated.setVisibility(4);
        }
    }

    public void updateFeedFilter() {
        this._FeedFilter.setVisibility(Configuration.allowHidingRead() ? 0 : 4);
        String str = Configuration.getHideReadFeeds() ? this._LabelNewFeeds : this._LabelAllFeeds;
        if (StringUtils.isNullOrEmpty(this._previousSubtitle) || StringUtils.isNullOrEmpty(str) || StringUtils.equals(this._previousSubtitle, str)) {
            this._FeedFilter.setCurrentText(str);
        } else {
            this._FeedFilter.setText(str);
        }
        this._previousSubtitle = str;
    }
}
