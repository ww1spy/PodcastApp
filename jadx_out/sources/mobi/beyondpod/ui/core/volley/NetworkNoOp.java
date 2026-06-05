package mobi.beyondpod.ui.core.volley;

import com.android.volley.Network;
import com.android.volley.NetworkResponse;
import com.android.volley.Request;
import com.android.volley.VolleyError;
import java.util.Collections;
import mobi.beyondpod.downloadengine.IHttpClient;

/* loaded from: classes.dex */
public class NetworkNoOp implements Network {
    NetworkResponse _NoResponse = new NetworkResponse(IHttpClient.SC_NOT_FOUND, null, Collections.emptyMap(), false);

    @Override // com.android.volley.Network
    public NetworkResponse performRequest(Request<?> request) throws VolleyError {
        return this._NoResponse;
    }
}
