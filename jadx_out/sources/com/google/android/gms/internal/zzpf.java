package com.google.android.gms.internal;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.net.Uri;
import android.os.Bundle;
import android.support.annotation.Nullable;
import android.support.customtabs.CustomTabsCallback;
import android.support.customtabs.CustomTabsClient;
import android.support.customtabs.CustomTabsServiceConnection;
import android.support.customtabs.CustomTabsSession;
import java.util.List;

@zzabh
/* loaded from: classes.dex */
public final class zzpf implements zzfxf {

    @Nullable
    private CustomTabsSession zzbxb;

    @Nullable
    private CustomTabsClient zzbxc;

    @Nullable
    private CustomTabsServiceConnection zzbxd;

    @Nullable
    private zzpg zzbxe;

    public static boolean zzh(Context context) {
        PackageManager packageManager = context.getPackageManager();
        if (packageManager == null) {
            return false;
        }
        Intent intent = new Intent("android.intent.action.VIEW", Uri.parse("http://www.example.com"));
        ResolveInfo resolveActivity = packageManager.resolveActivity(intent, 0);
        List<ResolveInfo> queryIntentActivities = packageManager.queryIntentActivities(intent, 65536);
        if (queryIntentActivities != null && resolveActivity != null) {
            for (int i = 0; i < queryIntentActivities.size(); i++) {
                if (resolveActivity.activityInfo.name.equals(queryIntentActivities.get(i).activityInfo.name)) {
                    return resolveActivity.activityInfo.packageName.equals(zzfxd.zzfk(context));
                }
            }
        }
        return false;
    }

    public final boolean mayLaunchUrl(Uri uri, Bundle bundle, List<Bundle> list) {
        if (this.zzbxc == null) {
            return false;
        }
        if (this.zzbxc == null) {
            this.zzbxb = null;
        } else if (this.zzbxb == null) {
            this.zzbxb = this.zzbxc.newSession((CustomTabsCallback) null);
        }
        CustomTabsSession customTabsSession = this.zzbxb;
        if (customTabsSession == null) {
            return false;
        }
        return customTabsSession.mayLaunchUrl(uri, (Bundle) null, (List) null);
    }

    @Override // com.google.android.gms.internal.zzfxf
    public final void zza(CustomTabsClient customTabsClient) {
        this.zzbxc = customTabsClient;
        this.zzbxc.warmup(0L);
        if (this.zzbxe != null) {
            this.zzbxe.zzju();
        }
    }

    public final void zza(zzpg zzpgVar) {
        this.zzbxe = zzpgVar;
    }

    public final void zzc(Activity activity) {
        if (this.zzbxd == null) {
            return;
        }
        activity.unbindService(this.zzbxd);
        this.zzbxc = null;
        this.zzbxb = null;
        this.zzbxd = null;
    }

    public final void zzd(Activity activity) {
        String zzfk;
        if (this.zzbxc == null && (zzfk = zzfxd.zzfk(activity)) != null) {
            this.zzbxd = new zzfxe(this);
            CustomTabsClient.bindCustomTabsService(activity, zzfk, this.zzbxd);
        }
    }

    @Override // com.google.android.gms.internal.zzfxf
    public final void zzjt() {
        this.zzbxc = null;
        this.zzbxb = null;
        if (this.zzbxe != null) {
            this.zzbxe.zzjv();
        }
    }
}
