package mobi.beyondpod.ui.views.impexp;

import android.net.Uri;
import android.os.Bundle;
import android.support.v7.widget.LinearLayoutManager;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.SubMenu;
import android.view.View;
import android.view.ViewGroup;
import com.android.volley.Response;
import java.util.Iterator;
import mobi.beyondpod.R;
import mobi.beyondpod.rsscore.Configuration;
import mobi.beyondpod.rsscore.Feed;
import mobi.beyondpod.rsscore.FeedList;
import mobi.beyondpod.rsscore.categories.CategoryManager;
import mobi.beyondpod.rsscore.helpers.CoreHelper;
import mobi.beyondpod.rsscore.helpers.StringUtils;
import mobi.beyondpod.rsscore.history.EpisodeHistoryManager;
import mobi.beyondpod.rsscore.repository.FeedRepository;
import mobi.beyondpod.services.auto.MediaIdHelper;
import mobi.beyondpod.ui.commands.CommandManager;
import mobi.beyondpod.ui.views.base.BPRecyclerView;
import mobi.beyondpod.ui.views.impexp.FeedSearchService;
import mobi.beyondpod.ui.views.impexp.SearchResultFragmentBase;
import org.json.JSONArray;

/* loaded from: classes.dex */
public class FeedSearchResultFragment extends SearchResultFragmentBase {
    protected static final String CATEGORY_TAG = "#CATEGORY:#";
    static final String FILTER_ALL = "*";
    static final String FILTER_AUDIO = "audio";
    static final String FILTER_TEXT = "text";
    static final String FILTER_VIDEO = "video";
    private static final int MENU_FILTER_MASTER = 100;
    private static final int MENU_SHOW_ALL = 101;
    private static final int MENU_SHOW_AUDIO_ONLY = 102;
    private static final int MENU_SHOW_VIDEO_ONLY = 103;
    protected static final String PLAIN_SEARCH_TAG = "#SEARCH:#";
    protected static final String SEARCH_FILTER_TAG = "SEARCH_FILTER";
    public static final String SECTION_CATEGORIES = "Categories";
    public static final String SECTION_INTERESTS = "Interests";
    public static final String SECTION_PUBLISHERS = "Publishers";
    public static final String SECTION_RECOMMENDED = "Recommended";
    public static final String SECTION_REGIONS = "Regions";
    public static final String SECTION_TRENDING = "Trending";
    protected String _FilterTag = FILTER_ALL;
    private boolean _DisplayFilter = false;
    String _MediaFilterType = null;

    @Override // mobi.beyondpod.ui.views.impexp.SearchResultFragmentBase, android.support.v4.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        View onCreateView = super.onCreateView(layoutInflater, viewGroup, bundle);
        Bundle arguments = getArguments();
        if (arguments != null && arguments.containsKey(AddFeedView.TAG_SECTION)) {
            loadCategory(arguments.getString(AddFeedView.TAG_SECTION));
        }
        return onCreateView;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // mobi.beyondpod.ui.views.impexp.SearchResultFragmentBase
    public View buildContents(LayoutInflater layoutInflater, Bundle bundle) {
        setHasOptionsMenu(true);
        View inflate = layoutInflater.inflate(R.layout.feed_search_result_list_fragment, (ViewGroup) null);
        this._ResultView = (BPRecyclerView) inflate.findViewById(R.id.feedSearchResultsListView);
        this._ResultView.addItemDecoration(new BPRecyclerView.ItemSpacerDecoration(getResources().getDimensionPixelSize(R.dimen.card_view_item_h_margin), getResources().getDimensionPixelSize(R.dimen.add_feed_screen_list_v_spacing)));
        LinearLayoutManager linearLayoutManager = new LinearLayoutManager(getActivity());
        linearLayoutManager.setOrientation(1);
        this._ResultView.setLayoutManager(linearLayoutManager);
        if (bundle != null) {
            super.onRestoreInstanceState(bundle);
            this._FilterTag = bundle.getString(SEARCH_FILTER_TAG);
        }
        this._InfoFooter = LayoutInflater.from(getActivity()).inflate(R.layout.feed_search_result_list_footer, (ViewGroup) this._ResultView, false);
        this._Adapter = new FeedSearchResultsAdapter(this, R.layout.feed_search_result_list_item, this._SearchResults, this._ImageLoader, this._InfoFooter);
        return inflate;
    }

