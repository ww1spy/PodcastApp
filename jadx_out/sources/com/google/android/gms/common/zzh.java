package com.google.android.gms.common;

import android.os.RemoteException;
import android.util.Log;
import com.google.android.gms.common.internal.Hide;
import com.google.android.gms.common.internal.zzat;
import com.google.android.gms.common.internal.zzau;
import com.google.android.gms.common.internal.zzbq;
import com.google.android.gms.dynamic.IObjectWrapper;
import java.io.UnsupportedEncodingException;
import java.util.Arrays;

/* JADX INFO: Access modifiers changed from: package-private */
@Hide
/* loaded from: classes.dex */
public abstract class zzh extends zzau {
    private int zzfrd;

    /* JADX INFO: Access modifiers changed from: protected */
    public zzh(byte[] bArr) {
        zzbq.checkArgument(bArr.length == 25);
        this.zzfrd = Arrays.hashCode(bArr);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static byte[] zzgf(String str) {
        try {
            return str.getBytes("ISO-8859-1");
        } catch (UnsupportedEncodingException e) {
            throw new AssertionError(e);
        }
    }

    public boolean equals(Object obj) {
        IObjectWrapper zzahg;
        if (obj == null || !(obj instanceof zzat)) {
            return false;
        }
        try {
            zzat zzatVar = (zzat) obj;
            if (zzatVar.zzahh() == hashCode() && (zzahg = zzatVar.zzahg()) != null) {
                return Arrays.equals(getBytes(), (byte[]) com.google.android.gms.dynamic.zzn.zzy(zzahg));
            }
            return false;
        } catch (RemoteException e) {
            Log.e("GoogleCertificates", "Failed to get Google certificates from remote", e);
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract byte[] getBytes();

    public int hashCode() {
        return this.zzfrd;
    }

    @Override // com.google.android.gms.common.internal.zzat
    public final IObjectWrapper zzahg() {
        return com.google.android.gms.dynamic.zzn.zzz(getBytes());
    }

    @Override // com.google.android.gms.common.internal.zzat
    public final int zzahh() {
        return hashCode();
    }
}
