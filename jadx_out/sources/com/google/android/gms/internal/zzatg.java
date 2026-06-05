package com.google.android.gms.internal;

import java.io.ByteArrayOutputStream;
import java.io.IOException;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzatg {
    private int zzedz;
    private ByteArrayOutputStream zzeea = new ByteArrayOutputStream();
    private /* synthetic */ zzatf zzeeb;

    public zzatg(zzatf zzatfVar) {
        this.zzeeb = zzatfVar;
    }

    public final byte[] getPayload() {
        return this.zzeea.toByteArray();
    }

    public final int zzaaz() {
        return this.zzedz;
    }

    public final boolean zze(zzasy zzasyVar) {
        byte[] bArr;
        com.google.android.gms.common.internal.zzbq.checkNotNull(zzasyVar);
        if (this.zzedz + 1 > zzasl.zzaaa()) {
            return false;
        }
        String zza = this.zzeeb.zza(zzasyVar, false);
        if (zza == null) {
            this.zzeeb.zzxy().zza(zzasyVar, "Error formatting hit");
            return true;
        }
        byte[] bytes = zza.getBytes();
        int length = bytes.length;
        if (length > zzasl.zzzw()) {
            this.zzeeb.zzxy().zza(zzasyVar, "Hit size exceeds the maximum size limit");
            return true;
        }
        if (this.zzeea.size() > 0) {
            length++;
        }
        if (this.zzeea.size() + length > zzast.zzecl.get().intValue()) {
            return false;
        }
        try {
            if (this.zzeea.size() > 0) {
                ByteArrayOutputStream byteArrayOutputStream = this.zzeea;
                bArr = zzatf.zzedy;
                byteArrayOutputStream.write(bArr);
            }
            this.zzeea.write(bytes);
            this.zzedz++;
            return true;
        } catch (IOException e) {
            this.zzeeb.zze("Failed to write payload when batching hits", e);
            return true;
        }
    }
}
