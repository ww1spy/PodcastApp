package mobi.beyondpod.sync.trackers.bp;

import android.net.Uri;
import android.util.Log;
import io.fabric.sdk.android.services.network.UrlUtils;
import java.net.URLEncoder;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.TimeZone;
import mobi.beyondpod.BeyondPodApplication;
import mobi.beyondpod.downloadengine.HttpClientFactory;
import mobi.beyondpod.downloadengine.HttpClientHeaders;
import mobi.beyondpod.downloadengine.IHttpClient;
import mobi.beyondpod.rsscore.Configuration;
import mobi.beyondpod.rsscore.helpers.CoreHelper;
import mobi.beyondpod.sync.trackers.bp.BPTracker;
import org.json.JSONArray;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class BeyondPodServiceClientV1 {
    private static final int CLIENT_VERSION = 1;
    private static final String TAG = "BeyondPodServiceClientV1";
    private Uri restUrlRoot;

    /* loaded from: classes.dex */
    public enum AuthType {
        BeyondPod,
        Google
    }

    public BeyondPodServiceClientV1() {
        this(Configuration.CDSServiceEndpoint());
    }

    public BeyondPodServiceClientV1(Uri uri) {
        setRestUrlRoot(uri);
    }

    public Uri getRestUrlRoot() {
        return this.restUrlRoot;
    }

    public void setRestUrlRoot(Uri uri) {
        this.restUrlRoot = uri;
    }

    private String getSoftwareVersion() {
        try {
            BeyondPodApplication beyondPodApplication = BeyondPodApplication.getInstance();
            return beyondPodApplication.getPackageManager().getPackageInfo(beyondPodApplication.getPackageName(), 0).versionName;
        } catch (Exception unused) {
            return "";
        }
    }

    public AuthenticationResult registerUser(String str, String str2, AuthType authType, String str3) throws AuthenticationException, ServiceException {
        if (authType == AuthType.BeyondPod) {
            return authenticateUserBeyondPod(str, str2, str3, true, false);
        }
        if (authType == AuthType.Google) {
            return authenticateUserGoogle(str, str2, str3, true);
        }
        throw new UnsupportedOperationException("invalid authType specified");
    }

    public AuthenticationResult authenticateUser(String str, String str2, AuthType authType, String str3, boolean z) throws AuthenticationException, ServiceException {
        if (authType == AuthType.BeyondPod) {
            return authenticateUserBeyondPod(str, str2, str3, false, z);
        }
        if (authType != AuthType.Google) {
            throw new UnsupportedOperationException("invalid authType specified");
        }
        if (z) {
            throw new IllegalArgumentException("when authenticating via google, you can NOT use the reAuthenticatingUsingEncryptedPassword feature.");
        }
        return authenticateUserGoogle(str, str2, str3, false);
    }

    private AuthenticationResult authenticateUserBeyondPod(String str, String str2, String str3, boolean z, boolean z2) throws AuthenticationException, ServiceException {
        IHttpClient iHttpClient;
        try {
            try {
                iHttpClient = HttpClientFactory.createClient();
            } catch (Throwable th) {
                th = th;
                iHttpClient = null;
            }
        } catch (AuthenticationException e) {
            throw e;
        } catch (Exception e2) {
            e = e2;
        }
        try {
            iHttpClient.httpPost(this.restUrlRoot + "/users/authenticate");
            HttpClientHeaders.setAcceptTo(iHttpClient, "application/json");
            HttpClientHeaders.setBeyondpodClientVersionTo(iHttpClient, String.valueOf(1));
            HttpClientHeaders.setBeyondpodSoftwareVersionTo(iHttpClient, getSoftwareVersion());
            HashMap<String, String> hashMap = new HashMap<>();
            hashMap.put("user", str);
            hashMap.put("pass", str2);
            hashMap.put("device", str3);
            hashMap.put("registerNew", z ? "true" : "false");
            hashMap.put("reAuthenticating", z2 ? "true" : "false");
            iHttpClient.setPostHashMap(hashMap);
            iHttpClient.execute();
            JSONObject jSONObject = new JSONObject(iHttpClient.getResponseString());
            int i = jSONObject.getInt("Status");
            if (i != AuthenticationResult.AUTH_RESULT_AUTHENTICATED) {
                if (i == AuthenticationResult.AUTH_RESULT_ACCOUNT_CREATED) {
                    AuthenticationResult authenticationResult = new AuthenticationResult();
                    authenticationResult.setToken(null);
                    authenticationResult.setTokenExpires(null);
                    authenticationResult.setWaitingForEmailVerification(true);
                    authenticationResult.setEncryptedPassword(jSONObject.getString("EncryptedPass"));
                    authenticationResult.setServerDate(HttpClientHeaders.getResponseDate(iHttpClient));
                    if (iHttpClient != null) {
                        iHttpClient.close();
                    }
                    return authenticationResult;
                }
                if (i == AuthenticationResult.AUTH_RESULT_SERVER_ERROR) {
                    throw new Exception(jSONObject.getString("StatusMessage"));
                }
                throw new AuthenticationException(i, jSONObject.getString("StatusMessage"), null);
            }
            String string = jSONObject.getString("Token");
            if (string != null && !"".equals(string)) {
                String string2 = jSONObject.getString("TokenExpires");
                if (string2 != null && !"".equals(string2)) {
                    AuthenticationResult authenticationResult2 = new AuthenticationResult();
                    authenticationResult2.setToken(string);
                    authenticationResult2.setEncryptedPassword(jSONObject.getString("EncryptedPass"));
                    authenticationResult2.setTokenExpires(parseDate(string2));
                    authenticationResult2.setServerDate(HttpClientHeaders.getResponseDate(iHttpClient));
                    if (iHttpClient != null) {
                        iHttpClient.close();
                    }
                    return authenticationResult2;
                }
                throw new AuthenticationException(-1, "Authentication Failure - Invalid Expiration", null);
            }
            throw new AuthenticationException(-1, "Authentication Failure - Invalid Token", null);
        } catch (AuthenticationException e3) {
            throw e3;
        } catch (Exception e4) {
            e = e4;
            throw new ServiceException(-100, "Service Error", e);
        } catch (Throwable th2) {
            th = th2;
            if (iHttpClient != null) {
                iHttpClient.close();
            }
            throw th;
        }
    }

    private Date parseDate(String str) {
        if (str != null) {
            try {
                if (!"".equals(str)) {
                    if (!str.endsWith("Z") && !str.endsWith("z")) {
                        if (str.matches("^\\d{4}-\\d{2}-\\d{2}T\\d{2}:\\d{2}:\\d{2}\\.\\d{3}[-\\+]{0,1}\\d{2}:\\d{2}$")) {
                            SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss.SSSZ", CoreHelper.getCurrentLocale());
                            simpleDateFormat.setTimeZone(TimeZone.getDefault());
                            return simpleDateFormat.parse(str.substring(0, str.length() - 3) + str.substring(str.length() - 2, str.length()));
                        }
                        if (str.matches("^\\d{4}-\\d{2}-\\d{2}T\\d{2}:\\d{2}:\\d{2}\\.\\d{3}[-\\+]{0,1}\\d{4}$")) {
                            SimpleDateFormat simpleDateFormat2 = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss.SSSZ", CoreHelper.getCurrentLocale());
                            simpleDateFormat2.setTimeZone(TimeZone.getDefault());
                            return simpleDateFormat2.parse(str);
                        }
                        throw new IllegalArgumentException("couldn't parse date: " + str);
                    }
                    SimpleDateFormat simpleDateFormat3 = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss.SSS", CoreHelper.getCurrentLocale());
                    simpleDateFormat3.setTimeZone(TimeZone.getTimeZone("GMT"));
                    return simpleDateFormat3.parse(str.substring(0, str.length() - 1));
                }
            } catch (Exception e) {
                CoreHelper.logException(TAG, "Filed to parse date:" + str, e);
                return null;
            }
        }
        return null;
    }

    private AuthenticationResult authenticateUserGoogle(String str, String str2, String str3, boolean z) throws AuthenticationException, ServiceException {
        IHttpClient iHttpClient;
        try {
            try {
                iHttpClient = HttpClientFactory.createClient();
            } catch (Throwable th) {
                th = th;
                iHttpClient = null;
            }
        } catch (AuthenticationException e) {
            throw e;
        } catch (Exception e2) {
            e = e2;
        }
        try {
            iHttpClient.httpPost(this.restUrlRoot.toString() + "/users/authenticate-google");
            HttpClientHeaders.setAcceptTo(iHttpClient, "application/json");
            HttpClientHeaders.setBeyondpodClientVersionTo(iHttpClient, String.valueOf(1));
            HttpClientHeaders.setBeyondpodSoftwareVersionTo(iHttpClient, getSoftwareVersion());
            HashMap<String, String> hashMap = new HashMap<>();
            hashMap.put("user", str);
            hashMap.put("authToken", str2);
            hashMap.put("device", str3);
            hashMap.put("registerNew", z ? "true" : "false");
            iHttpClient.setPostHashMap(hashMap);
            iHttpClient.execute();
            JSONObject jSONObject = new JSONObject(iHttpClient.getResponseString());
            int i = jSONObject.getInt("Status");
            if (i != 0) {
                throw new AuthenticationException(i, jSONObject.getString("StatusMessage"), null);
            }
            String string = jSONObject.getString("Token");
            if (string != null && !"".equals(string)) {
                String string2 = jSONObject.getString("TokenExpires");
                if (string2 != null && !"".equals(string2)) {
                    AuthenticationResult authenticationResult = new AuthenticationResult();
                    authenticationResult.setToken(string);
                    authenticationResult.setTokenExpires(new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss.SSSZ", CoreHelper.getCurrentLocale()).parse(string2));
                    if (iHttpClient != null) {
                        iHttpClient.close();
                    }
                    return authenticationResult;
                }
                throw new AuthenticationException(-1, "Authentication Failure - Invalid Expiration", null);
            }
            throw new AuthenticationException(-1, "Authentication Failure - Invalid Token", null);
        } catch (AuthenticationException e3) {
            throw e3;
        } catch (Exception e4) {
            e = e4;
            throw new ServiceException(-100, "Service Error", e);
        } catch (Throwable th2) {
            th = th2;
            if (iHttpClient != null) {
                iHttpClient.close();
            }
            throw th;
        }
    }

    public BPTracker.RemoteActivities storeAndRetrieveActivities(String str, List<DeviceActivity> list, boolean z, Date date) throws InvalidTokenException, ServiceException {
        IHttpClient iHttpClient;
        try {
            try {
                iHttpClient = HttpClientFactory.createClient(30, null, 40);
            } catch (Throwable th) {
                th = th;
                iHttpClient = null;
            }
        } catch (InvalidTokenException | ServiceException e) {
            throw e;
        } catch (Exception e2) {
            e = e2;
        }
        try {
            String encode = URLEncoder.encode(formatDate(date), UrlUtils.UTF8);
            StringBuilder sb = new StringBuilder();
            sb.append(this.restUrlRoot);
            sb.append("/devices/activity?includeMyActivities=");
            sb.append(z ? "false" : "true");
            sb.append(date == null ? "" : "&sinceDateTime=" + encode);
            iHttpClient.httpPost(sb.toString());
            HttpClientHeaders.setAcceptTo(iHttpClient, "application/json");
            HttpClientHeaders.setContentTypeTo(iHttpClient, "application/json");
            HttpClientHeaders.setBeyondpodTokenTo(iHttpClient, str);
            HttpClientHeaders.setBeyondpodClientVersionTo(iHttpClient, String.valueOf(1));
            HttpClientHeaders.setBeyondpodSoftwareVersionTo(iHttpClient, getSoftwareVersion());
            JSONObject jSONObject = new JSONObject();
            JSONObject jSONObject2 = new JSONObject();
            jSONObject.put("DeviceActivities", jSONObject2);
            JSONArray jSONArray = new JSONArray();
            jSONObject2.put("DeviceActivity", jSONArray);
            if (list != null) {
                for (DeviceActivity deviceActivity : list) {
                    JSONObject jSONObject3 = new JSONObject();
                    jSONObject3.put("DateTime", formatDate(deviceActivity.getDateTime()));
                    jSONObject3.put("type", deviceActivity.getType());
                    jSONObject3.put("Data", deviceActivity.getData());
                    jSONArray.put(jSONObject3);
                }
            }
            iHttpClient.setPostString(jSONObject.toString());
            iHttpClient.execute();
            if (iHttpClient.getStatusCode() == 403) {
                throw new InvalidTokenException("invalid token", null);
            }
            JSONObject jSONObject4 = new JSONObject(iHttpClient.getResponseString());
            int i = jSONObject4.getInt("Status");
            if (i != 0) {
                throw new ServiceException(i, jSONObject4.getString("StatusMessage"), null);
            }
            BPTracker.RemoteActivities remoteActivities = new BPTracker.RemoteActivities(createList(jSONObject4), HttpClientHeaders.getResponseDate(iHttpClient));
            if (iHttpClient != null) {
                iHttpClient.close();
            }
            return remoteActivities;
        } catch (InvalidTokenException | ServiceException e3) {
            throw e3;
        } catch (Exception e4) {
            e = e4;
            throw new ServiceException(-1, "Service error", e);
        } catch (Throwable th2) {
            th = th2;
            if (iHttpClient != null) {
                iHttpClient.close();
            }
            throw th;
        }
    }

    public void gcmRegister(String str, String str2) throws InvalidTokenException, ServiceException {
        IHttpClient iHttpClient;
        try {
            try {
                iHttpClient = HttpClientFactory.createClient();
            } catch (Throwable th) {
                th = th;
                iHttpClient = null;
            }
        } catch (InvalidTokenException | ServiceException e) {
            throw e;
        } catch (Exception e2) {
            e = e2;
        }
        try {
            iHttpClient.httpGet(this.restUrlRoot.toString() + "/devices/gcm/register?gcmToken=" + URLEncoder.encode(str2, UrlUtils.UTF8));
            HttpClientHeaders.setAcceptTo(iHttpClient, "application/json");
            HttpClientHeaders.setContentTypeTo(iHttpClient, "application/json");
            HttpClientHeaders.setBeyondpodTokenTo(iHttpClient, str);
            HttpClientHeaders.setBeyondpodClientVersionTo(iHttpClient, String.valueOf(1));
            HttpClientHeaders.setBeyondpodSoftwareVersionTo(iHttpClient, getSoftwareVersion());
            iHttpClient.execute();
            if (iHttpClient.getStatusCode() == 403) {
                throw new InvalidTokenException("invalid token", null);
            }
            JSONObject jSONObject = new JSONObject(iHttpClient.getResponseString());
            int i = jSONObject.getInt("Status");
            if (i != 0) {
                throw new ServiceException(i, jSONObject.getString("StatusMessage"), null);
            }
            if (iHttpClient != null) {
                iHttpClient.close();
            }
        } catch (InvalidTokenException | ServiceException e3) {
        } catch (Exception e4) {
            e = e4;
            throw new ServiceException(-1, "Service error", e);
        } catch (Throwable th2) {
            th = th2;
            if (iHttpClient != null) {
                iHttpClient.close();
            }
            throw th;
        }
    }

    public void gcmUnregister(String str) throws InvalidTokenException, ServiceException {
        IHttpClient iHttpClient;
        try {
            try {
                iHttpClient = HttpClientFactory.createClient();
            } catch (Throwable th) {
                th = th;
                iHttpClient = null;
            }
        } catch (InvalidTokenException | ServiceException e) {
            throw e;
        } catch (Exception e2) {
            e = e2;
        }
        try {
            iHttpClient.httpGet(this.restUrlRoot.toString() + "/devices/gcm/unregister?gcmToken=" + URLEncoder.encode(str, UrlUtils.UTF8));
            HttpClientHeaders.setAcceptTo(iHttpClient, "application/json");
            HttpClientHeaders.setContentTypeTo(iHttpClient, "application/json");
            HttpClientHeaders.setBeyondpodTokenTo(iHttpClient, "");
            HttpClientHeaders.setBeyondpodClientVersionTo(iHttpClient, String.valueOf(1));
            HttpClientHeaders.setBeyondpodSoftwareVersionTo(iHttpClient, getSoftwareVersion());
            iHttpClient.execute();
            if (iHttpClient.getStatusCode() == 403) {
                throw new InvalidTokenException("invalid token", null);
            }
            JSONObject jSONObject = new JSONObject(iHttpClient.getResponseString());
            int i = jSONObject.getInt("Status");
            if (i != 0) {
                throw new ServiceException(i, jSONObject.getString("StatusMessage"), null);
            }
            if (iHttpClient != null) {
                iHttpClient.close();
            }
        } catch (InvalidTokenException | ServiceException e3) {
        } catch (Exception e4) {
            e = e4;
            throw new ServiceException(-1, "Service error", e);
        } catch (Throwable th2) {
            th = th2;
            if (iHttpClient != null) {
                iHttpClient.close();
            }
            throw th;
        }
    }

    public void gcmBroadcast(String str) throws InvalidTokenException, ServiceException {
        IHttpClient iHttpClient;
        try {
            try {
                iHttpClient = HttpClientFactory.createClient();
            } catch (Throwable th) {
                th = th;
                iHttpClient = null;
            }
        } catch (InvalidTokenException | ServiceException e) {
            throw e;
        } catch (Exception e2) {
            e = e2;
        }
        try {
            iHttpClient.httpGet(this.restUrlRoot.toString() + "/devices/gcm/send");
            HttpClientHeaders.setAcceptTo(iHttpClient, "application/json");
            HttpClientHeaders.setContentTypeTo(iHttpClient, "application/json");
            HttpClientHeaders.setBeyondpodTokenTo(iHttpClient, str);
            HttpClientHeaders.setBeyondpodClientVersionTo(iHttpClient, String.valueOf(1));
            HttpClientHeaders.setBeyondpodSoftwareVersionTo(iHttpClient, getSoftwareVersion());
            iHttpClient.execute();
            if (iHttpClient.getStatusCode() == 403) {
                throw new InvalidTokenException("invalid token", null);
            }
            JSONObject jSONObject = new JSONObject(iHttpClient.getResponseString());
            int i = jSONObject.getInt("Status");
            if (i != 0) {
                throw new ServiceException(i, jSONObject.getString("StatusMessage"), null);
            }
            if (iHttpClient != null) {
                iHttpClient.close();
            }
        } catch (InvalidTokenException | ServiceException e3) {
        } catch (Exception e4) {
            e = e4;
            throw new ServiceException(-1, "Service error", e);
        } catch (Throwable th2) {
            th = th2;
            if (iHttpClient != null) {
                iHttpClient.close();
            }
            throw th;
        }
    }

    private String formatDate(Date date) {
        if (date == null) {
            return "";
        }
        String format = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss.SSSZ", CoreHelper.getCurrentLocale()).format(date);
        if (format.length() <= 3) {
            return format;
        }
        StringBuilder sb = new StringBuilder(format);
        sb.insert(format.length() - 2, ":");
        return sb.toString();
    }

    private List<DeviceActivity> createList(JSONObject jSONObject) throws ServiceException {
        JSONObject jSONObject2;
        ArrayList arrayList = new ArrayList();
        try {
            if (!jSONObject.isNull("DeviceActivities") && (jSONObject2 = jSONObject.getJSONObject("DeviceActivities")) != null && !jSONObject2.isNull("DeviceActivity")) {
                Object obj = jSONObject2.get("DeviceActivity");
                JSONArray jSONArray = null;
                if (obj instanceof JSONArray) {
                    jSONArray = (JSONArray) obj;
                } else if (obj instanceof JSONObject) {
                    jSONArray = new JSONArray();
                    jSONArray.put(obj);
                }
                if (jSONArray != null) {
                    int length = jSONArray.length();
                    for (int i = 0; i < length; i++) {
                        JSONObject jSONObject3 = jSONArray.getJSONObject(i);
                        DeviceActivity deviceActivity = new DeviceActivity();
                        try {
                            deviceActivity.setDateTime(parseDate(jSONObject3.getString("DateTime")));
                        } catch (Exception e) {
                            Log.e("BeyondPodServices", "error parsing activity date", e);
                        }
                        deviceActivity.setType(jSONObject3.getString("type"));
                        deviceActivity.setData(jSONObject3.getString("Data"));
                        deviceActivity.setDevice(jSONObject3.getString("DeviceMeta"));
                        arrayList.add(deviceActivity);
                    }
                }
            }
            return arrayList;
        } catch (Exception e2) {
            throw new ServiceException(-1, "failed to parse service activity records", e2);
        }
    }
}
