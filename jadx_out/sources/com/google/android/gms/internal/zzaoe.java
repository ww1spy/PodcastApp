package com.google.android.gms.internal;

import com.google.android.gms.common.internal.Hide;
import java.io.File;
import java.text.DecimalFormat;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;

@Hide
@zzabh
/* loaded from: classes.dex */
public final class zzaoe extends zzany {
    private static final Set<String> zzdox = Collections.synchronizedSet(new HashSet());
    private static final DecimalFormat zzdoy = new DecimalFormat("#,###");
    private File zzdoz;
    private boolean zzdpa;

    public zzaoe(zzann zzannVar) {
        super(zzannVar);
        File cacheDir = this.mContext.getCacheDir();
        if (cacheDir == null) {
            zzahw.zzcz("Context.getCacheDir() returned null");
            return;
        }
        this.zzdoz = new File(cacheDir, "admobVideoStreams");
        if (!this.zzdoz.isDirectory() && !this.zzdoz.mkdirs()) {
            String valueOf = String.valueOf(this.zzdoz.getAbsolutePath());
            zzahw.zzcz(valueOf.length() != 0 ? "Could not create preload cache directory at ".concat(valueOf) : new String("Could not create preload cache directory at "));
            this.zzdoz = null;
        } else {
            if (this.zzdoz.setReadable(true, false) && this.zzdoz.setExecutable(true, false)) {
                return;
            }
            String valueOf2 = String.valueOf(this.zzdoz.getAbsolutePath());
            zzahw.zzcz(valueOf2.length() != 0 ? "Could not set cache file permissions at ".concat(valueOf2) : new String("Could not set cache file permissions at "));
            this.zzdoz = null;
        }
    }

    private final File zzc(File file) {
        return new File(this.zzdoz, String.valueOf(file.getName()).concat(".done"));
    }

    @Override // com.google.android.gms.internal.zzany
    public final void abort() {
        this.zzdpa = true;
    }

    /* JADX WARN: Code restructure failed: missing block: B:123:0x044d, code lost:
    
        com.google.android.gms.ads.internal.zzbt.zzep().zza(r1, "VideoStreamFullFileCache.preload");
     */
    /* JADX WARN: Code restructure failed: missing block: B:128:0x045d, code lost:
    
        r4 = new java.lang.StringBuilder(26 + java.lang.String.valueOf(r31).length());
        r4.append("Preload aborted for URL \"");
        r4.append(r31);
        r4.append("\"");
        com.google.android.gms.internal.zzahw.zzcy(r4.toString());
     */
    /* JADX WARN: Code restructure failed: missing block: B:135:0x04c2, code lost:
    
        r1 = "Could not delete partial cache file at ".concat(r4);
     */
    /* JADX WARN: Code restructure failed: missing block: B:137:0x04c7, code lost:
    
        r1 = new java.lang.String("Could not delete partial cache file at ");
     */
    /* JADX WARN: Code restructure failed: missing block: B:140:0x0482, code lost:
    
        r5 = new java.lang.StringBuilder(25 + java.lang.String.valueOf(r31).length());
        r5.append("Preload failed for URL \"");
        r5.append(r31);
        r5.append("\"");
        com.google.android.gms.internal.zzahw.zzc(r5.toString(), r1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:174:0x03ce, code lost:
    
        r1 = r19;
     */
    /* JADX WARN: Code restructure failed: missing block: B:176:0x03d0, code lost:
    
        r1.close();
     */
    /* JADX WARN: Code restructure failed: missing block: B:177:0x03d8, code lost:
    
        if (com.google.android.gms.internal.zzahw.zzae(3) == false) goto L155;
     */
    /* JADX WARN: Code restructure failed: missing block: B:178:0x03da, code lost:
    
        r2 = com.google.android.gms.internal.zzaoe.zzdoy.format(r4);
        r5 = new java.lang.StringBuilder((22 + java.lang.String.valueOf(r2).length()) + java.lang.String.valueOf(r31).length());
        r5.append("Preloaded ");
        r5.append(r2);
        r5.append(" bytes from ");
        r5.append(r31);
        com.google.android.gms.internal.zzahw.zzby(r5.toString());
     */
    /* JADX WARN: Code restructure failed: missing block: B:179:0x0411, code lost:
    
        r12.setReadable(true, false);
     */
    /* JADX WARN: Code restructure failed: missing block: B:180:0x041a, code lost:
    
        if (r13.isFile() == false) goto L209;
     */
    /* JADX WARN: Code restructure failed: missing block: B:181:0x041c, code lost:
    
        r13.setLastModified(java.lang.System.currentTimeMillis());
     */
    /* JADX WARN: Code restructure failed: missing block: B:186:0x0424, code lost:
    
        r13.createNewFile();
     */
    /* JADX WARN: Code restructure failed: missing block: B:189:0x0435, code lost:
    
        r0 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:190:0x043d, code lost:
    
        r10 = r1;
        r2 = android.support.v7.media.MediaRouteProviderProtocol.SERVICE_DATA_ERROR;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:123:0x044d  */
    /* JADX WARN: Removed duplicated region for block: B:128:0x045d  */
    /* JADX WARN: Removed duplicated region for block: B:131:0x04ac  */
    /* JADX WARN: Removed duplicated region for block: B:135:0x04c2  */
    /* JADX WARN: Removed duplicated region for block: B:137:0x04c7  */
    /* JADX WARN: Removed duplicated region for block: B:140:0x0482  */
    /* JADX WARN: Type inference failed for: r10v14, types: [long] */
    /* JADX WARN: Type inference failed for: r10v21 */
    /* JADX WARN: Type inference failed for: r10v23 */
    /* JADX WARN: Type inference failed for: r1v43, types: [com.google.android.gms.common.util.zze] */
    /* JADX WARN: Type inference failed for: r1v52 */
    /* JADX WARN: Type inference failed for: r1v90 */
    /* JADX WARN: Unreachable blocks removed: 2, instructions: 4 */
    @Override // com.google.android.gms.internal.zzany
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean zzdc(java.lang.String r31) {
        /*
            Method dump skipped, instructions count: 1250
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.zzaoe.zzdc(java.lang.String):boolean");
    }
}
