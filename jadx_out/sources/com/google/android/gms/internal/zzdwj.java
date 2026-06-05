package com.google.android.gms.internal;

/* loaded from: classes.dex */
public enum zzdwj implements zzfia {
    UNKNOWN_STATUS(0),
    ENABLED(1),
    DISABLED(2),
    DESTROYED(3),
    UNRECOGNIZED(-1);

    private static final zzfib<zzdwj> zzbcn = new zzfib<zzdwj>() { // from class: com.google.android.gms.internal.zzdwk
    };
    private final int value;

    zzdwj(int i) {
        this.value = i;
    }

    public static zzdwj zzgo(int i) {
        switch (i) {
            case 0:
                return UNKNOWN_STATUS;
            case 1:
                return ENABLED;
            case 2:
                return DISABLED;
            case 3:
                return DESTROYED;
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
