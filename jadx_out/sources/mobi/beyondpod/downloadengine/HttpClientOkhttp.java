package mobi.beyondpod.downloadengine;

import android.util.Log;
import io.fabric.sdk.android.services.network.HttpRequest;
import java.io.IOException;
import java.io.InputStream;
import java.net.URI;
import java.util.HashMap;
import java.util.List;
import java.util.concurrent.TimeUnit;
import mobi.beyondpod.BeyondPodApplication;
import mobi.beyondpod.rsscore.Configuration;
import mobi.beyondpod.rsscore.helpers.CoreHelper;
import mobi.beyondpod.rsscore.helpers.NetworkCredential;
import okhttp3.Authenticator;
import okhttp3.Call;
import okhttp3.Credentials;
import okhttp3.FormBody;
import okhttp3.MediaType;
import okhttp3.OkHttpClient;
import okhttp3.Request;
import okhttp3.RequestBody;
import okhttp3.Response;
import okhttp3.Route;

/* loaded from: classes.dex */
public class HttpClientOkhttp implements IHttpClient {
    private static final String TAG = "HttpClientOkhttp";
    private URI _LastRedirectedUri;
    private Call _WebCall;
    private OkHttpClient delegate;
    private String userAgent;
    private Request.Builder _WebRequest = null;
    private Response _WebResponse = null;
    private int requestType = -1;
    private final int GET_REQUEST = 0;
    private final int POST_REQUEST = 1;
    private final int PUT_REQUEST = 2;
    private final int DELETE_REQUEST = 3;
    private RuntimeException mLeakedException = new IllegalStateException("BeyondPodHttpClient created and never closed");

    @Override // mobi.beyondpod.downloadengine.IHttpClient
    public int getStatusCode() {
        return this._WebResponse.code();
    }

    @Override // mobi.beyondpod.downloadengine.IHttpClient
    public String getReasonPhrase() {
        return this._WebResponse.message();
    }

    @Override // mobi.beyondpod.downloadengine.IHttpClient
    public void abort() {
        if (this._WebCall != null) {
            CoreHelper.writeTraceEntry(TAG, ">> Aborting any in-flight requests...");
            this._WebCall.cancel();
        }
    }

    @Override // mobi.beyondpod.downloadengine.IHttpClient
    public void httpGet(String str) {
        this._WebRequest = new Request.Builder().url(str).get();
        setHeader("User-Agent", this.userAgent);
        this.requestType = 0;
    }

    @Override // mobi.beyondpod.downloadengine.IHttpClient
    public void httpPost(String str) {
        this._WebRequest = new Request.Builder().url(str);
        setHeader("User-Agent", this.userAgent);
        this.requestType = 1;
    }

    @Override // mobi.beyondpod.downloadengine.IHttpClient
    public void httpPut(String str) {
        this._WebRequest = new Request.Builder().url(str);
        setHeader("User-Agent", this.userAgent);
        this.requestType = 2;
    }

    @Override // mobi.beyondpod.downloadengine.IHttpClient
    public void httpDelete(String str) {
        this._WebRequest = new Request.Builder().url(str).delete();
        setHeader("User-Agent", this.userAgent);
        this.requestType = 3;
    }

    @Override // mobi.beyondpod.downloadengine.IHttpClient
    public void setPostHashMap(HashMap<String, String> hashMap) {
        FormBody.Builder builder = new FormBody.Builder();
        for (Object obj : hashMap.keySet().toArray()) {
            builder.add((String) obj, hashMap.get(obj));
        }
        HttpClientHeaders.setContentTypeTo(this, HttpRequest.CONTENT_TYPE_FORM);
        this._WebRequest.post(builder.build());
    }

    @Override // mobi.beyondpod.downloadengine.IHttpClient
    public void setPostString(String str) {
        this._WebRequest.post(RequestBody.create(MediaType.parse("application/json"), str));
    }

    @Override // mobi.beyondpod.downloadengine.IHttpClient
    public void setPutString(String str) {
        this._WebRequest.put(RequestBody.create(MediaType.parse("application/json"), str));
    }

