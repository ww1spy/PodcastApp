package mobi.beyondpod.ui.views.impexp;

import android.app.Activity;
import android.app.ProgressDialog;
import android.content.Context;
import android.os.Bundle;
import android.os.Handler;
import android.support.v4.app.Fragment;
import android.util.SparseBooleanArray;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.Toast;
import mobi.beyondpod.BeyondPodApplication;
import mobi.beyondpod.R;
import mobi.beyondpod.downloadengine.RssFeedCatcher;
import mobi.beyondpod.rsscore.Feed;
import mobi.beyondpod.rsscore.FeedList;
import mobi.beyondpod.rsscore.categories.CategoryManager;
import mobi.beyondpod.rsscore.categories.FeedCategory;
import mobi.beyondpod.rsscore.helpers.CoreHelper;
import mobi.beyondpod.rsscore.helpers.StringUtils;
import mobi.beyondpod.rsscore.repository.FeedRepository;
import mobi.beyondpod.rsscore.repository.RepositoryEvents;
import mobi.beyondpod.rsscore.rss.RssFeedCache;
import mobi.beyondpod.rsscore.rss.parsers.FeedParseData;
import mobi.beyondpod.ui.dialogs.SelectCategoryDialog;

/* loaded from: classes.dex */
public class OpmlListViewFragment extends Fragment implements AdapterView.OnItemClickListener, RepositoryEvents.RepositoryEventListener {
    private static final int MENU_IMPORT_SELECTED = 2;
    private static final int MENU_OPEN_SEARCH = 1;
    private static final int MENU_SELECT_ALL = 3;
    private static final int MENU_SELECT_NONE = 4;
    public static final String TAG = "OpmlListViewFragment";
    private OpmlListViewAdapter _Adapter;
    Feed _CurrentFeed;
    Feed _LastSelectedFeed;
    ListView _ListView;
    Thread _LoaderThread;
    ProgressDialog _ProgressDialog;
    Feed _SearchFeed;
    SelectCategoryDialog _SelectCategoryDialog;
    Feed _StartupFeed;
    private static final String SEARCH = CoreHelper.loadResourceString(R.string.MENU_opml_search);
    private static final String UPDATE_CANCELED = CoreHelper.loadResourceString(R.string.opml_list_view_update_canceled);
    private static final String CONNECTING = CoreHelper.loadResourceString(R.string.opml_list_view_connecting);
    private static final String DOWNLOADED = CoreHelper.loadResourceString(R.string.opml_list_view_downloaded);
    private static final String ERROR = CoreHelper.loadResourceString(R.string.opml_list_view_error);
    private static final String UPDATE_FAILED = CoreHelper.loadResourceString(R.string.opml_list_view_update_failed);
    private static final String BEYOND_POD_IS_LOADING_S = CoreHelper.loadResourceString(R.string.opml_list_view_beyondpod_is_loading_s);
    private static final String SELECTED_DIRECTORY_IS_CURRENTLY_UNAVAILABLE_PLEASE_TRY_AGAIN_LATER = CoreHelper.loadResourceString(R.string.opml_list_view_selected_directory_is_currently_unavailable);
    private static final String LOADING = CoreHelper.loadResourceString(R.string.opml_list_view_loading);
    private static final String NUM_FEEDS = CoreHelper.loadResourceString(R.string.categories_num_feeds);
    Handler _Handler = new Handler();
    RssFeedCatcher _Catcher = new RssFeedCatcher();
    private RssFeedCatcher.FeedUpdateListener _FeedUpdateListener = new RssFeedCatcher.FeedUpdateListener() { // from class: mobi.beyondpod.ui.views.impexp.OpmlListViewFragment.7
        @Override // mobi.beyondpod.downloadengine.RssFeedCatcher.FeedUpdateListener
        public void onFeedUpdateCompleted(Feed feed) {
            OpmlListViewFragment.this.onCacheAvailable();
        }

        @Override // mobi.beyondpod.downloadengine.RssFeedCatcher.FeedUpdateListener
        public void onFeedUpdateError(Feed feed, Exception exc) {
            OpmlListViewFragment.this.dismissProgressDialog();
            OpmlListViewFragment.this.showToast(OpmlListViewFragment.UPDATE_FAILED + "\n\n" + exc.getMessage());
            OpmlListViewFragment.this.setTitle(OpmlListViewFragment.ERROR);
        }

        @Override // mobi.beyondpod.downloadengine.RssFeedCatcher.FeedUpdateListener
        public void onFeedUpdateProgress(Feed feed) {
            OpmlListViewFragment.this.setTitle(OpmlListViewFragment.DOWNLOADED + " " + feed.updatePercent() + " %");
        }

        @Override // mobi.beyondpod.downloadengine.RssFeedCatcher.FeedUpdateListener
        public void onFeedUpdateStarted(Feed feed) {
            OpmlListViewFragment.this.setTitle(OpmlListViewFragment.CONNECTING);
        }

        @Override // mobi.beyondpod.downloadengine.RssFeedCatcher.FeedUpdateListener
        public void onFeedUpdateTerminated(Feed feed) {
            OpmlListViewFragment.this.dismissProgressDialog();
            OpmlListViewFragment.this.showToast(OpmlListViewFragment.UPDATE_CANCELED);
            OpmlListViewFragment.this.setTitle(OpmlListViewFragment.UPDATE_CANCELED);
        }
    };

