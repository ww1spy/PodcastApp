package com.google.android.gms.internal;

import android.net.Uri;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.support.annotation.Nullable;
import com.google.android.gms.common.internal.Hide;
import java.util.List;
import mobi.beyondpod.ui.views.notifications.NotificationPreferences;

@Hide
@zzabh
/* loaded from: classes.dex */
public final class zzin extends zzbgl {
    public static final Parcelable.Creator<zzin> CREATOR = new zzio();

    @Nullable
    public final String url;
    private long zzbba;
    private String zzbbb;
    private String zzbbc;
    private String zzbbd;
    private Bundle zzbbe;
    private boolean zzbbf;
    private long zzbbg;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzin(@Nullable String str, long j, String str2, String str3, String str4, Bundle bundle, boolean z, long j2) {
        this.url = str;
        this.zzbba = j;
        this.zzbbb = str2 == null ? "" : str2;
        this.zzbbc = str3 == null ? "" : str3;
        this.zzbbd = str4 == null ? "" : str4;
        this.zzbbe = bundle == null ? new Bundle() : bundle;
        this.zzbbf = z;
        this.zzbbg = j2;
    }

    @Nullable
    public static zzin zzab(String str) {
        return zzd(Uri.parse(str));
    }

    @Nullable
    public static zzin zzd(Uri uri) {
        try {
            if (!"gcache".equals(uri.getScheme())) {
                return null;
            }
            List<String> pathSegments = uri.getPathSegments();
            if (pathSegments.size() != 2) {
                int size = pathSegments.size();
                StringBuilder sb = new StringBuilder(62);
                sb.append("Expected 2 path parts for namespace and id, found :");
                sb.append(size);
                zzahw.zzcz(sb.toString());
                return null;
            }
            String str = pathSegments.get(0);
            String str2 = pathSegments.get(1);
            String host = uri.getHost();
            String queryParameter = uri.getQueryParameter("url");
            boolean equals = NotificationPreferences.YES.equals(uri.getQueryParameter("read_only"));
            String queryParameter2 = uri.getQueryParameter("expiration");
            long parseLong = queryParameter2 == null ? 0L : Long.parseLong(queryParameter2);
            Bundle bundle = new Bundle();
            for (String str3 : com.google.android.gms.ads.internal.zzbt.zzen().zzg(uri)) {
                if (str3.startsWith("tag.")) {
                    bundle.putString(str3.substring(4), uri.getQueryParameter(str3));
                }
            }
            return new zzin(queryParameter, parseLong, host, str, str2, bundle, equals, 0L);
        } catch (NullPointerException | NumberFormatException e) {
            zzahw.zzc("Unable to parse Uri into cache offering.", e);
            return null;
        }
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int zze = zzbgo.zze(parcel);
        zzbgo.zza(parcel, 2, this.url, false);
        zzbgo.zza(parcel, 3, this.zzbba);
        zzbgo.zza(parcel, 4, this.zzbbb, false);
        zzbgo.zza(parcel, 5, this.zzbbc, false);
        zzbgo.zza(parcel, 6, this.zzbbd, false);
        zzbgo.zza(parcel, 7, this.zzbbe, false);
        zzbgo.zza(parcel, 8, this.zzbbf);
        zzbgo.zza(parcel, 9, this.zzbbg);
        zzbgo.zzai(parcel, zze);
    }
}
