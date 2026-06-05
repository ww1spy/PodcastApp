package com.google.android.gms.internal;

import com.google.android.gms.common.internal.Hide;
import com.google.android.gms.internal.zzbj;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

@Hide
/* loaded from: classes.dex */
public final class zzdkh {
    private static zzbt zza(int i, zzbp zzbpVar, zzbt[] zzbtVarArr, Set<Integer> set) throws zzdkp {
        if (set.contains(Integer.valueOf(i))) {
            String valueOf = String.valueOf(set);
            StringBuilder sb = new StringBuilder(90 + String.valueOf(valueOf).length());
            sb.append("Value cycle detected.  Current value reference: ");
            sb.append(i);
            sb.append(".  Previous value references: ");
            sb.append(valueOf);
            sb.append(".");
            zzna(sb.toString());
        }
        zzbt zzbtVar = (zzbt) zza(zzbpVar.zzww, i, "values");
        if (zzbtVarArr[i] != null) {
            return zzbtVarArr[i];
        }
        zzbt zzbtVar2 = null;
        set.add(Integer.valueOf(i));
        int i2 = 0;
        switch (zzbtVar.type) {
            case 1:
            case 5:
            case 6:
            case 8:
                zzbtVar2 = zzbtVar;
                break;
            case 2:
                zzbj.zza zzm = zzm(zzbtVar);
                zzbt zzl = zzl(zzbtVar);
                zzl.zzyl = new zzbt[zzm.zzxx.length];
                int[] iArr = zzm.zzxx;
                int length = iArr.length;
                int i3 = 0;
                while (i2 < length) {
                    zzl.zzyl[i3] = zza(iArr[i2], zzbpVar, zzbtVarArr, set);
                    i2++;
                    i3++;
                }
                zzbtVar2 = zzl;
                break;
            case 3:
                zzbtVar2 = zzl(zzbtVar);
                zzbj.zza zzm2 = zzm(zzbtVar);
                if (zzm2.zzxy.length != zzm2.zzxz.length) {
                    int length2 = zzm2.zzxy.length;
                    int length3 = zzm2.zzxz.length;
                    StringBuilder sb2 = new StringBuilder(58);
                    sb2.append("Uneven map keys (");
                    sb2.append(length2);
                    sb2.append(") and map values (");
                    sb2.append(length3);
                    sb2.append(")");
                    zzna(sb2.toString());
                }
                zzbtVar2.zzym = new zzbt[zzm2.zzxy.length];
                zzbtVar2.zzyn = new zzbt[zzm2.zzxy.length];
                int[] iArr2 = zzm2.zzxy;
                int length4 = iArr2.length;
                int i4 = 0;
                int i5 = 0;
                while (i4 < length4) {
                    zzbtVar2.zzym[i5] = zza(iArr2[i4], zzbpVar, zzbtVarArr, set);
                    i4++;
                    i5++;
                }
                int[] iArr3 = zzm2.zzxz;
                int length5 = iArr3.length;
                int i6 = 0;
                while (i2 < length5) {
                    zzbtVar2.zzyn[i6] = zza(iArr3[i2], zzbpVar, zzbtVarArr, set);
                    i2++;
                    i6++;
                }
                break;
            case 4:
                zzbtVar2 = zzl(zzbtVar);
                zzbtVar2.zzyo = com.google.android.gms.tagmanager.zzgk.zzd(zza(zzm(zzbtVar).zzyc, zzbpVar, zzbtVarArr, set));
                break;
            case 7:
                zzbtVar2 = zzl(zzbtVar);
                zzbj.zza zzm3 = zzm(zzbtVar);
                zzbtVar2.zzys = new zzbt[zzm3.zzyb.length];
                int[] iArr4 = zzm3.zzyb;
                int length6 = iArr4.length;
                int i7 = 0;
                while (i2 < length6) {
                    zzbtVar2.zzys[i7] = zza(iArr4[i2], zzbpVar, zzbtVarArr, set);
                    i2++;
                    i7++;
                }
                break;
        }
        if (zzbtVar2 == null) {
            String valueOf2 = String.valueOf(zzbtVar);
            StringBuilder sb3 = new StringBuilder(15 + String.valueOf(valueOf2).length());
            sb3.append("Invalid value: ");
            sb3.append(valueOf2);
            zzna(sb3.toString());
        }
        zzbtVarArr[i] = zzbtVar2;
        set.remove(Integer.valueOf(i));
        return zzbtVar2;
    }

    private static zzdkj zza(zzbl zzblVar, zzbp zzbpVar, zzbt[] zzbtVarArr, int i) throws zzdkp {
        zzdkk zzbku = zzdkj.zzbku();
        for (int i2 : zzblVar.zzwh) {
            zzbo zzboVar = (zzbo) zza(zzbpVar.zzwx, Integer.valueOf(i2).intValue(), "properties");
            String str = (String) zza(zzbpVar.zzwv, zzboVar.key, "keys");
            zzbt zzbtVar = (zzbt) zza(zzbtVarArr, zzboVar.value, "values");
            if (zzbi.PUSH_AFTER_EVALUATE.toString().equals(str)) {
                zzbku.zzn(zzbtVar);
            } else {
                zzbku.zzb(str, zzbtVar);
            }
        }
        return zzbku.zzbkv();
    }

