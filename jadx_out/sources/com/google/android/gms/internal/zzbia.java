package com.google.android.gms.internal;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.SparseArray;
import java.math.BigInteger;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import java.util.Set;

/* loaded from: classes.dex */
public class zzbia extends zzbhs {
    public static final Parcelable.Creator<zzbia> CREATOR = new zzbib();
    private final String mClassName;
    private final int zzehz;
    private final zzbhv zzgiw;
    private final Parcel zzgjd;
    private final int zzgje = 2;
    private int zzgjf;
    private int zzgjg;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzbia(int i, Parcel parcel, zzbhv zzbhvVar) {
        this.zzehz = i;
        this.zzgjd = (Parcel) com.google.android.gms.common.internal.zzbq.checkNotNull(parcel);
        this.zzgiw = zzbhvVar;
        this.mClassName = this.zzgiw == null ? null : this.zzgiw.zzanj();
        this.zzgjf = 2;
    }

    private static void zza(StringBuilder sb, int i, Object obj) {
        switch (i) {
            case 0:
            case 1:
            case 2:
            case 3:
            case 4:
            case 5:
            case 6:
                sb.append(obj);
                return;
            case 7:
                sb.append("\"");
                sb.append(com.google.android.gms.common.util.zzq.zzha(obj.toString()));
                sb.append("\"");
                return;
            case 8:
                sb.append("\"");
                sb.append(com.google.android.gms.common.util.zzc.zzj((byte[]) obj));
                sb.append("\"");
                return;
            case 9:
                sb.append("\"");
                sb.append(com.google.android.gms.common.util.zzc.zzk((byte[]) obj));
                sb.append("\"");
                return;
            case 10:
                com.google.android.gms.common.util.zzr.zza(sb, (HashMap) obj);
                return;
            case 11:
                throw new IllegalArgumentException("Method does not accept concrete type.");
            default:
                StringBuilder sb2 = new StringBuilder(26);
                sb2.append("Unknown type = ");
                sb2.append(i);
                throw new IllegalArgumentException(sb2.toString());
        }
    }

