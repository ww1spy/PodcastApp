package com.google.android.gms.internal;

import android.content.Context;
import android.location.Location;
import android.os.Bundle;
import com.google.ads.mediation.admob.AdMobAdapter;
import com.google.android.gms.ads.search.SearchAdRequest;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Date;
import java.util.List;
import java.util.Set;

@zzabh
/* loaded from: classes.dex */
public final class zzkn {
    public static final zzkn zzbhz = new zzkn();

    protected zzkn() {
    }

    public static zzkk zza(Context context, zzmu zzmuVar) {
        Context context2;
        List list;
        String str;
        Date birthday = zzmuVar.getBirthday();
        long time = birthday != null ? birthday.getTime() : -1L;
        String contentUrl = zzmuVar.getContentUrl();
        int gender = zzmuVar.getGender();
        Set<String> keywords = zzmuVar.getKeywords();
        if (keywords.isEmpty()) {
            context2 = context;
            list = null;
        } else {
            list = Collections.unmodifiableList(new ArrayList(keywords));
            context2 = context;
        }
        boolean isTestDevice = zzmuVar.isTestDevice(context2);
        int zzix = zzmuVar.zzix();
        Location location = zzmuVar.getLocation();
        Bundle networkExtrasBundle = zzmuVar.getNetworkExtrasBundle(AdMobAdapter.class);
        boolean manualImpressionsEnabled = zzmuVar.getManualImpressionsEnabled();
        String publisherProvidedId = zzmuVar.getPublisherProvidedId();
        SearchAdRequest zziu = zzmuVar.zziu();
        zzno zznoVar = zziu != null ? new zzno(zziu) : null;
        Context applicationContext = context.getApplicationContext();
        if (applicationContext != null) {
            String packageName = applicationContext.getPackageName();
            zzlc.zzij();
            str = zzako.zza(Thread.currentThread().getStackTrace(), packageName);
        } else {
            str = null;
        }
        return new zzkk(7, time, networkExtrasBundle, gender, list, isTestDevice, zzix, manualImpressionsEnabled, publisherProvidedId, zznoVar, location, contentUrl, zzmuVar.zziw(), zzmuVar.getCustomTargeting(), Collections.unmodifiableList(new ArrayList(zzmuVar.zziy())), zzmuVar.zzit(), str, zzmuVar.isDesignedForFamilies());
    }
}
