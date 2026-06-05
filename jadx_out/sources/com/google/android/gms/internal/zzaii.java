package com.google.android.gms.internal;

import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicInteger;

/* loaded from: classes.dex */
final class zzaii implements ThreadFactory {
    private final AtomicInteger zzdcf = new AtomicInteger(1);
    private /* synthetic */ String zzdfm;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzaii(String str) {
        this.zzdfm = str;
    }

    @Override // java.util.concurrent.ThreadFactory
    public final Thread newThread(Runnable runnable) {
        String str = this.zzdfm;
        int andIncrement = this.zzdcf.getAndIncrement();
        StringBuilder sb = new StringBuilder(23 + String.valueOf(str).length());
        sb.append("AdWorker(");
        sb.append(str);
        sb.append(") #");
        sb.append(andIncrement);
        return new Thread(runnable, sb.toString());
    }
}
