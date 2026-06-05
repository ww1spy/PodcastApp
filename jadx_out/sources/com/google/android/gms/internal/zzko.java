package com.google.android.gms.internal;

import android.content.Context;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.DisplayMetrics;
import com.google.android.gms.ads.AdSize;
import com.google.android.gms.common.internal.Hide;

@Hide
@zzabh
/* loaded from: classes.dex */
public class zzko extends zzbgl {
    public static final Parcelable.Creator<zzko> CREATOR = new zzkp();
    public final int height;
    public final int heightPixels;
    public final int width;
    public final int widthPixels;
    public final String zzbia;
    public final boolean zzbib;
    public final zzko[] zzbic;
    public final boolean zzbid;
    public final boolean zzbie;
    public boolean zzbif;

    public zzko() {
        this("interstitial_mb", 0, 0, true, 0, 0, null, false, false, false);
    }

    public zzko(Context context, AdSize adSize) {
        this(context, new AdSize[]{adSize});
    }

    /* JADX WARN: Removed duplicated region for block: B:20:0x007d  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public zzko(android.content.Context r13, com.google.android.gms.ads.AdSize[] r14) {
        /*
            Method dump skipped, instructions count: 239
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.zzko.<init>(android.content.Context, com.google.android.gms.ads.AdSize[]):void");
    }

    public zzko(zzko zzkoVar, zzko[] zzkoVarArr) {
        this(zzkoVar.zzbia, zzkoVar.height, zzkoVar.heightPixels, zzkoVar.zzbib, zzkoVar.width, zzkoVar.widthPixels, zzkoVarArr, zzkoVar.zzbid, zzkoVar.zzbie, zzkoVar.zzbif);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzko(String str, int i, int i2, boolean z, int i3, int i4, zzko[] zzkoVarArr, boolean z2, boolean z3, boolean z4) {
        this.zzbia = str;
        this.height = i;
        this.heightPixels = i2;
        this.zzbib = z;
        this.width = i3;
        this.widthPixels = i4;
        this.zzbic = zzkoVarArr;
        this.zzbid = z2;
        this.zzbie = z3;
        this.zzbif = z4;
    }

    public static int zzb(DisplayMetrics displayMetrics) {
        return displayMetrics.widthPixels;
    }

    public static int zzc(DisplayMetrics displayMetrics) {
        return (int) (zzd(displayMetrics) * displayMetrics.density);
    }

    private static int zzd(DisplayMetrics displayMetrics) {
        int i = (int) (displayMetrics.heightPixels / displayMetrics.density);
        if (i <= 400) {
            return 32;
        }
        return i <= 720 ? 50 : 90;
    }

    public static zzko zzf(Context context) {
        return new zzko("320x50_mb", 0, 0, false, 0, 0, null, true, false, false);
    }

    public static zzko zzib() {
        return new zzko("reward_mb", 0, 0, true, 0, 0, null, false, false, false);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        int zze = zzbgo.zze(parcel);
        zzbgo.zza(parcel, 2, this.zzbia, false);
        zzbgo.zzc(parcel, 3, this.height);
        zzbgo.zzc(parcel, 4, this.heightPixels);
        zzbgo.zza(parcel, 5, this.zzbib);
        zzbgo.zzc(parcel, 6, this.width);
        zzbgo.zzc(parcel, 7, this.widthPixels);
        zzbgo.zza(parcel, 8, (Parcelable[]) this.zzbic, i, false);
        zzbgo.zza(parcel, 9, this.zzbid);
        zzbgo.zza(parcel, 10, this.zzbie);
        zzbgo.zza(parcel, 11, this.zzbif);
        zzbgo.zzai(parcel, zze);
    }

    public final AdSize zzic() {
        return com.google.android.gms.ads.zzb.zza(this.width, this.height, this.zzbia);
    }
}
