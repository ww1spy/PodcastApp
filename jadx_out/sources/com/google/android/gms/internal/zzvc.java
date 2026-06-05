package com.google.android.gms.internal;

import com.google.android.gms.common.internal.Hide;
import io.fabric.sdk.android.services.network.HttpRequest;
import java.io.ByteArrayInputStream;
import java.io.InputStream;
import java.nio.charset.Charset;
import org.json.JSONException;
import org.json.JSONObject;

@Hide
@zzabh
/* loaded from: classes.dex */
public final class zzvc {
    private static final Charset UTF_8 = Charset.forName(HttpRequest.CHARSET_UTF8);
    public static final zzvb<JSONObject> zzcgm = new zzve();
    private static zzuz<InputStream> zzcgn = zzvd.zzcgo;

    /* JADX INFO: Access modifiers changed from: package-private */
    public static final /* synthetic */ InputStream zzf(JSONObject jSONObject) throws JSONException {
        return new ByteArrayInputStream(jSONObject.toString().getBytes(UTF_8));
    }
}
