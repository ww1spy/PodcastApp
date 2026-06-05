package mobi.beyondpod.ui.views.impexp;

import android.net.Uri;
import android.os.Bundle;
import android.support.v7.widget.LinearLayoutManager;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.ArrayAdapter;
import android.widget.Spinner;
import android.widget.SpinnerAdapter;
import com.android.volley.Response;
import mobi.beyondpod.R;
import mobi.beyondpod.rsscore.helpers.StringUtils;
import mobi.beyondpod.ui.commands.CommandManager;
import mobi.beyondpod.ui.views.base.BPRecyclerView;
import mobi.beyondpod.ui.views.impexp.FeedSearchService;
import mobi.beyondpod.ui.views.impexp.SearchResultFragmentBase;

/* loaded from: classes.dex */
public class AudiobookSearchResultFragment extends SearchResultFragmentBase {
    static final String FILTER_ALL = "*";
    protected static final String GENRE_FILTER_TAG = "GENRE_FILTER";
    protected static final String LANGUAGE_FILTER_TAG = "LANGUAGE_FILTER";
    private static final String TAG = "AudiobookSearchResultFragment";
    private Spinner _GenreSpinner;
    View _Header;
    private Spinner _LanguageSpinner;
    protected String _GenreFilter = FILTER_ALL;
    protected String _LanguageFilter = FILTER_ALL;
    protected AdapterView.OnItemSelectedListener _FilterSelectedListener = new AdapterView.OnItemSelectedListener() { // from class: mobi.beyondpod.ui.views.impexp.AudiobookSearchResultFragment.1
        @Override // android.widget.AdapterView.OnItemSelectedListener
        public void onNothingSelected(AdapterView<?> adapterView) {
        }

        @Override // android.widget.AdapterView.OnItemSelectedListener
        public void onItemSelected(AdapterView<?> adapterView, View view, int i, long j) {
            String str = AudiobookSearchResultFragment.this._GenreFilter;
            String str2 = AudiobookSearchResultFragment.this._LanguageFilter;
            if (adapterView == AudiobookSearchResultFragment.this._GenreSpinner) {
                if (i == 0) {
                    AudiobookSearchResultFragment.this._GenreFilter = AudiobookSearchResultFragment.FILTER_ALL;
                } else {
                    AudiobookSearchResultFragment.this._GenreFilter = AudiobookSearchResultFragment.this.getResources().getStringArray(R.array.audiobook_genres)[i];
                }
            } else if (i == 0) {
                AudiobookSearchResultFragment.this._LanguageFilter = AudiobookSearchResultFragment.FILTER_ALL;
            } else {
                AudiobookSearchResultFragment.this._LanguageFilter = AudiobookSearchResultFragment.this.getResources().getStringArray(R.array.audiobook_languages)[i];
            }
            if (StringUtils.equals(str, AudiobookSearchResultFragment.this._GenreFilter) && StringUtils.equals(str2, AudiobookSearchResultFragment.this._LanguageFilter)) {
                return;
            }
            AudiobookSearchResultFragment.this.DoSearch(AudiobookSearchResultFragment.this._Query);
        }
    };

    @Override // mobi.beyondpod.ui.views.impexp.SearchResultFragmentBase
    protected void onAfterDataLoaded(boolean z, String str) {
    }

