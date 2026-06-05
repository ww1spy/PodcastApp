package com.google.android.gms.ads.internal.gmsg;

import android.app.Activity;
import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.support.annotation.Nullable;
import android.text.TextUtils;
import android.view.View;
import com.google.android.gms.ads.internal.zzbt;
import com.google.android.gms.common.internal.Hide;
import com.google.android.gms.internal.zzabh;
import com.google.android.gms.internal.zzagx;
import com.google.android.gms.internal.zzahw;
import com.google.android.gms.internal.zzala;
import com.google.android.gms.internal.zzaof;
import com.google.android.gms.internal.zzapa;
import com.google.android.gms.internal.zzapb;
import com.google.android.gms.internal.zzapo;
import com.google.android.gms.internal.zzapr;
import com.google.android.gms.internal.zzapt;
import com.google.android.gms.internal.zzcv;
import com.google.android.gms.internal.zzcw;
import com.google.android.gms.internal.zzkf;
import com.google.android.gms.internal.zzyd;
import io.fabric.sdk.android.services.settings.SettingsJsonConstants;
import java.net.URISyntaxException;
import java.util.Map;
import mobi.beyondpod.ui.views.notifications.NotificationPreferences;

@Hide
@zzabh
/* loaded from: classes.dex */
public final class zzab<T extends zzapa & zzapb & zzapo & zzapr & zzapt> implements zzt<T> {
    private final Context mContext;
    private zzala zzarg;
    private zzkf zzbgt;
    private zzb zzcbc;
    private com.google.android.gms.ads.internal.zzw zzccm;
    private zzyd zzccn;
    private final zzcv zzccq;
    private com.google.android.gms.ads.internal.overlay.zzt zzccr;
    private com.google.android.gms.ads.internal.overlay.zzn zzccs;
    private zzaof zzcct = null;

