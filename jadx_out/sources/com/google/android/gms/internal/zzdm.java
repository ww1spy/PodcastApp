package com.google.android.gms.internal;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Build;
import android.support.annotation.VisibleForTesting;
import android.util.Log;
import android.util.Pair;
import com.google.android.gms.ads.identifier.AdvertisingIdClient;
import com.google.android.gms.common.GooglePlayServicesNotAvailableException;
import com.google.android.gms.common.GooglePlayServicesRepairableException;
import dalvik.system.DexClassLoader;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.lang.reflect.Method;
import java.security.NoSuchAlgorithmException;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

/* loaded from: classes.dex */
public class zzdm {
    private static final String TAG = "zzdm";
    protected Context zzaiq;
    private ExecutorService zzair;
    private DexClassLoader zzais;
    private zzcx zzait;
    private byte[] zzaiu;
    private boolean zzaix;
    private zzcp zzaja;
    private Map<Pair<String, String>, zzes> zzajd;
    private volatile AdvertisingIdClient zzaiv = null;
    private volatile boolean zzahq = false;
    private Future zzaiw = null;
    private volatile zzba zzaiy = null;
    private Future zzaiz = null;
    private boolean zzajb = false;
    private boolean zzajc = false;
    private boolean zzaje = false;
    private boolean zzajf = true;
    private boolean zzajg = false;

    /* loaded from: classes.dex */
    final class zza extends BroadcastReceiver {
        private zza() {
        }

        /* synthetic */ zza(zzdm zzdmVar, zzdn zzdnVar) {
            this();
        }

        @Override // android.content.BroadcastReceiver
        public final void onReceive(Context context, Intent intent) {
            if ("android.intent.action.USER_PRESENT".equals(intent.getAction())) {
                zzdm.this.zzajf = true;
            } else if ("android.intent.action.SCREEN_OFF".equals(intent.getAction())) {
                zzdm.this.zzajf = false;
            }
        }
    }

    private zzdm(Context context) {
        Context applicationContext = context.getApplicationContext();
        this.zzaix = applicationContext != null;
        this.zzaiq = this.zzaix ? applicationContext : context;
        this.zzajd = new HashMap();
    }

