package mobi.beyondpod.aggregators.feedly;

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
public class FRequestEditRead extends RequestBase {
    private static final String TAG = "FRequestEditRead";
    public static final String TAG_READ = "markAsRead";
    public static final String TAG_UNREAD = "keepUnread";
    ArrayList<String> ItemIDs;
    String Tag;
    IHttpClient _HttpClient;

    public FRequestEditRead(ArrayList<String> arrayList, String str) {
        this.ItemIDs = arrayList;
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
        this._HttpClient.httpPost(Feedly.EditMarkerURL.toString());
        HttpClientHeaders.setAcceptTo(this._HttpClient, "*/*");
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
                sb.append(String.format("\"%s\"", substring));
                z = true;
            } else {
                CoreHelper.writeTraceEntry(TAG, "Invalid item id: " + next);
            }
        }
        if (!z) {
            return null;
        }
        String format = String.format("{\"action\": \"%s\",\"type\": \"entries\",\"entryIds\": [%s]}", this.Tag, sb.toString());
        HttpClientHeaders.setAuthorizationTo(this._HttpClient, AggregatorLoginHelper.blockingGetAuthToken());
        if (format != null) {
            this._HttpClient.setPostString(format);
        }
        return this._HttpClient;
    }

    public String toString() {
        return "operation:  Tag: [" + this.Tag + "] For [" + this.ItemIDs.size() + "] items";
    }
}
