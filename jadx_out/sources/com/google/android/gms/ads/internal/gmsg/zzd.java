package com.google.android.gms.ads.internal.gmsg;

import android.content.ComponentName;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.net.Uri;
import android.text.TextUtils;
import com.google.android.gms.common.internal.Hide;
import com.google.android.gms.internal.zzabh;
import com.google.android.gms.internal.zzagx;
import com.google.android.gms.internal.zzahw;
import com.google.android.gms.internal.zzakd;
import com.google.android.gms.internal.zzann;
import com.google.android.gms.internal.zzant;
import com.google.android.gms.internal.zzanu;
import com.google.android.gms.internal.zzaof;
import com.google.android.gms.internal.zzapa;
import com.google.android.gms.internal.zzapr;
import com.google.android.gms.internal.zzaps;
import com.google.android.gms.internal.zzapt;
import com.google.android.gms.internal.zzcv;
import com.google.android.gms.internal.zzcw;
import java.net.URISyntaxException;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

@Hide
@zzabh
/* loaded from: classes.dex */
public final class zzd {
    private static zzt<Object> zzcbd = new zzj();
    public static final zzt<zzaof> zzcbe = zze.zzcbw;
    public static final zzt<zzaof> zzcbf = zzf.zzcbw;
    public static final zzt<zzaof> zzcbg = zzg.zzcbw;
    public static final zzt<zzaof> zzcbh = new zzl();
    public static final zzt<zzaof> zzcbi = new zzm();
    public static final zzt<zzaof> zzcbj = zzh.zzcbw;
    public static final zzt<Object> zzcbk = new zzn();
    public static final zzt<zzaof> zzcbl = new zzo();
    public static final zzt<zzaof> zzcbm = zzi.zzcbw;
    public static final zzt<zzaof> zzcbn = new zzp();
    public static final zzt<zzaof> zzcbo = new zzq();
    public static final zzt<zzann> zzcbp = new zzant();
    public static final zzt<zzann> zzcbq = new zzanu();
    public static final zzt<zzaof> zzcbr = new zzc();
    public static final zzad zzcbs = new zzad();
    public static final zzt<zzaof> zzcbt = new zzr();
    public static final zzt<zzaof> zzcbu = new zzs();
    public static final zzt<zzaof> zzcbv = new zzk();