    private String formatUserFeeds() {
        StringBuilder sb = new StringBuilder();
        FeedList mostUsedFeeds = EpisodeHistoryManager.getMostUsedFeeds();
        int i = 10;
        if (mostUsedFeeds.size() < 10) {
            for (Feed feed : FeedRepository.getRootFeed().subFeeds()) {
                if (CategoryManager.isInCategory(feed, Configuration.getActiveFeedCategory())) {
                    if (mostUsedFeeds.size() > 10) {
                        break;
                    }
                    if (!mostUsedFeeds.contains(feed)) {
                        mostUsedFeeds.add(feed);
                    }
                }
            }
        }
        Iterator it = mostUsedFeeds.iterator();
        while (it.hasNext()) {
            Feed feed2 = (Feed) it.next();
            if (feed2.hasUrl()) {
                if (sb.length() > 0) {
                    sb.append(MediaIdHelper.AUTO_MEDIA_ID_SEPERATOR);
                }
                sb.append(feed2.getFeedUrl());
                i--;
                if (i == 0 || sb.length() > 1000) {
                    break;
                }
            }
        }
        return sb.length() == 0 ? FILTER_ALL : sb.toString();
    }

    public void loadCategory(String str) {
        if (StringUtils.isNullOrEmpty(str)) {
            str = SECTION_TRENDING;
        }
        doSearch(CATEGORY_TAG + str);
    }

    @Override // mobi.beyondpod.ui.views.impexp.SearchResultFragmentBase
    protected void callSearch(String str, int i, SearchResultFragmentBase.SearchSuccessListener searchSuccessListener, Response.ErrorListener errorListener) throws FeedSearchService.ServiceException {
        if (StringUtils.equals(str, SECTION_PUBLISHERS)) {
            this._FeedSearchService.getPublishers(2, i, this.PAGE_SIZE, searchSuccessListener, errorListener);
        } else if (StringUtils.equals(str, SECTION_REGIONS)) {
            this._FeedSearchService.getPublishers(3, i, this.PAGE_SIZE, searchSuccessListener, errorListener);
        } else if (StringUtils.equals(str, SECTION_INTERESTS)) {
            this._FeedSearchService.getPublishers(4, i, this.PAGE_SIZE, searchSuccessListener, errorListener);
        } else if (StringUtils.equals(str, SECTION_CATEGORIES)) {
            this._FeedSearchService.getPublishers(1, i, this.PAGE_SIZE, searchSuccessListener, errorListener);
        }
        if (str.startsWith(CATEGORY_TAG)) {
            String replace = str.replace(CATEGORY_TAG, "");
            if (StringUtils.equals(SECTION_RECOMMENDED, replace)) {
                this._FeedSearchService.getRecommendedFeeds(formatUserFeeds(), this._FilterTag, i, this.PAGE_SIZE, searchSuccessListener, errorListener);
                return;
            } else if (StringUtils.equals(SECTION_TRENDING, replace)) {
                this._FeedSearchService.getTrendingEpisodes("", this._FilterTag, i, this.PAGE_SIZE, searchSuccessListener, errorListener);
                return;
            } else {
                this._FeedSearchService.findByPopularCategory(str.replace(CATEGORY_TAG, ""), this._FilterTag, i, this.PAGE_SIZE, searchSuccessListener, errorListener);
                return;
            }
        }
        this._FeedSearchService.findByQuery(str, this._FilterTag, i, this.PAGE_SIZE, searchSuccessListener, errorListener);
    }

    @Override // mobi.beyondpod.ui.views.impexp.SearchResultFragmentBase
    protected void parseJSONResults(String str, JSONArray jSONArray, Object[] objArr) throws FeedSearchService.ServiceException {
        super.parseJSONResults(str, jSONArray, objArr);
        if (str.startsWith(CATEGORY_TAG)) {
            objArr[1] = CATEGORY_TAG;
        } else {
            objArr[1] = PLAIN_SEARCH_TAG;
        }
    }

