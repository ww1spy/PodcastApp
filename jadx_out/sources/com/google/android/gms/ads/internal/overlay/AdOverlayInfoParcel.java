package com.google.android.gms.ads.internal.overlay;

import android.content.Intent;
import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.ads.internal.zzap;
import com.google.android.gms.common.internal.Hide;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.internal.zzabh;
import com.google.android.gms.internal.zzala;
import com.google.android.gms.internal.zzaof;
import com.google.android.gms.internal.zzbgl;
import com.google.android.gms.internal.zzbgo;
import com.google.android.gms.internal.zzkf;

@Hide
@zzabh
/* loaded from: classes.dex */
public final class AdOverlayInfoParcel extends zzbgl implements ReflectedParcelable {
    public static final Parcelable.Creator<AdOverlayInfoParcel> CREATOR = new zzm();
    public final int orientation;
    public final String url;
    public final zzala zzatz;
    public final zzc zzcnj;
    public final zzkf zzcnk;
    public final zzn zzcnl;
    public final zzaof zzcnm;
    public final com.google.android.gms.ads.internal.gmsg.zzb zzcnn;
    public final String zzcno;
    public final boolean zzcnp;
    public final String zzcnq;
    public final zzt zzcnr;
    public final int zzcns;
    public final String zzcnt;
    public final zzap zzcnu;

    /* JADX INFO: Access modifiers changed from: package-private */
    public AdOverlayInfoParcel(zzc zzcVar, IBinder iBinder, IBinder iBinder2, IBinder iBinder3, IBinder iBinder4, String str, boolean z, String str2, IBinder iBinder5, int i, int i2, String str3, zzala zzalaVar, String str4, zzap zzapVar) {
        this.zzcnj = zzcVar;
        this.zzcnk = (zzkf) com.google.android.gms.dynamic.zzn.zzy(IObjectWrapper.zza.zzaq(iBinder));
        this.zzcnl = (zzn) com.google.android.gms.dynamic.zzn.zzy(IObjectWrapper.zza.zzaq(iBinder2));
        this.zzcnm = (zzaof) com.google.android.gms.dynamic.zzn.zzy(IObjectWrapper.zza.zzaq(iBinder3));
        this.zzcnn = (com.google.android.gms.ads.internal.gmsg.zzb) com.google.android.gms.dynamic.zzn.zzy(IObjectWrapper.zza.zzaq(iBinder4));
        this.zzcno = str;
        this.zzcnp = z;
        this.zzcnq = str2;
        this.zzcnr = (zzt) com.google.android.gms.dynamic.zzn.zzy(IObjectWrapper.zza.zzaq(iBinder5));
        this.orientation = i;
        this.zzcns = i2;
        this.url = str3;
        this.zzatz = zzalaVar;
        this.zzcnt = str4;
        this.zzcnu = zzapVar;
    }

    public AdOverlayInfoParcel(zzc zzcVar, zzkf zzkfVar, zzn zznVar, zzt zztVar, zzala zzalaVar) {
        this.zzcnj = zzcVar;
        this.zzcnk = zzkfVar;
        this.zzcnl = zznVar;
        this.zzcnm = null;
        this.zzcnn = null;
        this.zzcno = null;
        this.zzcnp = false;
        this.zzcnq = null;
        this.zzcnr = zztVar;
        this.orientation = -1;
        this.zzcns = 4;
        this.url = null;
        this.zzatz = zzalaVar;
        this.zzcnt = null;
        this.zzcnu = null;
    }

    public AdOverlayInfoParcel(zzkf zzkfVar, zzn zznVar, com.google.android.gms.ads.internal.gmsg.zzb zzbVar, zzt zztVar, zzaof zzaofVar, boolean z, int i, String str, zzala zzalaVar) {
        this.zzcnj = null;
        this.zzcnk = zzkfVar;
        this.zzcnl = zznVar;
        this.zzcnm = zzaofVar;
        this.zzcnn = zzbVar;
        this.zzcno = null;
        this.zzcnp = z;
        this.zzcnq = null;
        this.zzcnr = zztVar;
        this.orientation = i;
        this.zzcns = 3;
        this.url = str;
        this.zzatz = zzalaVar;
        this.zzcnt = null;
        this.zzcnu = null;
    }