    private final void zza(StringBuilder sb, zzbhq<?, ?> zzbhqVar, Parcel parcel, int i) {
        int i2 = 0;
        if (zzbhqVar.zzgir) {
            sb.append("[");
            BigInteger[] bigIntegerArr = null;
            double[] dArr = null;
            switch (zzbhqVar.zzgiq) {
                case 0:
                    int[] zzw = zzbgm.zzw(parcel, i);
                    int length = zzw.length;
                    while (i2 < length) {
                        if (i2 != 0) {
                            sb.append(",");
                        }
                        sb.append(Integer.toString(zzw[i2]));
                        i2++;
                    }
                    break;
                case 1:
                    int zza = zzbgm.zza(parcel, i);
                    int dataPosition = parcel.dataPosition();
                    if (zza != 0) {
                        int readInt = parcel.readInt();
                        bigIntegerArr = new BigInteger[readInt];
                        while (i2 < readInt) {
                            bigIntegerArr[i2] = new BigInteger(parcel.createByteArray());
                            i2++;
                        }
                        parcel.setDataPosition(dataPosition + zza);
                    }
                    com.google.android.gms.common.util.zzb.zza(sb, bigIntegerArr);
                    break;
                case 2:
                    com.google.android.gms.common.util.zzb.zza(sb, zzbgm.zzx(parcel, i));
                    break;
                case 3:
                    com.google.android.gms.common.util.zzb.zza(sb, zzbgm.zzy(parcel, i));
                    break;
                case 4:
                    int zza2 = zzbgm.zza(parcel, i);
                    int dataPosition2 = parcel.dataPosition();
                    if (zza2 != 0) {
                        dArr = parcel.createDoubleArray();
                        parcel.setDataPosition(dataPosition2 + zza2);
                    }
                    com.google.android.gms.common.util.zzb.zza(sb, dArr);
                    break;
                case 5:
                    com.google.android.gms.common.util.zzb.zza(sb, zzbgm.zzz(parcel, i));
                    break;
                case 6:
                    com.google.android.gms.common.util.zzb.zza(sb, zzbgm.zzv(parcel, i));
                    break;
                case 7:
                    com.google.android.gms.common.util.zzb.zza(sb, zzbgm.zzaa(parcel, i));
                    break;
                case 8:
                case 9:
                case 10:
                    throw new UnsupportedOperationException("List of type BASE64, BASE64_URL_SAFE, or STRING_MAP is not supported");
                case 11:
                    Parcel[] zzae = zzbgm.zzae(parcel, i);
                    int length2 = zzae.length;
                    for (int i3 = 0; i3 < length2; i3++) {
                        if (i3 > 0) {
                            sb.append(",");
                        }
                        zzae[i3].setDataPosition(0);
                        zza(sb, zzbhqVar.zzanh(), zzae[i3]);
                    }
                    break;
                default:
                    throw new IllegalStateException("Unknown field type out.");
            }
            sb.append("]");
            return;
        }
        switch (zzbhqVar.zzgiq) {
            case 0:
                sb.append(zzbgm.zzg(parcel, i));
                return;
            case 1:
                sb.append(zzbgm.zzk(parcel, i));
                return;
            case 2:
                sb.append(zzbgm.zzi(parcel, i));
                return;
            case 3:
                sb.append(zzbgm.zzl(parcel, i));
                return;
            case 4:
                sb.append(zzbgm.zzn(parcel, i));
                return;
            case 5:
                sb.append(zzbgm.zzp(parcel, i));
                return;
            case 6:
                sb.append(zzbgm.zzc(parcel, i));
                return;
            case 7:
                String zzq = zzbgm.zzq(parcel, i);
                sb.append("\"");
                sb.append(com.google.android.gms.common.util.zzq.zzha(zzq));
                sb.append("\"");
                return;
            case 8:
                byte[] zzt = zzbgm.zzt(parcel, i);
                sb.append("\"");
                sb.append(com.google.android.gms.common.util.zzc.zzj(zzt));
                sb.append("\"");
                return;
            case 9:
                byte[] zzt2 = zzbgm.zzt(parcel, i);
                sb.append("\"");
                sb.append(com.google.android.gms.common.util.zzc.zzk(zzt2));
                sb.append("\"");
                return;
            case 10:
                Bundle zzs = zzbgm.zzs(parcel, i);
                Set<String> keySet = zzs.keySet();
                keySet.size();
                sb.append("{");
                boolean z = true;
                for (String str : keySet) {
                    if (!z) {
                        sb.append(",");
                    }
                    sb.append("\"");
                    sb.append(str);
                    sb.append("\"");
                    sb.append(":");
                    sb.append("\"");
                    sb.append(com.google.android.gms.common.util.zzq.zzha(zzs.getString(str)));
                    sb.append("\"");
                    z = false;
                }
                sb.append("}");
                return;
            case 11:
                Parcel zzad = zzbgm.zzad(parcel, i);
                zzad.setDataPosition(0);
                zza(sb, zzbhqVar.zzanh(), zzad);
                return;
            default:
                throw new IllegalStateException("Unknown field type out");
        }
    }

    private final void zza(StringBuilder sb, Map<String, zzbhq<?, ?>> map, Parcel parcel) {
        Object valueOf;
        SparseArray sparseArray = new SparseArray();
        for (Map.Entry<String, zzbhq<?, ?>> entry : map.entrySet()) {
            sparseArray.put(entry.getValue().zzgit, entry);
        }
        sb.append('{');
        int zzd = zzbgm.zzd(parcel);
        boolean z = false;
        while (parcel.dataPosition() < zzd) {
            int readInt = parcel.readInt();
            Map.Entry entry2 = (Map.Entry) sparseArray.get(65535 & readInt);
            if (entry2 != null) {
                if (z) {
                    sb.append(",");
                }
                String str = (String) entry2.getKey();
                zzbhq<?, ?> zzbhqVar = (zzbhq) entry2.getValue();
                sb.append("\"");
                sb.append(str);
                sb.append("\":");
                if (zzbhqVar.zzang()) {
                    switch (zzbhqVar.zzgiq) {
                        case 0:
                            valueOf = Integer.valueOf(zzbgm.zzg(parcel, readInt));
                            break;
                        case 1:
                            valueOf = zzbgm.zzk(parcel, readInt);
                            break;
                        case 2:
                            valueOf = Long.valueOf(zzbgm.zzi(parcel, readInt));
                            break;
                        case 3:
                            valueOf = Float.valueOf(zzbgm.zzl(parcel, readInt));
                            break;
                        case 4:
                            valueOf = Double.valueOf(zzbgm.zzn(parcel, readInt));
                            break;
                        case 5:
                            valueOf = zzbgm.zzp(parcel, readInt);
                            break;
                        case 6:
                            valueOf = Boolean.valueOf(zzbgm.zzc(parcel, readInt));
                            break;
                        case 7:
                            valueOf = zzbgm.zzq(parcel, readInt);
                            break;
                        case 8:
                        case 9:
                            valueOf = zzbgm.zzt(parcel, readInt);
                            break;
                        case 10:
                            valueOf = zzm(zzbgm.zzs(parcel, readInt));
                            break;
                        case 11:
                            throw new IllegalArgumentException("Method does not accept concrete type.");
                        default:
                            int i = zzbhqVar.zzgiq;
                            StringBuilder sb2 = new StringBuilder(36);
                            sb2.append("Unknown field out type = ");
                            sb2.append(i);
                            throw new IllegalArgumentException(sb2.toString());
                    }
                    zzb(sb, zzbhqVar, zza(zzbhqVar, valueOf));
                } else {
                    zza(sb, zzbhqVar, parcel, readInt);
                }
                z = true;
            }
        }
        if (parcel.dataPosition() == zzd) {
            sb.append('}');
            return;
        }
        StringBuilder sb3 = new StringBuilder(37);
        sb3.append("Overread allowed size end=");
        sb3.append(zzd);
        throw new zzbgn(sb3.toString(), parcel);
    }

