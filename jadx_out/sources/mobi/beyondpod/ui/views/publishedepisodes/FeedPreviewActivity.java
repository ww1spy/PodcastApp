package mobi.beyondpod.ui.views.publishedepisodes;

import android.content.Context;
import android.content.Intent;
import android.graphics.drawable.ColorDrawable;
import android.net.Uri;
import android.os.Bundle;
import android.support.v4.app.FragmentActivity;
import android.support.v7.app.ActionBar;
import android.support.v7.app.AppCompatActivity;
import android.view.MenuItem;
import android.widget.FrameLayout;
import android.widget.Toast;
import java.util.List;
import java.util.UUID;
import mobi.beyondpod.BeyondPodApplication;
import mobi.beyondpod.R;
import mobi.beyondpod.rsscore.Configuration;
import mobi.beyondpod.rsscore.Feed;
import mobi.beyondpod.rsscore.helpers.CoreHelper;
import mobi.beyondpod.rsscore.helpers.MediaFile;
import mobi.beyondpod.rsscore.helpers.StringUtils;
import mobi.beyondpod.rsscore.repository.FeedRepository;
import mobi.beyondpod.rsscore.rss.entities.RssEnclosure;
import mobi.beyondpod.rsscore.rss.entities.RssFeedItem;
import mobi.beyondpod.ui.core.volley.ImageLoader;
import mobi.beyondpod.ui.core.volley.ImageLoaderTrack;
import mobi.beyondpod.ui.dialogs.PreviewPlayer;
import mobi.beyondpod.ui.views.FeedContentDataSource;
import mobi.beyondpod.ui.views.publishedepisodes.PublishedEpisodesListView;
import uk.co.chrisjenx.calligraphy.CalligraphyContextWrapper;

/* loaded from: classes.dex */
public class FeedPreviewActivity extends AppCompatActivity implements PublishedEpisodesListView.FeedContentListViewOwner, ImageLoader.ImageLoaderProvider {
    private static final String THIS_FEED_ALREADY_EXISTS_IN_CATEGORY = CoreHelper.loadResourceString(R.string.feed_settings_feed_already_exists_in_category);
    private Feed _CurrentFeed;
    PublishedEpisodesListView _FeedContent;
    ImageLoader _ImageLoader;

    @Override // mobi.beyondpod.ui.views.publishedepisodes.PublishedEpisodesListView.FeedContentListViewOwner
    public void enableDisableActionBarScroll(boolean z) {
    }

    @Override // mobi.beyondpod.ui.views.publishedepisodes.PublishedEpisodesListView.FeedContentListViewOwner
    public void enableDisablePullToRefresh(boolean z) {
    }

    @Override // mobi.beyondpod.ui.views.publishedepisodes.PublishedEpisodesListView.FeedContentListViewOwner
    public FragmentActivity getActivity() {
        return this;
    }

    @Override // mobi.beyondpod.ui.views.publishedepisodes.PublishedEpisodesListView.FeedContentListViewOwner
    public Feed getDefaultFeed() {
        return null;
    }

    @Override // mobi.beyondpod.ui.views.publishedepisodes.PublishedEpisodesListView.FeedContentListViewOwner
    public void onFeedUpdateCompleted() {
    }

    @Override // mobi.beyondpod.ui.views.publishedepisodes.PublishedEpisodesListView.FeedContentListViewOwner
    public void onFeedUpdateStarted() {
    }

    @Override // mobi.beyondpod.ui.views.publishedepisodes.PublishedEpisodesListView.FeedContentListViewOwner
    public void refreshActiveViewTitle() {
    }

