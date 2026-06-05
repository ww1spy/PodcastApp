package com.google.android.gms.internal;

/* loaded from: classes.dex */
public enum zzdxb implements zzfia {
    UNKNOWN_PREFIX(0),
    TINK(1),
    LEGACY(2),
    RAW(3),
    CRUNCHY(4),
    UNRECOGNIZED(-1);

    private static final zzfib<zzdxb> zzbcn = new zzfib<zzdxb>() { // from class: com.google.android.gms.internal.zzdxc
    };
    private final int value;

    zzdxb(int i) {
        this.value = i;
    }

    public static zzdxb zzgx(int i) {
        switch (i) {
            case 0:
                return UNKNOWN_PREFIX;
            case 1:
                return TINK;
            case 2:
                return LEGACY;
            case 3:
                return RAW;
            case 4:
                return CRUNCHY;
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
