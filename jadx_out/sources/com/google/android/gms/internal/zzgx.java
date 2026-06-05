package com.google.android.gms.internal;

import android.app.Activity;
import android.app.Application;
import android.os.Bundle;

/* loaded from: classes.dex */
final class zzgx implements zzhe {
    private /* synthetic */ Activity val$activity;
    private /* synthetic */ Bundle zzaik;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzgx(zzgw zzgwVar, Activity activity, Bundle bundle) {
        this.val$activity = activity;
        this.zzaik = bundle;
    }

    @Override // com.google.android.gms.internal.zzhe
    public final void zza(Application.ActivityLifecycleCallbacks activityLifecycleCallbacks) {
        activityLifecycleCallbacks.onActivityCreated(this.val$activity, this.zzaik);
    }
}
