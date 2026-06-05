package mobi.beyondpod.aggregators.feedly;

import java.util.Date;
import java.util.HashMap;
import mobi.beyondpod.aggregators.AggregatorLoginHelper;
import mobi.beyondpod.aggregators.RequestBase;
import mobi.beyondpod.downloadengine.HttpClientFactory;
import mobi.beyondpod.downloadengine.HttpClientHeaders;
import mobi.beyondpod.downloadengine.IHttpClient;
import mobi.beyondpod.rsscore.Configuration;
import mobi.beyondpod.rsscore.helpers.StringUtils;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class FRequestRefreshToken extends RequestBase {
    private static final String TAG = "FRequestRefreshToken";
    IHttpClient _HttpClient;
    private String _RefreshToken;

    public String toString() {
        return "Refresh Feedly token";
    }

    public FRequestRefreshToken(String str) throws Exception {
        if (StringUtils.isNullOrEmpty(str)) {
            throw new Exception("Refresh token is required!");
        }
        this._RefreshToken = str;
        this._RetryCount = 1;
    }

    @Override // mobi.beyondpod.aggregators.RequestBase
    public void onFail(Exception exc) {
        if (exc != null && (exc instanceof AggregatorLoginHelper.AuthenticationException)) {
            this._RetryCount = 0;
        }
        super.onFail(exc);
    }

    @Override // mobi.beyondpod.aggregators.RequestBase
    public void onSuccess(String str) {
        this._RequestStatus = 2;
        if (StringUtils.isNullOrEmpty(str)) {
            return;
        }
        try {
            JSONObject jSONObject = new JSONObject(str);
            String string = jSONObject.getString("access_token");
            String string2 = jSONObject.getString("id");
            int i = jSONObject.getInt("expires_in");
            if (StringUtils.isNullOrEmpty(string)) {
                return;
            }
            Date date = new Date();
            date.setTime(date.getTime() + (i * 1000));
            Configuration.setOAuthAccessTokenExpiration(date);
            Configuration.setOAuthAccessToken(string);
            Configuration.setOAuthUser(string2);
            this._RequestStatus = 1;
        } catch (JSONException unused) {
        }
    }

    @Override // mobi.beyondpod.aggregators.RequestBase
    public IHttpClient httpClient() {
        if (this._HttpClient != null) {
            return this._HttpClient;
        }
        this._HttpClient = HttpClientFactory.createClient();
        this._HttpClient.httpPost(Feedly.TokenUri.toString());
        HttpClientHeaders.setAcceptTo(this._HttpClient, "*/*");
        HashMap<String, String> hashMap = new HashMap<>();
        hashMap.put("refresh_token", this._RefreshToken);
        hashMap.put("client_id", Feedly.ClientID);
        hashMap.put("client_secret", Feedly.ClientSTP);
        hashMap.put("grant_type", "refresh_token");
        this._HttpClient.setPostHashMap(hashMap);
        return this._HttpClient;
    }
}
