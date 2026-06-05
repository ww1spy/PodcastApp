package mobi.beyondpod.ui.views.impexp;

import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.graphics.drawable.ColorDrawable;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentStatePagerAdapter;
import android.support.v4.app.FragmentTransaction;
import android.support.v4.view.ViewPager;
import android.support.v7.app.ActionBar;
import android.support.v7.app.AppCompatActivity;
import android.support.v7.widget.SearchView;
import android.view.Menu;
import android.view.MenuItem;
import android.view.SubMenu;
import com.google.android.gms.actions.SearchIntents;
import mobi.beyondpod.BeyondPodApplication;
import mobi.beyondpod.R;
import mobi.beyondpod.downloadengine.UpdateAndDownloadManager;
import mobi.beyondpod.rsscore.FeedList;
import mobi.beyondpod.rsscore.helpers.AnalyticsTracker;
import mobi.beyondpod.rsscore.helpers.CoreHelper;
import mobi.beyondpod.rsscore.helpers.FileUtils;
import mobi.beyondpod.rsscore.helpers.StringUtils;
import mobi.beyondpod.rsscore.repository.FeedRepository;
import mobi.beyondpod.rsscore.repository.RepositoryEvents;
import mobi.beyondpod.ui.commands.CommandManager;
import mobi.beyondpod.ui.core.volley.ImageLoader;
import mobi.beyondpod.ui.core.volley.ImageLoaderFeedSearch;
import mobi.beyondpod.ui.views.feedsettings.FeedPropertiesView;
import uk.co.chrisjenx.calligraphy.CalligraphyContextWrapper;

/* loaded from: classes.dex */
public class AddFeedView extends AppCompatActivity implements SearchView.OnQueryTextListener, ImageLoader.ImageLoaderProvider {
    private static final int MENU_ADD_BY_URL = 2;
    private static final int MENU_IMPORT_FEEDLY = 7;
    private static final int MENU_IMPORT_MASTER = 6;
    private static final int MENU_IMPORT_OPML = 5;
    private static final int MENU_IMPORT_SD_CARD = 4;
    private static final int MENU_OPEN_SEARCH = 1;
    public static final int SEARCH_RESULTS_FRAGMENT = 0;
    private static final String TAG = "AddFeedView";
    private static final String TAG_ACTIVE_RESULT_FRAGMENT = "ACTIVE_FRAGMENT";
    private static final String TAG_QUERY = "QUERY";
    public static final String TAG_SECTION = "SECTION";
    public static final int VIEW_PAGER = 1;
    private int _ActiveResultFragment;
    SearchView _searchView;
    private TabsPagerAdapter mAdapter;
    private String[] sections;
    private AddFeedSectionsTabStrip tabStrip;
    private ViewPager viewPager;
    private ImageLoader mImageLoader = null;
    String _Query = null;
    private FeedList _RecentlyImportedFeeds = new FeedList();
    private final RepositoryEvents.RepositoryEventListener _RepositoryListener = new RepositoryEvents.RepositoryEventListener() { // from class: mobi.beyondpod.ui.views.impexp.AddFeedView.2
        @Override // mobi.beyondpod.rsscore.repository.RepositoryEvents.RepositoryEventListener
        public void onRepositoryEvent(RepositoryEvents.RepositoryEvent repositoryEvent) {
            if (repositoryEvent.Type == 6) {
                AddFeedView.this._RecentlyImportedFeeds.add(repositoryEvent.Feed);
            }
        }
    };