    public AdOverlayInfoParcel(zzkf zzkfVar, zzn zznVar, com.google.android.gms.ads.internal.gmsg.zzb zzbVar, zzt zztVar, zzaof zzaofVar, boolean z, int i, String str, String str2, zzala zzalaVar) {
        this.zzcnj = null;
        this.zzcnk = zzkfVar;
        this.zzcnl = zznVar;
        this.zzcnm = zzaofVar;
        this.zzcnn = zzbVar;
        this.zzcno = str2;
        this.zzcnp = z;
        this.zzcnq = str;
        this.zzcnr = zztVar;
        this.orientation = i;
        this.zzcns = 3;
        this.url = null;
        this.zzatz = zzalaVar;
        this.zzcnt = null;
        this.zzcnu = null;
    }

    public AdOverlayInfoParcel(zzkf zzkfVar, zzn zznVar, zzt zztVar, zzaof zzaofVar, int i, zzala zzalaVar, String str, zzap zzapVar) {
        this.zzcnj = null;
        this.zzcnk = zzkfVar;
        this.zzcnl = zznVar;
        this.zzcnm = zzaofVar;
        this.zzcnn = null;
        this.zzcno = null;
        this.zzcnp = false;
        this.zzcnq = null;
        this.zzcnr = zztVar;
        this.orientation = i;
        this.zzcns = 1;
        this.url = null;
        this.zzatz = zzalaVar;
        this.zzcnt = str;
        this.zzcnu = zzapVar;
    }

    public AdOverlayInfoParcel(zzkf zzkfVar, zzn zznVar, zzt zztVar, zzaof zzaofVar, boolean z, int i, zzala zzalaVar) {
        this.zzcnj = null;
        this.zzcnk = zzkfVar;
        this.zzcnl = zznVar;
        this.zzcnm = zzaofVar;
        this.zzcnn = null;
        this.zzcno = null;
        this.zzcnp = z;
        this.zzcnq = null;
        this.zzcnr = zztVar;
        this.orientation = i;
        this.zzcns = 2;
        this.url = null;
        this.zzatz = zzalaVar;
        this.zzcnt = null;
        this.zzcnu = null;
    }

    public static void zza(Intent intent, AdOverlayInfoParcel adOverlayInfoParcel) {
        Bundle bundle = new Bundle(1);
        bundle.putParcelable("com.google.android.gms.ads.inernal.overlay.AdOverlayInfo", adOverlayInfoParcel);
        intent.putExtra("com.google.android.gms.ads.inernal.overlay.AdOverlayInfo", bundle);
    }

    public static AdOverlayInfoParcel zzc(Intent intent) {
        try {
            Bundle bundleExtra = intent.getBundleExtra("com.google.android.gms.ads.inernal.overlay.AdOverlayInfo");
            bundleExtra.setClassLoader(AdOverlayInfoParcel.class.getClassLoader());
            return (AdOverlayInfoParcel) bundleExtra.getParcelable("com.google.android.gms.ads.inernal.overlay.AdOverlayInfo");
        } catch (Exception unused) {
            return null;
        }
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int zze = zzbgo.zze(parcel);
        zzbgo.zza(parcel, 2, (Parcelable) this.zzcnj, i, false);
        zzbgo.zza(parcel, 3, com.google.android.gms.dynamic.zzn.zzz(this.zzcnk).asBinder(), false);
        zzbgo.zza(parcel, 4, com.google.android.gms.dynamic.zzn.zzz(this.zzcnl).asBinder(), false);
        zzbgo.zza(parcel, 5, com.google.android.gms.dynamic.zzn.zzz(this.zzcnm).asBinder(), false);
        zzbgo.zza(parcel, 6, com.google.android.gms.dynamic.zzn.zzz(this.zzcnn).asBinder(), false);
        zzbgo.zza(parcel, 7, this.zzcno, false);
        zzbgo.zza(parcel, 8, this.zzcnp);
        zzbgo.zza(parcel, 9, this.zzcnq, false);
        zzbgo.zza(parcel, 10, com.google.android.gms.dynamic.zzn.zzz(this.zzcnr).asBinder(), false);
        zzbgo.zzc(parcel, 11, this.orientation);
        zzbgo.zzc(parcel, 12, this.zzcns);
        zzbgo.zza(parcel, 13, this.url, false);
        zzbgo.zza(parcel, 14, (Parcelable) this.zzatz, i, false);
        zzbgo.zza(parcel, 16, this.zzcnt, false);
        zzbgo.zza(parcel, 17, (Parcelable) this.zzcnu, i, false);
        zzbgo.zzai(parcel, zze);
    }
}
