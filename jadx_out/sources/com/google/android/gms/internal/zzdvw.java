package com.google.android.gms.internal;

/* loaded from: classes.dex */
public enum zzdvw implements zzfia {
    UNKNOWN_CURVE(0),
    NIST_P224(1),
    NIST_P256(2),
    NIST_P384(3),
    NIST_P521(4),
    UNRECOGNIZED(-1);

    private static final zzfib<zzdvw> zzbcn = new zzfib<zzdvw>() { // from class: com.google.android.gms.internal.zzdvx
    };
    private final int value;

    zzdvw(int i) {
        this.value = i;
    }

    public static zzdvw zzgk(int i) {
        switch (i) {
            case 0:
                return UNKNOWN_CURVE;
            case 1:
                return NIST_P224;
            case 2:
                return NIST_P256;
            case 3:
                return NIST_P384;
            case 4:
                return NIST_P521;
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