    @Override // android.support.v7.widget.SearchView.OnQueryTextListener
    public boolean onQueryTextChange(String str) {
        return false;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.support.v7.app.AppCompatActivity, android.support.v4.app.FragmentActivity, android.support.v4.app.SupportActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        supportRequestWindowFeature(2);
        super.onCreate(bundle);
        if (!FeedRepository.isRepositoryAvailable()) {
            CoreHelper.writeTraceEntry(TAG, "Closing view because the repository is not Loaded");
            finish();
            return;
        }
        BeyondPodApplication.messageBus.subscribe(this._RepositoryListener, RepositoryEvents.RepositoryEvent.class);
        setContentView(R.layout.add_feed_view);
        ActionBar supportActionBar = getSupportActionBar();
        if (supportActionBar != null) {
            supportActionBar.setBackgroundDrawable(new ColorDrawable(-12303292));
            try {
                supportActionBar.setDisplayOptions(4, 4);
            } catch (NullPointerException e) {
                CoreHelper.writeLogEntry(TAG, "AddFeedView.onCreate() failed: " + e.getMessage());
            }
        }
        this.viewPager = (ViewPager) findViewById(R.id.pager);
        this.mAdapter = new TabsPagerAdapter(getSupportFragmentManager());
        this.sections = getResources().getStringArray(R.array.add_feed_section_values);
        this.mAdapter.setTabs(this.sections);
        this.viewPager.setAdapter(this.mAdapter);
        this.tabStrip = (AddFeedSectionsTabStrip) findViewById(R.id.popularCategoriesTabStrip);
        this.tabStrip.setViewPager(this.viewPager);
        this.tabStrip.setAddFeedView(this);
        if (bundle == null) {
            String stringExtra = getIntent() != null ? getIntent().getStringExtra("Query") : null;
            if (stringExtra != null) {
                openFeedSearch(stringExtra);
                return;
            } else {
                onCategoryChanged(FeedSearchResultFragment.SECTION_CATEGORIES);
                return;
            }
        }
        this._Query = bundle.getString(TAG_QUERY);
        togglePopularCategories(StringUtils.isNullOrEmpty(this._Query));
        showResultsFragment(bundle.getInt(TAG_ACTIVE_RESULT_FRAGMENT));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.support.v4.app.FragmentActivity, android.app.Activity
    public void onNewIntent(Intent intent) {
        if ("android.intent.action.SEARCH".equals(intent.getAction())) {
            openFeedSearch(intent.getStringExtra(SearchIntents.EXTRA_QUERY));
        }
        super.onNewIntent(intent);
    }

    @Override // android.app.Activity
    public boolean onCreateOptionsMenu(Menu menu) {
        getMenuInflater().inflate(R.menu.addfeed, menu);
        this._searchView = (SearchView) menu.findItem(R.id.menu_search).getActionView();
        if (this._searchView != null) {
            this._searchView.setIconifiedByDefault(true);
            if (!StringUtils.isNullOrEmpty(this._Query)) {
                this._searchView.setQuery(this._Query, false);
            }
            this._searchView.setQueryHint(getResources().getString(R.string.feed_search_hint));
            this._searchView.setOnQueryTextListener(this);
        }
        SubMenu addSubMenu = menu.addSubMenu(0, 6, 3, R.string.add_feed_import_feeds_title);
        addSubMenu.getItem().setIcon(R.drawable.ic_action_import).setShowAsAction(6);
        addSubMenu.add(0, 2, 0, R.string.add_feed_dlg_enter_feed_url);
        addSubMenu.add(0, 7, 1, R.string.add_feed_dlg_import_from_google_reader);
        addSubMenu.add(0, 4, 2, R.string.add_feed_dlg_import_from_sd_card_folder);
        addSubMenu.add(0, 5, 3, R.string.add_feed_dlg_import_from_opml_file);
        return true;
    }

    private void showImportUsingPopup() {
        new AlertDialog.Builder(this).setTitle(R.string.add_feed_import_feeds_title).setItems(new String[]{getResources().getString(R.string.add_feed_dlg_enter_feed_url), getResources().getString(R.string.add_feed_dlg_import_from_sd_card_folder), getResources().getString(R.string.add_feed_dlg_import_from_opml_file), getResources().getString(R.string.add_feed_dlg_import_from_google_reader)}, new DialogInterface.OnClickListener() { // from class: mobi.beyondpod.ui.views.impexp.AddFeedView.1
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
                if (i == 0) {
                    AddFeedView.this.showImportOption(2);
                } else if (i == 1) {
                    AddFeedView.this.showImportOption(4);
                } else if (i == 2) {
                    AddFeedView.this.showImportOption(5);
                } else {
                    AddFeedView.this.showImportOption(7);
                }
                dialogInterface.dismiss();
            }
        }).create().show();
    }

    public void openFeedSearch(String str) {
        if (str != null) {
            str = str.trim();
        }
        if (StringUtils.isNullOrEmpty(str) || checkAndOpenAddFeedDialogFor(str)) {
            return;
        }
        this._Query = str;
        showResultsFragment(0);
        togglePopularCategories(false);
        this.mAdapter = null;
        this.viewPager.setAdapter(null);
        ((FeedSearchResultFragment) getSupportFragmentManager().findFragmentById(R.id.feedSearchResultsFragment)).doSearch(str);
        AnalyticsTracker.onViewDisplayed(16);
    }

    private void togglePopularCategories(boolean z) {
        this.tabStrip.setVisibility(z ? 0 : 8);
    }

    private void showResultsFragment(int i) {
        FragmentManager supportFragmentManager = getSupportFragmentManager();
        Fragment findFragmentById = supportFragmentManager.findFragmentById(R.id.feedSearchResultsFragment);
        FragmentTransaction beginTransaction = supportFragmentManager.beginTransaction();
        if (i == 0) {
            beginTransaction.show(findFragmentById);
            this.viewPager.setVisibility(8);
        } else {
            beginTransaction.hide(findFragmentById);
            this.viewPager.setVisibility(0);
        }
        beginTransaction.setTransition(0);
        beginTransaction.commitAllowingStateLoss();
        unfocusSearchBox();
        this._ActiveResultFragment = i;
    }

    boolean checkAndOpenAddFeedDialogFor(String str) {
        if (StringUtils.isNullOrEmpty(str)) {
            return false;
        }
        String trim = str.trim();
        String lowerCase = trim.toLowerCase();
        if (!CoreHelper.isValidUrl(trim) && !FileUtils.exists(lowerCase) && !FileUtils.exists(trim)) {
            return false;
        }
        openAddFeedDialog(trim);
        return true;
    }

