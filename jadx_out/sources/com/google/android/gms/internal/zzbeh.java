package com.google.android.gms.internal;

import com.google.android.gms.common.api.Api;
import io.fabric.sdk.android.services.network.HttpRequest;
import java.nio.charset.Charset;
import java.nio.charset.IllegalCharsetNameException;
import java.nio.charset.UnsupportedCharsetException;

/* loaded from: classes.dex */
public final class zzbeh {
    public static final Api.zzf<zzbdp> zzfng = new Api.zzf<>();
    public static final Api.zzf<zzbfa> zzfnh = new Api.zzf<>();
    public static final Api.zzf<zzbez> zzfni = new Api.zzf<>();
    private static Api.zzf<Object> zzfnj = new Api.zzf<>();
    private static Api.zzf<Object> zzfnk = new Api.zzf<>();
    private static Charset zzfnl;
    private static String zzfnm;

    static {
        Charset charset;
        try {
            charset = Charset.forName(HttpRequest.CHARSET_UTF8);
        } catch (IllegalCharsetNameException | UnsupportedCharsetException unused) {
            charset = null;
        }
        zzfnl = charset;
        zzfnm = zzbdw.zzfw("com.google.cast.multizone");
    }
}
