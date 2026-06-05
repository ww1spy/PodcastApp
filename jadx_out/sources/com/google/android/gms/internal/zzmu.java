package com.google.android.gms.internal;

import android.content.Context;
import android.location.Location;
import android.os.Bundle;
import com.google.android.gms.ads.mediation.MediationAdapter;
import com.google.android.gms.ads.mediation.NetworkExtras;
import com.google.android.gms.ads.mediation.customevent.CustomEvent;
import com.google.android.gms.ads.search.SearchAdRequest;
import com.google.android.gms.common.internal.Hide;
import java.util.Collections;
import java.util.Date;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;

@Hide
@zzabh
/* loaded from: classes.dex */
public final class zzmu {
    private final boolean zzamp;
    private final int zzbhm;
    private final int zzbhp;
    private final String zzbhq;
    private final String zzbhs;
    private final Bundle zzbhu;
    private final String zzbhw;
    private final boolean zzbhy;
    private final Bundle zzbji;
    private final Map<Class<? extends NetworkExtras>, NetworkExtras> zzbjj;
    private final SearchAdRequest zzbjk;
    private final Set<String> zzbjl;
    private final Set<String> zzbjm;
    private final Date zzhh;
    private final Set<String> zzhj;
    private final Location zzhl;

    public zzmu(zzmv zzmvVar) {
        this(zzmvVar, null);
    }

    public zzmu(zzmv zzmvVar, SearchAdRequest searchAdRequest) {
        Date date;
        String str;
        int i;
        HashSet hashSet;
        Location location;
        boolean z;
        Bundle bundle;
        HashMap hashMap;
        String str2;
        String str3;
        int i2;
        HashSet hashSet2;
        Bundle bundle2;
        HashSet hashSet3;
        boolean z2;
        date = zzmvVar.zzhh;
        this.zzhh = date;
        str = zzmvVar.zzbhs;
        this.zzbhs = str;
        i = zzmvVar.zzbhm;
        this.zzbhm = i;
        hashSet = zzmvVar.zzbjn;
        this.zzhj = Collections.unmodifiableSet(hashSet);
        location = zzmvVar.zzhl;
        this.zzhl = location;
        z = zzmvVar.zzamp;
        this.zzamp = z;
        bundle = zzmvVar.zzbji;
        this.zzbji = bundle;
        hashMap = zzmvVar.zzbjo;
        this.zzbjj = Collections.unmodifiableMap(hashMap);
        str2 = zzmvVar.zzbhq;
        this.zzbhq = str2;
        str3 = zzmvVar.zzbhw;
        this.zzbhw = str3;
        this.zzbjk = searchAdRequest;
        i2 = zzmvVar.zzbhp;
        this.zzbhp = i2;
        hashSet2 = zzmvVar.zzbjp;
        this.zzbjl = Collections.unmodifiableSet(hashSet2);
        bundle2 = zzmvVar.zzbhu;
        this.zzbhu = bundle2;
        hashSet3 = zzmvVar.zzbjq;
        this.zzbjm = Collections.unmodifiableSet(hashSet3);
        z2 = zzmvVar.zzbhy;
        this.zzbhy = z2;
    }

    public final Date getBirthday() {
        return this.zzhh;
    }

    public final String getContentUrl() {
        return this.zzbhs;
    }

    public final Bundle getCustomEventExtrasBundle(Class<? extends CustomEvent> cls) {
        Bundle bundle = this.zzbji.getBundle("com.google.android.gms.ads.mediation.customevent.CustomEventAdapter");
        if (bundle != null) {
            return bundle.getBundle(cls.getName());
        }
        return null;
    }

    public final Bundle getCustomTargeting() {
        return this.zzbhu;
    }

    public final int getGender() {
        return this.zzbhm;
    }

    public final Set<String> getKeywords() {
        return this.zzhj;
    }

    public final Location getLocation() {
        return this.zzhl;
    }

    public final boolean getManualImpressionsEnabled() {
        return this.zzamp;
    }

    @Deprecated
    public final <T extends NetworkExtras> T getNetworkExtras(Class<T> cls) {
        return (T) this.zzbjj.get(cls);
    }

    public final Bundle getNetworkExtrasBundle(Class<? extends MediationAdapter> cls) {
        return this.zzbji.getBundle(cls.getName());
    }

    public final String getPublisherProvidedId() {
        return this.zzbhq;
    }

    public final boolean isDesignedForFamilies() {
        return this.zzbhy;
    }

    public final boolean isTestDevice(Context context) {
        Set<String> set = this.zzbjl;
        zzlc.zzij();
        return set.contains(zzako.zzaz(context));
    }

    public final String zzit() {
        return this.zzbhw;
    }

    public final SearchAdRequest zziu() {
        return this.zzbjk;
    }

    public final Map<Class<? extends NetworkExtras>, NetworkExtras> zziv() {
        return this.zzbjj;
    }

    public final Bundle zziw() {
        return this.zzbji;
    }

    public final int zzix() {
        return this.zzbhp;
    }

    public final Set<String> zziy() {
        return this.zzbjm;
    }
}
