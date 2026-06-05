package com.google.android.gms.internal;

import android.app.Activity;
import android.content.Context;
import android.net.Uri;
import android.view.MotionEvent;
import android.view.View;

/* loaded from: classes.dex */
public final class zzcv {
    private static final String[] zzahz = {"/aclk", "/pcs/click"};
    private String zzahv = "googleads.g.doubleclick.net";
    private String zzahw = "/pagead/ads";
    private String zzahx = "ad.doubleclick.net";
    private String[] zzahy = {".doubleclick.net", ".googleadservices.com", ".googlesyndication.com"};
    private zzcr zzaia;

    public zzcv(zzcr zzcrVar) {
        this.zzaia = zzcrVar;
    }

    private final Uri zza(Uri uri, Context context, String str, boolean z, View view, Activity activity) throws zzcw {
        try {
            boolean zza = zza(uri);
            if (zza) {
                if (uri.toString().contains("dc_ms=")) {
                    throw new zzcw("Parameter already exists: dc_ms");
                }
            } else if (uri.getQueryParameter("ms") != null) {
                throw new zzcw("Query parameter already exists: ms");
            }
            String zza2 = z ? this.zzaia.zza(context, str, view, activity) : this.zzaia.zza(context);
            if (!zza) {
                String uri2 = uri.toString();
                int indexOf = uri2.indexOf("&adurl");
                if (indexOf == -1) {
                    indexOf = uri2.indexOf("?adurl");
                }
                if (indexOf == -1) {
                    return uri.buildUpon().appendQueryParameter("ms", zza2).build();
                }
                int i = indexOf + 1;
                return Uri.parse(uri2.substring(0, i) + "ms=" + zza2 + "&" + uri2.substring(i));
            }
            String uri3 = uri.toString();
            int indexOf2 = uri3.indexOf(";adurl");
            if (indexOf2 != -1) {
                int i2 = indexOf2 + 1;
                return Uri.parse(uri3.substring(0, i2) + "dc_ms=" + zza2 + ";" + uri3.substring(i2));
            }
            String encodedPath = uri.getEncodedPath();
            int indexOf3 = uri3.indexOf(encodedPath);
            return Uri.parse(uri3.substring(0, encodedPath.length() + indexOf3) + ";dc_ms=" + zza2 + ";" + uri3.substring(indexOf3 + encodedPath.length()));
        } catch (UnsupportedOperationException unused) {
            throw new zzcw("Provided Uri is not in a valid state");
        }
    }

    private final boolean zza(Uri uri) {
        if (uri == null) {
            throw new NullPointerException();
        }
        try {
            return uri.getHost().equals(this.zzahx);
        } catch (NullPointerException unused) {
            return false;
        }
    }

    public final Uri zza(Uri uri, Context context) throws zzcw {
        return zza(uri, context, null, false, null, null);
    }

    public final Uri zza(Uri uri, Context context, View view, Activity activity) throws zzcw {
        try {
            return zza(uri, context, uri.getQueryParameter("ai"), true, view, activity);
        } catch (UnsupportedOperationException unused) {
            throw new zzcw("Provided Uri is not in a valid state");
        }
    }

    public final void zza(MotionEvent motionEvent) {
        this.zzaia.zza(motionEvent);
    }

    public final zzcr zzae() {
        return this.zzaia;
    }

    public final boolean zzb(Uri uri) {
        if (uri == null) {
            throw new NullPointerException();
        }
        try {
            String host = uri.getHost();
            for (String str : this.zzahy) {
                if (host.endsWith(str)) {
                    return true;
                }
            }
        } catch (NullPointerException unused) {
        }
        return false;
    }

    public final boolean zzc(Uri uri) {
        if (zzb(uri)) {
            for (String str : zzahz) {
                if (uri.getPath().endsWith(str)) {
                    return true;
                }
            }
        }
        return false;
    }
}
