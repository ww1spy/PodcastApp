package mobi.beyondpod.ui.views.impexp;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.android.volley.Response;
import mobi.beyondpod.R;
import mobi.beyondpod.rsscore.helpers.StringUtils;
import mobi.beyondpod.ui.views.impexp.FeedSearchService;
import mobi.beyondpod.ui.views.impexp.SearchResultFragmentBase;

/* loaded from: classes.dex */
public class PublisherFeedsFragment extends FeedSearchResultFragment {
    private static final String PUBLISHER_NAME_TAG = "PUBLISHER_NAME";
    protected static final String PUBLISHER_TAG = "#PUBLISHER:#";
    String _PublisherName;

    public void loadPublisherFeeds(String str, String str2) {
        if (StringUtils.isNullOrEmpty(str2)) {
            return;
        }
        this._PublisherName = str;
        doSearch(PUBLISHER_TAG + str2);
    }

    @Override // mobi.beyondpod.ui.views.impexp.FeedSearchResultFragment, mobi.beyondpod.ui.views.impexp.SearchResultFragmentBase, android.support.v4.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        View onCreateView = super.onCreateView(layoutInflater, viewGroup, bundle);
        if (bundle == null) {
            loadPublisherFeeds(getArguments().getString(PublisherResultsView.EXTRA_PUBLISHER_NAME), getArguments().getString(PublisherResultsView.EXTRA_PUBLISHER_ID));
        }
        return onCreateView;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // mobi.beyondpod.ui.views.impexp.FeedSearchResultFragment, mobi.beyondpod.ui.views.impexp.SearchResultFragmentBase
    public View buildContents(LayoutInflater layoutInflater, Bundle bundle) {
        if (bundle != null) {
            this._PublisherName = bundle.getString(PUBLISHER_NAME_TAG);
        }
        return super.buildContents(layoutInflater, bundle);
    }

    @Override // mobi.beyondpod.ui.views.impexp.FeedSearchResultFragment, mobi.beyondpod.ui.views.impexp.SearchResultFragmentBase
    protected void callSearch(String str, int i, SearchResultFragmentBase.SearchSuccessListener searchSuccessListener, Response.ErrorListener errorListener) throws FeedSearchService.ServiceException {
        this._FeedSearchService.getPublisherFeeds(str.replace(PUBLISHER_TAG, ""), this._FilterTag, i, this.PAGE_SIZE, searchSuccessListener, errorListener);
    }

    @Override // mobi.beyondpod.ui.views.impexp.FeedSearchResultFragment, mobi.beyondpod.ui.views.impexp.SearchResultFragmentBase
    CharSequence getEmptyText() {
        return getResources().getString(R.string.search_no_result_found, this._PublisherName) + buildFilterForEmptyText();
    }

    @Override // mobi.beyondpod.ui.views.impexp.FeedSearchResultFragment, mobi.beyondpod.ui.views.impexp.SearchResultFragmentBase, android.support.v4.app.Fragment
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putString(PUBLISHER_NAME_TAG, this._PublisherName);
    }
}
