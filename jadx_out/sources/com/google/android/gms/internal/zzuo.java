package com.google.android.gms.internal;

import android.content.SharedPreferences;
import android.os.Bundle;
import android.os.Parcel;
import android.support.annotation.Nullable;
import android.util.Base64;
import com.google.android.gms.common.internal.Hide;
import io.fabric.sdk.android.services.network.HttpRequest;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.Map;
import java.util.Set;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

@Hide
@zzabh
/* loaded from: classes.dex */
public final class zzuo {
    private final Map<zzup, zzuq> zzcdz = new HashMap();
    private final LinkedList<zzup> zzcea = new LinkedList<>();

    @Nullable
    private zztk zzceb;

    private static void zza(String str, zzup zzupVar) {
        if (zzahw.zzae(2)) {
            zzahw.v(String.format(str, zzupVar));
        }
    }

    private static String[] zzax(String str) {
        try {
            String[] split = str.split("\u0000");
            for (int i = 0; i < split.length; i++) {
                split[i] = new String(Base64.decode(split[i], 0), HttpRequest.CHARSET_UTF8);
            }
            return split;
        } catch (UnsupportedEncodingException unused) {
            return new String[0];
        }
    }

    private static boolean zzay(String str) {
        try {
            return Pattern.matches((String) zzlc.zzio().zzd(zzoi.zzbpy), str);
        } catch (RuntimeException e) {
            com.google.android.gms.ads.internal.zzbt.zzep().zza(e, "InterstitialAdPool.isExcludedAdUnit");
            return false;
        }
    }

    private static String zzaz(String str) {
        try {
            Matcher matcher = Pattern.compile("([^/]+/[0-9]+).*").matcher(str);
            if (matcher.matches()) {
                return matcher.group(1);
            }
        } catch (RuntimeException unused) {
        }
        return str;
    }

