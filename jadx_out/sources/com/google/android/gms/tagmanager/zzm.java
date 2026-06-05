package com.google.android.gms.tagmanager;

import android.content.Context;
import android.net.Uri;
import com.google.android.gms.internal.zzbh;
import com.google.android.gms.internal.zzbi;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class zzm extends zzgi {
    private static final String ID = zzbh.ARBITRARY_PIXEL.toString();
    private static final String URL = zzbi.URL.toString();
    private static final String zzkmw = zzbi.ADDITIONAL_PARAMS.toString();
    private static final String zzkmx = zzbi.UNREPEATABLE.toString();
    private static String zzkmy;
    private static final Set<String> zzkmz;
    private final Context mContext;
    private final zza zzkna;

    /* loaded from: classes.dex */
    public interface zza {
        zzby zzbfi();
    }

    static {
        String str = ID;
        StringBuilder sb = new StringBuilder(17 + String.valueOf(str).length());
        sb.append("gtm_");
        sb.append(str);
        sb.append("_unrepeatable");
        zzkmy = sb.toString();
        zzkmz = new HashSet();
    }

    public zzm(Context context) {
        this(context, new zzn(context));
    }

    private zzm(Context context, zza zzaVar) {
        super(ID, URL);
        this.zzkna = zzaVar;
        this.mContext = context;
    }

    private final synchronized boolean zzlg(String str) {
        if (zzkmz.contains(str)) {
            return true;
        }
        if (!this.mContext.getSharedPreferences(zzkmy, 0).contains(str)) {
            return false;
        }
        zzkmz.add(str);
        return true;
    }

    @Override // com.google.android.gms.tagmanager.zzgi
    public final void zzz(Map<String, com.google.android.gms.internal.zzbt> map) {
        String zzd = map.get(zzkmx) != null ? zzgk.zzd(map.get(zzkmx)) : null;
        if (zzd == null || !zzlg(zzd)) {
            Uri.Builder buildUpon = Uri.parse(zzgk.zzd(map.get(URL))).buildUpon();
            com.google.android.gms.internal.zzbt zzbtVar = map.get(zzkmw);
            if (zzbtVar != null) {
                Object zzi = zzgk.zzi(zzbtVar);
                if (!(zzi instanceof List)) {
                    String valueOf = String.valueOf(buildUpon.build().toString());
                    zzdj.e(valueOf.length() != 0 ? "ArbitraryPixel: additional params not a list: not sending partial hit: ".concat(valueOf) : new String("ArbitraryPixel: additional params not a list: not sending partial hit: "));
                    return;
                }
                for (Object obj : (List) zzi) {
                    if (!(obj instanceof Map)) {
                        String valueOf2 = String.valueOf(buildUpon.build().toString());
                        zzdj.e(valueOf2.length() != 0 ? "ArbitraryPixel: additional params contains non-map: not sending partial hit: ".concat(valueOf2) : new String("ArbitraryPixel: additional params contains non-map: not sending partial hit: "));
                        return;
                    } else {
                        for (Map.Entry entry : ((Map) obj).entrySet()) {
                            buildUpon.appendQueryParameter(entry.getKey().toString(), entry.getValue().toString());
                        }
                    }
                }
            }
            String uri = buildUpon.build().toString();
            this.zzkna.zzbfi().zzlr(uri);
            String valueOf3 = String.valueOf(uri);
            zzdj.v(valueOf3.length() != 0 ? "ArbitraryPixel: url = ".concat(valueOf3) : new String("ArbitraryPixel: url = "));
            if (zzd != null) {
                synchronized (zzm.class) {
                    zzkmz.add(zzd);
                    zzfu.zze(this.mContext, zzkmy, zzd, "true");
                }
            }
        }
    }
}