    public static zzdkl zza(zzbp zzbpVar) throws zzdkp {
        zzbt[] zzbtVarArr = new zzbt[zzbpVar.zzww.length];
        for (int i = 0; i < zzbpVar.zzww.length; i++) {
            zza(i, zzbpVar, zzbtVarArr, new HashSet(0));
        }
        zzdkm zzbkw = zzdkl.zzbkw();
        ArrayList arrayList = new ArrayList();
        for (int i2 = 0; i2 < zzbpVar.zzwz.length; i2++) {
            arrayList.add(zza(zzbpVar.zzwz[i2], zzbpVar, zzbtVarArr, i2));
        }
        ArrayList arrayList2 = new ArrayList();
        for (int i3 = 0; i3 < zzbpVar.zzxa.length; i3++) {
            arrayList2.add(zza(zzbpVar.zzxa[i3], zzbpVar, zzbtVarArr, i3));
        }
        ArrayList arrayList3 = new ArrayList();
        for (int i4 = 0; i4 < zzbpVar.zzwy.length; i4++) {
            zzdkj zza = zza(zzbpVar.zzwy[i4], zzbpVar, zzbtVarArr, i4);
            zzbkw.zzc(zza);
            arrayList3.add(zza);
        }
        for (zzbq zzbqVar : zzbpVar.zzxb) {
            zzbkw.zzb(zza(zzbqVar, arrayList, arrayList3, arrayList2, zzbpVar));
        }
        zzbkw.zznn(zzbpVar.version);
        zzbkw.zzfk(zzbpVar.zzxj);
        return zzbkw.zzbky();
    }

    private static zzdkn zza(zzbq zzbqVar, List<zzdkj> list, List<zzdkj> list2, List<zzdkj> list3, zzbp zzbpVar) {
        zzdko zzdkoVar = new zzdko();
        for (int i : zzbqVar.zzxl) {
            zzdkoVar.zzd(list3.get(Integer.valueOf(i).intValue()));
        }
        for (int i2 : zzbqVar.zzxm) {
            zzdkoVar.zze(list3.get(Integer.valueOf(i2).intValue()));
        }
        for (int i3 : zzbqVar.zzxn) {
            zzdkoVar.zzf(list.get(Integer.valueOf(i3).intValue()));
        }
        for (int i4 : zzbqVar.zzxp) {
            zzdkoVar.zzno(zzbpVar.zzww[Integer.valueOf(i4).intValue()].string);
        }
        for (int i5 : zzbqVar.zzxo) {
            zzdkoVar.zzg(list.get(Integer.valueOf(i5).intValue()));
        }
        for (int i6 : zzbqVar.zzxq) {
            zzdkoVar.zznp(zzbpVar.zzww[Integer.valueOf(i6).intValue()].string);
        }
        for (int i7 : zzbqVar.zzxr) {
            zzdkoVar.zzh(list2.get(Integer.valueOf(i7).intValue()));
        }
        for (int i8 : zzbqVar.zzxt) {
            zzdkoVar.zznq(zzbpVar.zzww[Integer.valueOf(i8).intValue()].string);
        }
        for (int i9 : zzbqVar.zzxs) {
            zzdkoVar.zzi(list2.get(Integer.valueOf(i9).intValue()));
        }
        for (int i10 : zzbqVar.zzxu) {
            zzdkoVar.zznr(zzbpVar.zzww[Integer.valueOf(i10).intValue()].string);
        }
        return zzdkoVar.zzblb();
    }

    private static <T> T zza(T[] tArr, int i, String str) throws zzdkp {
        if (i < 0 || i >= tArr.length) {
            StringBuilder sb = new StringBuilder(45 + String.valueOf(str).length());
            sb.append("Index out of bounds detected: ");
            sb.append(i);
            sb.append(" in ");
            sb.append(str);
            zzna(sb.toString());
        }
        return tArr[i];
    }

    public static void zzb(InputStream inputStream, OutputStream outputStream) throws IOException {
        byte[] bArr = new byte[1024];
        while (true) {
            int read = inputStream.read(bArr);
            if (read == -1) {
                return;
            } else {
                outputStream.write(bArr, 0, read);
            }
        }
    }

    public static zzbt zzl(zzbt zzbtVar) {
        zzbt zzbtVar2 = new zzbt();
        zzbtVar2.type = zzbtVar.type;
        zzbtVar2.zzyt = (int[]) zzbtVar.zzyt.clone();
        if (zzbtVar.zzyu) {
            zzbtVar2.zzyu = zzbtVar.zzyu;
        }
        return zzbtVar2;
    }

    private static zzbj.zza zzm(zzbt zzbtVar) throws zzdkp {
        if (((zzbj.zza) zzbtVar.zza(zzbj.zza.zzxv)) == null) {
            String valueOf = String.valueOf(zzbtVar);
            StringBuilder sb = new StringBuilder(54 + String.valueOf(valueOf).length());
            sb.append("Expected a ServingValue and didn't get one. Value is: ");
            sb.append(valueOf);
            zzna(sb.toString());
        }
        return (zzbj.zza) zzbtVar.zza(zzbj.zza.zzxv);
    }

    private static void zzna(String str) throws zzdkp {
        com.google.android.gms.tagmanager.zzdj.e(str);
        throw new zzdkp(str);
    }
}
