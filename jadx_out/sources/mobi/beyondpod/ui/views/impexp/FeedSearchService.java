package mobi.beyondpod.ui.views.impexp;

import com.android.volley.AuthFailureError;
import com.android.volley.DefaultRetryPolicy;
import com.android.volley.Request;
import com.android.volley.RequestQueue;
import com.android.volley.Response;
import com.android.volley.toolbox.JsonArrayRequest;
import com.google.android.gms.actions.SearchIntents;
import io.fabric.sdk.android.services.network.UrlUtils;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import mobi.beyondpod.BeyondPodApplication;
import org.json.JSONArray;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class FeedSearchService {
    private static final int CLIENT_VERSION = 1;
    static String _PatchTag = "http://az412796.vo.msecnd.net/regs/";
    static String _PatchTagPubs = "http://az412796.vo.msecnd.net/pubs/";
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

    public void findByPopularCategory(String str, String str2, int i, int i2, Response.Listener<JSONArray> listener, Response.ErrorListener errorListener) throws ServiceException {
        String[] strArr = new String[8];
        strArr[0] = "category";
        if (str == null) {
            str = "*";
        }
        strArr[1] = str;
        strArr[2] = "type";
        strArr[3] = str2;
        strArr[4] = "start";
        strArr[5] = String.valueOf(i * i2);
        strArr[6] = "take";
        strArr[7] = String.valueOf(i2);
        queryGetFeeds("feedcategories", buildParams(strArr), listener, errorListener);
    }

    public void getPopularCategories(Response.Listener<JSONArray> listener, Response.ErrorListener errorListener) throws ServiceException {
        queryGetStrings("feedcategoriesmeta", buildParams("type", "feed"), listener, errorListener);
    }

    public void findByQuery(String str, String str2, int i, int i2, Response.Listener<JSONArray> listener, Response.ErrorListener errorListener) throws ServiceException {
        queryGetFeeds("feedsearch", buildParams(SearchIntents.EXTRA_QUERY, str, "type", str2, "start", String.valueOf(i * i2), "take", String.valueOf(i2)), listener, errorListener);
    }

    public void findByAudioBookQuery(String str, int i, int i2, Response.Listener<JSONArray> listener, Response.ErrorListener errorListener) throws ServiceException {
        queryGetFeeds("audiobooksearch", buildParams(SearchIntents.EXTRA_QUERY, str, "start", String.valueOf(i * i2), "take", String.valueOf(i2)), listener, errorListener);
    }

    public void findByAudioBookCategory(String str, String str2, int i, int i2, Response.Listener<JSONArray> listener, Response.ErrorListener errorListener) throws ServiceException {
        String[] strArr = new String[8];
        strArr[0] = "genre";
        if (str == null) {
            str = "*";
        }
        strArr[1] = str;
        strArr[2] = "language";
        if (str2 == null) {
            str2 = "*";
        }
        strArr[3] = str2;
        strArr[4] = "start";
        strArr[5] = String.valueOf(i * i2);
        strArr[6] = "take";
        strArr[7] = String.valueOf(i2);
        queryGetFeeds("audiobookcategories", buildParams(strArr), listener, errorListener);
    }

    public void getTrendingEpisodes(String str, String str2, int i, int i2, Response.Listener<JSONArray> listener, Response.ErrorListener errorListener) throws ServiceException {
        queryGetFeeds("trendingEpisodes", buildParams("userfeeds", str, "type", str2, "start", String.valueOf(i * i2), "take", String.valueOf(i2)), listener, errorListener);
    }

    public void getRecommendedFeeds(String str, String str2, int i, int i2, Response.Listener<JSONArray> listener, Response.ErrorListener errorListener) throws ServiceException {
        queryGetFeeds("recommendedFeeds", buildParams("userfeeds", str, "type", str2, "start", String.valueOf(i * i2), "take", String.valueOf(i2)), listener, errorListener);
    }

    public void getSampleContent(String str, int i, Response.Listener<JSONArray> listener, Response.ErrorListener errorListener) throws ServiceException {
        queryGetFeeds("sampleContent", buildParams("cids", str, "take", String.valueOf(i)), listener, errorListener);
    }

    public void getPublishers(int i, int i2, int i3, Response.Listener<JSONArray> listener, Response.ErrorListener errorListener) throws ServiceException {
        queryGetFeeds("feedPublishers", buildParams("type", String.valueOf(i), "start", String.valueOf(i2 * i3), "take", String.valueOf(i3)), listener, errorListener);
    }

    public void getPublisherFeeds(String str, String str2, int i, int i2, Response.Listener<JSONArray> listener, Response.ErrorListener errorListener) throws ServiceException {
        queryGetFeeds("publisherFeeds", buildParams("pid", str, "type", str2, "start", String.valueOf(i * i2), "take", String.valueOf(i2)), listener, errorListener);
    }

    public void getAudioBookGenres(Response.Listener<JSONArray> listener, Response.ErrorListener errorListener) throws ServiceException {
        queryGetStrings("audiobookmeta", buildParams("type", "genres"), listener, errorListener);
    }

    public void getAudioBookLanguages(Response.Listener<JSONArray> listener, Response.ErrorListener errorListener) throws ServiceException {
        queryGetStrings("audiobookmeta", buildParams("type", "languages"), listener, errorListener);
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

    private Map<String, String> buildParams(String... strArr) {
        HashMap hashMap = new HashMap();
        if (strArr != null) {
            int length = strArr.length;
            for (int i = 0; i < length; i += 2) {
                hashMap.put(strArr[i], strArr[i + 1]);
            }
        }
        return hashMap;
    }

    private void performGet(String str, Map<String, String> map, Response.Listener<JSONArray> listener, Response.ErrorListener errorListener) throws ServiceException {
        if (str == null || !str.startsWith("https://")) {
            str = this.rootUrl + str;
        }
        StringBuilder sb = new StringBuilder(str);
        if (map != null && map.size() > 0) {
            sb.append("?");
            try {
                for (Map.Entry<String, String> entry : map.entrySet()) {
                    sb.append(URLEncoder.encode(entry.getKey(), UrlUtils.UTF8));
                    sb.append("=");
                    sb.append(URLEncoder.encode(entry.getValue(), UrlUtils.UTF8));
                    sb.append("&");
                }
                sb.setLength(sb.length() - 1);
            } catch (UnsupportedEncodingException e) {
                throw new ServiceException(100, "error encoding parameters", e);
            }
        }
        JsonArrayRequest jsonArrayRequest = new JsonArrayRequest(sb.toString(), listener, errorListener) { // from class: mobi.beyondpod.ui.views.impexp.FeedSearchService.1
            @Override // com.android.volley.Request
            public Map<String, String> getHeaders() throws AuthFailureError {
                Map<String, String> headers = super.getHeaders();
                if (headers == null || headers.equals(Collections.emptyMap())) {
                    headers = new HashMap<>();
                }
                headers.put("beyondpod-client-version", String.valueOf(1));
                headers.put("beyondpod-software-version", FeedSearchService.this.getSoftwareVersion());
                headers.put("Accept", "application/json");
                return headers;
            }
        };
        jsonArrayRequest.setRetryPolicy(new DefaultRetryPolicy(5000, 2, 2.0f));
        this.mRequestQueue.add(jsonArrayRequest);
    }

    private void queryGetStrings(String str, Map<String, String> map, Response.Listener<JSONArray> listener, Response.ErrorListener errorListener) throws ServiceException {
        try {
            performGet(str, map, listener, errorListener);
        } catch (Exception e) {
            throw new ServiceException(-100, "Service Error", e);
        }
    }

    private void queryGetFeeds(String str, Map<String, String> map, Response.Listener<JSONArray> listener, Response.ErrorListener errorListener) throws ServiceException {
        try {
            performGet(str, map, listener, errorListener);
        } catch (Exception e) {
            throw new ServiceException(-100, "Service Error", e);
        }
    }

    public List<FeedSearchResult> parseJSONResults(JSONArray jSONArray) throws ServiceException {
        JSONArray jSONArray2 = jSONArray;
        try {
            ArrayList arrayList = new ArrayList();
            if (jSONArray.length() != 0 && jSONArray2 != null) {
                int length = jSONArray.length();
                int i = 0;
                while (i < length) {
                    JSONObject jSONObject = jSONArray2.getJSONObject(i);
                    arrayList.add(new FeedSearchResult(jSONObject.isNull("Title") ? null : jSONObject.getString("Title"), jSONObject.isNull("Description") ? null : jSONObject.getString("Description"), jSONObject.isNull("Link") ? null : jSONObject.getString("Link"), jSONObject.isNull("ImageUrl") ? null : patchImageUrl(jSONObject.getString("ImageUrl")), jSONObject.isNull("type") ? null : jSONObject.getString("type"), jSONObject.isNull("OriginatingFeed") ? null : jSONObject.getString("OriginatingFeed"), jSONObject.isNull("EpisodeUrl") ? null : jSONObject.getString("EpisodeUrl"), jSONObject.isNull("Language") ? null : jSONObject.getString("Language"), jSONObject.isNull("TotalTime") ? null : jSONObject.getString("TotalTime"), jSONObject.isNull("pubDate") ? null : jSONObject.getString("pubDate")));
                    i++;
                    jSONArray2 = jSONArray;
                }
            }
            return arrayList;
        } catch (Exception e) {
            throw new ServiceException(-100, "Service Error", e);
        }
    }

    private String patchImageUrl(String str) {
        if (!str.startsWith(_PatchTag) || str.substring(_PatchTag.length()).startsWith("flag_")) {
            return str;
        }
        return _PatchTag + "flag_" + str.substring(_PatchTag.length());
    }
}
