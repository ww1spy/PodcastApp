package com.google.android.gms.internal;

import android.os.Environment;
import com.google.android.gms.common.internal.Hide;
import com.google.android.gms.internal.zziw;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

@Hide
@zzabh
/* loaded from: classes.dex */
public final class zziu {
    private final zziz zzbbh;
    private final zzjk zzbbi;
    private final boolean zzbbj;

    private zziu() {
        this.zzbbj = false;
        this.zzbbh = new zziz();
        this.zzbbi = new zzjk();
        zzhq();
    }

    public zziu(zziz zzizVar) {
        this.zzbbh = zzizVar;
        this.zzbbj = ((Boolean) zzlc.zzio().zzd(zzoi.zzbvc)).booleanValue();
        this.zzbbi = new zzjk();
        zzhq();
    }

    private final synchronized void zzb(zziw.zza.zzb zzbVar) {
        this.zzbbi.zzben = zzhr();
        this.zzbbh.zzd(zzfls.zzc(this.zzbbi)).zzq(zzbVar.zzhu()).log();
        String valueOf = String.valueOf(Integer.toString(zzbVar.zzhu(), 10));
        zzahw.v(valueOf.length() != 0 ? "Logging Event with event code : ".concat(valueOf) : new String("Logging Event with event code : "));
    }

    private final synchronized void zzc(zziw.zza.zzb zzbVar) {
        File externalStorageDirectory = Environment.getExternalStorageDirectory();
        if (externalStorageDirectory == null) {
            return;
        }
        try {
            FileOutputStream fileOutputStream = new FileOutputStream(new File(externalStorageDirectory, "clearcut_events.txt"), true);
            try {
                try {
                    fileOutputStream.write(zzd(zzbVar).getBytes());
                    fileOutputStream.write(10);
                    try {
                        fileOutputStream.close();
                    } catch (IOException unused) {
                        zzahw.v("Could not close Clearcut output stream.");
                    }
                } catch (Throwable th) {
                    try {
                        fileOutputStream.close();
                    } catch (IOException unused2) {
                        zzahw.v("Could not close Clearcut output stream.");
                    }
                    throw th;
                }
            } catch (IOException unused3) {
                zzahw.v("Could not write Clearcut to file.");
                try {
                    fileOutputStream.close();
                } catch (IOException unused4) {
                    zzahw.v("Could not close Clearcut output stream.");
                }
            }
        } catch (FileNotFoundException unused5) {
            zzahw.v("Could not find file for Clearcut");
        }
    }

    private final synchronized String zzd(zziw.zza.zzb zzbVar) {
        return String.format("id=%s,timestamp=%s,event=%s", this.zzbbi.zzbej, Long.valueOf(com.google.android.gms.ads.internal.zzbt.zzes().elapsedRealtime()), Integer.valueOf(zzbVar.zzhu()));
    }

    public static zziu zzhp() {
        return new zziu();
    }

    private final synchronized void zzhq() {
        this.zzbbi.zzber = new zzjd();
        this.zzbbi.zzber.zzbcy = new zzjg();
        this.zzbbi.zzbeo = new zzji();
    }

    private static long[] zzhr() {
        int i;
        List<String> zzjg = zzoi.zzjg();
        ArrayList arrayList = new ArrayList();
        Iterator<String> it = zzjg.iterator();
        while (true) {
            i = 0;
            if (!it.hasNext()) {
                break;
            }
            String[] split = it.next().split(",");
            int length = split.length;
            while (i < length) {
                try {
                    arrayList.add(Long.valueOf(split[i]));
                } catch (NumberFormatException unused) {
                    zzahw.v("Experiment ID is not a number");
                }
                i++;
            }
        }
        long[] jArr = new long[arrayList.size()];
        ArrayList arrayList2 = arrayList;
        int size = arrayList2.size();
        int i2 = 0;
        while (i < size) {
            Object obj = arrayList2.get(i);
            i++;
            jArr[i2] = ((Long) obj).longValue();
            i2++;
        }
        return jArr;
    }

    public final synchronized void zza(zziv zzivVar) {
        if (this.zzbbj) {
            try {
                zzivVar.zza(this.zzbbi);
            } catch (NullPointerException e) {
                com.google.android.gms.ads.internal.zzbt.zzep().zza(e, "AdMobClearcutLogger.modify");
            }
        }
    }

    public final synchronized void zza(zziw.zza.zzb zzbVar) {
        if (this.zzbbj) {
            if (((Boolean) zzlc.zzio().zzd(zzoi.zzbvd)).booleanValue()) {
                zzc(zzbVar);
            } else {
                zzb(zzbVar);
            }
        }
    }
}
