package com.google.android.gms.internal;

import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.TreeSet;

/* loaded from: classes.dex */
public class zzaj implements zzm {
    private static boolean DEBUG = zzaf.DEBUG;

    @Deprecated
    private zzar zzbo;
    private final zzai zzbp;
    private zzak zzbq;

    public zzaj(zzai zzaiVar) {
        this(zzaiVar, new zzak(4096));
    }

    private zzaj(zzai zzaiVar, zzak zzakVar) {
        this.zzbp = zzaiVar;
        this.zzbo = zzaiVar;
        this.zzbq = zzakVar;
    }

    @Deprecated
    public zzaj(zzar zzarVar) {
        this(zzarVar, new zzak(4096));
    }

    @Deprecated
    private zzaj(zzar zzarVar, zzak zzakVar) {
        this.zzbo = zzarVar;
        this.zzbp = new zzah(zzarVar);
        this.zzbq = zzakVar;
    }

    private static List<zzl> zza(List<zzl> list, zzc zzcVar) {
        TreeSet treeSet = new TreeSet(String.CASE_INSENSITIVE_ORDER);
        if (!list.isEmpty()) {
            Iterator<zzl> it = list.iterator();
            while (it.hasNext()) {
                treeSet.add(it.next().getName());
            }
        }
        ArrayList arrayList = new ArrayList(list);
        if (zzcVar.zzg != null) {
            if (!zzcVar.zzg.isEmpty()) {
                for (zzl zzlVar : zzcVar.zzg) {
                    if (!treeSet.contains(zzlVar.getName())) {
                        arrayList.add(zzlVar);
                    }
                }
            }
        } else if (!zzcVar.zzf.isEmpty()) {
            for (Map.Entry<String, String> entry : zzcVar.zzf.entrySet()) {
                if (!treeSet.contains(entry.getKey())) {
                    arrayList.add(new zzl(entry.getKey(), entry.getValue()));
                }
            }
        }
        return arrayList;
    }

    private static void zza(String str, zzr<?> zzrVar, zzae zzaeVar) throws zzae {
        zzab zzi = zzrVar.zzi();
        int zzh = zzrVar.zzh();
        try {
            zzi.zza(zzaeVar);
            zzrVar.zzb(String.format("%s-retry [timeout=%s]", str, Integer.valueOf(zzh)));
        } catch (zzae e) {
            zzrVar.zzb(String.format("%s-timeout-giveup [timeout=%s]", str, Integer.valueOf(zzh)));
            throw e;
        }
    }

    private final byte[] zza(InputStream inputStream, int i) throws IOException, zzac {
        zzau zzauVar = new zzau(this.zzbq, i);
        byte[] bArr = null;
        try {
            if (inputStream == null) {
                throw new zzac();
            }
            byte[] zzb = this.zzbq.zzb(1024);
            while (true) {
                try {
                    int read = inputStream.read(zzb);
                    if (read == -1) {
                        break;
                    }
                    zzauVar.write(zzb, 0, read);
                } catch (Throwable th) {
                    th = th;
                    bArr = zzb;
                    if (inputStream != null) {
                        try {
                            inputStream.close();
                        } catch (IOException unused) {
                            zzaf.zza("Error occurred when closing InputStream", new Object[0]);
                        }
                    }
                    this.zzbq.zza(bArr);
                    zzauVar.close();
                    throw th;
                }
            }
            byte[] byteArray = zzauVar.toByteArray();
            if (inputStream != null) {
                try {
                    inputStream.close();
                } catch (IOException unused2) {
                    zzaf.zza("Error occurred when closing InputStream", new Object[0]);
                }
            }
            this.zzbq.zza(zzb);
            zzauVar.close();
            return byteArray;
        } catch (Throwable th2) {
            th = th2;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:20:0x00a9, code lost:
    
        if (r6 > mobi.beyondpod.ui.views.base.BPMediaController.TOOLBAR_TIMEOUT_SHORT) goto L35;
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x0106, code lost:
    
        throw new java.io.IOException();
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:42:0x0123  */
    /* JADX WARN: Removed duplicated region for block: B:71:0x018b A[SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r13v14, types: [java.lang.Object[]] */
    /* JADX WARN: Type inference failed for: r7v1 */
    /* JADX WARN: Type inference failed for: r7v17, types: [java.lang.Integer] */
    /* JADX WARN: Type inference failed for: r7v2 */
    /* JADX WARN: Type inference failed for: r7v23 */
    /* JADX WARN: Type inference failed for: r7v24 */
    /* JADX WARN: Type inference failed for: r7v7, types: [com.google.android.gms.internal.zza, com.google.android.gms.internal.zzae] */
    @Override // com.google.android.gms.internal.zzm
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public com.google.android.gms.internal.zzp zzc(com.google.android.gms.internal.zzr<?> r28) throws com.google.android.gms.internal.zzae {
        /*
            Method dump skipped, instructions count: 447
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.zzaj.zzc(com.google.android.gms.internal.zzr):com.google.android.gms.internal.zzp");
    }
}
