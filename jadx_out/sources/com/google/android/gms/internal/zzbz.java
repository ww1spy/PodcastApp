package com.google.android.gms.internal;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

/* loaded from: classes.dex */
final class zzbz implements Runnable {
    private zzbz() {
    }

    @Override // java.lang.Runnable
    public final void run() {
        try {
            zzbx.zza(MessageDigest.getInstance("MD5"));
        } catch (NoSuchAlgorithmException unused) {
        } catch (Throwable th) {
            zzbx.zzza.countDown();
            throw th;
        }
        zzbx.zzza.countDown();
    }
}