    public void initialize(Feed feed) {
        this._CurrentFeed = feed;
    }

    @Override // android.support.v4.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        View inflate = layoutInflater.inflate(R.layout.opml_list_fragment, (ViewGroup) null);
        this._ListView = (ListView) inflate.findViewById(R.id.opmlResultsListView);
        this._ListView.setFadingEdgeLength((int) getResources().getDimension(R.dimen.list_view_fading_edge_width));
        this._ListView.setVerticalFadingEdgeEnabled(true);
        this._ListView.setItemsCanFocus(false);
        this._ListView.setChoiceMode(2);
        this._Adapter = new OpmlListViewAdapter(getActivity(), this._ListView);
        this._ListView.setAdapter((ListAdapter) this._Adapter);
        this._ListView.setOnItemClickListener(this);
        this._Catcher.setFeedUpdateListener(this._FeedUpdateListener);
        setHasOptionsMenu(true);
        if (this._CurrentFeed != null) {
            loadCurrentFeed();
        }
        return inflate;
    }

    @Override // android.support.v4.app.Fragment
    @Deprecated
    public void onAttach(Activity activity) {
        super.onAttach(activity);
        BeyondPodApplication.messageBus.subscribe(this, RepositoryEvents.RepositoryEvent.class);
    }

    @Override // android.support.v4.app.Fragment
    public void onAttach(Context context) {
        super.onAttach(context);
        BeyondPodApplication.messageBus.subscribe(this, RepositoryEvents.RepositoryEvent.class);
    }

    @Override // android.support.v4.app.Fragment
    public void onDetach() {
        super.onDetach();
        BeyondPodApplication.messageBus.unsubscribe(this, RepositoryEvents.RepositoryEvent.class);
    }

    public void loadCurrentFeed() {
        this._LoaderThread = new Thread(new Runnable() { // from class: mobi.beyondpod.ui.views.impexp.OpmlListViewFragment.1
            @Override // java.lang.Runnable
            public void run() {
                OpmlListViewFragment.this.loadCurrentFeedInternal();
            }
        });
        this._LoaderThread.setName("OPML Loader");
        this._LoaderThread.start();
    }

    public void searchFor(String str) {
        setRootFeed(FeedRepository.searchForFeeds(this._SearchFeed, new FeedRepository.FeedSearchArguments(str)));
    }

    @Override // android.support.v4.app.Fragment
    public void onDestroy() {
        if (this._LoaderThread != null && this._LoaderThread.isAlive()) {
            try {
                this._LoaderThread.interrupt();
            } catch (Exception unused) {
            }
        }
        super.onDestroy();
    }

    public void setTitle(final String str) {
        if (getActivity() == null) {
            return;
        }
        getActivity().runOnUiThread(new Runnable() { // from class: mobi.beyondpod.ui.views.impexp.OpmlListViewFragment.2
            @Override // java.lang.Runnable
            public void run() {
                OpmlListViewFragment.this.getActivity().setTitle(str);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void loadCurrentFeedInternal() {
        try {
            if (this._CurrentFeed != null) {
                if (this._CurrentFeed.isGReaderFeed()) {
                    this._SearchFeed = this._CurrentFeed;
                    setRootFeed(this._CurrentFeed);
                    return;
                }
                getActivity().runOnUiThread(new Runnable() { // from class: mobi.beyondpod.ui.views.impexp.OpmlListViewFragment.3
                    @Override // java.lang.Runnable
                    public void run() {
                        if (OpmlListViewFragment.this._ProgressDialog != null) {
                            OpmlListViewFragment.this._ProgressDialog.cancel();
                        }
                        OpmlListViewFragment.this._ProgressDialog = new ProgressDialog(OpmlListViewFragment.this.getActivity());
                        if (OpmlListViewFragment.this._CurrentFeed != null) {
                            OpmlListViewFragment.this._ProgressDialog.setMessage(String.format(OpmlListViewFragment.BEYOND_POD_IS_LOADING_S, OpmlListViewFragment.this._CurrentFeed.getName()));
                        }
                        OpmlListViewFragment.this._ProgressDialog.setIndeterminate(true);
                        OpmlListViewFragment.this._ProgressDialog.setCancelable(true);
                        OpmlListViewFragment.this._ProgressDialog.show();
                    }
                });
                if (this._CurrentFeed.hasUrl() && !"file".equals(this._CurrentFeed.getFeedUri().getScheme()) && (!RssFeedCache.hasCachedFileFor(this._CurrentFeed) || RssFeedCache.getCachedAgeFor(this._CurrentFeed) > 24.0d)) {
                    this._Catcher.updateFeed(this._CurrentFeed, true);
                } else {
                    onCacheAvailable();
                }
            }
        } catch (Exception e) {
            showToast(e.getMessage());
            dismissProgressDialog();
        }
        setTitle(this._CurrentFeed != null ? this._CurrentFeed.getName() : ERROR);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void dismissProgressDialog() {
        if (this._ListView == null) {
            return;
        }
        this._ListView.postDelayed(new Runnable() { // from class: mobi.beyondpod.ui.views.impexp.OpmlListViewFragment.4
            @Override // java.lang.Runnable
            public void run() {
                if (OpmlListViewFragment.this._ProgressDialog == null || !OpmlListViewFragment.this._ProgressDialog.isShowing()) {
                    return;
                }
                OpmlListViewFragment.this._ProgressDialog.dismiss();
            }
        }, 500L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onCacheAvailable() {
        try {
            setTitle(LOADING);
            FeedParseData feedParseData = new FeedParseData(0);
            RssFeedCache.loadFromCache(this._CurrentFeed, feedParseData);
            if (feedParseData.Feed != null && feedParseData.ParsedFeedType == 3) {
                this._SearchFeed = feedParseData.Feed;
                setRootFeed(this._SearchFeed);
            } else {
                showToast(SELECTED_DIRECTORY_IS_CURRENTLY_UNAVAILABLE_PLEASE_TRY_AGAIN_LATER);
            }
        } catch (Exception e) {
            showToast(e.getMessage());
        }
        dismissProgressDialog();
        setTitle(this._CurrentFeed.getName());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void showToast(final String str) {
        if (getActivity() != null) {
            getActivity().runOnUiThread(new Runnable() { // from class: mobi.beyondpod.ui.views.impexp.OpmlListViewFragment.5
                @Override // java.lang.Runnable
                public void run() {
                    Toast.makeText(OpmlListViewFragment.this.getActivity(), str, 1).show();
                }
            });
        }
    }

    public void setRootFeed(final Feed feed) {
        getActivity().runOnUiThread(new Runnable() { // from class: mobi.beyondpod.ui.views.impexp.OpmlListViewFragment.6
            @Override // java.lang.Runnable
            public void run() {
                OpmlListViewFragment.this._Adapter.setRootFeed(feed);
                OpmlListViewFragment.this.refreshTitle();
            }
        });
    }

    Feed rootFeed() {
        return this._Adapter.getRootFeed();
    }

    @Override // android.widget.AdapterView.OnItemClickListener
    public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
        this._LastSelectedFeed = this._Adapter.getFeedAtPosition(i);
        if (this._LastSelectedFeed != null) {
            Feed rootFeed = this._Adapter.getRootFeed();
            if (rootFeed.canNavigateUp() && this._LastSelectedFeed.equals(FeedRepository.getGoUpPlaceholder())) {
                setRootFeed(rootFeed.parentFeed());
                this._ListView.clearChoices();
            } else if (this._LastSelectedFeed.subFeeds().size() > 0) {
                setRootFeed(this._LastSelectedFeed);
                this._ListView.clearChoices();
            } else if (!this._Adapter.isFeedImportable(this._LastSelectedFeed)) {
                this._ListView.setItemChecked(i, false);
            }
        }
        refreshTitle();
    }

    @Override // android.support.v4.app.Fragment
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        switch (menuItem.getItemId()) {
            case 1:
                getActivity().onSearchRequested();
                return true;
            case 2:
                batchImport();
                return true;
            case 3:
                break;
            case 4:
                this._ListView.clearChoices();
                this._Adapter.notifyDataSetChanged();
                refreshTitle();
                return true;
            default:
                return false;
        }
        for (int i = 0; i < this._Adapter.getCount(); i++) {
            Feed feedAtPosition = this._Adapter.getFeedAtPosition(i);
            if (feedAtPosition != null && this._Adapter.isFeedImportable(feedAtPosition)) {
                this._ListView.setItemChecked(i, true);
            }
        }
        this._Adapter.notifyDataSetChanged();
        refreshTitle();
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void refreshTitle() {
        int size = getCheckedFeeds().size();
        if (this._Adapter.numCheckableFeeds() == 0) {
            setTitle(this._CurrentFeed != null ? this._CurrentFeed.getName() : ERROR);
        } else if (size > 0) {
            setTitle(String.format("%s/" + NUM_FEEDS, Integer.valueOf(getCheckedFeeds().size()), Integer.valueOf(this._Adapter.numCheckableFeeds())));
        } else {
            setTitle(String.format(NUM_FEEDS, Integer.valueOf(this._Adapter.numCheckableFeeds())));
        }
        getActivity().invalidateOptionsMenu();
    }

    @Override // android.support.v4.app.Fragment
    public void onPrepareOptionsMenu(Menu menu) {
        MenuItem findItem = menu.findItem(2);
        if (findItem != null) {
            findItem.setVisible(getCheckedFeeds().size() > 0);
        }
    }

    @Override // android.support.v4.app.Fragment
    public void onCreateOptionsMenu(Menu menu, MenuInflater menuInflater) {
        menu.clear();
        menu.add(0, 1, 0, R.string.MENU_open_search).setIcon(R.drawable.ic_action_search).setShowAsAction(2);
        menu.add(0, 2, 1, R.string.MENU_import_selected).setIcon(R.drawable.ic_action_import).setShowAsAction(6);
    }

    public void batchImport() {
        if (this._Adapter == null) {
            return;
        }
        final FeedList checkedFeeds = getCheckedFeeds();
        if (checkedFeeds.size() > 0) {
            String name = rootFeed().getName();
            if (rootFeed().canNavigateUp() && (StringUtils.equalsIgnoreCase("Video", name) || StringUtils.equalsIgnoreCase("Audio", name))) {
                name = rootFeed().parentFeed().getName();
            }
            if (!CategoryManager.hasUserCategories()) {
                Feed.addSubscriptionsInCategory(checkedFeeds, CategoryManager.Unassigned);
                this._ListView.clearChoices();
                this._Adapter.notifyDataSetChanged();
            } else {
                this._SelectCategoryDialog = new SelectCategoryDialog(getActivity(), new SelectCategoryDialog.OnCategorySelectedListener() { // from class: mobi.beyondpod.ui.views.impexp.OpmlListViewFragment.8
                    @Override // mobi.beyondpod.ui.dialogs.SelectCategoryDialog.OnCategorySelectedListener
                    public void onCategorySelected(FeedCategory feedCategory) {
                        if (feedCategory == null) {
                            return;
                        }
                        Feed.addSubscriptionsInCategory(checkedFeeds, feedCategory);
                        OpmlListViewFragment.this._ListView.clearChoices();
                        OpmlListViewFragment.this._Adapter.notifyDataSetChanged();
                    }
                });
                this._SelectCategoryDialog.createDialog(name).show();
            }
        }
    }

    private FeedList getCheckedFeeds() {
        SparseBooleanArray checkedItemPositions = this._ListView.getCheckedItemPositions();
        FeedList feedList = new FeedList();
        for (int i = 0; i < this._Adapter.getCount(); i++) {
            if (checkedItemPositions.get(i)) {
                feedList.add(this._Adapter.getFeedAtPosition(i));
            }
        }
        return feedList;
    }

    @Override // mobi.beyondpod.rsscore.repository.RepositoryEvents.RepositoryEventListener
    public void onRepositoryEvent(RepositoryEvents.RepositoryEvent repositoryEvent) {
        if (repositoryEvent.Type == 5) {
            this._Adapter.refresh();
        }
        refreshTitle();
    }
}
