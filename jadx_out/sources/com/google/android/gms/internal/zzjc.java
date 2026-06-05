package com.google.android.gms.internal;

/* loaded from: classes.dex */
public final class zzjc {
    public static int zzd(int i) {
        if (i != 1000) {
            switch (i) {
                case 0:
                case 1:
                    break;
                default:
                    StringBuilder sb = new StringBuilder(43);
                    sb.append(i);
                    sb.append(" is not a valid enum EnumBoolean");
                    throw new IllegalArgumentException(sb.toString());
            }
        }
        return i;
    }
}
