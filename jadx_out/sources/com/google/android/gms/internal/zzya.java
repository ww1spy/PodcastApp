package com.google.android.gms.internal;

import android.annotation.TargetApi;
import android.app.AlertDialog;
import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.provider.CalendarContract;
import android.text.TextUtils;
import com.google.android.gms.R;
import com.google.android.gms.common.internal.Hide;
import io.fabric.sdk.android.services.settings.SettingsJsonConstants;
import java.util.Map;

@Hide
@zzabh
/* loaded from: classes.dex */
public final class zzya extends zzyn {
    private final Context mContext;
    private final Map<String, String> zzbwu;
    private String zzcks;
    private long zzckt;
    private long zzcku;
    private String zzckv;
    private String zzckw;

    public zzya(zzaof zzaofVar, Map<String, String> map) {
        super(zzaofVar, "createCalendarEvent");
        this.zzbwu = map;
        this.mContext = zzaofVar.zztj();
        this.zzcks = zzbk("description");
        this.zzckv = zzbk("summary");
        this.zzckt = zzbl("start_ticks");
        this.zzcku = zzbl("end_ticks");
        this.zzckw = zzbk("location");
    }

    private final String zzbk(String str) {
        return TextUtils.isEmpty(this.zzbwu.get(str)) ? "" : this.zzbwu.get(str);
    }

    private final long zzbl(String str) {
        String str2 = this.zzbwu.get(str);
        if (str2 == null) {
            return -1L;
        }
        try {
            return Long.parseLong(str2);
        } catch (NumberFormatException unused) {
            return -1L;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @TargetApi(14)
    public final Intent createIntent() {
        Intent data = new Intent("android.intent.action.EDIT").setData(CalendarContract.Events.CONTENT_URI);
        data.putExtra(SettingsJsonConstants.PROMPT_TITLE_KEY, this.zzcks);
        data.putExtra("eventLocation", this.zzckw);
        data.putExtra("description", this.zzckv);
        if (this.zzckt > -1) {
            data.putExtra("beginTime", this.zzckt);
        }
        if (this.zzcku > -1) {
            data.putExtra("endTime", this.zzcku);
        }
        data.setFlags(268435456);
        return data;
    }

    public final void execute() {
        if (this.mContext == null) {
            zzbm("Activity context is not available.");
            return;
        }
        com.google.android.gms.ads.internal.zzbt.zzel();
        if (!zzaij.zzal(this.mContext).zzjd()) {
            zzbm("This feature is not available on the device.");
            return;
        }
        com.google.android.gms.ads.internal.zzbt.zzel();
        AlertDialog.Builder zzak = zzaij.zzak(this.mContext);
        Resources resources = com.google.android.gms.ads.internal.zzbt.zzep().getResources();
        zzak.setTitle(resources != null ? resources.getString(R.string.s5) : "Create calendar event");
        zzak.setMessage(resources != null ? resources.getString(R.string.s6) : "Allow Ad to create a calendar event?");
        zzak.setPositiveButton(resources != null ? resources.getString(R.string.s3) : "Accept", new zzyb(this));
        zzak.setNegativeButton(resources != null ? resources.getString(R.string.s4) : "Decline", new zzyc(this));
        zzak.create().show();
    }
}
