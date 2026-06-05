package com.google.android.gms.internal;

import android.content.Context;
import android.support.annotation.Nullable;
import android.support.v7.media.MediaRouteProviderProtocol;
import com.google.android.gms.common.api.Releasable;
import com.google.android.gms.common.internal.Hide;
import java.lang.ref.WeakReference;
import java.util.Map;

@Hide
@zzabh
/* loaded from: classes.dex */
public abstract class zzany implements Releasable {
    protected Context mContext;
    private String zzddt;
    private WeakReference<zzann> zzdop;

    public zzany(zzann zzannVar) {
        this.mContext = zzannVar.getContext();
        this.zzddt = com.google.android.gms.ads.internal.zzbt.zzel().zzl(this.mContext, zzannVar.zztl().zzcu);
        this.zzdop = new WeakReference<>(zzannVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void zza(String str, Map<String, String> map) {
        zzann zzannVar = this.zzdop.get();
        if (zzannVar != null) {
            zzannVar.zza(str, map);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    public static String zzdd(String str) {
        char c;
        switch (str.hashCode()) {
            case -1396664534:
                if (str.equals("badUrl")) {
                    c = 6;
                    break;
                }
                c = 65535;
                break;
            case -1347010958:
                if (str.equals("inProgress")) {
                    c = 2;
                    break;
                }
                c = 65535;
                break;
            case -918817863:
                if (str.equals("downloadTimeout")) {
                    c = 7;
                    break;
                }
                c = 65535;
                break;
            case -659376217:
                if (str.equals("contentLengthMissing")) {
                    c = 3;
                    break;
                }
                c = 65535;
                break;
            case -642208130:
                if (str.equals("playerFailed")) {
                    c = 1;
                    break;
                }
                c = 65535;
                break;
            case -354048396:
                if (str.equals("sizeExceeded")) {
                    c = '\b';
                    break;
                }
                c = 65535;
                break;
            case -32082395:
                if (str.equals("externalAbort")) {
                    c = '\t';
                    break;
                }
                c = 65535;
                break;
            case 96784904:
                if (str.equals(MediaRouteProviderProtocol.SERVICE_DATA_ERROR)) {
                    c = 0;
                    break;
                }
                c = 65535;
                break;
            case 580119100:
                if (str.equals("expireFailed")) {
                    c = 5;
                    break;
                }
                c = 65535;
                break;
            case 725497484:
                if (str.equals("noCacheDir")) {
                    c = 4;
                    break;
                }
                c = 65535;
                break;
            default:
                c = 65535;
                break;
        }
        switch (c) {
            case 0:
            case 1:
            case 2:
            case 3:
                return "internal";
            case 4:
            case 5:
                return "io";
            case 6:
            case 7:
                return "network";
            case '\b':
            case '\t':
                return "policy";
            default:
                return "internal";
        }
    }

    public abstract void abort();

    @Override // com.google.android.gms.common.api.Releasable
    public void release() {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void zza(String str, String str2, int i) {
        zzako.zzaju.post(new zzaoa(this, str, str2, i));
    }

    public final void zza(String str, String str2, String str3, @Nullable String str4) {
        zzako.zzaju.post(new zzaob(this, str, str2, str3, str4));
    }

    public abstract boolean zzdc(String str);
}