    public static zzdm zza(Context context, String str, String str2, boolean z) {
        zzdm zzdmVar = new zzdm(context);
        try {
            zzdmVar.zzair = Executors.newCachedThreadPool();
            zzdmVar.zzahq = z;
            if (z) {
                zzdmVar.zzaiw = zzdmVar.zzair.submit(new zzdn(zzdmVar));
            }
            zzdmVar.zzair.execute(new zzdp(zzdmVar));
            try {
                com.google.android.gms.common.zzf zzahf = com.google.android.gms.common.zzf.zzahf();
                zzdmVar.zzajb = com.google.android.gms.common.zzf.zzcg(zzdmVar.zzaiq) > 0;
                zzdmVar.zzajc = zzahf.isGooglePlayServicesAvailable(zzdmVar.zzaiq) == 0;
            } catch (Throwable unused) {
            }
            zzdmVar.zza(0, true);
            if (zzds.zzas() && ((Boolean) zzlc.zzio().zzd(zzoi.zzbrs)).booleanValue()) {
                throw new IllegalStateException("Task Context initialization must not be called from the UI thread.");
            }
            zzdn zzdnVar = null;
            zzdmVar.zzait = new zzcx(null);
            try {
                zzdmVar.zzaiu = zzdmVar.zzait.zzl(str);
                try {
                    try {
                        try {
                            try {
                                File cacheDir = zzdmVar.zzaiq.getCacheDir();
                                if (cacheDir == null && (cacheDir = zzdmVar.zzaiq.getDir("dex", 0)) == null) {
                                    throw new zzdj();
                                }
                                File file = new File(String.format("%s/%s.jar", cacheDir, "1510898742191"));
                                if (!file.exists()) {
                                    byte[] zzb = zzdmVar.zzait.zzb(zzdmVar.zzaiu, str2);
                                    file.createNewFile();
                                    FileOutputStream fileOutputStream = new FileOutputStream(file);
                                    fileOutputStream.write(zzb, 0, zzb.length);
                                    fileOutputStream.close();
                                }
                                zzdmVar.zzb(cacheDir, "1510898742191");
                                try {
                                    zzdmVar.zzais = new DexClassLoader(file.getAbsolutePath(), cacheDir.getAbsolutePath(), null, zzdmVar.zzaiq.getClassLoader());
                                    zzb(file);
                                    zzdmVar.zza(cacheDir, "1510898742191");
                                    zzm(String.format("%s/%s.dex", cacheDir, "1510898742191"));
                                    if (((Boolean) zzlc.zzio().zzd(zzoi.zzbrk)).booleanValue() && !zzdmVar.zzajg) {
                                        IntentFilter intentFilter = new IntentFilter();
                                        intentFilter.addAction("android.intent.action.USER_PRESENT");
                                        intentFilter.addAction("android.intent.action.SCREEN_OFF");
                                        zzdmVar.zzaiq.registerReceiver(new zza(zzdmVar, zzdnVar), intentFilter);
                                        zzdmVar.zzajg = true;
                                    }
                                    zzdmVar.zzaja = new zzcp(zzdmVar);
                                    zzdmVar.zzaje = true;
                                    return zzdmVar;
                                } catch (Throwable th) {
                                    zzb(file);
                                    zzdmVar.zza(cacheDir, "1510898742191");
                                    zzm(String.format("%s/%s.dex", cacheDir, "1510898742191"));
                                    throw th;
                                }
                            } catch (NullPointerException e) {
                                throw new zzdj(e);
                            }
                        } catch (zzcy e2) {
                            throw new zzdj(e2);
                        }
                    } catch (FileNotFoundException e3) {
                        throw new zzdj(e3);
                    }
                } catch (IOException e4) {
                    throw new zzdj(e4);
                }
            } catch (zzcy e5) {
                throw new zzdj(e5);
            }
        } catch (zzdj unused2) {
            return zzdmVar;
        }
    }