    @Override // mobi.beyondpod.ui.views.impexp.SearchResultFragmentBase, android.support.v4.app.Fragment
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putString(SEARCH_FILTER_TAG, this._FilterTag);
    }

    @Override // mobi.beyondpod.ui.views.impexp.SearchResultFragmentBase
    protected void onAfterDataLoaded(boolean z, String str) {
        getActivity().invalidateOptionsMenu();
    }

    @Override // mobi.beyondpod.ui.views.impexp.SearchResultFragmentBase
    void onBeforeDataLoaded(boolean z, String str) {
        this._MediaFilterType = str;
    }

    public void doSearch(String str) {
        if (str == null) {
            return;
        }
        super.doSearchInternal(str);
    }

    @Override // mobi.beyondpod.ui.views.impexp.SearchResultFragmentBase
    void itemSelected(FeedSearchResult feedSearchResult) {
        Uri uri;
        String link = feedSearchResult.getLink();
        if (StringUtils.isNullOrEmpty(link)) {
            CoreHelper.writeTraceEntry(TAG, "ERROR: Selected feed link is empty. Cannot parse URI.");
        }
        try {
            uri = Uri.parse(link);
        } catch (Exception e) {
            CoreHelper.writeTraceEntry(TAG, "ERROR: Cannot parse URI from selected feed link: " + link + ", error message: " + e.getMessage());
            uri = null;
        }
        CommandManager.cmdOpenFeedPreview(uri, feedSearchResult.getOriginatingFeed() == null ? feedSearchResult.getTitle() : feedSearchResult.getOriginatingFeed(), feedSearchResult.getEpisodeUrl(), false);
    }

    @Override // mobi.beyondpod.ui.views.impexp.SearchResultFragmentBase
    CharSequence getEmptyText() {
        return getResources().getString(R.string.search_no_result_found, this._Query.replace(CATEGORY_TAG, "")) + buildFilterForEmptyText();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public String buildFilterForEmptyText() {
        if (StringUtils.equals(this._FilterTag, FILTER_VIDEO)) {
            return " - " + getResources().getString(R.string.search_filter_video);
        }
        if (!StringUtils.equals(this._FilterTag, FILTER_AUDIO)) {
            return "";
        }
        return " - " + getResources().getString(R.string.search_filter_audio);
    }

    @Override // mobi.beyondpod.ui.views.impexp.SearchResultFragmentBase
    int getFooterCount() {
        return ((FeedSearchResultsAdapter) this._Adapter).getDisplayFooter().booleanValue() ? 1 : 0;
    }

    @Override // mobi.beyondpod.ui.views.impexp.SearchResultFragmentBase
    void setDisplayFooter(Boolean bool) {
        ((FeedSearchResultsAdapter) this._Adapter).setDisplayFooter(bool);
    }

    @Override // android.support.v4.app.Fragment
    public void onCreateOptionsMenu(Menu menu, MenuInflater menuInflater) {
        if (menu.findItem(100) == null && this._DisplayFilter) {
            SubMenu addSubMenu = menu.addSubMenu(0, 100, 2, R.string.search_filter_all);
            addSubMenu.getItem().setIcon(R.drawable.ic_action_filter).setShowAsAction(6);
            addSubMenu.add(0, 101, 0, R.string.search_filter_all);
            addSubMenu.add(0, 102, 1, R.string.search_filter_audio);
            addSubMenu.add(0, 103, 2, R.string.search_filter_video);
        }
        super.onCreateOptionsMenu(menu, menuInflater);
    }

    @Override // android.support.v4.app.Fragment
    public void onPrepareOptionsMenu(Menu menu) {
        MenuItem findItem = menu.findItem(100);
        if (findItem != null) {
            if ((this._SearchResults.size() == 0 && StringUtils.equals(FILTER_ALL, this._FilterTag)) || StringUtils.isNullOrEmpty(this._MediaFilterType) || PLAIN_SEARCH_TAG.equals(this._MediaFilterType)) {
                findItem.setVisible(false);
                return;
            }
            findItem.setVisible(true);
            if (StringUtils.equals(FILTER_AUDIO, this._FilterTag)) {
                findItem.setTitle(R.string.search_filter_audio);
            } else if (StringUtils.equals(FILTER_VIDEO, this._FilterTag)) {
                findItem.setTitle(R.string.search_filter_video);
            } else {
                findItem.setTitle(R.string.search_filter_all);
            }
        }
        super.onPrepareOptionsMenu(menu);
    }

    @Override // android.support.v4.app.Fragment
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        return applyFilter(menuItem.getItemId());
    }

    private boolean applyFilter(int i) {
        if (i == 101) {
            this._FilterTag = FILTER_ALL;
            doSearch(this._Query);
            getActivity().invalidateOptionsMenu();
            return true;
        }
        if (i == 102) {
            this._FilterTag = FILTER_AUDIO;
            doSearch(this._Query);
            getActivity().invalidateOptionsMenu();
            return true;
        }
        if (i != 103) {
            return false;
        }
        this._FilterTag = FILTER_VIDEO;
        doSearch(this._Query);
        getActivity().invalidateOptionsMenu();
        return true;
    }
}
