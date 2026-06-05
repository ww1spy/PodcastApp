package com.google.android.gms.ads.internal;

import android.content.Context;
import android.support.v4.util.SimpleArrayMap;
import android.text.TextUtils;
import com.google.android.gms.ads.formats.PublisherAdViewOptions;
import com.google.android.gms.common.internal.Hide;
import com.google.android.gms.internal.zzabh;
import com.google.android.gms.internal.zzala;
import com.google.android.gms.internal.zzko;
import com.google.android.gms.internal.zzli;
import com.google.android.gms.internal.zzll;
import com.google.android.gms.internal.zzlp;
import com.google.android.gms.internal.zzme;
import com.google.android.gms.internal.zzqh;
import com.google.android.gms.internal.zzrs;
import com.google.android.gms.internal.zzrv;
import com.google.android.gms.internal.zzry;
import com.google.android.gms.internal.zzsb;
import com.google.android.gms.internal.zzse;
import com.google.android.gms.internal.zzsh;
import com.google.android.gms.internal.zzwf;

@Hide
@zzabh
/* loaded from: classes.dex */
public final class zzaj extends zzlp {
    private final Context mContext;
    private final zzv zzanp;
    private final zzwf zzanu;
    private zzli zzapd;
    private zzko zzapi;
    private PublisherAdViewOptions zzapj;
    private zzqh zzapm;
    private zzme zzapo;
    private final String zzapp;
    private final zzala zzapq;
    private zzrs zzapv;
    private zzsh zzapw;
    private zzrv zzapx;
    private zzse zzaqa;
    private SimpleArrayMap<String, zzsb> zzapz = new SimpleArrayMap<>();
    private SimpleArrayMap<String, zzry> zzapy = new SimpleArrayMap<>();

    public zzaj(Context context, String str, zzwf zzwfVar, zzala zzalaVar, zzv zzvVar) {
        this.mContext = context;
        this.zzapp = str;
        this.zzanu = zzwfVar;
        this.zzapq = zzalaVar;
        this.zzanp = zzvVar;
    }

    @Override // com.google.android.gms.internal.zzlo
    public final void zza(PublisherAdViewOptions publisherAdViewOptions) {
        this.zzapj = publisherAdViewOptions;
    }

    @Override // com.google.android.gms.internal.zzlo
    public final void zza(zzqh zzqhVar) {
        this.zzapm = zzqhVar;
    }

    @Override // com.google.android.gms.internal.zzlo
    public final void zza(zzrs zzrsVar) {
        this.zzapv = zzrsVar;
    }

    @Override // com.google.android.gms.internal.zzlo
    public final void zza(zzrv zzrvVar) {
        this.zzapx = zzrvVar;
    }

    @Override // com.google.android.gms.internal.zzlo
    public final void zza(zzse zzseVar, zzko zzkoVar) {
        this.zzaqa = zzseVar;
        this.zzapi = zzkoVar;
    }

    @Override // com.google.android.gms.internal.zzlo
    public final void zza(zzsh zzshVar) {
        this.zzapw = zzshVar;
    }

    @Override // com.google.android.gms.internal.zzlo
    public final void zza(String str, zzsb zzsbVar, zzry zzryVar) {
        if (TextUtils.isEmpty(str)) {
            throw new IllegalArgumentException("Custom template ID for native custom template ad is empty. Please provide a valid template id.");
        }
        this.zzapz.put(str, zzsbVar);
        this.zzapy.put(str, zzryVar);
    }

    @Override // com.google.android.gms.internal.zzlo
    public final void zzb(zzli zzliVar) {
        this.zzapd = zzliVar;
    }

    @Override // com.google.android.gms.internal.zzlo
    public final void zzb(zzme zzmeVar) {
        this.zzapo = zzmeVar;
    }

    @Override // com.google.android.gms.internal.zzlo
    public final zzll zzdi() {
        return new zzag(this.mContext, this.zzapp, this.zzanu, this.zzapq, this.zzapd, this.zzapv, this.zzapw, this.zzapx, this.zzapz, this.zzapy, this.zzapm, this.zzapo, this.zzanp, this.zzaqa, this.zzapi, this.zzapj);
    }
}
