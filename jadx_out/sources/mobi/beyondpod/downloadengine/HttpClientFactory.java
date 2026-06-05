package mobi.beyondpod.downloadengine;

import java.net.URI;
import mobi.beyondpod.rsscore.helpers.NetworkCredential;

/* loaded from: classes.dex */
public class HttpClientFactory {
    public static IHttpClient createClient() {
        return HttpClientOkhttp.newInstance();
    }

    public static IHttpClient createClient(Integer num, Integer num2, Integer num3) {
        return HttpClientOkhttp.newInstance(num, num2, num3);
    }

    public static IHttpClient createClient(NetworkCredential networkCredential, URI uri) {
        return HttpClientOkhttp.newInstance(networkCredential, uri);
    }
}
