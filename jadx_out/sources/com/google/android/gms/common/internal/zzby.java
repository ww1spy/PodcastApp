package com.google.android.gms.common.internal;

import android.R;
import android.content.Context;
import android.util.AttributeSet;
import android.widget.Button;

/* loaded from: classes.dex */
public final class zzby extends Button {
    public zzby(Context context) {
        this(context, null);
    }

    private zzby(Context context, AttributeSet attributeSet) {
        super(context, null, R.attr.buttonStyle);
    }

    private static int zzf(int i, int i2, int i3, int i4) {
        switch (i) {
            case 0:
                return i2;
            case 1:
                return i3;
            case 2:
                return i4;
            default:
                StringBuilder sb = new StringBuilder(33);
                sb.append("Unknown color scheme: ");
                sb.append(i);
                throw new IllegalStateException(sb.toString());
        }
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:8:0x007f. Please report as an issue. */
    /* JADX WARN: Removed duplicated region for block: B:14:0x00b6  */
    /* JADX WARN: Removed duplicated region for block: B:16:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void zza(android.content.res.Resources r5, int r6, int r7) {
        /*
            r4 = this;
            android.graphics.Typeface r0 = android.graphics.Typeface.DEFAULT_BOLD
            r4.setTypeface(r0)
            r0 = 1096810496(0x41600000, float:14.0)
            r4.setTextSize(r0)
            android.util.DisplayMetrics r0 = r5.getDisplayMetrics()
            float r0 = r0.density
            r1 = 1111490560(0x42400000, float:48.0)
            float r0 = r0 * r1
            r1 = 1056964608(0x3f000000, float:0.5)
            float r0 = r0 + r1
            int r0 = (int) r0
            r4.setMinHeight(r0)
            r4.setMinWidth(r0)
            int r0 = com.google.android.gms.R.drawable.common_google_signin_btn_icon_dark
            int r1 = com.google.android.gms.R.drawable.common_google_signin_btn_icon_light
            int r2 = com.google.android.gms.R.drawable.common_google_signin_btn_icon_light
            int r0 = zzf(r7, r0, r1, r2)
            int r1 = com.google.android.gms.R.drawable.common_google_signin_btn_text_dark
            int r2 = com.google.android.gms.R.drawable.common_google_signin_btn_text_light
            int r3 = com.google.android.gms.R.drawable.common_google_signin_btn_text_light
            int r1 = zzf(r7, r1, r2, r3)
            r2 = 32
            switch(r6) {
                case 0: goto L4d;
                case 1: goto L4d;
                case 2: goto L4e;
                default: goto L36;
            }
        L36:
            java.lang.IllegalStateException r5 = new java.lang.IllegalStateException
            java.lang.StringBuilder r7 = new java.lang.StringBuilder
            r7.<init>(r2)
            java.lang.String r0 = "Unknown button size: "
            r7.append(r0)
            r7.append(r6)
            java.lang.String r6 = r7.toString()
            r5.<init>(r6)
            throw r5
        L4d:
            r0 = r1
        L4e:
            android.graphics.drawable.Drawable r0 = r5.getDrawable(r0)
            android.graphics.drawable.Drawable r0 = android.support.v4.graphics.drawable.DrawableCompat.wrap(r0)
            int r1 = com.google.android.gms.R.color.common_google_signin_btn_tint
            android.content.res.ColorStateList r1 = r5.getColorStateList(r1)
            android.support.v4.graphics.drawable.DrawableCompat.setTintList(r0, r1)
            android.graphics.PorterDuff$Mode r1 = android.graphics.PorterDuff.Mode.SRC_ATOP
            android.support.v4.graphics.drawable.DrawableCompat.setTintMode(r0, r1)
            r4.setBackgroundDrawable(r0)
            int r0 = com.google.android.gms.R.color.common_google_signin_btn_text_dark
            int r1 = com.google.android.gms.R.color.common_google_signin_btn_text_light
            int r3 = com.google.android.gms.R.color.common_google_signin_btn_text_light
            int r7 = zzf(r7, r0, r1, r3)
            android.content.res.ColorStateList r7 = r5.getColorStateList(r7)
            java.lang.Object r7 = com.google.android.gms.common.internal.zzbq.checkNotNull(r7)
            android.content.res.ColorStateList r7 = (android.content.res.ColorStateList) r7
            r4.setTextColor(r7)
            r7 = 0
            switch(r6) {
                case 0: goto La0;
                case 1: goto L9d;
                case 2: goto L99;
                default: goto L82;
            }
        L82:
            java.lang.IllegalStateException r5 = new java.lang.IllegalStateException
            java.lang.StringBuilder r7 = new java.lang.StringBuilder
            r7.<init>(r2)
            java.lang.String r0 = "Unknown button size: "
            r7.append(r0)
            r7.append(r6)
            java.lang.String r6 = r7.toString()
            r5.<init>(r6)
            throw r5
        L99:
            r4.setText(r7)
            goto La9
        L9d:
            int r6 = com.google.android.gms.R.string.common_signin_button_text_long
            goto La2
        La0:
            int r6 = com.google.android.gms.R.string.common_signin_button_text
        La2:
            java.lang.String r5 = r5.getString(r6)
            r4.setText(r5)
        La9:
            r4.setTransformationMethod(r7)
            android.content.Context r5 = r4.getContext()
            boolean r5 = com.google.android.gms.common.util.zzj.zzcu(r5)
            if (r5 == 0) goto Lbb
            r5 = 19
            r4.setGravity(r5)
        Lbb:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.common.internal.zzby.zza(android.content.res.Resources, int, int):void");
    }
}
