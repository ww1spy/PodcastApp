package mobi.beyondpod.ui.views.impexp;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.support.v7.widget.LinearLayoutManager;
import android.support.v7.widget.RecyclerView;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.android.volley.Response;
import com.android.volley.VolleyError;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import mobi.beyondpod.BeyondPodApplication;
import mobi.beyondpod.R;
import mobi.beyondpod.rsscore.Configuration;
import mobi.beyondpod.rsscore.helpers.CoreHelper;
import mobi.beyondpod.rsscore.repository.RepositoryEvents;
import mobi.beyondpod.ui.core.volley.ImageLoader;
import mobi.beyondpod.ui.views.base.BPRecyclerView;
import mobi.beyondpod.ui.views.impexp.FeedSearchService;
import org.json.JSONArray;

/* loaded from: classes.dex */
public abstract class SearchResultFragmentBase extends Fragment implements RepositoryEvents.RepositoryEventListener {
    protected static final int MAX_PAGE_COUNT = 20;
    protected static final String SEARCH_RESULTS_TAG = "SEARCH_RESULTS";
    protected static final String SEARCH_RESULT_NO_MORE_RESULTS_TAG = "SEARCH_RESULT_NO_MORE_RESULTS";
    protected static final String SEARCH_RESULT_PAGE_TAG = "SEARCH_RESULT_PAGE";
    protected static final String SEARCH_RESULT_QUERY_TAG = "SEARCH_RESULT_QUERY";
    public static final String TAG = FeedSearchResultFragment.class.getSimpleName();
    private static boolean isOfflineShowing = false;
    protected RecyclerView.Adapter<RecyclerView.ViewHolder> _Adapter;
    protected int _CurrentPage;
    private View _EmptyProgress;
    private View _EmptyView;
    private TextView _EmptyViewText;
    protected FeedSearchService _FeedSearchService;
    protected ImageLoader _ImageLoader;
    protected boolean _IsAppending;
    protected boolean _IsSearching;
    protected boolean _NoMoreResultsExist;
    protected String _Query;
    protected BPRecyclerView _ResultView;
    protected int PAGE_SIZE = 20;
    protected ArrayList<FeedSearchResult> _SearchResults = new ArrayList<>();
    protected final Object _SearchingLock = new Object();
    protected View _InfoFooter = null;
    private SearchSuccessListener _successListener = new SearchSuccessListener();
    private Response.ErrorListener _errorListener = new Response.ErrorListener() { // from class: mobi.beyondpod.ui.views.impexp.SearchResultFragmentBase.4
        @Override // com.android.volley.Response.ErrorListener
        public void onErrorResponse(VolleyError volleyError) {
            SearchResultFragmentBase.this.setIsSearching(false);
            SearchResultFragmentBase.this.toggleProgressFooter(false);
            SearchResultFragmentBase.this._EmptyProgress.setVisibility(8);
            if (SearchResultFragmentBase.this.getActivity() == null) {
                return;
            }
            if (!CoreHelper.getDeviceNetworkConnection().isConnectedToNetwork()) {
                SearchResultFragmentBase.this._EmptyViewText.setText(R.string.search_error_must_be_online_to_add_feeds);
                if (SearchResultFragmentBase.isOfflineShowing) {
                    return;
                }
                boolean unused = SearchResultFragmentBase.isOfflineShowing = true;
                AlertDialog.Builder builder = new AlertDialog.Builder(SearchResultFragmentBase.this.getActivity());
                builder.setTitle(SearchResultFragmentBase.this.getActivity().getResources().getString(R.string.search_error_device_is_offline));
                builder.setMessage(SearchResultFragmentBase.this.getResources().getString(R.string.search_error));
                builder.setNegativeButton(R.string.alert_dialog_ok, new DialogInterface.OnClickListener() { // from class: mobi.beyondpod.ui.views.impexp.SearchResultFragmentBase.4.1
                    @Override // android.content.DialogInterface.OnClickListener
                    public void onClick(DialogInterface dialogInterface, int i) {
                        boolean unused2 = SearchResultFragmentBase.isOfflineShowing = false;
                    }
                });
                builder.create().show();
                return;
            }
            String str = SearchResultFragmentBase.TAG;
            StringBuilder sb = new StringBuilder();
            sb.append("Error performing search: Http Error: ");
            sb.append(volleyError.networkResponse != null ? Integer.valueOf(volleyError.networkResponse.statusCode) : volleyError.getMessage());
            CoreHelper.writeTraceEntry(str, sb.toString());
            SearchResultFragmentBase.this._EmptyViewText.setText(R.string.search_error);
        }
    };

    abstract View buildContents(LayoutInflater layoutInflater, Bundle bundle);

    abstract void callSearch(String str, int i, SearchSuccessListener searchSuccessListener, Response.ErrorListener errorListener) throws FeedSearchService.ServiceException;

    abstract CharSequence getEmptyText();