    @Override // mobi.beyondpod.ui.views.impexp.SearchResultFragmentBase, android.support.v4.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        View onCreateView = super.onCreateView(layoutInflater, viewGroup, bundle);
        if (bundle == null) {
            DoSearch("");
        }
        return onCreateView;
    }

    @Override // mobi.beyondpod.ui.views.impexp.SearchResultFragmentBase
    protected View buildContents(LayoutInflater layoutInflater, Bundle bundle) {
        View inflate = layoutInflater.inflate(R.layout.audiobook_search_result_list_fragment, (ViewGroup) null);
        this._Header = inflate.findViewById(R.id.audiobook_header);
        this._Header.setVisibility(8);
        this._GenreSpinner = (Spinner) this._Header.findViewById(R.id.ab_genre);
        this._LanguageSpinner = (Spinner) this._Header.findViewById(R.id.ab_language);
        ArrayAdapter<CharSequence> createFromResource = ArrayAdapter.createFromResource(getActivity(), R.array.audiobook_genres, android.R.layout.simple_spinner_item);
        createFromResource.setDropDownViewResource(android.R.layout.simple_spinner_dropdown_item);
        this._GenreSpinner.setAdapter((SpinnerAdapter) createFromResource);
        ArrayAdapter<CharSequence> createFromResource2 = ArrayAdapter.createFromResource(getActivity(), R.array.audiobook_languages, android.R.layout.simple_spinner_item);
        createFromResource2.setDropDownViewResource(android.R.layout.simple_spinner_dropdown_item);
        this._LanguageSpinner.setAdapter((SpinnerAdapter) createFromResource2);
        this._ResultView = (BPRecyclerView) inflate.findViewById(R.id.feedSearchResultsListView);
        this._ResultView.addItemDecoration(new BPRecyclerView.ItemSpacerDecoration(0, getResources().getDimensionPixelSize(R.dimen.add_feed_screen_list_v_spacing)));
        LinearLayoutManager linearLayoutManager = new LinearLayoutManager(getActivity());
        linearLayoutManager.setOrientation(1);
        this._ResultView.setLayoutManager(linearLayoutManager);
        if (bundle != null) {
            super.onRestoreInstanceState(bundle);
            this._GenreFilter = bundle.getString(GENRE_FILTER_TAG);
            this._LanguageFilter = bundle.getString(LANGUAGE_FILTER_TAG);
            this._Header.setVisibility(StringUtils.isNullOrEmpty(this._Query) ? 0 : 8);
        }
        refreshFilter();
        this._InfoFooter = LayoutInflater.from(getActivity()).inflate(R.layout.feed_search_result_list_footer, (ViewGroup) this._ResultView, false);
        this._Adapter = new AudiobookSearchResultsListViewAdapter(this, R.layout.audiobook_result_list_item, this._SearchResults, this._ImageLoader, this._InfoFooter);
        return inflate;
    }

    @Override // mobi.beyondpod.ui.views.impexp.SearchResultFragmentBase
    protected void callSearch(String str, int i, SearchResultFragmentBase.SearchSuccessListener searchSuccessListener, Response.ErrorListener errorListener) throws FeedSearchService.ServiceException {
        if (!StringUtils.isNullOrEmpty(str)) {
            this._FeedSearchService.findByAudioBookQuery(str, i, this.PAGE_SIZE, searchSuccessListener, errorListener);
        } else {
            this._FeedSearchService.findByAudioBookCategory(this._GenreFilter, this._LanguageFilter, i, this.PAGE_SIZE, searchSuccessListener, errorListener);
        }
    }

    private void refreshFilter() {
        this._GenreSpinner.setOnItemSelectedListener(null);
        this._LanguageSpinner.setOnItemSelectedListener(null);
        String[] stringArray = getResources().getStringArray(R.array.audiobook_genres);
        String[] stringArray2 = getResources().getStringArray(R.array.audiobook_languages);
        int i = 0;
        while (true) {
            if (i == stringArray.length) {
                i = 0;
                break;
            } else if (stringArray[i].equals(this._GenreFilter)) {
                break;
            } else {
                i++;
            }
        }
        int i2 = 0;
        while (true) {
            if (i2 == stringArray2.length) {
                i2 = 0;
                break;
            } else if (stringArray2[i2].equals(this._LanguageFilter)) {
                break;
            } else {
                i2++;
            }
        }
        this._GenreSpinner.setSelection(i);
        this._LanguageSpinner.setSelection(i2);
        this._GenreSpinner.setOnItemSelectedListener(this._FilterSelectedListener);
        this._LanguageSpinner.setOnItemSelectedListener(this._FilterSelectedListener);
    }

    @Override // mobi.beyondpod.ui.views.impexp.SearchResultFragmentBase, android.support.v4.app.Fragment
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putString(GENRE_FILTER_TAG, this._GenreFilter);
        bundle.putString(LANGUAGE_FILTER_TAG, this._LanguageFilter);
    }

    @Override // mobi.beyondpod.ui.views.impexp.SearchResultFragmentBase
    void onBeforeDataLoaded(boolean z, String str) {
        this._Header.setVisibility(StringUtils.isNullOrEmpty(this._Query) ? 0 : 8);
    }

    public void DoSearch(String str) {
        if (str == null) {
            return;
        }
        this._Header.setVisibility(StringUtils.isNullOrEmpty(this._Query) ? 0 : 8);
        super.doSearchInternal(str);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // mobi.beyondpod.ui.views.impexp.SearchResultFragmentBase
    public void itemSelected(FeedSearchResult feedSearchResult) {
        CommandManager.cmdOpenFeedPreview(Uri.parse(feedSearchResult.getLink()), feedSearchResult.getOriginatingFeed() == null ? feedSearchResult.getTitle() : feedSearchResult.getOriginatingFeed(), feedSearchResult.getEpisodeUrl(), false);
    }

    @Override // mobi.beyondpod.ui.views.impexp.SearchResultFragmentBase
    CharSequence getEmptyText() {
        if (!StringUtils.isNullOrEmpty(this._Query)) {
            return getResources().getString(R.string.search_no_result_found, this._Query);
        }
        return getResources().getString(R.string.search_no_result_found, this._GenreFilter + ", " + this._LanguageFilter);
    }

    @Override // mobi.beyondpod.ui.views.impexp.SearchResultFragmentBase
    int getFooterCount() {
        return ((AudiobookSearchResultsListViewAdapter) this._Adapter).getDisplayFooter().booleanValue() ? 1 : 0;
    }

    @Override // mobi.beyondpod.ui.views.impexp.SearchResultFragmentBase
    void setDisplayFooter(Boolean bool) {
        ((AudiobookSearchResultsListViewAdapter) this._Adapter).displayFooter(bool);
    }
}
