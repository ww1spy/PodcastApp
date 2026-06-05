package com.google.android.gms.tagmanager;

import android.content.Context;
import com.google.android.gms.internal.zzdyq;
import java.io.ByteArrayOutputStream;
import java.io.PrintStream;
import java.util.concurrent.LinkedBlockingQueue;

/* loaded from: classes.dex */
final class zzca extends Thread implements zzbz {
    private static zzca zzkpy;
    private volatile boolean mClosed;
    private final Context mContext;
    private volatile boolean zzcnf;
    private final LinkedBlockingQueue<Runnable> zzkpx;
    private volatile zzcc zzkpz;

    private zzca(Context context) {
        super("GAThread");
        this.zzkpx = new LinkedBlockingQueue<>();
        this.zzcnf = false;
        this.mClosed = false;
        this.mContext = context != null ? context.getApplicationContext() : context;
        start();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static zzca zzen(Context context) {
        if (zzkpy == null) {
            zzkpy = new zzca(context);
        }
        return zzkpy;
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public final void run() {
        while (true) {
            boolean z = this.mClosed;
            try {
                try {
                    Runnable take = this.zzkpx.take();
                    if (!this.zzcnf) {
                        take.run();
                    }
                } catch (InterruptedException e) {
                    zzdj.zzcy(e.toString());
                }
            } catch (Throwable th) {
                ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                PrintStream printStream = new PrintStream(byteArrayOutputStream);
                zzdyq.zza(th, printStream);
                printStream.flush();
                String valueOf = String.valueOf(new String(byteArrayOutputStream.toByteArray()));
                zzdj.e(valueOf.length() != 0 ? "Error on Google TagManager Thread: ".concat(valueOf) : new String("Error on Google TagManager Thread: "));
                zzdj.e("Google TagManager is shutting down.");
                this.zzcnf = true;
            }
        }
    }

    @Override // com.google.android.gms.tagmanager.zzbz
    public final void zzlw(String str) {
        zzm(new zzcb(this, this, System.currentTimeMillis(), str));
    }

    @Override // com.google.android.gms.tagmanager.zzbz
    public final void zzm(Runnable runnable) {
        this.zzkpx.add(runnable);
    }
}