    abstract int getFooterCount();

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract void itemSelected(FeedSearchResult feedSearchResult);

    abstract void onAfterDataLoaded(boolean z, String str);

    abstract void onBeforeDataLoaded(boolean z, String str);

    abstract void setDisplayFooter(Boolean bool);

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class SearchSuccessListener implements Response.Listener<JSONArray> {
        String _Query;

        SearchSuccessListener() {
        }

        void setQuery(String str) {
            this._Query = str;
        }

        @Override // com.android.volley.Response.Listener
        public void onResponse(JSONArray jSONArray) {
            Object[] objArr = new Object[2];
            try {
                try {
                    SearchResultFragmentBase.this.toggleProgressFooter(false);
                    SearchResultFragmentBase.this._EmptyProgress.setVisibility(8);
                    SearchResultFragmentBase.this.parseJSONResults(this._Query, jSONArray, objArr);
                    if (!SearchResultFragmentBase.this._IsAppending) {
                        SearchResultFragmentBase.this._SearchResults.clear();
                    }
                    if (objArr[0] != null) {
                        SearchResultFragmentBase.this.onBeforeDataLoaded(SearchResultFragmentBase.this._IsAppending, (String) objArr[1]);
                        Iterator it = ((List) objArr[0]).iterator();
                        int i = 0;
                        while (it.hasNext()) {
                            SearchResultFragmentBase.this._SearchResults.add((FeedSearchResult) it.next());
                            i++;
                        }
                        SearchResultFragmentBase.this._NoMoreResultsExist = i < SearchResultFragmentBase.this.PAGE_SIZE;
                    }
                    if (SearchResultFragmentBase.this._SearchResults.size() == 0) {
                        SearchResultFragmentBase.this._EmptyViewText.setText(SearchResultFragmentBase.this.getEmptyText());
                    }
                    SearchResultFragmentBase.this.onAfterDataLoaded(SearchResultFragmentBase.this._IsAppending, (String) objArr[1]);
                    SearchResultFragmentBase.this._Adapter.notifyDataSetChanged();
                } catch (Exception e) {
                    SearchResultFragmentBase.this._EmptyViewText.setText(R.string.search_error);
                    CoreHelper.writeTraceEntry(SearchResultFragmentBase.TAG, "Error performing search: " + e.getMessage());
                }
            } finally {
                SearchResultFragmentBase.this.setIsSearching(false);
                SearchResultFragmentBase.this.toggleProgressFooter(false);
            }
        }
    }

