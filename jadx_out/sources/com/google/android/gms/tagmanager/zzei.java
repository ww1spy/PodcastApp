package com.google.android.gms.tagmanager;

import android.net.Uri;
import com.google.android.gms.common.internal.Hide;
import io.fabric.sdk.android.services.network.HttpRequest;
import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;

@Hide
/* loaded from: classes.dex */
class zzei {
    private static zzei zzkrl;
    private volatile zza zzkrm = zza.NONE;
    private volatile String zzkrn = null;
    private volatile String zzknc = null;
    private volatile String zzkro = null;

    /* loaded from: classes.dex */
    enum zza {
        NONE,
        CONTAINER,
        CONTAINER_DEBUG
    }

    zzei() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Hide
    public static zzei zzbhh() {
        zzei zzeiVar;
        synchronized (zzei.class) {
            if (zzkrl == null) {
                zzkrl = new zzei();
            }
            zzeiVar = zzkrl;
        }
        return zzeiVar;
    }

    private static String zzma(String str) {
        return str.split("&")[0].split("=")[1];
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final String getContainerId() {
        return this.zzknc;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final zza zzbhi() {
        return this.zzkrm;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final String zzbhj() {
        return this.zzkrn;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final synchronized boolean zzq(Uri uri) {
        try {
            String decode = URLDecoder.decode(uri.toString(), HttpRequest.CHARSET_UTF8);
            if (decode.matches("^tagmanager.c.\\S+:\\/\\/preview\\/p\\?id=\\S+&gtm_auth=\\S+&gtm_preview=\\d+(&gtm_debug=x)?$")) {
                String valueOf = String.valueOf(decode);
                zzdj.v(valueOf.length() != 0 ? "Container preview url: ".concat(valueOf) : new String("Container preview url: "));
                this.zzkrm = decode.matches(".*?&gtm_debug=x$") ? zza.CONTAINER_DEBUG : zza.CONTAINER;
                this.zzkro = uri.getQuery().replace("&gtm_debug=x", "");
                if (this.zzkrm == zza.CONTAINER || this.zzkrm == zza.CONTAINER_DEBUG) {
                    String valueOf2 = String.valueOf("/r?");
                    String valueOf3 = String.valueOf(this.zzkro);
                    this.zzkrn = valueOf3.length() != 0 ? valueOf2.concat(valueOf3) : new String(valueOf2);
                }
                this.zzknc = zzma(this.zzkro);
                return true;
            }
            if (!decode.matches("^tagmanager.c.\\S+:\\/\\/preview\\/p\\?id=\\S+&gtm_preview=$")) {
                String valueOf4 = String.valueOf(decode);
                zzdj.zzcz(valueOf4.length() != 0 ? "Invalid preview uri: ".concat(valueOf4) : new String("Invalid preview uri: "));
                return false;
            }
            if (!zzma(uri.getQuery()).equals(this.zzknc)) {
                return false;
            }
            String valueOf5 = String.valueOf(this.zzknc);
            zzdj.v(valueOf5.length() != 0 ? "Exit preview mode for container: ".concat(valueOf5) : new String("Exit preview mode for container: "));
            this.zzkrm = zza.NONE;
            this.zzkrn = null;
            return true;
        } catch (UnsupportedEncodingException unused) {
            return false;
        }
    }
}
