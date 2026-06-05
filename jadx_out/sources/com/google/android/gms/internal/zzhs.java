package com.google.android.gms.internal;

import android.support.annotation.Nullable;
import com.google.android.gms.common.internal.Hide;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

@Hide
@zzabh
/* loaded from: classes.dex */
public abstract class zzhs {

    @Nullable
    private static MessageDigest zzbac;
    protected Object mLock = new Object();

    /* JADX INFO: Access modifiers changed from: protected */
    @Nullable
    public final MessageDigest zzhh() {
        synchronized (this.mLock) {
            if (zzbac != null) {
                return zzbac;
            }
            for (int i = 0; i < 2; i++) {
                try {
                    zzbac = MessageDigest.getInstance("MD5");
                } catch (NoSuchAlgorithmException unused) {
                }
            }
            return zzbac;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract byte[] zzy(String str);
}
