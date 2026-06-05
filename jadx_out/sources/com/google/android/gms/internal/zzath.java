package com.google.android.gms.internal;

import android.content.SharedPreferences;
import android.text.TextUtils;
import com.google.android.gms.common.internal.Hide;

@Hide
/* loaded from: classes.dex */
public final class zzath extends zzari {
    private SharedPreferences zzeec;
    private long zzeed;
    private long zzeee;
    private final zzatj zzeef;

    /* JADX INFO: Access modifiers changed from: protected */
    public zzath(zzark zzarkVar) {
        super(zzarkVar);
        this.zzeee = -1L;
        this.zzeef = new zzatj(this, "monitoring", zzast.zzeda.get().longValue());
    }

    public final long zzaba() {
        com.google.android.gms.analytics.zzk.zzwj();
        zzyk();
        if (this.zzeed == 0) {
            long j = this.zzeec.getLong("first_run", 0L);
            if (j == 0) {
                j = zzxx().currentTimeMillis();
                SharedPreferences.Editor edit = this.zzeec.edit();
                edit.putLong("first_run", j);
                if (!edit.commit()) {
                    zzed("Failed to commit first run time");
                }
            }
            this.zzeed = j;
        }
        return this.zzeed;
    }

    public final zzatp zzabb() {
        return new zzatp(zzxx(), zzaba());
    }

    public final long zzabc() {
        com.google.android.gms.analytics.zzk.zzwj();
        zzyk();
        if (this.zzeee == -1) {
            this.zzeee = this.zzeec.getLong("last_dispatch", 0L);
        }
        return this.zzeee;
    }

    public final void zzabd() {
        com.google.android.gms.analytics.zzk.zzwj();
        zzyk();
        long currentTimeMillis = zzxx().currentTimeMillis();
        SharedPreferences.Editor edit = this.zzeec.edit();
        edit.putLong("last_dispatch", currentTimeMillis);
        edit.apply();
        this.zzeee = currentTimeMillis;
    }

    public final String zzabe() {
        com.google.android.gms.analytics.zzk.zzwj();
        zzyk();
        String string = this.zzeec.getString("installation_campaign", null);
        if (TextUtils.isEmpty(string)) {
            return null;
        }
        return string;
    }

    public final zzatj zzabf() {
        return this.zzeef;
    }

    public final void zzel(String str) {
        com.google.android.gms.analytics.zzk.zzwj();
        zzyk();
        SharedPreferences.Editor edit = this.zzeec.edit();
        if (TextUtils.isEmpty(str)) {
            edit.remove("installation_campaign");
        } else {
            edit.putString("installation_campaign", str);
        }
        if (edit.commit()) {
            return;
        }
        zzed("Failed to commit campaign data");
    }

    @Override // com.google.android.gms.internal.zzari
    protected final void zzwk() {
        this.zzeec = getContext().getSharedPreferences("com.google.android.gms.analytics.prefs", 0);
    }
}
