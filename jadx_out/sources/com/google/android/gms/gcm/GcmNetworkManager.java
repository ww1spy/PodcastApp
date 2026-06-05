package com.google.android.gms.gcm;

import android.app.PendingIntent;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.os.Bundle;
import android.support.annotation.WorkerThread;
import android.support.v4.util.ArrayMap;
import android.text.TextUtils;
import android.util.Log;
import com.google.android.gms.common.internal.Hide;
import com.google.android.gms.common.internal.zzbq;
import com.google.android.gms.common.zzs;
import com.google.android.gms.iid.zzaa;
import io.fabric.sdk.android.services.settings.SettingsJsonConstants;
import java.util.Collections;
import java.util.List;
import java.util.Map;

/* loaded from: classes.dex */
public class GcmNetworkManager {
    public static final int RESULT_FAILURE = 2;
    public static final int RESULT_RESCHEDULE = 1;
    public static final int RESULT_SUCCESS = 0;
    private static GcmNetworkManager zziji;
    private Context mContext;
    private final PendingIntent zzekd;
    private final Map<String, Map<String, Boolean>> zzijj = new ArrayMap();

    private GcmNetworkManager(Context context) {
        this.mContext = context;
        this.zzekd = PendingIntent.getBroadcast(this.mContext, 0, new Intent().setPackage("com.google.example.invalidpackage"), 0);
    }

    public static GcmNetworkManager getInstance(Context context) {
        GcmNetworkManager gcmNetworkManager;
        synchronized (GcmNetworkManager.class) {
            if (zziji == null) {
                zziji = new GcmNetworkManager(context.getApplicationContext());
            }
            gcmNetworkManager = zziji;
        }
        return gcmNetworkManager;
    }

    private final Intent zzawe() {
        String zzdr = zzaa.zzdr(this.mContext);
        int zzdn = zzdr != null ? GoogleCloudMessaging.zzdn(this.mContext) : -1;
        if (zzdr == null || zzdn < 5000000) {
            StringBuilder sb = new StringBuilder(91);
            sb.append("Google Play Services is not available, dropping GcmNetworkManager request. code=");
            sb.append(zzdn);
            Log.e("GcmNetworkManager", sb.toString());
            return null;
        }
        Intent intent = new Intent("com.google.android.gms.gcm.ACTION_SCHEDULE");
        intent.setPackage(zzdr);
        intent.putExtra(SettingsJsonConstants.APP_KEY, this.zzekd);
        intent.putExtra("source", 4);
        intent.putExtra("source_version", zzs.GOOGLE_PLAY_SERVICES_VERSION_CODE);
        return intent;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void zzid(String str) {
        if (TextUtils.isEmpty(str)) {
            throw new IllegalArgumentException("Must provide a valid tag.");
        }
        if (100 < str.length()) {
            throw new IllegalArgumentException("Tag is larger than max permissible tag length (100)");
        }
    }

    private final boolean zzie(String str) {
        zzbq.checkNotNull(str, "GcmTaskService must not be null.");
        PackageManager packageManager = this.mContext.getPackageManager();
        List<ResolveInfo> emptyList = packageManager == null ? Collections.emptyList() : packageManager.queryIntentServices(str != null ? new Intent(GcmTaskService.SERVICE_ACTION_EXECUTE_TASK).setClassName(this.mContext, str) : new Intent(GcmTaskService.SERVICE_ACTION_EXECUTE_TASK).setPackage(this.mContext.getPackageName()), 0);
        if (emptyList == null ? true : emptyList.isEmpty()) {
            Log.e("GcmNetworkManager", String.valueOf(str).concat(" is not available. This may cause the task to be lost."));
            return true;
        }
        for (ResolveInfo resolveInfo : emptyList) {
            if (resolveInfo.serviceInfo != null && resolveInfo.serviceInfo.enabled) {
                return true;
            }
        }
        StringBuilder sb = new StringBuilder(118 + String.valueOf(str).length());
        sb.append("The GcmTaskService class you provided ");
        sb.append(str);
        sb.append(" does not seem to support receiving com.google.android.gms.gcm.ACTION_TASK_READY");
        throw new IllegalArgumentException(sb.toString());
    }

    @WorkerThread
    public void cancelAllTasks(Class<? extends GcmTaskService> cls) {
        ComponentName componentName = new ComponentName(this.mContext, cls);
        zzie(componentName.getClassName());
        Intent zzawe = zzawe();
        if (zzawe != null) {
            zzawe.putExtra("scheduler_action", "CANCEL_ALL");
            zzawe.putExtra("component", componentName);
            this.mContext.sendBroadcast(zzawe);
        }
    }

    @WorkerThread
    public void cancelTask(String str, Class<? extends GcmTaskService> cls) {
        ComponentName componentName = new ComponentName(this.mContext, cls);
        zzid(str);
        zzie(componentName.getClassName());
        Intent zzawe = zzawe();
        if (zzawe != null) {
            zzawe.putExtra("scheduler_action", "CANCEL_TASK");
            zzawe.putExtra("tag", str);
            zzawe.putExtra("component", componentName);
            this.mContext.sendBroadcast(zzawe);
        }
    }

    @WorkerThread
    public synchronized void schedule(Task task) {
        zzie(task.getServiceName());
        Intent zzawe = zzawe();
        if (zzawe == null) {
            return;
        }
        Bundle extras = zzawe.getExtras();
        extras.putString("scheduler_action", "SCHEDULE_TASK");
        task.toBundle(extras);
        zzawe.putExtras(extras);
        this.mContext.sendBroadcast(zzawe);
        Map<String, Boolean> map = this.zzijj.get(task.getServiceName());
        if (map != null && map.containsKey(task.getTag())) {
            map.put(task.getTag(), true);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Hide
    public final synchronized boolean zzaa(String str, String str2) {
        Map<String, Boolean> map = this.zzijj.get(str2);
        if (map == null) {
            map = new ArrayMap<>();
            this.zzijj.put(str2, map);
        }
        return map.put(str, false) == null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Hide
    public final synchronized void zzab(String str, String str2) {
        Map<String, Boolean> map = this.zzijj.get(str2);
        if (map != null) {
            if ((map.remove(str) != null) && map.isEmpty()) {
                this.zzijj.remove(str2);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Hide
    public final synchronized boolean zzac(String str, String str2) {
        Map<String, Boolean> map = this.zzijj.get(str2);
        if (map == null) {
            return false;
        }
        Boolean bool = map.get(str);
        if (bool == null) {
            return false;
        }
        return bool.booleanValue();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Hide
    public final synchronized boolean zzif(String str) {
        return this.zzijj.containsKey(str);
    }
}
