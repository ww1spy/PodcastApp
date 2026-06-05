package com.google.android.gms.internal;

import android.content.Context;
import android.net.Uri;
import android.os.Environment;
import android.support.annotation.Nullable;
import android.text.TextUtils;
import com.google.android.gms.common.internal.Hide;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ArrayBlockingQueue;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.atomic.AtomicBoolean;

@Hide
@zzabh
/* loaded from: classes.dex */
public final class zzol {
    private Context mContext;
    private String zzavp;
    private String zzbwd;
    private BlockingQueue<zzov> zzbwf;
    private ExecutorService zzbwg;
    private LinkedHashMap<String, String> zzbwh = new LinkedHashMap<>();
    private Map<String, zzop> zzbwi = new HashMap();
    private AtomicBoolean zzbwj = new AtomicBoolean(false);
    private File zzbwk;

    public zzol(Context context, String str, String str2, Map<String, String> map) {
        File externalStorageDirectory;
        this.mContext = context;
        this.zzavp = str;
        this.zzbwd = str2;
        this.zzbwj.set(((Boolean) zzlc.zzio().zzd(zzoi.zzbng)).booleanValue());
        if (this.zzbwj.get() && (externalStorageDirectory = Environment.getExternalStorageDirectory()) != null) {
            this.zzbwk = new File(externalStorageDirectory, "sdk_csi_data.txt");
        }
        for (Map.Entry<String, String> entry : map.entrySet()) {
            this.zzbwh.put(entry.getKey(), entry.getValue());
        }
        this.zzbwf = new ArrayBlockingQueue(30);
        this.zzbwg = Executors.newSingleThreadExecutor();
        this.zzbwg.execute(new zzom(this));
        this.zzbwi.put("action", zzop.zzbwn);
        this.zzbwi.put("ad_format", zzop.zzbwn);
        this.zzbwi.put("e", zzop.zzbwo);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void zzjk() {
        FileOutputStream fileOutputStream;
        while (true) {
            try {
                zzov take = this.zzbwf.take();
                String zzjp = take.zzjp();
                if (!TextUtils.isEmpty(zzjp)) {
                    Map<String, String> zza = zza(this.zzbwh, take.zzjq());
                    Uri.Builder buildUpon = Uri.parse(this.zzbwd).buildUpon();
                    for (Map.Entry<String, String> entry : zza.entrySet()) {
                        buildUpon.appendQueryParameter(entry.getKey(), entry.getValue());
                    }
                    String str = buildUpon.build().toString() + "&it=" + zzjp;
                    if (this.zzbwj.get()) {
                        File file = this.zzbwk;
                        if (file != null) {
                            FileOutputStream fileOutputStream2 = null;
                            try {
                                try {
                                    fileOutputStream = new FileOutputStream(file, true);
                                } catch (IOException e) {
                                    e = e;
                                }
                            } catch (Throwable th) {
                                th = th;
                            }
                            try {
                                fileOutputStream.write(str.getBytes());
                                fileOutputStream.write(10);
                                try {
                                    fileOutputStream.close();
                                } catch (IOException e2) {
                                    zzahw.zzc("CsiReporter: Cannot close file: sdk_csi_data.txt.", e2);
                                }
                            } catch (IOException e3) {
                                e = e3;
                                fileOutputStream2 = fileOutputStream;
                                zzahw.zzc("CsiReporter: Cannot write to file: sdk_csi_data.txt.", e);
                                if (fileOutputStream2 != null) {
                                    fileOutputStream2.close();
                                }
                            } catch (Throwable th2) {
                                th = th2;
                                fileOutputStream2 = fileOutputStream;
                                if (fileOutputStream2 != null) {
                                    try {
                                        fileOutputStream2.close();
                                    } catch (IOException e4) {
                                        zzahw.zzc("CsiReporter: Cannot close file: sdk_csi_data.txt.", e4);
                                    }
                                }
                                throw th;
                            }
                        } else {
                            zzahw.zzcz("CsiReporter: File doesn't exists. Cannot write CSI data to file.");
                        }
                    } else {
                        com.google.android.gms.ads.internal.zzbt.zzel();
                        zzaij.zze(this.mContext, this.zzavp, str);
                    }
                }
            } catch (InterruptedException e5) {
                zzahw.zzc("CsiReporter:reporter interrupted", e5);
                return;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final Map<String, String> zza(Map<String, String> map, @Nullable Map<String, String> map2) {
        LinkedHashMap linkedHashMap = new LinkedHashMap(map);
        if (map2 == null) {
            return linkedHashMap;
        }
        for (Map.Entry<String, String> entry : map2.entrySet()) {
            String key = entry.getKey();
            String value = entry.getValue();
            linkedHashMap.put(key, zzam(key).zze((String) linkedHashMap.get(key), value));
        }
        return linkedHashMap;
    }

    public final boolean zza(zzov zzovVar) {
        return this.zzbwf.offer(zzovVar);
    }

    public final zzop zzam(String str) {
        zzop zzopVar = this.zzbwi.get(str);
        return zzopVar != null ? zzopVar : zzop.zzbwm;
    }

    public final void zzg(@Nullable List<String> list) {
        if (list == null || list.isEmpty()) {
            return;
        }
        this.zzbwh.put("e", TextUtils.join(",", list));
    }
}
