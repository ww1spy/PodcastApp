package com.google.android.gms.internal;

import android.app.Activity;
import android.content.Context;
import android.support.annotation.Nullable;
import com.google.android.gms.common.internal.Hide;
import java.util.Map;

@Hide
@zzabh
/* loaded from: classes.dex */
public interface zzann extends zzapq, zzapt {
    Context getContext();

    String getRequestId();

    void setBackgroundColor(int i);

    void zza(zzaou zzaouVar);

    void zza(String str, Map<String, ?> map);

    void zzag(boolean z);

    com.google.android.gms.ads.internal.zzv zzbo();

    void zzno();

    @Nullable
    zzane zztg();

    @Nullable
    zzaou zzth();

    @Nullable
    zzot zzti();

    Activity zztj();

    zzou zztk();

    zzala zztl();

    int zztm();

    int zztn();
}
