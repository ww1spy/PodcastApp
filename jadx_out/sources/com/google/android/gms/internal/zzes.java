package com.google.android.gms.internal;

import io.fabric.sdk.android.services.network.HttpRequest;
import java.io.UnsupportedEncodingException;
import java.lang.reflect.Method;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;

/* loaded from: classes.dex */
public class zzes {
    private static String TAG = "zzes";
    private final String className;
    private final zzdm zzagq;
    private final String zzaks;
    private final Class<?>[] zzakv;
    private final int zzakt = 2;
    private volatile Method zzaku = null;
    private CountDownLatch zzakw = new CountDownLatch(1);

    public zzes(zzdm zzdmVar, String str, String str2, Class<?>... clsArr) {
        this.zzagq = zzdmVar;
        this.className = str;
        this.zzaks = str2;
        this.zzakv = clsArr;
        this.zzagq.getExecutorService().submit(new zzet(this));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void zzba() {
        try {
            try {
                Class loadClass = this.zzagq.zzaf().loadClass(zzc(this.zzagq.zzah(), this.className));
                if (loadClass != null) {
                    this.zzaku = loadClass.getMethod(zzc(this.zzagq.zzah(), this.zzaks), this.zzakv);
                    Method method = this.zzaku;
                }
            } catch (zzcy | UnsupportedEncodingException | ClassNotFoundException | NoSuchMethodException | NullPointerException unused) {
            }
        } finally {
            this.zzakw.countDown();
        }
    }

    private final String zzc(byte[] bArr, String str) throws zzcy, UnsupportedEncodingException {
        return new String(this.zzagq.zzag().zzb(bArr, str), HttpRequest.CHARSET_UTF8);
    }

    public final Method zzbb() {
        if (this.zzaku != null) {
            return this.zzaku;
        }
        try {
            if (this.zzakw.await(2L, TimeUnit.SECONDS)) {
                return this.zzaku;
            }
            return null;
        } catch (InterruptedException unused) {
            return null;
        }
    }
}
