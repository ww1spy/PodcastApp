package com.google.android.gms.internal;

import com.google.android.gms.common.internal.Hide;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

@Hide
@zzabh
/* loaded from: classes.dex */
public final class zzaid {
    public static final ThreadPoolExecutor zzdfi = new ThreadPoolExecutor(20, 20, 1, TimeUnit.MINUTES, new LinkedBlockingQueue(), zzch("Default"));
    private static final ThreadPoolExecutor zzdfj = new ThreadPoolExecutor(5, 5, 1, TimeUnit.MINUTES, new LinkedBlockingQueue(), zzch("Loader"));

    static {
        zzdfi.allowCoreThreadTimeOut(true);
        zzdfj.allowCoreThreadTimeOut(true);
    }

    public static zzalt<Void> zza(int i, Runnable runnable) {
        ThreadPoolExecutor threadPoolExecutor;
        Callable zzaifVar;
        if (i == 1) {
            threadPoolExecutor = zzdfj;
            zzaifVar = new zzaie(runnable);
        } else {
            threadPoolExecutor = zzdfi;
            zzaifVar = new zzaif(runnable);
        }
        return zza(threadPoolExecutor, zzaifVar);
    }

    public static <T> zzalt<T> zza(ExecutorService executorService, Callable<T> callable) {
        zzamd zzamdVar = new zzamd();
        try {
            zzamdVar.zza(new zzaih(zzamdVar, executorService.submit(new zzaig(zzamdVar, callable))), zzaly.zzdjt);
            return zzamdVar;
        } catch (RejectedExecutionException e) {
            zzahw.zzc("Thread execution is rejected.", e);
            zzamdVar.setException(e);
            return zzamdVar;
        }
    }

    public static zzalt<Void> zzb(Runnable runnable) {
        return zza(0, runnable);
    }

    private static ThreadFactory zzch(String str) {
        return new zzaii(str);
    }
}
