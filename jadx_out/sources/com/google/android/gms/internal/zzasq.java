package com.google.android.gms.internal;

import android.app.AlarmManager;
import android.app.PendingIntent;
import android.app.job.JobInfo;
import android.app.job.JobScheduler;
import android.content.ComponentName;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager;
import android.os.Build;
import android.os.PersistableBundle;
import android.support.v4.app.NotificationCompat;
import com.google.android.gms.common.internal.Hide;
import io.fabric.sdk.android.services.settings.SettingsJsonConstants;

@Hide
/* loaded from: classes.dex */
public final class zzasq extends zzari {
    private boolean zzebh;
    private boolean zzebi;
    private final AlarmManager zzebj;
    private Integer zzebk;

    /* JADX INFO: Access modifiers changed from: protected */
    public zzasq(zzark zzarkVar) {
        super(zzarkVar);
        this.zzebj = (AlarmManager) getContext().getSystemService(NotificationCompat.CATEGORY_ALARM);
    }

    private final int getJobId() {
        if (this.zzebk == null) {
            String valueOf = String.valueOf(getContext().getPackageName());
            this.zzebk = Integer.valueOf((valueOf.length() != 0 ? SettingsJsonConstants.ANALYTICS_KEY.concat(valueOf) : new String(SettingsJsonConstants.ANALYTICS_KEY)).hashCode());
        }
        return this.zzebk.intValue();
    }

    private final PendingIntent zzaak() {
        Intent intent = new Intent("com.google.android.gms.analytics.ANALYTICS_DISPATCH");
        intent.setComponent(new ComponentName(getContext(), "com.google.android.gms.analytics.AnalyticsReceiver"));
        return PendingIntent.getBroadcast(getContext(), 0, intent, 0);
    }

    public final void cancel() {
        this.zzebi = false;
        this.zzebj.cancel(zzaak());
        if (Build.VERSION.SDK_INT >= 24) {
            JobScheduler jobScheduler = (JobScheduler) getContext().getSystemService("jobscheduler");
            zza("Cancelling job. JobID", Integer.valueOf(getJobId()));
            jobScheduler.cancel(getJobId());
        }
    }

    public final void schedule() {
        zzyk();
        com.google.android.gms.common.internal.zzbq.zza(this.zzebh, "Receiver not registered");
        long zzzy = zzasl.zzzy();
        if (zzzy > 0) {
            cancel();
            long elapsedRealtime = zzxx().elapsedRealtime() + zzzy;
            this.zzebi = true;
            if (Build.VERSION.SDK_INT < 24) {
                zzea("Scheduling upload with AlarmManager");
                this.zzebj.setInexactRepeating(2, elapsedRealtime, zzzy, zzaak());
                return;
            }
            zzea("Scheduling upload with JobScheduler");
            ComponentName componentName = new ComponentName(getContext(), "com.google.android.gms.analytics.AnalyticsJobService");
            JobScheduler jobScheduler = (JobScheduler) getContext().getSystemService("jobscheduler");
            JobInfo.Builder builder = new JobInfo.Builder(getJobId(), componentName);
            builder.setMinimumLatency(zzzy);
            builder.setOverrideDeadline(zzzy << 1);
            PersistableBundle persistableBundle = new PersistableBundle();
            persistableBundle.putString("action", "com.google.android.gms.analytics.ANALYTICS_DISPATCH");
            builder.setExtras(persistableBundle);
            JobInfo build = builder.build();
            zza("Scheduling job. JobID", Integer.valueOf(getJobId()));
            jobScheduler.schedule(build);
        }
    }

    public final boolean zzaaj() {
        return this.zzebh;
    }

    public final boolean zzea() {
        return this.zzebi;
    }

    @Override // com.google.android.gms.internal.zzari
    protected final void zzwk() {
        ActivityInfo receiverInfo;
        try {
            cancel();
            if (zzasl.zzzy() <= 0 || (receiverInfo = getContext().getPackageManager().getReceiverInfo(new ComponentName(getContext(), "com.google.android.gms.analytics.AnalyticsReceiver"), 2)) == null || !receiverInfo.enabled) {
                return;
            }
            zzea("Receiver registered for local dispatch.");
            this.zzebh = true;
        } catch (PackageManager.NameNotFoundException unused) {
        }
    }
}