    private Parcel zzanl() {
        switch (this.zzgjf) {
            case 0:
                this.zzgjg = zzbgo.zze(this.zzgjd);
            case 1:
                zzbgo.zzai(this.zzgjd, this.zzgjg);
                this.zzgjf = 2;
                break;
        }
        return this.zzgjd;
    }

    private final void zzb(StringBuilder sb, zzbhq<?, ?> zzbhqVar, Object obj) {
        if (!zzbhqVar.zzgip) {
            zza(sb, zzbhqVar.zzgio, obj);
            return;
        }
        ArrayList arrayList = (ArrayList) obj;
        sb.append("[");
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            if (i != 0) {
                sb.append(",");
            }
            zza(sb, zzbhqVar.zzgio, arrayList.get(i));
        }
        sb.append("]");
    }

    private static HashMap<String, String> zzm(Bundle bundle) {
        HashMap<String, String> hashMap = new HashMap<>();
        for (String str : bundle.keySet()) {
            hashMap.put(str, bundle.getString(str));
        }
        return hashMap;
    }

    @Override // com.google.android.gms.internal.zzbhp
    public String toString() {
        com.google.android.gms.common.internal.zzbq.checkNotNull(this.zzgiw, "Cannot convert to JSON on client side.");
        Parcel zzanl = zzanl();
        zzanl.setDataPosition(0);
        StringBuilder sb = new StringBuilder(100);
        zza(sb, this.zzgiw.zzgz(this.mClassName), zzanl);
        return sb.toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzbhv zzbhvVar;
        int zze = zzbgo.zze(parcel);
        zzbgo.zzc(parcel, 1, this.zzehz);
        zzbgo.zza(parcel, 2, zzanl(), false);
        switch (this.zzgje) {
            case 0:
                zzbhvVar = null;
                break;
            case 1:
            case 2:
                zzbhvVar = this.zzgiw;
                break;
            default:
                int i2 = this.zzgje;
                StringBuilder sb = new StringBuilder(34);
                sb.append("Invalid creation type: ");
                sb.append(i2);
                throw new IllegalStateException(sb.toString());
        }
        zzbgo.zza(parcel, 3, (Parcelable) zzbhvVar, i, false);
        zzbgo.zzai(parcel, zze);
    }

    @Override // com.google.android.gms.internal.zzbhp
    public final Map<String, zzbhq<?, ?>> zzabz() {
        if (this.zzgiw == null) {
            return null;
        }
        return this.zzgiw.zzgz(this.mClassName);
    }

    @Override // com.google.android.gms.internal.zzbhs, com.google.android.gms.internal.zzbhp
    public final Object zzgx(String str) {
        throw new UnsupportedOperationException("Converting to JSON does not require this method.");
    }

    @Override // com.google.android.gms.internal.zzbhs, com.google.android.gms.internal.zzbhp
    public final boolean zzgy(String str) {
        throw new UnsupportedOperationException("Converting to JSON does not require this method.");
    }
}
