package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.Hide;
import java.util.Map;

@Hide
@zzabh
/* loaded from: classes.dex */
public final class zzsy extends zzbgl {
    public static final Parcelable.Creator<zzsy> CREATOR = new zzsz();
    private String url;
    private String[] zzccx;
    private String[] zzccy;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzsy(String str, String[] strArr, String[] strArr2) {
        this.url = str;
        this.zzccx = strArr;
        this.zzccy = strArr2;
    }

    public static zzsy zzh(zzr zzrVar) throws zza {
        Map<String, String> headers = zzrVar.getHeaders();
        int size = headers.size();
        String[] strArr = new String[size];
        String[] strArr2 = new String[size];
        int i = 0;
        for (Map.Entry<String, String> entry : headers.entrySet()) {
            strArr[i] = entry.getKey();
            strArr2[i] = entry.getValue();
            i++;
        }
        return new zzsy(zzrVar.getUrl(), strArr, strArr2);
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int zze = zzbgo.zze(parcel);
        zzbgo.zza(parcel, 1, this.url, false);
        zzbgo.zza(parcel, 2, this.zzccx, false);
        zzbgo.zza(parcel, 3, this.zzccy, false);
        zzbgo.zzai(parcel, zze);
    }
}
