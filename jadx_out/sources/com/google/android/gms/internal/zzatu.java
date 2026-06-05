package com.google.android.gms.internal;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.os.Bundle;
import android.support.v7.media.MediaRouteProviderProtocol;
import com.google.android.gms.common.internal.Hide;
import mobi.beyondpod.rsscore.helpers.NotificationHelper;

@Hide
/* loaded from: classes.dex */
public final class zzatu extends zzari {
    private boolean zzdum;
    private String zzdwo;
    private String zzdwp;
    private int zzebd;
    protected int zzedg;
    protected boolean zzeez;
    private boolean zzefa;

    public zzatu(zzark zzarkVar) {
        super(zzarkVar);
    }

    public final boolean zzabm() {
        zzyk();
        return false;
    }

    public final boolean zzabn() {
        zzyk();
        return this.zzefa;
    }

    public final boolean zzabo() {
        zzyk();
        return this.zzdum;
    }

    @Override // com.google.android.gms.internal.zzari
    protected final void zzwk() {
        ApplicationInfo applicationInfo;
        int i;
        zzasx zzav;
        Context context = getContext();
        try {
            applicationInfo = context.getPackageManager().getApplicationInfo(context.getPackageName(), NotificationHelper.UPDATEANDDOWNLOAD_COMPLETED);
        } catch (PackageManager.NameNotFoundException e) {
            zzd("PackageManager doesn't know about the app package", e);
            applicationInfo = null;
        }
        if (applicationInfo == null) {
            zzed("Couldn't get ApplicationInfo to load global config");
            return;
        }
        Bundle bundle = applicationInfo.metaData;
        if (bundle == null || (i = bundle.getInt("com.google.android.gms.analytics.globalConfigResource")) <= 0 || (zzav = new zzasv(zzxw()).zzav(i)) == null) {
            return;
        }
        zzea("Loading global XML config values");
        if (zzav.zzdwo != null) {
            String str = zzav.zzdwo;
            this.zzdwo = str;
            zzb("XML config - app name", str);
        }
        if (zzav.zzdwp != null) {
            String str2 = zzav.zzdwp;
            this.zzdwp = str2;
            zzb("XML config - app version", str2);
        }
        if (zzav.zzedf != null) {
            String lowerCase = zzav.zzedf.toLowerCase();
            int i2 = "verbose".equals(lowerCase) ? 0 : "info".equals(lowerCase) ? 1 : "warning".equals(lowerCase) ? 2 : MediaRouteProviderProtocol.SERVICE_DATA_ERROR.equals(lowerCase) ? 3 : -1;
            if (i2 >= 0) {
                this.zzebd = i2;
                zza("XML config - log level", Integer.valueOf(i2));
            }
        }
        if (zzav.zzedg >= 0) {
            int i3 = zzav.zzedg;
            this.zzedg = i3;
            this.zzeez = true;
            zzb("XML config - dispatch period (sec)", Integer.valueOf(i3));
        }
        if (zzav.zzedh != -1) {
            boolean z = zzav.zzedh == 1;
            this.zzdum = z;
            this.zzefa = true;
            zzb("XML config - dry run", Boolean.valueOf(z));
        }
    }

    public final String zzwn() {
        zzyk();
        return this.zzdwo;
    }

    public final String zzwo() {
        zzyk();
        return this.zzdwp;
    }
}
