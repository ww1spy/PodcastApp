package com.google.android.gms.internal;

/* loaded from: classes.dex */
public enum zzdvi implements zzfia {
    UNKNOWN_FORMAT(0),
    UNCOMPRESSED(1),
    COMPRESSED(2),
    UNRECOGNIZED(-1);

    private static final zzfib<zzdvi> zzbcn = new zzfib<zzdvi>() { // from class: com.google.android.gms.internal.zzdvj
    };
    private final int value;

    zzdvi(int i) {
        this.value = i;
    }

    public static zzdvi zzgh(int i) {
        switch (i) {
            case 0:
                return UNKNOWN_FORMAT;
            case 1:
                return UNCOMPRESSED;
            case 2:
                return COMPRESSED;
            default:
                return null;
        }
    }

    @Override // com.google.android.gms.internal.zzfia
    public final int zzhu() {
        if (this == UNRECOGNIZED) {
            throw new IllegalArgumentException("Can't get the number of an unknown enum value.");
        }
        return this.value;
    }
}
