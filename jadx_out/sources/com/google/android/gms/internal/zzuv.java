package com.google.android.gms.internal;

import android.support.v7.widget.ActivityChooserView;

@zzabh
/* loaded from: classes.dex */
final class zzuv {
    private static final zzus zzceu = zzus.zzln();
    private static final float zzcev = ((Float) zzlc.zzio().zzd(zzoi.zzbqd)).floatValue();
    private static final long zzcew = ((Long) zzlc.zzio().zzd(zzoi.zzbqb)).longValue();
    private static final float zzcex = ((Float) zzlc.zzio().zzd(zzoi.zzbqe)).floatValue();
    private static final long zzcey = ((Long) zzlc.zzio().zzd(zzoi.zzbqc)).longValue();

    private static int zzb(long j, int i) {
        return (int) ((j >>> (4 * (i % 16))) & 15);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean zzlx() {
        int zzlu = zzceu.zzlu();
        int zzlv = zzceu.zzlv();
        int zzlt = zzceu.zzlt() + zzceu.zzls();
        int i = ActivityChooserView.ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED;
        if (zzlv > ((zzlu >= 16 || zzcey == 0) ? zzcex != 0.0f ? ((int) (zzcex * zzlu)) + 1 : Integer.MAX_VALUE : zzb(zzcey, zzlu))) {
            return false;
        }
        if (zzlu < 16 && zzcew != 0) {
            i = zzb(zzcew, zzlu);
        } else if (zzcev != 0.0f) {
            i = (int) (zzcev * zzlu);
        }
        return zzlt <= i;
    }
}