    private void openAddFeedDialog(String str) {
        Intent intent = new Intent(this, (Class<?>) FeedPropertiesView.class);
        intent.putExtra(FeedPropertiesView.URL_KEY, str);
        startActivity(intent);
    }

    @Override // android.app.Activity
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        if (menuItem.getItemId() != 16908332) {
            return showImportOption(menuItem.getItemId()) || super.onOptionsItemSelected(menuItem);
        }
        finish();
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean showImportOption(int i) {
        if (i == 2) {
            openAddFeedDialog("http://");
            finish();
            return true;
        }
        if (i == 7) {
            CommandManager.cmdOpenImportFeeds(4);
            finish();
            return true;
        }
        switch (i) {
            case 4:
                CommandManager.cmdOpenImportFeeds(3);
                finish();
                return true;
            case 5:
                CommandManager.cmdOpenImportFeeds(2);
                finish();
                return true;
            default:
                return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.support.v7.app.AppCompatActivity, android.support.v4.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        BeyondPodApplication.messageBus.unsubscribe(this._RepositoryListener, RepositoryEvents.RepositoryEvent.class);
        if (this._RecentlyImportedFeeds.size() > 0 && !UpdateAndDownloadManager.isWorking()) {
            UpdateAndDownloadManager.startNewFeedAddedUpdate(this._RecentlyImportedFeeds);
        }
        if (this.mImageLoader != null) {
            this.mImageLoader.release();
        }
        super.onDestroy();
    }

    @Override // android.support.v7.widget.SearchView.OnQueryTextListener
    public boolean onQueryTextSubmit(String str) {
        openFeedSearch(str);
        if (this._searchView == null) {
            return true;
        }
        this._searchView.clearFocus();
        return true;
    }

    public void onCategoryChanged(String str) {
        this._Query = null;
        if (StringUtils.isNullOrEmpty(str)) {
            str = FeedSearchResultFragment.SECTION_PUBLISHERS;
        }
        togglePopularCategories(true);
        showResultsFragment(1);
        for (int i = 0; i < this.sections.length; i++) {
            if (str.equals(this.sections[i])) {
                this.viewPager.setCurrentItem(i);
                return;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.support.v7.app.AppCompatActivity, android.support.v4.app.FragmentActivity, android.support.v4.app.SupportActivity, android.app.Activity
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putString(TAG_QUERY, this._Query);
        bundle.putInt(TAG_ACTIVE_RESULT_FRAGMENT, this._ActiveResultFragment);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.support.v4.app.FragmentActivity, android.app.Activity
    public void onResume() {
        super.onResume();
        unfocusSearchBox();
    }

    private void unfocusSearchBox() {
        if (this._searchView != null) {
            this._searchView.postDelayed(new Runnable() { // from class: mobi.beyondpod.ui.views.impexp.AddFeedView.3
                @Override // java.lang.Runnable
                public void run() {
                    AddFeedView.this._searchView.clearFocus();
                }
            }, 300L);
        }
    }

    @Override // mobi.beyondpod.ui.core.volley.ImageLoader.ImageLoaderProvider
    public ImageLoader getImageLoaderInstance() {
        if (this.mImageLoader == null) {
            this.mImageLoader = new ImageLoaderFeedSearch(this);
        }
        return this.mImageLoader;
    }

    @Override // android.app.Activity, android.view.ContextThemeWrapper, android.content.ContextWrapper
    protected void attachBaseContext(Context context) {
        super.attachBaseContext(CalligraphyContextWrapper.wrap(context));
    }

    /* loaded from: classes.dex */
    public class TabsPagerAdapter extends FragmentStatePagerAdapter {
        private String[] tabs;

        public TabsPagerAdapter(FragmentManager fragmentManager) {
            super(fragmentManager);
        }

        public void setTabs(String[] strArr) {
            this.tabs = strArr;
        }

        @Override // android.support.v4.app.FragmentStatePagerAdapter
        public Fragment getItem(int i) {
            Fragment publishersFragment;
            Bundle bundle = new Bundle();
            String str = AddFeedView.this.sections[i];
            if (StringUtils.equals(str, FeedSearchResultFragment.SECTION_PUBLISHERS) || StringUtils.equals(str, FeedSearchResultFragment.SECTION_REGIONS) || StringUtils.equals(str, FeedSearchResultFragment.SECTION_CATEGORIES) || StringUtils.equals(str, FeedSearchResultFragment.SECTION_INTERESTS)) {
                publishersFragment = new PublishersFragment();
                bundle.putString(AddFeedView.TAG_SECTION, this.tabs[i]);
            } else {
                publishersFragment = new FeedSearchResultFragment();
                bundle.putString(AddFeedView.TAG_SECTION, this.tabs[i]);
            }
            publishersFragment.setArguments(bundle);
            return publishersFragment;
        }

        @Override // android.support.v4.view.PagerAdapter
        public int getCount() {
            return this.tabs.length;
        }
    }
}
