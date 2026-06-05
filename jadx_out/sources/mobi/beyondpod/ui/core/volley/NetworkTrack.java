package mobi.beyondpod.ui.core.volley;

import com.android.volley.NetworkResponse;
import com.android.volley.Request;
import com.android.volley.VolleyError;
import com.android.volley.toolbox.BasicNetwork;
import com.android.volley.toolbox.HttpStack;
import java.util.Collections;
import mobi.beyondpod.downloadengine.IHttpClient;

/* loaded from: classes.dex */
public class NetworkTrack extends BasicNetwork {
    NetworkResponse _NoResponse;

    public NetworkTrack(HttpStack httpStack) {
        super(httpStack);
        this._NoResponse = new NetworkResponse(IHttpClient.SC_NOT_FOUND, null, Collections.emptyMap(), false);
    }

    @Override // com.android.volley.toolbox.BasicNetwork, com.android.volley.Network
    public NetworkResponse performRequest(Request<?> request) throws VolleyError {
        if (request.getUrl().startsWith("file://") || request.getUrl().startsWith("episode://")) {
            return this._NoResponse;
        }
        return super.performRequest(request);
    }
}