    @Override // android.support.v7.app.AppCompatActivity, android.support.v4.app.FragmentActivity, android.support.v4.app.SupportActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        supportRequestWindowFeature(2);
        super.onCreate(bundle);
        setContentView(R.layout.feed_preview_activity);
        ActionBar supportActionBar = getSupportActionBar();
        if (supportActionBar != null) {
            supportActionBar.setDisplayOptions(15);
            supportActionBar.setBackgroundDrawable(new ColorDrawable(-12303292));
        }
        this._ImageLoader = new ImageLoaderTrack(this);
        this._FeedContent = (PublishedEpisodesListView) findViewById(R.id.feedContent);
        this._FeedContent.setPreviewMode();
        this._FeedContent.initialize(this);
        Uri data = getIntent().getData();
        if ("feed".equals(data.getScheme())) {
            List<String> pathSegments = data.getPathSegments();
            if (pathSegments.size() > 0) {
                this._CurrentFeed = Configuration.findFeedByIdInTempOrRepository(UUID.fromString(pathSegments.get(0)));
            }
        }
        if (this._CurrentFeed == null) {
            finish();
        } else {
            setTitle("feed Preview");
            this._FeedContent.loadFeed(this._CurrentFeed);
        }
    }

    @Override // android.support.v7.app.AppCompatActivity, android.support.v4.app.FragmentActivity, android.app.Activity, android.content.ComponentCallbacks
    public void onConfigurationChanged(android.content.res.Configuration configuration) {
        super.onConfigurationChanged(configuration);
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) this._FeedContent.getLayoutParams();
        int dimension = (int) getResources().getDimension(R.dimen.generic_screen_h_margin);
        layoutParams.rightMargin = dimension;
        layoutParams.leftMargin = dimension;
        this._FeedContent.setLayoutParams(layoutParams);
    }

    @Override // android.support.v4.app.FragmentActivity, android.app.Activity
    public void onResume() {
        super.onResume();
        this._FeedContent.onAfterActivate();
    }

    @Override // android.support.v4.app.FragmentActivity, android.app.Activity
    public void onPause() {
        this._FeedContent.onAfterDeactivate();
        super.onPause();
    }

    @Override // android.support.v7.app.AppCompatActivity, android.support.v4.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        this._ImageLoader.release();
        this._FeedContent.onActivityDestroy();
        FeedContentDataSource.clearItems();
        super.onDestroy();
    }

    @Override // android.app.Activity
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        int itemId = menuItem.getItemId();
        if (itemId == 1) {
            subscribeFeed(this, this._CurrentFeed.getFeedUrl(), this._CurrentFeed.getName(), this._CurrentFeed.getFeedImageUrl());
            return true;
        }
        if (itemId != 16908332) {
            return false;
        }
        finish();
        return true;
    }

    @Override // mobi.beyondpod.ui.views.publishedepisodes.PublishedEpisodesListView.FeedContentListViewOwner
    public void onPlayPause(RssFeedItem rssFeedItem) {
        String str;
        Intent intent;
        if (rssFeedItem == null || rssFeedItem.enclosure() == null) {
            return;
        }
        RssEnclosure enclosure = rssFeedItem.enclosure();
        try {
            String str2 = enclosure.Type;
            int mapMimeToContentType = MediaFile.mapMimeToContentType(str2);
            if (mapMimeToContentType == 0 || mapMimeToContentType == -1) {
                mapMimeToContentType = MediaFile.mapMimeToContentType(MediaFile.convertToStreamableMimeType(str2, enclosure.Url, ""));
            }
            if (mapMimeToContentType == 3) {
                intent = new Intent("android.intent.action.VIEW");
            } else {
                intent = new Intent(this, (Class<?>) PreviewPlayer.class);
            }
            intent.setDataAndType(Uri.parse(enclosure.Url), str2);
            intent.putExtra("android.intent.extra.title", enclosure.Parent.Title.toString());
            intent.putExtra("android.intent.extra.album", this._CurrentFeed.id().toString());
            intent.putExtra("output", mapMimeToContentType);
            startActivity(intent);
        } catch (Exception e) {
            BeyondPodApplication beyondPodApplication = BeyondPodApplication.getInstance();
            StringBuilder sb = new StringBuilder();
            sb.append(getString(R.string.command_manager_unable_to_start_external_player));
            if (StringUtils.isNullOrEmpty(e.getMessage())) {
                str = "";
            } else {
                str = "\n\n" + e.getMessage();
            }
            sb.append(str);
            Toast.makeText(beyondPodApplication, sb.toString(), 1).show();
        }
    }

    public static void subscribeFeed(Context context, String str, String str2, String str3) {
        if (str == null) {
            return;
        }
        Feed feedByUrl = FeedRepository.getFeedByUrl(str);
        if (feedByUrl != null) {
            Toast.makeText(context, String.format(THIS_FEED_ALREADY_EXISTS_IN_CATEGORY, feedByUrl.getCategories().getPrimary().name()), 1).show();
            return;
        }
        Feed feed = new Feed(UUID.randomUUID(), (Feed) null);
        feed.setFeedUrl(str);
        if (!StringUtils.isNullOrEmpty(str3)) {
            feed.setFeedImageUrl(str3);
        }
        if (!StringUtils.isNullOrEmpty(str2)) {
            str = str2;
        }
        feed.setName(str);
        Feed.subscribeToFeedAndPromptForCategory(context, feed, Configuration.getActiveFeedCategory().value(), true);
    }

    public static void subscribeAudioBook(Context context, String str, String str2) {
        if (str == null) {
            return;
        }
        Feed feedByUrl = FeedRepository.getFeedByUrl(str);
        if (feedByUrl != null) {
            Toast.makeText(context, String.format(THIS_FEED_ALREADY_EXISTS_IN_CATEGORY, feedByUrl.getCategories().getPrimary().name()), 1).show();
            return;
        }
        Feed feed = new Feed(UUID.randomUUID(), (Feed) null);
        feed.setType(6);
        feed.setFeedUrl(str);
        if (StringUtils.isNullOrEmpty(str2)) {
            str2 = str;
        }
        feed.setName(str2);
        feed.setForceUniqueTrackNames(false);
        feed.setTrackSortOrder(0);
        feed.setAllowAutoTrackDeletions(1);
        if (!StringUtils.isNullOrEmpty(str)) {
            feed.setFeedImageUrl(str);
        }
        Feed.subscribeToFeedAndPromptForCategory(context, feed, Configuration.getActiveFeedCategory().value(), true);
    }

    @Override // mobi.beyondpod.ui.views.publishedepisodes.PublishedEpisodesListView.FeedContentListViewOwner
    public void subscribeToCurrentFeed(Feed feed) {
        subscribeFeed(this, feed.getFeedUrl(), feed.getName(), feed.getFeedImageUrl());
    }

    @Override // mobi.beyondpod.ui.core.volley.ImageLoader.ImageLoaderProvider
    public ImageLoader getImageLoaderInstance() {
        return this._ImageLoader;
    }

    @Override // android.app.Activity, android.view.ContextThemeWrapper, android.content.ContextWrapper
    protected void attachBaseContext(Context context) {
        super.attachBaseContext(CalligraphyContextWrapper.wrap(context));
    }
}