    private static void zzb(Bundle bundle, String str) {
        while (true) {
            String[] split = str.split("/", 2);
            if (split.length == 0) {
                return;
            }
            String str2 = split[0];
            if (split.length == 1) {
                bundle.remove(str2);
                return;
            }
            bundle = bundle.getBundle(str2);
            if (bundle == null) {
                return;
            } else {
                str = split[1];
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Set<String> zzh(zzkk zzkkVar) {
        HashSet hashSet = new HashSet();
        hashSet.addAll(zzkkVar.extras.keySet());
        Bundle bundle = zzkkVar.zzbhf.getBundle("com.google.ads.mediation.admob.AdMobAdapter");
        if (bundle != null) {
            hashSet.addAll(bundle.keySet());
        }
        return hashSet;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static zzkk zzi(zzkk zzkkVar) {
        zzkk zzk = zzk(zzkkVar);
        Bundle bundle = zzk.zzbhf.getBundle("com.google.ads.mediation.admob.AdMobAdapter");
        if (bundle != null) {
            bundle.putBoolean("_skipMediation", true);
        }
        zzk.extras.putBoolean("_skipMediation", true);
        return zzk;
    }

    private static zzkk zzj(zzkk zzkkVar) {
        zzkk zzk = zzk(zzkkVar);
        for (String str : ((String) zzlc.zzio().zzd(zzoi.zzbpu)).split(",")) {
            zzb(zzk.zzbhf, str);
            if (str.startsWith("com.google.ads.mediation.admob.AdMobAdapter/")) {
                zzb(zzk.extras, str.replaceFirst("com.google.ads.mediation.admob.AdMobAdapter/", ""));
            }
        }
        return zzk;
    }

    private static zzkk zzk(zzkk zzkkVar) {
        Parcel obtain = Parcel.obtain();
        zzkkVar.writeToParcel(obtain, 0);
        obtain.setDataPosition(0);
        zzkk createFromParcel = zzkk.CREATOR.createFromParcel(obtain);
        obtain.recycle();
        return ((Boolean) zzlc.zzio().zzd(zzoi.zzbpi)).booleanValue() ? createFromParcel.zzhz() : createFromParcel;
    }

    private final String zzlh() {
        try {
            StringBuilder sb = new StringBuilder();
            Iterator<zzup> it = this.zzcea.iterator();
            while (it.hasNext()) {
                sb.append(Base64.encodeToString(it.next().toString().getBytes(HttpRequest.CHARSET_UTF8), 0));
                if (it.hasNext()) {
                    sb.append("\u0000");
                }
            }
            return sb.toString();
        } catch (UnsupportedEncodingException unused) {
            return "";
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Nullable
    public final zzur zza(zzkk zzkkVar, String str) {
        if (zzay(str)) {
            return null;
        }
        int i = new zzaeb(this.zzceb.getApplicationContext()).zzom().zzcyo;
        zzkk zzj = zzj(zzkkVar);
        String zzaz = zzaz(str);
        zzup zzupVar = new zzup(zzj, zzaz, i);
        zzuq zzuqVar = this.zzcdz.get(zzupVar);
        if (zzuqVar == null) {
            zza("Interstitial pool created at %s.", zzupVar);
            zzuqVar = new zzuq(zzj, zzaz, i);
            this.zzcdz.put(zzupVar, zzuqVar);
        }
        this.zzcea.remove(zzupVar);
        this.zzcea.add(zzupVar);
        zzuqVar.zzll();
        while (this.zzcea.size() > ((Integer) zzlc.zzio().zzd(zzoi.zzbpv)).intValue()) {
            zzup remove = this.zzcea.remove();
            zzuq zzuqVar2 = this.zzcdz.get(remove);
            zza("Evicting interstitial queue for %s.", remove);
            while (zzuqVar2.size() > 0) {
                zzur zzl = zzuqVar2.zzl(null);
                if (zzl.zzcek) {
                    zzus.zzln().zzlp();
                }
                zzl.zzceg.zzdk();
            }
            this.zzcdz.remove(remove);
        }
        while (zzuqVar.size() > 0) {
            zzur zzl2 = zzuqVar.zzl(zzj);
            if (zzl2.zzcek) {
                if (com.google.android.gms.ads.internal.zzbt.zzes().currentTimeMillis() - zzl2.zzcej > 1000 * ((Integer) zzlc.zzio().zzd(zzoi.zzbpx)).intValue()) {
                    zza("Expired interstitial at %s.", zzupVar);
                    zzus.zzln().zzlo();
                }
            }
            String str2 = zzl2.zzceh != null ? " (inline) " : " ";
            StringBuilder sb = new StringBuilder(34 + String.valueOf(str2).length());
            sb.append("Pooled interstitial");
            sb.append(str2);
            sb.append("returned at %s.");
            zza(sb.toString(), zzupVar);
            return zzl2;
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void zza(zztk zztkVar) {
        if (this.zzceb == null) {
            this.zzceb = zztkVar.zzlf();
            if (this.zzceb != null) {
                SharedPreferences sharedPreferences = this.zzceb.getApplicationContext().getSharedPreferences("com.google.android.gms.ads.internal.interstitial.InterstitialAdPool", 0);
                while (this.zzcea.size() > 0) {
                    zzup remove = this.zzcea.remove();
                    zzuq zzuqVar = this.zzcdz.get(remove);
                    zza("Flushing interstitial queue for %s.", remove);
                    while (zzuqVar.size() > 0) {
                        zzuqVar.zzl(null).zzceg.zzdk();
                    }
                    this.zzcdz.remove(remove);
                }
                try {
                    HashMap hashMap = new HashMap();
                    for (Map.Entry<String, ?> entry : sharedPreferences.getAll().entrySet()) {
                        if (!entry.getKey().equals("PoolKeys")) {
                            zzuu zzba = zzuu.zzba((String) entry.getValue());
                            zzup zzupVar = new zzup(zzba.zzarx, zzba.zzapp, zzba.zzcee);
                            if (!this.zzcdz.containsKey(zzupVar)) {
                                this.zzcdz.put(zzupVar, new zzuq(zzba.zzarx, zzba.zzapp, zzba.zzcee));
                                hashMap.put(zzupVar.toString(), zzupVar);
                                zza("Restored interstitial queue for %s.", zzupVar);
                            }
                        }
                    }
                    for (String str : zzax(sharedPreferences.getString("PoolKeys", ""))) {
                        zzup zzupVar2 = (zzup) hashMap.get(str);
                        if (this.zzcdz.containsKey(zzupVar2)) {
                            this.zzcea.add(zzupVar2);
                        }
                    }
                } catch (IOException | RuntimeException e) {
                    com.google.android.gms.ads.internal.zzbt.zzep().zza(e, "InterstitialAdPool.restore");
                    zzahw.zzc("Malformed preferences value for InterstitialAdPool.", e);
                    this.zzcdz.clear();
                    this.zzcea.clear();
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void zzb(zzkk zzkkVar, String str) {
        if (this.zzceb == null) {
            return;
        }
        int i = new zzaeb(this.zzceb.getApplicationContext()).zzom().zzcyo;
        zzkk zzj = zzj(zzkkVar);
        String zzaz = zzaz(str);
        zzup zzupVar = new zzup(zzj, zzaz, i);
        zzuq zzuqVar = this.zzcdz.get(zzupVar);
        if (zzuqVar == null) {
            zza("Interstitial pool created at %s.", zzupVar);
            zzuqVar = new zzuq(zzj, zzaz, i);
            this.zzcdz.put(zzupVar, zzuqVar);
        }
        zzuqVar.zza(this.zzceb, zzkkVar);
        zzuqVar.zzll();
        zza("Inline entry added to the queue at %s.", zzupVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void zzlg() {
        int size;
        int zzlj;
        if (this.zzceb == null) {
            return;
        }
        for (Map.Entry<zzup, zzuq> entry : this.zzcdz.entrySet()) {
            zzup key = entry.getKey();
            zzuq value = entry.getValue();
            if (zzahw.zzae(2) && (zzlj = value.zzlj()) < (size = value.size())) {
                zzahw.v(String.format("Loading %s/%s pooled interstitials for %s.", Integer.valueOf(size - zzlj), Integer.valueOf(size), key));
            }
            int zzlk = 0 + value.zzlk();
            while (value.size() < ((Integer) zzlc.zzio().zzd(zzoi.zzbpw)).intValue()) {
                zza("Pooling and loading one new interstitial for %s.", key);
                if (value.zzb(this.zzceb)) {
                    zzlk++;
                }
            }
            zzus.zzln().zzu(zzlk);
        }
        if (this.zzceb != null) {
            SharedPreferences.Editor edit = this.zzceb.getApplicationContext().getSharedPreferences("com.google.android.gms.ads.internal.interstitial.InterstitialAdPool", 0).edit();
            edit.clear();
            for (Map.Entry<zzup, zzuq> entry2 : this.zzcdz.entrySet()) {
                zzup key2 = entry2.getKey();
                zzuq value2 = entry2.getValue();
                if (value2.zzlm()) {
                    edit.putString(key2.toString(), new zzuu(value2).zzlw());
                    zza("Saved interstitial queue for %s.", key2);
                }
            }
            edit.putString("PoolKeys", zzlh());
            edit.apply();
        }
    }
}
