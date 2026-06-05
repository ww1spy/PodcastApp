package com.google.android.gms.internal;

import android.support.v4.media.session.PlaybackStateCompat;
import io.fabric.sdk.android.services.network.HttpRequest;
import java.io.UnsupportedEncodingException;
import java.nio.ByteBuffer;
import java.security.GeneralSecurityException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.security.SecureRandom;
import java.util.Arrays;
import java.util.Iterator;
import java.util.Vector;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzbx {
    private static boolean zzyw = false;
    private static MessageDigest zzyx;
    private static final Object zzyy = new Object();
    private static final Object zzyz = new Object();
    static CountDownLatch zzza = new CountDownLatch(1);

    public static String zza(zzba zzbaVar, String str) throws GeneralSecurityException, UnsupportedEncodingException {
        byte[] zza;
        byte[] zzc = zzfls.zzc(zzbaVar);
        if (((Boolean) zzlc.zzio().zzd(zzoi.zzbrr)).booleanValue()) {
            zza = zza(zzc, str);
        } else {
            if (zzdq.zzajk == null) {
                throw new GeneralSecurityException();
            }
            byte[] zzd = zzdq.zzajk.zzd(zzc, str != null ? str.getBytes() : new byte[0]);
            zzbg zzbgVar = new zzbg();
            zzbgVar.zzgp = new byte[][]{zzd};
            zzbgVar.zzgr = 2;
            zza = zzfls.zzc(zzbgVar);
        }
        return zzbv.zza(zza, true);
    }

    private static Vector<byte[]> zza(byte[] bArr, int i) {
        if (bArr == null || bArr.length <= 0) {
            return null;
        }
        int length = ((bArr.length + 255) - 1) / 255;
        Vector<byte[]> vector = new Vector<>();
        for (int i2 = 0; i2 < length; i2++) {
            int i3 = i2 * 255;
            try {
                vector.add(Arrays.copyOfRange(bArr, i3, bArr.length - i3 > 255 ? i3 + 255 : bArr.length));
            } catch (IndexOutOfBoundsException unused) {
                return null;
            }
        }
        return vector;
    }

    private static byte[] zza(byte[] bArr, String str) throws NoSuchAlgorithmException, UnsupportedEncodingException {
        Vector<byte[]> zza = zza(bArr, 255);
        if (zza == null || zza.size() == 0) {
            return zza(zzfls.zzc(zzc(PlaybackStateCompat.ACTION_SKIP_TO_QUEUE_ITEM)), str, true);
        }
        zzbg zzbgVar = new zzbg();
        zzbgVar.zzgp = new byte[zza.size()];
        Iterator<byte[]> it = zza.iterator();
        int i = 0;
        while (it.hasNext()) {
            zzbgVar.zzgp[i] = zza(it.next(), str, false);
            i++;
        }
        zzbgVar.zzgk = zzb(bArr);
        return zzfls.zzc(zzbgVar);
    }

    private static byte[] zza(byte[] bArr, String str, boolean z) throws NoSuchAlgorithmException, UnsupportedEncodingException {
        ByteBuffer put;
        int i = z ? 239 : 255;
        if (bArr.length > i) {
            bArr = zzfls.zzc(zzc(PlaybackStateCompat.ACTION_SKIP_TO_QUEUE_ITEM));
        }
        if (bArr.length < i) {
            byte[] bArr2 = new byte[i - bArr.length];
            new SecureRandom().nextBytes(bArr2);
            put = ByteBuffer.allocate(i + 1).put((byte) bArr.length).put(bArr).put(bArr2);
        } else {
            put = ByteBuffer.allocate(i + 1).put((byte) bArr.length).put(bArr);
        }
        byte[] array = put.array();
        if (z) {
            array = ByteBuffer.allocate(256).put(zzb(array)).put(array).array();
        }
        byte[] bArr3 = new byte[256];
        new zzca().zza(array, bArr3);
        if (str != null && str.length() > 0) {
            if (str.length() > 32) {
                str = str.substring(0, 32);
            }
            new zzffa(str.getBytes(HttpRequest.CHARSET_UTF8)).zzay(bArr3);
        }
        return bArr3;
    }

    private static MessageDigest zzaa() {
        boolean z;
        zzz();
        try {
            z = zzza.await(2L, TimeUnit.SECONDS);
        } catch (InterruptedException unused) {
            z = false;
        }
        if (z && zzyx != null) {
            return zzyx;
        }
        return null;
    }

    public static byte[] zzb(byte[] bArr) throws NoSuchAlgorithmException {
        byte[] digest;
        synchronized (zzyy) {
            MessageDigest zzaa = zzaa();
            if (zzaa == null) {
                throw new NoSuchAlgorithmException("Cannot compute hash");
            }
            zzaa.reset();
            zzaa.update(bArr);
            digest = zzyx.digest();
        }
        return digest;
    }

    private static zzba zzc(long j) {
        zzba zzbaVar = new zzba();
        zzbaVar.zzds = Long.valueOf(PlaybackStateCompat.ACTION_SKIP_TO_QUEUE_ITEM);
        return zzbaVar;
    }

    public static void zzz() {
        synchronized (zzyz) {
            if (!zzyw) {
                zzyw = true;
                new Thread(new zzbz()).start();
            }
        }
    }
}