    @Override // mobi.beyondpod.downloadengine.IHttpClient
    public URI finalDownloadUrl() {
        return this._LastRedirectedUri;
    }

    public static HttpClientOkhttp newInstance() {
        return new HttpClientOkhttp(Integer.valueOf(Configuration.httpConnectionTimeout()), null, Integer.valueOf(Configuration.httpConnectionTimeout()), null, null);
    }

    public static HttpClientOkhttp newInstance(Integer num, Integer num2, Integer num3) {
        return new HttpClientOkhttp(num, num2, num3, null, null);
    }

    public static HttpClientOkhttp newInstance(NetworkCredential networkCredential, URI uri) {
        return new HttpClientOkhttp(Integer.valueOf(Configuration.httpConnectionTimeout()), null, Integer.valueOf(Configuration.httpConnectionTimeout()), networkCredential, uri);
    }

    private HttpClientOkhttp(Integer num, Integer num2, Integer num3, final NetworkCredential networkCredential, URI uri) {
        this.delegate = null;
        String defaultUserAgent = Configuration.defaultUserAgent();
        OkHttpClient.Builder builder = new OkHttpClient.Builder();
        if (num != null) {
            builder.connectTimeout(num.intValue(), TimeUnit.SECONDS);
        }
        if (num2 != null) {
            builder.writeTimeout(num2.intValue(), TimeUnit.SECONDS);
        }
        if (num3 != null) {
            builder.readTimeout(num3.intValue(), TimeUnit.SECONDS);
        }
        if (networkCredential != null) {
            builder.authenticator(new Authenticator() { // from class: mobi.beyondpod.downloadengine.HttpClientOkhttp.1
                @Override // okhttp3.Authenticator
                public Request authenticate(Route route, Response response) throws IOException {
                    String basic = Credentials.basic(networkCredential.userName, networkCredential.password);
                    List<String> headers = response.request().headers("Authorization");
                    if (headers == null || headers.indexOf(basic) == -1) {
                        return response.request().newBuilder().header("Authorization", basic).build();
                    }
                    return null;
                }
            });
        }
        this.delegate = builder.build();
        this.userAgent = defaultUserAgent;
    }

    protected void finalize() throws Throwable {
        super.finalize();
        if (this.mLeakedException != null) {
            Log.e(TAG, "Leak found", this.mLeakedException);
            this.mLeakedException = null;
        }
    }

    @Override // mobi.beyondpod.downloadengine.IHttpClient
    public InputStream getUnzippedContent() {
        return this._WebResponse.body().byteStream();
    }

    @Override // mobi.beyondpod.downloadengine.IHttpClient
    public String getResponseString() throws IOException {
        return this._WebResponse.body().string();
    }

    @Override // mobi.beyondpod.downloadengine.IHttpClient
    public void close() {
        if (this.mLeakedException != null) {
            if (this.delegate != null && this.delegate.connectionPool() != null) {
                this.delegate.connectionPool().evictAll();
            }
            this.mLeakedException = null;
        }
        if (this._WebResponse == null || this._WebResponse.body() == null) {
            return;
        }
        this._WebResponse.body().close();
    }

    @Override // mobi.beyondpod.downloadengine.IHttpClient
    public void execute() throws IOException {
        if (BeyondPodApplication.isRuntimeShuttingDown().booleanValue()) {
            return;
        }
        this._WebCall = this.delegate.newCall(this._WebRequest.build());
        try {
            this._WebResponse = this._WebCall.execute();
            this._LastRedirectedUri = this._WebResponse.request().url().uri();
        } catch (InternalError unused) {
            CoreHelper.writeLogEntry(TAG, "Failed to execute web call because the JVM is shutting down.");
        }
    }

    @Override // mobi.beyondpod.downloadengine.IHttpClient
    public void setHeader(String str, String str2) {
        this._WebRequest.addHeader(str, str2);
    }

    @Override // mobi.beyondpod.downloadengine.IHttpClient
    public String getHeader(String str) {
        String header = this._WebResponse.header(str);
        if (header == null || header.length() <= 0) {
            return null;
        }
        return header;
    }
}