    /* JADX INFO: Access modifiers changed from: package-private */
    public static final /* synthetic */ void zza(com.google.android.gms.ads.internal.js.zza zzaVar, Map map) {
        String str = (String) map.get("u");
        if (str == null) {
            zzahw.zzcz("URL missing from click GMSG.");
            return;
        }
        Uri parse = Uri.parse(str);
        try {
            zzcv zzuc = ((zzapr) zzaVar).zzuc();
            if (zzuc != null && zzuc.zzb(parse)) {
                parse = zzuc.zza(parse, ((zzapa) zzaVar).getContext(), ((zzapt) zzaVar).getView(), ((zzapa) zzaVar).zztj());
            }
        } catch (zzcw unused) {
            String valueOf = String.valueOf(str);
            zzahw.zzcz(valueOf.length() != 0 ? "Unable to append parameter to URL: ".concat(valueOf) : new String("Unable to append parameter to URL: "));
        }
        zzapa zzapaVar = (zzapa) zzaVar;
        new zzakd(zzapaVar.getContext(), ((zzaps) zzaVar).zztl().zzcu, zzagx.zzb(parse, zzapaVar.getContext()).toString()).zzqj();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static final /* synthetic */ void zza(zzapa zzapaVar, Map map) {
        String str = (String) map.get("u");
        if (str == null) {
            zzahw.zzcz("URL missing from httpTrack GMSG.");
        } else {
            new zzakd(zzapaVar.getContext(), ((zzaps) zzapaVar).zztl().zzcu, str).zzqj();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static final /* synthetic */ void zza(zzapr zzaprVar, Map map) {
        String str = (String) map.get("tx");
        String str2 = (String) map.get("ty");
        String str3 = (String) map.get("td");
        try {
            int parseInt = Integer.parseInt(str);
            int parseInt2 = Integer.parseInt(str2);
            int parseInt3 = Integer.parseInt(str3);
            zzcv zzuc = zzaprVar.zzuc();
            if (zzuc != null) {
                zzuc.zzae().zza(parseInt, parseInt2, parseInt3);
            }
        } catch (NumberFormatException unused) {
            zzahw.zzcz("Could not parse touch parameters from gmsg.");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static final /* synthetic */ void zzb(zzapa zzapaVar, Map map) {
        String str;
        PackageManager packageManager = zzapaVar.getContext().getPackageManager();
        try {
            try {
                JSONArray jSONArray = new JSONObject((String) map.get("data")).getJSONArray("intents");
                JSONObject jSONObject = new JSONObject();
                for (int i = 0; i < jSONArray.length(); i++) {
                    try {
                        JSONObject jSONObject2 = jSONArray.getJSONObject(i);
                        String optString = jSONObject2.optString("id");
                        String optString2 = jSONObject2.optString("u");
                        String optString3 = jSONObject2.optString("i");
                        String optString4 = jSONObject2.optString("m");
                        String optString5 = jSONObject2.optString("p");
                        String optString6 = jSONObject2.optString("c");
                        jSONObject2.optString("f");
                        jSONObject2.optString("e");
                        String optString7 = jSONObject2.optString("intent_url");
                        Intent intent = null;
                        if (!TextUtils.isEmpty(optString7)) {
                            try {
                                intent = Intent.parseUri(optString7, 0);
                            } catch (URISyntaxException e) {
                                String valueOf = String.valueOf(optString7);
                                zzahw.zzb(valueOf.length() != 0 ? "Error parsing the url: ".concat(valueOf) : new String("Error parsing the url: "), e);
                            }
                        }
                        if (intent == null) {
                            intent = new Intent();
                            if (!TextUtils.isEmpty(optString2)) {
                                intent.setData(Uri.parse(optString2));
                            }
                            if (!TextUtils.isEmpty(optString3)) {
                                intent.setAction(optString3);
                            }
                            if (!TextUtils.isEmpty(optString4)) {
                                intent.setType(optString4);
                            }
                            if (!TextUtils.isEmpty(optString5)) {
                                intent.setPackage(optString5);
                            }
                            if (!TextUtils.isEmpty(optString6)) {
                                String[] split = optString6.split("/", 2);
                                if (split.length == 2) {
                                    intent.setComponent(new ComponentName(split[0], split[1]));
                                }
                            }
                        }
                        try {
                            jSONObject.put(optString, packageManager.resolveActivity(intent, 65536) != null);
                        } catch (JSONException e2) {
                            e = e2;
                            str = "Error constructing openable urls response.";
                            zzahw.zzb(str, e);
                        }
                    } catch (JSONException e3) {
                        e = e3;
                        str = "Error parsing the intent data.";
                    }
                }
                ((com.google.android.gms.ads.internal.js.zza) zzapaVar).zza("openableIntents", jSONObject);
            } catch (JSONException unused) {
                ((com.google.android.gms.ads.internal.js.zza) zzapaVar).zza("openableIntents", new JSONObject());
            }
        } catch (JSONException unused2) {
            ((com.google.android.gms.ads.internal.js.zza) zzapaVar).zza("openableIntents", new JSONObject());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static final /* synthetic */ void zzc(zzapa zzapaVar, Map map) {
        String str = (String) map.get("urls");
        if (TextUtils.isEmpty(str)) {
            zzahw.zzcz("URLs missing in canOpenURLs GMSG.");
            return;
        }
        String[] split = str.split(",");
        HashMap hashMap = new HashMap();
        PackageManager packageManager = zzapaVar.getContext().getPackageManager();
        for (String str2 : split) {
            String[] split2 = str2.split(";", 2);
            boolean z = true;
            if (packageManager.resolveActivity(new Intent(split2.length > 1 ? split2[1].trim() : "android.intent.action.VIEW", Uri.parse(split2[0].trim())), 65536) == null) {
                z = false;
            }
            hashMap.put(str2, Boolean.valueOf(z));
        }
        ((com.google.android.gms.ads.internal.js.zza) zzapaVar).zza("openableURLs", hashMap);
    }
}