    @Override // android.support.v4.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        super.onActivityCreated(bundle);
        setImageLoader(((ImageLoader.ImageLoaderProvider) getActivity()).getImageLoaderInstance());
    }

    @Override // android.support.v4.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        View buildContents = buildContents(getActivity().getLayoutInflater(), bundle);
        this._EmptyView = buildContents.findViewById(R.id.emptyView);
        this._EmptyViewText = (TextView) buildContents.findViewById(R.id.emptyViewText);
        this._EmptyProgress = buildContents.findViewById(R.id.emptyViewProgress);
        this._EmptyProgress.setVisibility(8);
        this._ResultView.setEmptyView(this._EmptyView);
        setIsSearching(true);
        toggleProgressFooter(true);
        this._ResultView.setAdapter(this._Adapter);
        toggleProgressFooter(false);
        this._ResultView.addOnScrollListener(new RecyclerView.OnScrollListener() { // from class: mobi.beyondpod.ui.views.impexp.SearchResultFragmentBase.1
            @Override // android.support.v7.widget.RecyclerView.OnScrollListener
            public void onScrolled(RecyclerView recyclerView, int i, int i2) {
                boolean isSearching;
                super.onScrolled(recyclerView, i, i2);
                int childAdapterPosition = SearchResultFragmentBase.this._ResultView.getChildAdapterPosition(SearchResultFragmentBase.this._ResultView.getChildAt(SearchResultFragmentBase.this._ResultView.getLayoutManager().getChildCount() - 1));
                int itemCount = (SearchResultFragmentBase.this._ResultView.getLayoutManager().getItemCount() - SearchResultFragmentBase.this.getFooterCount()) - 1;
                if ((itemCount > 0) && childAdapterPosition == itemCount && !SearchResultFragmentBase.this._NoMoreResultsExist) {
                    synchronized (SearchResultFragmentBase.this._SearchingLock) {
                        isSearching = SearchResultFragmentBase.this.isSearching();
                        if (!isSearching) {
                            SearchResultFragmentBase.this._IsSearching = true;
                        }
                    }
                    if (isSearching) {
                        return;
                    }
                    SearchResultFragmentBase.this._CurrentPage++;
                    if (SearchResultFragmentBase.this._CurrentPage >= 20) {
                        SearchResultFragmentBase.this._NoMoreResultsExist = true;
                    }
                    SearchResultFragmentBase.this._IsSearching = true;
                    SearchResultFragmentBase.this.performSearch(SearchResultFragmentBase.this._Query, true, SearchResultFragmentBase.this._CurrentPage);
                }
            }
        });
        this._ResultView.postDelayed(new Runnable() { // from class: mobi.beyondpod.ui.views.impexp.SearchResultFragmentBase.2
            @Override // java.lang.Runnable
            public void run() {
                SearchResultFragmentBase.this.setIsSearching(false);
            }
        }, 1000L);
        return buildContents;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void toggleProgressFooter(boolean z) {
        if (!(this._ResultView.getLayoutManager() instanceof LinearLayoutManager) || this._InfoFooter == null) {
            return;
        }
        setDisplayFooter(Boolean.valueOf(z));
        this._ResultView.postDelayed(new Runnable() { // from class: mobi.beyondpod.ui.views.impexp.SearchResultFragmentBase.3
            @Override // java.lang.Runnable
            public void run() {
                SearchResultFragmentBase.this._Adapter.notifyDataSetChanged();
            }
        }, 100L);
    }

    protected void setIsSearching(boolean z) {
        synchronized (this._SearchingLock) {
            this._IsSearching = z;
        }
    }

    protected boolean isSearching() {
        boolean z;
        synchronized (this._SearchingLock) {
            z = this._IsSearching;
        }
        return z;
    }

    protected void setIsAppending(boolean z) {
        this._IsAppending = z;
    }

    protected void performSearch(String str, boolean z, int i) {
        setIsSearching(true);
        setIsAppending(z);
        if (i != 0) {
            toggleProgressFooter(true);
        }
        if (!CoreHelper.getDeviceNetworkConnection().isConnectedToNetwork()) {
            this._errorListener.onErrorResponse(new VolleyError("device is Offline!"));
            return;
        }
        try {
            this._successListener.setQuery(str);
            callSearch(str, i, this._successListener, this._errorListener);
        } catch (Exception e) {
            AlertDialog.Builder builder = new AlertDialog.Builder(getActivity());
            builder.setMessage(getResources().getString(R.string.search_error));
            builder.setNegativeButton(R.string.alert_dialog_ok, new DialogInterface.OnClickListener() { // from class: mobi.beyondpod.ui.views.impexp.SearchResultFragmentBase.5
                @Override // android.content.DialogInterface.OnClickListener
                public void onClick(DialogInterface dialogInterface, int i2) {
                }
            });
            builder.create().show();
            CoreHelper.logException(TAG, getResources().getString(R.string.search_error), e);
            setIsSearching(false);
            toggleProgressFooter(false);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void parseJSONResults(String str, JSONArray jSONArray, Object[] objArr) throws FeedSearchService.ServiceException {
        objArr[0] = this._FeedSearchService.parseJSONResults(jSONArray);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void doSearchInternal(String str) {
        if (str == null) {
            return;
        }
        this._Query = str;
        this._EmptyViewText.setText(getResources().getString(R.string.search_running));
        this._EmptyProgress.setVisibility(0);
        this._EmptyView.setVisibility(0);
        this._SearchResults.clear();
        this._Adapter.notifyDataSetChanged();
        this._CurrentPage = 0;
        performSearch(this._Query, false, this._CurrentPage);
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

    @Override // mobi.beyondpod.rsscore.repository.RepositoryEvents.RepositoryEventListener
    public void onRepositoryEvent(RepositoryEvents.RepositoryEvent repositoryEvent) {
        if (repositoryEvent.Type != 5 || this._Adapter == null) {
            return;
        }
        this._Adapter.notifyDataSetChanged();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void onRestoreInstanceState(Bundle bundle) {
        if (bundle != null) {
            this._Query = bundle.getString(SEARCH_RESULT_QUERY_TAG);
            this._CurrentPage = bundle.getInt(SEARCH_RESULT_PAGE_TAG);
            this._NoMoreResultsExist = bundle.getBoolean(SEARCH_RESULT_NO_MORE_RESULTS_TAG);
            this._SearchResults = bundle.getParcelableArrayList(SEARCH_RESULTS_TAG);
        }
    }

    @Override // android.support.v4.app.Fragment
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putString(SEARCH_RESULT_QUERY_TAG, this._Query);
        bundle.putInt(SEARCH_RESULT_PAGE_TAG, this._CurrentPage);
        bundle.putBoolean(SEARCH_RESULT_NO_MORE_RESULTS_TAG, this._NoMoreResultsExist);
        bundle.putParcelableArrayList(SEARCH_RESULTS_TAG, this._SearchResults);
    }

    public void setImageLoader(ImageLoader imageLoader) {
        this._ImageLoader = imageLoader;
        if (this._ImageLoader != null) {
            this._FeedSearchService = new FeedSearchService(Configuration.beyondPodPublicAPIRoot(), this._ImageLoader.getRequestQueue());
        }
    }
}
