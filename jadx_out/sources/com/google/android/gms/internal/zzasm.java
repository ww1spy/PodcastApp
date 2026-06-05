package com.google.android.gms.internal;

import android.util.Log;
import com.google.android.gms.analytics.Logger;

/* loaded from: classes.dex */
final class zzasm implements Logger {
    private boolean zzduo;
    private int zzebd = 2;

    @Override // com.google.android.gms.analytics.Logger
    public final void error(Exception exc) {
    }

    @Override // com.google.android.gms.analytics.Logger
    public final void error(String str) {
    }

    @Override // com.google.android.gms.analytics.Logger
    public final int getLogLevel() {
        return this.zzebd;
    }

    @Override // com.google.android.gms.analytics.Logger
    public final void info(String str) {
    }

    @Override // com.google.android.gms.analytics.Logger
    public final void setLogLevel(int i) {
        this.zzebd = i;
        if (this.zzduo) {
            return;
        }
        String str = zzast.zzebn.get();
        String str2 = zzast.zzebn.get();
        StringBuilder sb = new StringBuilder(91 + String.valueOf(str2).length());
        sb.append("Logger is deprecated. To enable debug logging, please run:\nadb shell setprop log.tag.");
        sb.append(str2);
        sb.append(" DEBUG");
        Log.i(str, sb.toString());
        this.zzduo = true;
    }

    @Override // com.google.android.gms.analytics.Logger
    public final void verbose(String str) {
    }

    @Override // com.google.android.gms.analytics.Logger
    public final void warn(String str) {
    }
}
