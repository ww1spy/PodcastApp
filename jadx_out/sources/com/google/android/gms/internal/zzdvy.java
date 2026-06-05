package com.google.android.gms.internal;

/* loaded from: classes.dex */
public enum zzdvy implements zzfia {
    UNKNOWN_HASH(0),
    SHA1(1),
    SHA224(2),
    SHA256(3),
    SHA512(4),
    UNRECOGNIZED(-1);

    private static final zzfib<zzdvy> zzbcn = new zzfib<zzdvy>() { // from class: com.google.android.gms.internal.zzdvz
    };
    private final int value;

    zzdvy(int i) {
        this.value = i;
    }

    public static zzdvy zzgl(int i) {
        switch (i) {
            case 0:
                return UNKNOWN_HASH;
            case 1:
                return SHA1;
            case 2:
                return SHA224;
            case 3:
                return SHA256;
            case 4:
                return SHA512;
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
