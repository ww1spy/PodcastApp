package com.google.android.gms.internal;

import com.google.android.gms.common.internal.Hide;

@Hide
@zzabh
/* loaded from: classes.dex */
public final class zzaep extends zzaev {
    private final String zzczr;
    private final int zzczs;

    public zzaep(String str, int i) {
        this.zzczr = str;
        this.zzczs = i;
    }

    public final boolean equals(Object obj) {
        if (obj == null || !(obj instanceof zzaep)) {
            return false;
        }
        zzaep zzaepVar = (zzaep) obj;
        return com.google.android.gms.common.internal.zzbg.equal(this.zzczr, zzaepVar.zzczr) && com.google.android.gms.common.internal.zzbg.equal(Integer.valueOf(this.zzczs), Integer.valueOf(zzaepVar.zzczs));
    }

    @Override // com.google.android.gms.internal.zzaeu
    public final int getAmount() {
        return this.zzczs;
    }

    @Override // com.google.android.gms.internal.zzaeu
    public final String getType() {
        return this.zzczr;
    }
}
