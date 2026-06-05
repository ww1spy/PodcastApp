package mobi.beyondpod.aggregators.feedly;

import android.net.Uri;
import java.util.ArrayList;
import java.util.Iterator;
import mobi.beyondpod.aggregators.AggregatorLoginHelper;
import mobi.beyondpod.aggregators.RequestBase;
import mobi.beyondpod.downloadengine.HttpClientFactory;
import mobi.beyondpod.downloadengine.HttpClientHeaders;
import mobi.beyondpod.downloadengine.IHttpClient;
import mobi.beyondpod.rsscore.helpers.CoreHelper;
import mobi.beyondpod.rsscore.helpers.StringUtils;

/* loaded from: classes.dex */
public class FRequestEditTag extends RequestBase {
    public static final int OPERATION_TAG = 0;
    public static final int OPERATION_UNTAG = 1;
    private static final String TAG = "FRequestEditTag";
    ArrayList<String> ItemIDs;
    String Tag;
    IHttpClient _HttpClient;
    int _Operation;

    public FRequestEditTag(ArrayList<String> arrayList, int i, String str) {
        this.ItemIDs = arrayList;
        this._Operation = i;
        this.Tag = str;
        this._RetryCount = 0;
    }

    @Override // mobi.beyondpod.aggregators.RequestBase
    public void onSuccess(String str) {
        if (!StringUtils.isNullOrEmpty(str)) {
            "OK".equals(str);
            this._RequestStatus = 1;
        } else {
            this._RequestStatus = 2;
        }
    }

    @Override // mobi.beyondpod.aggregators.RequestBase
    public IHttpClient httpClient() {
        if (this._HttpClient != null) {
            return this._HttpClient;
        }
        this._HttpClient = HttpClientFactory.createClient();
        StringBuilder sb = new StringBuilder();
        Iterator<String> it = this.ItemIDs.iterator();
        boolean z = false;
        while (it.hasNext()) {
            String next = it.next();
            int indexOf = next.indexOf(124);
            if (indexOf > 0) {
                String substring = next.substring(0, indexOf);
                if (sb.length() > 0) {
                    sb.append(",");
                }
                if (this._Operation == 0) {
                    sb.append(String.format("\"%s\"", substring));
                } else {
                    sb.append(substring);
                }
                z = true;
            } else {
                CoreHelper.writeTraceEntry(TAG, "Invalid item id: " + next);
            }
        }
        if (!z) {
            return null;
        }
        if (this._Operation == 0) {
            Uri build = Feedly.EditTagURL.buildUpon().appendPath(Feedly.userStream() + this.Tag).build();
            String format = String.format("{\"entryIds\": [%s]}", sb.toString());
            if (format != null) {
                this._HttpClient.httpPut(build.toString());
                this._HttpClient.setPutString(format);
            }
        } else {
            this._HttpClient.httpDelete(Feedly.EditTagURL.buildUpon().appendPath(Feedly.userStream() + this.Tag).appendPath(sb.toString()).build().toString());
        }
        HttpClientHeaders.setAcceptTo(this._HttpClient, "*/*");
        HttpClientHeaders.setAuthorizationTo(this._HttpClient, AggregatorLoginHelper.blockingGetAuthToken());
        return this._HttpClient;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("operation: ");
        sb.append(this._Operation == 0 ? "[TAG]" : "[UNTAG]");
        sb.append(" Tag: [");
        sb.append(this.Tag);
        sb.append("] For [");
        sb.append(this.ItemIDs.size());
        sb.append("] items");
        return sb.toString();
    }
}
