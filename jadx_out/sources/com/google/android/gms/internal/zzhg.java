package com.google.android.gms.internal;

import android.support.annotation.Nullable;
import com.google.android.gms.common.internal.Hide;
import java.util.ArrayList;

@Hide
@zzabh
/* loaded from: classes.dex */
public final class zzhg {
    private final int zzayc;
    private final int zzayd;
    private final int zzaye;
    private final zzht zzayf;
    private final zzic zzayg;
    private int zzayn;
    private final Object mLock = new Object();
    private ArrayList<String> zzayh = new ArrayList<>();
    private ArrayList<String> zzayi = new ArrayList<>();
    private ArrayList<zzhr> zzayj = new ArrayList<>();
    private int zzayk = 0;
    private int zzayl = 0;
    private int zzaym = 0;
    private String zzayo = "";
    private String zzayp = "";
    private String zzayq = "";

    public zzhg(int i, int i2, int i3, int i4, int i5, int i6, int i7) {
        this.zzayc = i;
        this.zzayd = i2;
        this.zzaye = i3;
        this.zzayf = new zzht(i4);
        this.zzayg = new zzic(i5, i6, i7);
    }

    private static String zza(ArrayList<String> arrayList, int i) {
        if (arrayList.isEmpty()) {
            return "";
        }
        StringBuilder sb = new StringBuilder();
        ArrayList<String> arrayList2 = arrayList;
        int size = arrayList2.size();
        int i2 = 0;
        while (i2 < size) {
            String str = arrayList2.get(i2);
            i2++;
            sb.append(str);
            sb.append(' ');
            if (sb.length() > 100) {
                break;
            }
        }
        sb.deleteCharAt(sb.length() - 1);
        String sb2 = sb.toString();
        return sb2.length() < 100 ? sb2 : sb2.substring(0, 100);
    }

    private final void zzc(@Nullable String str, boolean z, float f, float f2, float f3, float f4) {
        if (str == null || str.length() < this.zzaye) {
            return;
        }
        synchronized (this.mLock) {
            this.zzayh.add(str);
            this.zzayk += str.length();
            if (z) {
                this.zzayi.add(str);
                this.zzayj.add(new zzhr(f, f2, f3, f4, this.zzayi.size() - 1));
            }
        }
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof zzhg)) {
            return false;
        }
        if (obj == this) {
            return true;
        }
        zzhg zzhgVar = (zzhg) obj;
        return zzhgVar.zzayo != null && zzhgVar.zzayo.equals(this.zzayo);
    }

    public final int getScore() {
        return this.zzayn;
    }

    public final int hashCode() {
        return this.zzayo.hashCode();
    }

    public final String toString() {
        int i = this.zzayl;
        int i2 = this.zzayn;
        int i3 = this.zzayk;
        String zza = zza(this.zzayh, 100);
        String zza2 = zza(this.zzayi, 100);
        String str = this.zzayo;
        String str2 = this.zzayp;
        String str3 = this.zzayq;
        StringBuilder sb = new StringBuilder(165 + String.valueOf(zza).length() + String.valueOf(zza2).length() + String.valueOf(str).length() + String.valueOf(str2).length() + String.valueOf(str3).length());
        sb.append("ActivityContent fetchId: ");
        sb.append(i);
        sb.append(" score:");
        sb.append(i2);
        sb.append(" total_length:");
        sb.append(i3);
        sb.append("\n text: ");
        sb.append(zza);
        sb.append("\n viewableText");
        sb.append(zza2);
        sb.append("\n signture: ");
        sb.append(str);
        sb.append("\n viewableSignture: ");
        sb.append(str2);
        sb.append("\n viewableSignatureForVertical: ");
        sb.append(str3);
        return sb.toString();
    }

    public final void zza(String str, boolean z, float f, float f2, float f3, float f4) {
        zzc(str, z, f, f2, f3, f4);
        synchronized (this.mLock) {
            if (this.zzaym < 0) {
                zzahw.zzby("ActivityContent: negative number of WebViews.");
            }
            zzgu();
        }
    }

    public final void zzb(String str, boolean z, float f, float f2, float f3, float f4) {
        zzc(str, z, f, f2, f3, f4);
    }

    public final boolean zzgn() {
        boolean z;
        synchronized (this.mLock) {
            z = this.zzaym == 0;
        }
        return z;
    }

    public final String zzgo() {
        return this.zzayo;
    }

    public final String zzgp() {
        return this.zzayp;
    }

    public final String zzgq() {
        return this.zzayq;
    }

    public final void zzgr() {
        synchronized (this.mLock) {
            this.zzayn -= 100;
        }
    }

    public final void zzgs() {
        synchronized (this.mLock) {
            this.zzaym--;
        }
    }

    public final void zzgt() {
        synchronized (this.mLock) {
            this.zzaym++;
        }
    }

    public final void zzgu() {
        synchronized (this.mLock) {
            int i = (this.zzayk * this.zzayc) + (this.zzayl * this.zzayd);
            if (i > this.zzayn) {
                this.zzayn = i;
                if (((Boolean) zzlc.zzio().zzd(zzoi.zzbnn)).booleanValue() && !com.google.android.gms.ads.internal.zzbt.zzep().zzqe().zzqp()) {
                    this.zzayo = this.zzayf.zza(this.zzayh);
                    this.zzayp = this.zzayf.zza(this.zzayi);
                }
                if (((Boolean) zzlc.zzio().zzd(zzoi.zzbnp)).booleanValue() && !com.google.android.gms.ads.internal.zzbt.zzep().zzqe().zzqr()) {
                    this.zzayq = this.zzayg.zza(this.zzayi, this.zzayj);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final int zzgv() {
        return this.zzayk;
    }

    public final void zzo(int i) {
        this.zzayl = i;
    }
}
