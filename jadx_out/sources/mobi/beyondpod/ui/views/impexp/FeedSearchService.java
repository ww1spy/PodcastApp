package mobi.beyondpod.ui.views.impexp;

import com.android.volley.DefaultRetryPolicy;
import com.android.volley.Request;
import com.android.volley.RequestQueue;
import com.android.volley.Response;
import com.android.volley.toolbox.JsonObjectRequest;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.List;
import mobi.beyondpod.BeyondPodApplication;
import org.json.JSONArray;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class FeedSearchService {
    private static final int CLIENT_VERSION = 1;
    // iTunes Search API base URL
    private static final String ITUNES_SEARCH_URL = "https://itunes.apple.com/search";
    private RequestFilter _requestFilter = new RequestFilter();
    private RequestQueue mRequestQueue;
    private String rootUrl;

    /* JADX INFO: Access modifiers changed from: private */
    public String getSoftwareVersion() {
        try {
            BeyondPodApplication beyondPodApplication = BeyondPodApplication.getInstance();
            return beyondPodApplication.getPackageManager().getPackageInfo(beyondPodApplication.getPackageName(), 0).versionName;
        } catch (Exception unused) {
            return "";
        }
    }

    /* loaded from: classes.dex */
    public static class ServiceException extends Exception {
        private static final long serialVersionUID = 1;
        private int statusCode;

        public ServiceException(int i, String str, Throwable th) {
            super(str, th);
        }

        public int getStatusCode() {
            return this.statusCode;
        }

        public void setStatusCode(int i) {
            this.statusCode = i;
        }
    }

    public FeedSearchService(String str, RequestQueue requestQueue) {
        this.mRequestQueue = null;
        this.rootUrl = str;
        if (!this.rootUrl.endsWith("/")) {
            this.rootUrl += "/";
        }
        this.mRequestQueue = requestQueue;
    }

    /**
     * Search for podcasts using the iTunes Search API.
     * Parameters str2 (type) is ignored because iTunes uses media=podcast.
     */
    public void findByQuery(String str, String str2, int i, int i2, Response.Listener<JSONArray> listener, Response.ErrorListener errorListener) throws ServiceException {
        try {
            StringBuilder sb = new StringBuilder(ITUNES_SEARCH_URL);
            sb.append("?term=");
            sb.append(URLEncoder.encode(str != null ? str : "", "UTF-8"));
            sb.append("&media=podcast&entity=podcast");
            sb.append("&limit=").append(i2);
            sb.append("&offset=").append(i * i2);
            performItunesGet(sb.toString(), listener, errorListener);
        } catch (UnsupportedEncodingException e) {
            throw new ServiceException(100, "error encoding parameters", e);
        }
    }

    // --- Legacy BeyondPod methods (dead backend) kept as no-ops / stubs ---

    /** @deprecated BeyondPod backend is dead; does nothing. */
    public void findByPopularCategory(String str, String str2, int i, int i2, Response.Listener<JSONArray> listener, Response.ErrorListener errorListener) throws ServiceException {
        // BeyondPod backend is offline; no-op
    }

    /** @deprecated BeyondPod backend is dead; does nothing. */
    public void getPopularCategories(Response.Listener<JSONArray> listener, Response.ErrorListener errorListener) throws ServiceException {
        // BeyondPod backend is offline; no-op
    }

    /** @deprecated BeyondPod backend is dead; does nothing. */
    public void findByAudioBookQuery(String str, int i, int i2, Response.Listener<JSONArray> listener, Response.ErrorListener errorListener) throws ServiceException {
        // BeyondPod backend is offline; no-op
    }

    /** @deprecated BeyondPod backend is dead; does nothing. */
    public void findByAudioBookCategory(String str, String str2, int i, int i2, Response.Listener<JSONArray> listener, Response.ErrorListener errorListener) throws ServiceException {
        // BeyondPod backend is offline; no-op
    }

    /** @deprecated BeyondPod backend is dead; does nothing. */
    public void getTrendingEpisodes(String str, String str2, int i, int i2, Response.Listener<JSONArray> listener, Response.ErrorListener errorListener) throws ServiceException {
        // BeyondPod backend is offline; no-op
    }

    /** @deprecated BeyondPod backend is dead; does nothing. */
    public void getRecommendedFeeds(String str, String str2, int i, int i2, Response.Listener<JSONArray> listener, Response.ErrorListener errorListener) throws ServiceException {
        // BeyondPod backend is offline; no-op
    }

    /** @deprecated BeyondPod backend is dead; does nothing. */
    public void getSampleContent(String str, int i, Response.Listener<JSONArray> listener, Response.ErrorListener errorListener) throws ServiceException {
        // BeyondPod backend is offline; no-op
    }

    /** @deprecated BeyondPod backend is dead; does nothing. */
    public void getPublishers(int i, int i2, int i3, Response.Listener<JSONArray> listener, Response.ErrorListener errorListener) throws ServiceException {
        // BeyondPod backend is offline; no-op
    }

    /** @deprecated BeyondPod backend is dead; does nothing. */
    public void getPublisherFeeds(String str, String str2, int i, int i2, Response.Listener<JSONArray> listener, Response.ErrorListener errorListener) throws ServiceException {
        // BeyondPod backend is offline; no-op
    }

    /** @deprecated BeyondPod backend is dead; does nothing. */
    public void getAudioBookGenres(Response.Listener<JSONArray> listener, Response.ErrorListener errorListener) throws ServiceException {
        // BeyondPod backend is offline; no-op
    }

    /** @deprecated BeyondPod backend is dead; does nothing. */
    public void getAudioBookLanguages(Response.Listener<JSONArray> listener, Response.ErrorListener errorListener) throws ServiceException {
        // BeyondPod backend is offline; no-op
    }

    /* loaded from: classes.dex */
    class RequestFilter implements RequestQueue.RequestFilter {
        @Override // com.android.volley.RequestQueue.RequestFilter
        public boolean apply(Request<?> request) {
            return true;
        }

        RequestFilter() {
        }
    }

    /**
     * Performs a GET to the iTunes Search API endpoint.
     * The iTunes response is a JSONObject with a "results" JSONArray inside.
     * This method unwraps the "results" array and delivers it to the listener.
     */
    private void performItunesGet(String url, final Response.Listener<JSONArray> listener, Response.ErrorListener errorListener) {
        JsonObjectRequest request = new JsonObjectRequest(url, null,
                new Response.Listener<JSONObject>() {
                    @Override
                    public void onResponse(JSONObject response) {
                        try {
                            JSONArray results = response.getJSONArray("results");
                            listener.onResponse(results);
                        } catch (Exception e) {
                            // Return empty array on parse failure rather than crashing
                            listener.onResponse(new JSONArray());
                        }
                    }
                },
                errorListener);
        request.setRetryPolicy(new DefaultRetryPolicy(10000, 2, 2.0f));
        this.mRequestQueue.add(request);
    }

    /**
     * Legacy performGet kept for any remaining internal calls.
     * NOTE: The BeyondPod backend (rootUrl) is dead; this only functions for
     * fully-qualified https:// URLs.
     *
     * @deprecated Use performItunesGet for iTunes API calls.
     */
    private void performGet(String str, Response.Listener<JSONArray> listener, Response.ErrorListener errorListener) throws ServiceException {
        if (str == null || !str.startsWith("https://")) {
            str = this.rootUrl + str;
        }
        performItunesGet(str, listener, errorListener);
    }

    /**
     * Parses iTunes Search API results into FeedSearchResult objects.
     *
     * iTunes field mapping:
     *   trackName        -> Title
     *   description      -> Description (often absent; falls back to null)
     *   feedUrl          -> Link (RSS URL)
     *   artworkUrl600    -> ImageUrl (fallback: artworkUrl100)
     *   kind             -> type
     *   OriginatingFeed, EpisodeUrl, Language, TotalTime, pubDate -> null
     */
    public List<FeedSearchResult> parseJSONResults(JSONArray jSONArray) throws ServiceException {
        try {
            ArrayList<FeedSearchResult> arrayList = new ArrayList<>();
            if (jSONArray == null || jSONArray.length() == 0) {
                return arrayList;
            }
            int length = jSONArray.length();
            for (int i = 0; i < length; i++) {
                JSONObject obj = jSONArray.getJSONObject(i);

                // Title
                String title = obj.isNull("trackName") ? null : obj.getString("trackName");

                // Description (iTunes often omits this field)
                String description = obj.isNull("description") ? null : obj.getString("description");

                // Link = RSS feed URL
                String link = obj.isNull("feedUrl") ? null : obj.getString("feedUrl");

                // ImageUrl: prefer artworkUrl600, fall back to artworkUrl100
                String imageUrl = null;
                if (!obj.isNull("artworkUrl600")) {
                    imageUrl = obj.getString("artworkUrl600");
                } else if (!obj.isNull("artworkUrl100")) {
                    imageUrl = obj.getString("artworkUrl100");
                }

                // type
                String type = obj.isNull("kind") ? null : obj.getString("kind");

                // Fields iTunes does not provide
                String originatingFeed = null;
                String episodeUrl = null;
                String language = null;
                String totalTime = null;
                String pubDate = null;

                arrayList.add(new FeedSearchResult(title, description, link, imageUrl, type,
                        originatingFeed, episodeUrl, language, totalTime, pubDate));
            }
            return arrayList;
        } catch (Exception e) {
            throw new ServiceException(-100, "Service Error", e);
        }
    }
}
