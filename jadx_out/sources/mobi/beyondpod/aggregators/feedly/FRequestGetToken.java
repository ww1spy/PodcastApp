package mobi.beyondpod.aggregators.feedly;

import java.util.Date;
import java.util.HashMap;
import mobi.beyondpod.aggregators.AggregatorLoginHelper;
import mobi.beyondpod.aggregators.RequestBase;
import mobi.beyondpod.downloadengine.HttpClientFactory;
import mobi.beyondpod.downloadengine.HttpClientHeaders;
import mobi.beyondpod.downloadengine.IHttpClient;
import mobi.beyondpod.rsscore.Configuration;
import mobi.beyondpod.rsscore.helpers.CoreHelper;
import mobi.beyondpod.rsscore.helpers.StringUtils;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class FRequestGetToken extends RequestBase {
    private static final String TAG = "FRequestGetToken";
    private IHttpClient _HttpClient;
    private String _OAuthCode;

    public String toString() {
        return "Get Feedly token";
    }

    public FRequestGetToken(String str) throws Exception {
        if (StringUtils.isNullOrEmpty(str)) {
            throw new Exception("OAuth code is required!");
        }
        this._OAuthCode = str;
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
            String string3 = jSONObject.getString("refresh_token");
            if (!StringUtils.isNullOrEmpty(string)) {
                AggregatorLoginHelper.clearLogin();
                Date date = new Date();
                date.setTime(date.getTime() + (i * 1000));
                Configuration.setOAuthAccessTokenExpiration(date);
                Configuration.setOAuthRefreshToken(string3);
                Configuration.setOAuthAccessToken(string);
                Configuration.setOAuthUser(string2);
                this._RequestStatus = 1;
                CoreHelper.writeTraceEntry(TAG, "--- Received a fresh Feedly token! (expires: " + date + ")");
            } else {
                CoreHelper.writeTraceEntry(TAG, "--- Received empty Feedly token!");
            }
        } catch (JSONException e) {
            CoreHelper.logException(TAG, "--- failed to parse Feedly response!", e);
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
        hashMap.put("code", this._OAuthCode);
        hashMap.put("client_id", Feedly.ClientID);
        hashMap.put("client_secret", Feedly.ClientSTP);
        hashMap.put("redirect_uri", Feedly.RedirectURI);
        hashMap.put("state", "BPAuth");
        hashMap.put("grant_type", "authorization_code");
        this._HttpClient.setPostHashMap(hashMap);
        return this._HttpClient;
    }
}
