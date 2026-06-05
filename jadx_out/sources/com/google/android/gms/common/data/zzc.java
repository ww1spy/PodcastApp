package com.google.android.gms.common.data;

import android.database.CharArrayBuffer;
import android.net.Uri;
import com.google.android.gms.common.internal.Hide;
import com.google.android.gms.common.internal.zzbg;
import com.google.android.gms.common.internal.zzbq;
import java.util.Arrays;

@Hide
/* loaded from: classes.dex */
public class zzc {
    protected final DataHolder zzfxb;
    protected int zzgch;
    private int zzgci;

    public zzc(DataHolder dataHolder, int i) {
        this.zzfxb = (DataHolder) zzbq.checkNotNull(dataHolder);
        zzbw(i);
    }

    public boolean equals(Object obj) {
        if (obj instanceof zzc) {
            zzc zzcVar = (zzc) obj;
            if (zzbg.equal(Integer.valueOf(zzcVar.zzgch), Integer.valueOf(this.zzgch)) && zzbg.equal(Integer.valueOf(zzcVar.zzgci), Integer.valueOf(this.zzgci)) && zzcVar.zzfxb == this.zzfxb) {
                return true;
            }
        }
        return false;
    }

    protected final boolean getBoolean(String str) {
        return this.zzfxb.zze(str, this.zzgch, this.zzgci);
    }

    protected final byte[] getByteArray(String str) {
        return this.zzfxb.zzg(str, this.zzgch, this.zzgci);
    }

    protected final float getFloat(String str) {
        return this.zzfxb.zzf(str, this.zzgch, this.zzgci);
    }

    protected final int getInteger(String str) {
        return this.zzfxb.zzc(str, this.zzgch, this.zzgci);
    }

    protected final long getLong(String str) {
        return this.zzfxb.zzb(str, this.zzgch, this.zzgci);
    }

    protected final String getString(String str) {
        return this.zzfxb.zzd(str, this.zzgch, this.zzgci);
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{Integer.valueOf(this.zzgch), Integer.valueOf(this.zzgci), this.zzfxb});
    }

    public boolean isDataValid() {
        return !this.zzfxb.isClosed();
    }

    protected final void zza(String str, CharArrayBuffer charArrayBuffer) {
        this.zzfxb.zza(str, this.zzgch, this.zzgci, charArrayBuffer);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void zzbw(int i) {
        zzbq.checkState(i >= 0 && i < this.zzfxb.zzgcq);
        this.zzgch = i;
        this.zzgci = this.zzfxb.zzby(this.zzgch);
    }

    public final boolean zzgj(String str) {
        return this.zzfxb.zzgj(str);
    }

    protected final Uri zzgk(String str) {
        String zzd = this.zzfxb.zzd(str, this.zzgch, this.zzgci);
        if (zzd == null) {
            return null;
        }
        return Uri.parse(zzd);
    }

    protected final boolean zzgl(String str) {
        return this.zzfxb.zzh(str, this.zzgch, this.zzgci);
    }
}
