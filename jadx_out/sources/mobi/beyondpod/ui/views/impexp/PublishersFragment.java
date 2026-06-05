package mobi.beyondpod.ui.views.impexp;

import android.content.Intent;
import android.os.Bundle;
import android.support.v7.widget.GridLayoutManager;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.android.volley.Response;
import mobi.beyondpod.BeyondPodApplication;
import mobi.beyondpod.R;
import mobi.beyondpod.rsscore.helpers.StringUtils;
import mobi.beyondpod.ui.views.base.BPRecyclerView;
import mobi.beyondpod.ui.views.impexp.FeedSearchService;
import mobi.beyondpod.ui.views.impexp.SearchResultFragmentBase;

/* loaded from: classes.dex */
public class PublishersFragment extends SearchResultFragmentBase {
    protected static final String SEARCH_RESULT_ADAPTER_FORMAT_TAG = "SEARCH_RESULT_ADAPTER_FORMAT_TYPE";

    @Override // mobi.beyondpod.ui.views.impexp.SearchResultFragmentBase
    int getFooterCount() {
        return 0;
    }

    @Override // mobi.beyondpod.ui.views.impexp.SearchResultFragmentBase
    protected void onAfterDataLoaded(boolean z, String str) {
    }

    @Override // mobi.beyondpod.ui.views.impexp.SearchResultFragmentBase
    void onBeforeDataLoaded(boolean z, String str) {
    }

    @Override // mobi.beyondpod.ui.views.impexp.SearchResultFragmentBase
    void setDisplayFooter(Boolean bool) {
    }

    @Override // mobi.beyondpod.ui.views.impexp.SearchResultFragmentBase, android.support.v4.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        View onCreateView = super.onCreateView(layoutInflater, viewGroup, bundle);
        Bundle arguments = getArguments();
        if (arguments != null && arguments.containsKey(AddFeedView.TAG_SECTION)) {
            doSearch(arguments.getString(AddFeedView.TAG_SECTION));
        }
        return onCreateView;
    }

    @Override // mobi.beyondpod.ui.views.impexp.SearchResultFragmentBase
    protected View buildContents(LayoutInflater layoutInflater, Bundle bundle) {
        this.PAGE_SIZE = 80;
        int dimension = (int) getActivity().getResources().getDimension(R.dimen.feed_search_publisher_grid_h_spacing);
        int dimension2 = (int) getActivity().getResources().getDimension(R.dimen.feed_search_publisher_grid_v_spacing);
        View inflate = layoutInflater.inflate(R.layout.publishers_result_grid_fragment, (ViewGroup) null);
        this._ResultView = (BPRecyclerView) inflate.findViewById(R.id.publishersGridView);
        this._ResultView.addItemDecoration(new BPRecyclerView.ItemSpacerDecoration(dimension, dimension2));
        GridLayoutManager gridLayoutManager = new GridLayoutManager(getActivity(), getResources().getInteger(R.integer.publisherList_num_columns));
        gridLayoutManager.setOrientation(1);
        this._ResultView.setLayoutManager(gridLayoutManager);
        int i = PublishersGridViewAdapter.RESULT_FORMAT_CATEGORIES;
        if (bundle != null) {
            super.onRestoreInstanceState(bundle);
            i = bundle.getInt(SEARCH_RESULT_ADAPTER_FORMAT_TAG, PublishersGridViewAdapter.RESULT_FORMAT_CATEGORIES);
        }
        this._Adapter = new PublishersGridViewAdapter(this, this._SearchResults, this._ImageLoader, i);
        return inflate;
    }

    @Override // mobi.beyondpod.ui.views.impexp.SearchResultFragmentBase
    protected void callSearch(String str, int i, SearchResultFragmentBase.SearchSuccessListener searchSuccessListener, Response.ErrorListener errorListener) throws FeedSearchService.ServiceException {
        if (StringUtils.equals(str, FeedSearchResultFragment.SECTION_PUBLISHERS)) {
            ((PublishersGridViewAdapter) this._Adapter).setResultFormat(PublishersGridViewAdapter.RESULT_FORMAT_PUBLISHERS);
            this._FeedSearchService.getPublishers(2, i, this.PAGE_SIZE, searchSuccessListener, errorListener);
            return;
        }
        if (StringUtils.equals(str, FeedSearchResultFragment.SECTION_REGIONS)) {
            ((PublishersGridViewAdapter) this._Adapter).setResultFormat(PublishersGridViewAdapter.RESULT_FORMAT_REGIONS);
            this._FeedSearchService.getPublishers(3, i, this.PAGE_SIZE, searchSuccessListener, errorListener);
        } else if (StringUtils.equals(str, FeedSearchResultFragment.SECTION_CATEGORIES)) {
            ((PublishersGridViewAdapter) this._Adapter).setResultFormat(PublishersGridViewAdapter.RESULT_FORMAT_CATEGORIES);
            this._FeedSearchService.getPublishers(1, i, this.PAGE_SIZE, searchSuccessListener, errorListener);
        } else if (StringUtils.equals(str, FeedSearchResultFragment.SECTION_INTERESTS)) {
            ((PublishersGridViewAdapter) this._Adapter).setResultFormat(PublishersGridViewAdapter.RESULT_FORMAT_INTERESTS);
            this._FeedSearchService.getPublishers(4, i, this.PAGE_SIZE, searchSuccessListener, errorListener);
        }
    }

    @Override // mobi.beyondpod.ui.views.impexp.SearchResultFragmentBase, android.support.v4.app.Fragment
    public void onSaveInstanceState(Bundle bundle) {
        bundle.putInt(SEARCH_RESULT_ADAPTER_FORMAT_TAG, ((PublishersGridViewAdapter) this._Adapter).getResultFormat());
        super.onSaveInstanceState(bundle);
    }

    public void doSearch(String str) {
        if (str == null) {
            return;
        }
        super.doSearchInternal(str);
    }

    @Override // mobi.beyondpod.ui.views.impexp.SearchResultFragmentBase
    void itemSelected(FeedSearchResult feedSearchResult) {
        Intent intent = new Intent(BeyondPodApplication.getInstance(), (Class<?>) PublisherResultsView.class);
        intent.putExtra(PublisherResultsView.EXTRA_PUBLISHER_ID, feedSearchResult.getLink());
        intent.putExtra(PublisherResultsView.EXTRA_PUBLISHER_NAME, feedSearchResult.getTitle());
        startActivity(intent);
    }

    @Override // mobi.beyondpod.ui.views.impexp.SearchResultFragmentBase
    CharSequence getEmptyText() {
        return getResources().getString(R.string.search_no_result_found, this._Query);
    }
}
