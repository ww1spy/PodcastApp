package com.google.android.gms.internal;

import android.support.annotation.Nullable;
import android.text.TextUtils;

/* loaded from: classes.dex */
final class zzos extends zzop {
    @Nullable
    private static String zzan(@Nullable String str) {
        if (TextUtils.isEmpty(str)) {
            return str;
        }
        int i = 0;
        int length = str.length();
        while (i < str.length() && str.charAt(i) == ',') {
            i++;
        }
        while (length > 0 && str.charAt(length - 1) == ',') {
            length--;
        }
        return (i == 0 && length == str.length()) ? str : str.substring(i, length);
    }

    @Override // com.google.android.gms.internal.zzop
    public final String zze(@Nullable String str, String str2) {
        String zzan = zzan(str);
        String zzan2 = zzan(str2);
        if (TextUtils.isEmpty(zzan)) {
            return zzan2;
        }
        if (TextUtils.isEmpty(zzan2)) {
            return zzan;
        }
        StringBuilder sb = new StringBuilder(1 + String.valueOf(zzan).length() + String.valueOf(zzan2).length());
        sb.append(zzan);
        sb.append(",");
        sb.append(zzan2);
        return sb.toString();
    }
}
