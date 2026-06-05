package com.google.android.gms.internal;

import android.content.Context;
import android.support.annotation.NonNull;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.GoogleApi;
import com.google.android.gms.common.internal.Hide;
import com.google.android.gms.tasks.Task;
import java.util.List;

@Hide
/* loaded from: classes.dex */
public final class zzbdj extends GoogleApi<Api.ApiOptions.NoOptions> {
    private static final Api.zzf<zzbdn> zzegu = new Api.zzf<>();
    private static final Api.zza<zzbdn, Api.ApiOptions.NoOptions> zzegv = new zzbdk();
    private static final Api<Api.ApiOptions.NoOptions> API = new Api<>("CastApi.API", zzegv, zzegu);

    @Hide
    public zzbdj(@NonNull Context context) {
        super(context, API, (Api.ApiOptions) null, GoogleApi.zza.zzfsr);
    }

    public final Task<Void> zza(@NonNull String[] strArr, String str, List<com.google.android.gms.cast.zzbl> list) {
        return zzb(new zzbdl(this, strArr, str, null));
    }
}
