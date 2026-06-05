package com.google.android.gms.ads;

import android.content.Context;
import android.support.v7.widget.helper.ItemTouchHelper;
import com.google.android.gms.common.internal.Hide;
import com.google.android.gms.internal.zzako;
import com.google.android.gms.internal.zzko;
import com.google.android.gms.internal.zzlc;
import mobi.beyondpod.downloadengine.IHttpClient;

/* loaded from: classes.dex */
public final class AdSize {
    public static final int AUTO_HEIGHT = -2;
    public static final int FULL_WIDTH = -1;
    private final int zzalt;
    private final int zzalu;
    private final String zzalv;
    public static final AdSize BANNER = new AdSize(320, 50, "320x50_mb");
    public static final AdSize FULL_BANNER = new AdSize(468, 60, "468x60_as");
    public static final AdSize LARGE_BANNER = new AdSize(320, 100, "320x100_as");
    public static final AdSize LEADERBOARD = new AdSize(728, 90, "728x90_as");
    public static final AdSize MEDIUM_RECTANGLE = new AdSize(IHttpClient.SC_MULTIPLE_CHOICES, ItemTouchHelper.Callback.DEFAULT_SWIPE_ANIMATION_DURATION, "300x250_as");
    public static final AdSize WIDE_SKYSCRAPER = new AdSize(160, 600, "160x600_as");
    public static final AdSize SMART_BANNER = new AdSize(-1, -2, "smart_banner");
    public static final AdSize FLUID = new AdSize(-3, -4, "fluid");

    @Hide
    public static final AdSize zzals = new AdSize(50, 50, "50x50_mb");
    public static final AdSize SEARCH = new AdSize(-3, 0, "search_v2");

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public AdSize(int r5, int r6) {
        /*
            r4 = this;
            r0 = -1
            if (r5 != r0) goto L6
            java.lang.String r0 = "FULL"
            goto La
        L6:
            java.lang.String r0 = java.lang.String.valueOf(r5)
        La:
            r1 = -2
            if (r6 != r1) goto L10
            java.lang.String r1 = "AUTO"
            goto L14
        L10:
            java.lang.String r1 = java.lang.String.valueOf(r6)
        L14:
            r2 = 4
            java.lang.String r3 = java.lang.String.valueOf(r0)
            int r3 = r3.length()
            int r2 = r2 + r3
            java.lang.String r3 = java.lang.String.valueOf(r1)
            int r3 = r3.length()
            int r2 = r2 + r3
            java.lang.StringBuilder r3 = new java.lang.StringBuilder
            r3.<init>(r2)
            r3.append(r0)
            java.lang.String r0 = "x"
            r3.append(r0)
            r3.append(r1)
            java.lang.String r0 = "_as"
            r3.append(r0)
            java.lang.String r0 = r3.toString()
            r4.<init>(r5, r6, r0)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.ads.AdSize.<init>(int, int):void");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Hide
    public AdSize(int i, int i2, String str) {
        if (i < 0 && i != -1 && i != -3) {
            StringBuilder sb = new StringBuilder(37);
            sb.append("Invalid width for AdSize: ");
            sb.append(i);
            throw new IllegalArgumentException(sb.toString());
        }
        if (i2 >= 0 || i2 == -2 || i2 == -4) {
            this.zzalt = i;
            this.zzalu = i2;
            this.zzalv = str;
        } else {
            StringBuilder sb2 = new StringBuilder(38);
            sb2.append("Invalid height for AdSize: ");
            sb2.append(i2);
            throw new IllegalArgumentException(sb2.toString());
        }
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof AdSize)) {
            return false;
        }
        AdSize adSize = (AdSize) obj;
        return this.zzalt == adSize.zzalt && this.zzalu == adSize.zzalu && this.zzalv.equals(adSize.zzalv);
    }

    public final int getHeight() {
        return this.zzalu;
    }

    public final int getHeightInPixels(Context context) {
        switch (this.zzalu) {
            case -4:
            case -3:
                return -1;
            case -2:
                return zzko.zzc(context.getResources().getDisplayMetrics());
            default:
                zzlc.zzij();
                return zzako.zza(context, this.zzalu);
        }
    }

    public final int getWidth() {
        return this.zzalt;
    }

    public final int getWidthInPixels(Context context) {
        int i = this.zzalt;
        if (i == -1) {
            return zzko.zzb(context.getResources().getDisplayMetrics());
        }
        switch (i) {
            case -4:
            case -3:
                return -1;
            default:
                zzlc.zzij();
                return zzako.zza(context, this.zzalt);
        }
    }

    public final int hashCode() {
        return this.zzalv.hashCode();
    }

    public final boolean isAutoHeight() {
        return this.zzalu == -2;
    }

    public final boolean isFluid() {
        return this.zzalt == -3 && this.zzalu == -4;
    }

    public final boolean isFullWidth() {
        return this.zzalt == -1;
    }

    public final String toString() {
        return this.zzalv;
    }
}