    private final void zza(File file, String str) {
        FileInputStream fileInputStream;
        File file2 = new File(String.format("%s/%s.tmp", file, str));
        if (file2.exists()) {
            return;
        }
        File file3 = new File(String.format("%s/%s.dex", file, str));
        if (!file3.exists()) {
            return;
        }
        long length = file3.length();
        if (length <= 0) {
            return;
        }
        byte[] bArr = new byte[(int) length];
        FileOutputStream fileOutputStream = null;
        try {
            fileInputStream = new FileInputStream(file3);
            try {
                try {
                    if (fileInputStream.read(bArr) <= 0) {
                        try {
                            fileInputStream.close();
                        } catch (IOException unused) {
                        }
                        zzb(file3);
                        return;
                    }
                    zzbe zzbeVar = new zzbe();
                    zzbeVar.zzgm = Build.VERSION.SDK.getBytes();
                    zzbeVar.zzgl = str.getBytes();
                    byte[] bytes = this.zzait.zzc(this.zzaiu, bArr).getBytes();
                    zzbeVar.data = bytes;
                    zzbeVar.zzgk = zzbx.zzb(bytes);
                    file2.createNewFile();
                    FileOutputStream fileOutputStream2 = new FileOutputStream(file2);
                    try {
                        byte[] zzc = zzfls.zzc(zzbeVar);
                        fileOutputStream2.write(zzc, 0, zzc.length);
                        fileOutputStream2.close();
                        try {
                            fileInputStream.close();
                        } catch (IOException unused2) {
                        }
                        try {
                            fileOutputStream2.close();
                        } catch (IOException unused3) {
                        }
                        zzb(file3);
                    } catch (zzcy | IOException | NoSuchAlgorithmException unused4) {
                        fileOutputStream = fileOutputStream2;
                        if (fileInputStream != null) {
                            try {
                                fileInputStream.close();
                            } catch (IOException unused5) {
                            }
                        }
                        if (fileOutputStream != null) {
                            try {
                                fileOutputStream.close();
                            } catch (IOException unused6) {
                            }
                        }
                        zzb(file3);
                    } catch (Throwable th) {
                        th = th;
                        fileOutputStream = fileOutputStream2;
                        if (fileInputStream != null) {
                            try {
                                fileInputStream.close();
                            } catch (IOException unused7) {
                            }
                        }
                        if (fileOutputStream != null) {
                            try {
                                fileOutputStream.close();
                            } catch (IOException unused8) {
                            }
                        }
                        zzb(file3);
                        throw th;
                    }
                } catch (zzcy | IOException | NoSuchAlgorithmException unused9) {
                }
            } catch (Throwable th2) {
                th = th2;
            }
        } catch (zzcy | IOException | NoSuchAlgorithmException unused10) {
            fileInputStream = null;
        } catch (Throwable th3) {
            th = th3;
            fileInputStream = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean zza(int i, zzba zzbaVar) {
        if (i >= 4) {
            return false;
        }
        if (zzbaVar == null) {
            return true;
        }
        if (((Boolean) zzlc.zzio().zzd(zzoi.zzbrv)).booleanValue() && (zzbaVar.zzcv == null || zzbaVar.zzcv.equals("0000000000000000000000000000000000000000000000000000000000000000"))) {
            return true;
        }
        if (((Boolean) zzlc.zzio().zzd(zzoi.zzbrw)).booleanValue()) {
            return zzbaVar.zzfh == null || zzbaVar.zzfh.zzgf == null || zzbaVar.zzfh.zzgf.longValue() == -2;
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void zzao() {
        try {
            if (this.zzaiv == null && this.zzaix) {
                AdvertisingIdClient advertisingIdClient = new AdvertisingIdClient(this.zzaiq);
                advertisingIdClient.start();
                this.zzaiv = advertisingIdClient;
            }
        } catch (GooglePlayServicesNotAvailableException | GooglePlayServicesRepairableException | IOException unused) {
            this.zzaiv = null;
        }
    }

    @VisibleForTesting
    private final zzba zzap() {
        try {
            return zzcda.zzm(this.zzaiq, this.zzaiq.getPackageName(), Integer.toString(this.zzaiq.getPackageManager().getPackageInfo(this.zzaiq.getPackageName(), 0).versionCode));
        } catch (Throwable unused) {
            return null;
        }
    }

    private static void zzb(File file) {
        if (file.exists()) {
            file.delete();
        } else {
            Log.d(TAG, String.format("File %s not found. No need for deletion", file.getAbsolutePath()));
        }
    }

    private final boolean zzb(File file, String str) {
        FileInputStream fileInputStream;
        File file2 = new File(String.format("%s/%s.tmp", file, str));
        if (!file2.exists()) {
            return false;
        }
        File file3 = new File(String.format("%s/%s.dex", file, str));
        if (file3.exists()) {
            return false;
        }
        FileOutputStream fileOutputStream = null;
        try {
            long length = file2.length();
            if (length <= 0) {
                zzb(file2);
                return false;
            }
            byte[] bArr = new byte[(int) length];
            fileInputStream = new FileInputStream(file2);
            try {
                try {
                    if (fileInputStream.read(bArr) <= 0) {
                        Log.d(TAG, "Cannot read the cache data.");
                        zzb(file2);
                        try {
                            fileInputStream.close();
                        } catch (IOException unused) {
                        }
                        return false;
                    }
                    zzbe zzbeVar = (zzbe) zzfls.zza(new zzbe(), bArr);
                    if (str.equals(new String(zzbeVar.zzgl)) && Arrays.equals(zzbeVar.zzgk, zzbx.zzb(zzbeVar.data)) && Arrays.equals(zzbeVar.zzgm, Build.VERSION.SDK.getBytes())) {
                        byte[] zzb = this.zzait.zzb(this.zzaiu, new String(zzbeVar.data));
                        file3.createNewFile();
                        FileOutputStream fileOutputStream2 = new FileOutputStream(file3);
                        try {
                            fileOutputStream2.write(zzb, 0, zzb.length);
                            try {
                                fileInputStream.close();
                            } catch (IOException unused2) {
                            }
                            try {
                                fileOutputStream2.close();
                            } catch (IOException unused3) {
                            }
                            return true;
                        } catch (zzcy | IOException | NoSuchAlgorithmException unused4) {
                            fileOutputStream = fileOutputStream2;
                            if (fileInputStream != null) {
                                try {
                                    fileInputStream.close();
                                } catch (IOException unused5) {
                                }
                            }
                            if (fileOutputStream != null) {
                                try {
                                    fileOutputStream.close();
                                } catch (IOException unused6) {
                                }
                            }
                            return false;
                        } catch (Throwable th) {
                            th = th;
                            fileOutputStream = fileOutputStream2;
                            if (fileInputStream != null) {
                                try {
                                    fileInputStream.close();
                                } catch (IOException unused7) {
                                }
                            }
                            if (fileOutputStream == null) {
                                throw th;
                            }
                            try {
                                fileOutputStream.close();
                                throw th;
                            } catch (IOException unused8) {
                                throw th;
                            }
                        }
                    }
                    zzb(file2);
                    try {
                        fileInputStream.close();
                    } catch (IOException unused9) {
                    }
                    return false;
                } catch (Throwable th2) {
                    th = th2;
                }
            } catch (zzcy | IOException | NoSuchAlgorithmException unused10) {
            }
        } catch (zzcy | IOException | NoSuchAlgorithmException unused11) {
            fileInputStream = null;
        } catch (Throwable th3) {
            th = th3;
            fileInputStream = null;
        }
    }

    private static void zzm(String str) {
        zzb(new File(str));
    }

    public final Context getContext() {
        return this.zzaiq;
    }

    public final ExecutorService getExecutorService() {
        return this.zzair;
    }

    public final boolean isInitialized() {
        return this.zzaje;
    }

    public final Method zza(String str, String str2) {
        zzes zzesVar = this.zzajd.get(new Pair(str, str2));
        if (zzesVar == null) {
            return null;
        }
        return zzesVar.zzbb();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @VisibleForTesting
    public final void zza(int i, boolean z) {
        if (this.zzajc) {
            Future<?> submit = this.zzair.submit(new zzdo(this, i, z));
            if (i == 0) {
                this.zzaiz = submit;
            }
        }
    }

    public final boolean zza(String str, String str2, Class<?>... clsArr) {
        if (this.zzajd.containsKey(new Pair(str, str2))) {
            return false;
        }
        this.zzajd.put(new Pair<>(str, str2), new zzes(this, str, str2, clsArr));
        return true;
    }

    public final int zzab() {
        if (this.zzaja != null) {
            return zzcp.zzab();
        }
        return Integer.MIN_VALUE;
    }

    public final DexClassLoader zzaf() {
        return this.zzais;
    }

    public final zzcx zzag() {
        return this.zzait;
    }

    public final byte[] zzah() {
        return this.zzaiu;
    }

    public final boolean zzai() {
        return this.zzajb;
    }

    public final zzcp zzaj() {
        return this.zzaja;
    }

    public final boolean zzak() {
        return this.zzajc;
    }

    public final boolean zzal() {
        return this.zzajf;
    }

    public final zzba zzam() {
        return this.zzaiy;
    }

    public final Future zzan() {
        return this.zzaiz;
    }

    public final AdvertisingIdClient zzaq() {
        if (!this.zzahq) {
            return null;
        }
        if (this.zzaiv != null) {
            return this.zzaiv;
        }
        if (this.zzaiw != null) {
            try {
                this.zzaiw.get(2000L, TimeUnit.MILLISECONDS);
                this.zzaiw = null;
            } catch (InterruptedException | ExecutionException unused) {
            } catch (TimeoutException unused2) {
                this.zzaiw.cancel(true);
            }
        }
        return this.zzaiv;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @VisibleForTesting
    public final zzba zzb(int i, boolean z) {
        if (i > 0 && z) {
            try {
                Thread.sleep(i * 1000);
            } catch (InterruptedException unused) {
            }
        }
        return zzap();
    }
}
