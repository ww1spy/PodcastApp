package com.google.android.gms.internal;

import android.support.annotation.Nullable;

/* loaded from: classes.dex */
public final class zzia {
    final long value;
    final String zzbak;
    final int zzbal;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzia(long j, String str, int i) {
        this.value = j;
        this.zzbak = str;
        this.zzbal = i;
    }

    public final boolean equals(@Nullable Object obj) {
        if (obj == null || !(obj instanceof zzia)) {
            return false;
        }
        zzia zziaVar = (zzia) obj;
        return zziaVar.value == this.value && zziaVar.zzbal == this.zzbal;
    }

    public final int hashCode() {
        return (int) this.value;
    }
}