    public zzab(Context context, zzala zzalaVar, zzcv zzcvVar, com.google.android.gms.ads.internal.overlay.zzt zztVar, zzkf zzkfVar, zzb zzbVar, com.google.android.gms.ads.internal.overlay.zzn zznVar, com.google.android.gms.ads.internal.zzw zzwVar, zzyd zzydVar) {
        this.mContext = context;
        this.zzarg = zzalaVar;
        this.zzccq = zzcvVar;
        this.zzccr = zztVar;
        this.zzbgt = zzkfVar;
        this.zzcbc = zzbVar;
        this.zzccm = zzwVar;
        this.zzccn = zzydVar;
        this.zzccs = zznVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String zza(Context context, zzcv zzcvVar, String str, View view, @Nullable Activity activity) {
        if (zzcvVar == null) {
            return str;
        }
        try {
            Uri parse = Uri.parse(str);
            if (zzcvVar.zzc(parse)) {
                parse = zzcvVar.zza(parse, context, view, activity);
            }
            return parse.toString();
        } catch (zzcw unused) {
            return str;
        } catch (Exception e) {
            zzbt.zzep().zza(e, "OpenGmsgHandler.maybeAddClickSignalsToUrl");
            return str;
        }
    }

    private static boolean zzk(Map<String, String> map) {
        return NotificationPreferences.YES.equals(map.get("custom_close"));
    }

    private static int zzl(Map<String, String> map) {
        String str = map.get("o");
        if (str == null) {
            return -1;
        }
        if ("p".equalsIgnoreCase(str)) {
            return zzbt.zzen().zzrh();
        }
        if ("l".equalsIgnoreCase(str)) {
            return zzbt.zzen().zzrg();
        }
        if ("c".equalsIgnoreCase(str)) {
            return zzbt.zzen().zzri();
        }
        return -1;
    }

    private final void zzl(boolean z) {
        if (this.zzccn != null) {
            this.zzccn.zzm(z);
        }
    }

    @Override // com.google.android.gms.ads.internal.gmsg.zzt
    public final /* synthetic */ void zza(Object obj, Map map) {
        zzapa zzapaVar = (zzapa) obj;
        String zzb = zzagx.zzb((String) map.get("u"), zzapaVar.getContext());
        String str = (String) map.get("a");
        if (str == null) {
            zzahw.zzcz("Action missing from an open GMSG.");
            return;
        }
        if (this.zzccm != null && !this.zzccm.zzcz()) {
            this.zzccm.zzt(zzb);
            return;
        }
        if ("expand".equalsIgnoreCase(str)) {
            if (((zzapb) zzapaVar).zzud()) {
                zzahw.zzcz("Cannot expand WebView that is already expanded.");
                return;
            } else {
                zzl(false);
                ((zzapo) zzapaVar).zza(zzk(map), zzl((Map<String, String>) map));
                return;
            }
        }
        if ("webapp".equalsIgnoreCase(str)) {
            zzl(false);
            if (zzb != null) {
                ((zzapo) zzapaVar).zza(zzk(map), zzl((Map<String, String>) map), zzb);
                return;
            } else {
                ((zzapo) zzapaVar).zza(zzk(map), zzl((Map<String, String>) map), (String) map.get("html"), (String) map.get("baseurl"));
                return;
            }
        }
        if (SettingsJsonConstants.APP_KEY.equalsIgnoreCase(str) && "true".equalsIgnoreCase((String) map.get("system_browser"))) {
            zzl(true);
            zzapaVar.getContext();
            if (TextUtils.isEmpty(zzb)) {
                zzahw.zzcz("Destination url cannot be empty.");
                return;
            }
            try {
                ((zzapo) zzapaVar).zza(new com.google.android.gms.ads.internal.overlay.zzc(new zzac(zzapaVar.getContext(), ((zzapr) zzapaVar).zzuc(), ((zzapt) zzapaVar).getView()).zzm(map)));
                return;
            } catch (ActivityNotFoundException e) {
                zzahw.zzcz(e.getMessage());
                return;
            }
        }
        zzl(true);
        String str2 = (String) map.get("intent_url");
        Intent intent = null;
        if (!TextUtils.isEmpty(str2)) {
            try {
                intent = Intent.parseUri(str2, 0);
            } catch (URISyntaxException e2) {
                String valueOf = String.valueOf(str2);
                zzahw.zzb(valueOf.length() != 0 ? "Error parsing the url: ".concat(valueOf) : new String("Error parsing the url: "), e2);
            }
        }
        if (intent != null && intent.getData() != null) {
            Uri data = intent.getData();
            String uri = data.toString();
            if (!TextUtils.isEmpty(uri)) {
                try {
                    uri = zza(zzapaVar.getContext(), ((zzapr) zzapaVar).zzuc(), uri, ((zzapt) zzapaVar).getView(), zzapaVar.zztj());
                } catch (Exception e3) {
                    zzahw.zzb("Error occurred while adding signals.", e3);
                    zzbt.zzep().zza(e3, "OpenGmsgHandler.onGmsg");
                }
                try {
                    data = Uri.parse(uri);
                } catch (Exception e4) {
                    String valueOf2 = String.valueOf(uri);
                    zzahw.zzb(valueOf2.length() != 0 ? "Error parsing the uri: ".concat(valueOf2) : new String("Error parsing the uri: "), e4);
                    zzbt.zzep().zza(e4, "OpenGmsgHandler.onGmsg");
                }
            }
            intent.setData(data);
        }
        if (intent != null) {
            ((zzapo) zzapaVar).zza(new com.google.android.gms.ads.internal.overlay.zzc(intent));
            return;
        }
        if (!TextUtils.isEmpty(zzb)) {
            zzb = zza(zzapaVar.getContext(), ((zzapr) zzapaVar).zzuc(), zzb, ((zzapt) zzapaVar).getView(), zzapaVar.zztj());
        }
        ((zzapo) zzapaVar).zza(new com.google.android.gms.ads.internal.overlay.zzc((String) map.get("i"), zzb, (String) map.get("m"), (String) map.get("p"), (String) map.get("c"), (String) map.get("f"), (String) map.get("e")));
    }
}
