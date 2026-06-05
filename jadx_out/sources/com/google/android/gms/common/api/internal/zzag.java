package com.google.android.gms.common.api.internal;

import android.support.annotation.NonNull;
import com.google.android.gms.tasks.OnCompleteListener;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.TaskCompletionSource;
import java.util.Map;

/* JADX INFO: Access modifiers changed from: package-private */
/* JADX INFO: Add missing generic type declarations: [TResult] */
/* loaded from: classes.dex */
public final class zzag<TResult> implements OnCompleteListener<TResult> {
    private /* synthetic */ TaskCompletionSource zzeuo;
    private /* synthetic */ zzae zzfwz;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzag(zzae zzaeVar, TaskCompletionSource taskCompletionSource) {
        this.zzfwz = zzaeVar;
        this.zzeuo = taskCompletionSource;
    }

    @Override // com.google.android.gms.tasks.OnCompleteListener
    public final void onComplete(@NonNull Task<TResult> task) {
        Map map;
        map = this.zzfwz.zzfwx;
        map.remove(this.zzeuo);
    }
}
