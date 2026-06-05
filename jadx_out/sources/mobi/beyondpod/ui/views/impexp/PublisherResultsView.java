package mobi.beyondpod.ui.views.impexp;

import android.content.Context;
import android.graphics.drawable.ColorDrawable;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentManager;
import android.support.v7.app.ActionBar;
import android.support.v7.app.AppCompatActivity;
import android.support.v7.widget.SearchView;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import mobi.beyondpod.BeyondPodApplication;
import mobi.beyondpod.R;
import mobi.beyondpod.downloadengine.UpdateAndDownloadManager;
import mobi.beyondpod.rsscore.FeedList;
import mobi.beyondpod.rsscore.helpers.CoreHelper;
import mobi.beyondpod.rsscore.helpers.StringUtils;
import mobi.beyondpod.rsscore.repository.FeedRepository;
import mobi.beyondpod.rsscore.repository.RepositoryEvents;
import mobi.beyondpod.ui.core.volley.ImageLoader;
import mobi.beyondpod.ui.core.volley.ImageLoaderFeedSearch;
import uk.co.chrisjenx.calligraphy.CalligraphyContextWrapper;

/* loaded from: classes.dex */
public class PublisherResultsView extends AppCompatActivity implements SearchView.OnQueryTextListener, ImageLoader.ImageLoaderProvider {
    public static final String EXTRA_PUBLISHER_ID = "publisherId";
    public static final String EXTRA_PUBLISHER_NAME = "publisherName";
    public static final String FRAGMENT_AUDIOBOK = "AUDIOBOOKS";
    public static final String FRAGMENT_PUBLISHER = "PUBLISHER";
    private static final int MENU_OPEN_SEARCH = 1;
    private static final String TAG = "PublisherResultsView";
    String _PublisherID;
    String _PublisherName;
    private FeedList _RecentlyImportedFeeds = new FeedList();
    private final RepositoryEvents.RepositoryEventListener _RepositoryListener = new RepositoryEvents.RepositoryEventListener() { // from class: mobi.beyondpod.ui.views.impexp.PublisherResultsView.1
        @Override // mobi.beyondpod.rsscore.repository.RepositoryEvents.RepositoryEventListener
        public void onRepositoryEvent(RepositoryEvents.RepositoryEvent repositoryEvent) {
            if (repositoryEvent.Type == 6) {
                PublisherResultsView.this._RecentlyImportedFeeds.add(repositoryEvent.Feed);
            }
        }
    };
    SearchView _searchView;
    private ImageLoader mImageLoader;

    @Override // android.support.v7.widget.SearchView.OnQueryTextListener
    public boolean onQueryTextChange(String str) {
        return false;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.support.v7.app.AppCompatActivity, android.support.v4.app.FragmentActivity, android.support.v4.app.SupportActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.mImageLoader = new ImageLoaderFeedSearch(this);
        if (!FeedRepository.isRepositoryAvailable()) {
            CoreHelper.writeTraceEntry(TAG, "Closing view because the repository is not Loaded");
            finish();
            return;
        }
        BeyondPodApplication.messageBus.subscribe(this._RepositoryListener, RepositoryEvents.RepositoryEvent.class);
        setContentView(R.layout.publishers_result_view);
        ActionBar supportActionBar = getSupportActionBar();
        if (supportActionBar != null) {
            supportActionBar.setDisplayOptions(4, 4);
            supportActionBar.setBackgroundDrawable(new ColorDrawable(-12303292));
        }
        if (bundle == null) {
            if (getIntent() != null) {
                this._PublisherName = getIntent().getStringExtra(EXTRA_PUBLISHER_NAME);
                this._PublisherID = getIntent().getStringExtra(EXTRA_PUBLISHER_ID);
            }
            if (this._PublisherID != null) {
                buildResultsFragment(findViewById(R.id.contentHolder), this._PublisherID, this._PublisherName);
            }
        } else {
            this._PublisherID = bundle.getString(EXTRA_PUBLISHER_ID);
            this._PublisherName = bundle.getString(EXTRA_PUBLISHER_NAME);
            Fragment findFragmentByTag = getSupportFragmentManager().findFragmentByTag(isAudiobookPublisher() ? FRAGMENT_AUDIOBOK : FRAGMENT_PUBLISHER);
            if (findFragmentByTag != null) {
                ((SearchResultFragmentBase) findFragmentByTag).setImageLoader(this.mImageLoader);
            }
        }
        getSupportActionBar().setTitle(this._PublisherName);
    }

    private void buildResultsFragment(View view, String str, String str2) {
        FragmentManager supportFragmentManager = getSupportFragmentManager();
        if (isAudiobookPublisher()) {
            AudiobookSearchResultFragment audiobookSearchResultFragment = new AudiobookSearchResultFragment();
            audiobookSearchResultFragment.setArguments(getIntent().getExtras());
            supportFragmentManager.beginTransaction().add(R.id.contentHolder, audiobookSearchResultFragment, FRAGMENT_AUDIOBOK).commit();
        } else {
            PublisherFeedsFragment publisherFeedsFragment = new PublisherFeedsFragment();
            publisherFeedsFragment.setArguments(getIntent().getExtras());
            supportFragmentManager.beginTransaction().add(R.id.contentHolder, publisherFeedsFragment, FRAGMENT_PUBLISHER).commit();
        }
    }

    private boolean isAudiobookPublisher() {
        return StringUtils.equals("69", this._PublisherID);
    }

    @Override // android.app.Activity
    public boolean onCreateOptionsMenu(Menu menu) {
        if (isAudiobookPublisher()) {
            getMenuInflater().inflate(R.menu.addfeed, menu);
            this._searchView = (SearchView) menu.findItem(R.id.menu_search).getActionView();
            if (this._searchView != null) {
                this._searchView.setIconifiedByDefault(true);
                this._searchView.setQueryHint(getResources().getString(R.string.audiobook_search_hint));
                this._searchView.setOnQueryTextListener(this);
            }
        }
        return true;
    }

    @Override // android.app.Activity
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        if (menuItem.getItemId() == 16908332) {
            finish();
            return true;
        }
        return super.onOptionsItemSelected(menuItem);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.support.v7.app.AppCompatActivity, android.support.v4.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        BeyondPodApplication.messageBus.unsubscribe(this._RepositoryListener, RepositoryEvents.RepositoryEvent.class);
        if (this._RecentlyImportedFeeds.size() > 0 && !UpdateAndDownloadManager.isWorking()) {
            UpdateAndDownloadManager.startNewFeedAddedUpdate(this._RecentlyImportedFeeds);
        }
        this.mImageLoader.release();
        super.onDestroy();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.support.v7.app.AppCompatActivity, android.support.v4.app.FragmentActivity, android.support.v4.app.SupportActivity, android.app.Activity
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putString(EXTRA_PUBLISHER_NAME, this._PublisherName);
        bundle.putString(EXTRA_PUBLISHER_ID, this._PublisherID);
    }

    @Override // android.support.v7.widget.SearchView.OnQueryTextListener
    public boolean onQueryTextSubmit(String str) {
        Fragment findFragmentByTag = getSupportFragmentManager().findFragmentByTag(FRAGMENT_AUDIOBOK);
        if (findFragmentByTag != null) {
            ((AudiobookSearchResultFragment) findFragmentByTag).DoSearch(str);
        }
        if (this._searchView == null) {
            return true;
        }
        this._searchView.clearFocus();
        return true;
    }

    @Override // mobi.beyondpod.ui.core.volley.ImageLoader.ImageLoaderProvider
    public ImageLoader getImageLoaderInstance() {
        return this.mImageLoader;
    }

    @Override // android.app.Activity, android.view.ContextThemeWrapper, android.content.ContextWrapper
    protected void attachBaseContext(Context context) {
        super.attachBaseContext(CalligraphyContextWrapper.wrap(context));
    }
}
