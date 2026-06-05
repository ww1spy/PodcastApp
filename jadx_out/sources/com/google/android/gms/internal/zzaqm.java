package com.google.android.gms.internal;

import android.text.TextUtils;
import com.google.android.gms.common.internal.Hide;
import java.util.HashMap;

@Hide
/* loaded from: classes.dex */
public final class zzaqm extends com.google.android.gms.analytics.zzi<zzaqm> {
    private String mName;
    private String zzbwz;
    private String zzbzd;
    private String zzdwr;
    private String zzdws;
    private String zzdwt;
    private String zzdwu;
    private String zzdwv;
    private String zzdww;
    private String zzdwx;

    public final String getContent() {
        return this.zzbwz;
    }

    public final String getId() {
        return this.zzbzd;
    }

    public final String getName() {
        return this.mName;
    }

    public final String getSource() {
        return this.zzdwr;
    }

    public final void setName(String str) {
        this.mName = str;
    }

    public final String toString() {
        HashMap hashMap = new HashMap();
        hashMap.put("name", this.mName);
        hashMap.put("source", this.zzdwr);
        hashMap.put("medium", this.zzdws);
        hashMap.put("keyword", this.zzdwt);
        hashMap.put("content", this.zzbwz);
        hashMap.put("id", this.zzbzd);
        hashMap.put("adNetworkId", this.zzdwu);
        hashMap.put("gclid", this.zzdwv);
        hashMap.put("dclid", this.zzdww);
        hashMap.put("aclid", this.zzdwx);
        return zzl(hashMap);
    }

    @Override // com.google.android.gms.analytics.zzi
    public final /* synthetic */ void zzb(zzaqm zzaqmVar) {
        zzaqm zzaqmVar2 = zzaqmVar;
        if (!TextUtils.isEmpty(this.mName)) {
            zzaqmVar2.mName = this.mName;
        }
        if (!TextUtils.isEmpty(this.zzdwr)) {
            zzaqmVar2.zzdwr = this.zzdwr;
        }
        if (!TextUtils.isEmpty(this.zzdws)) {
            zzaqmVar2.zzdws = this.zzdws;
        }
        if (!TextUtils.isEmpty(this.zzdwt)) {
            zzaqmVar2.zzdwt = this.zzdwt;
        }
        if (!TextUtils.isEmpty(this.zzbwz)) {
            zzaqmVar2.zzbwz = this.zzbwz;
        }
        if (!TextUtils.isEmpty(this.zzbzd)) {
            zzaqmVar2.zzbzd = this.zzbzd;
        }
        if (!TextUtils.isEmpty(this.zzdwu)) {
            zzaqmVar2.zzdwu = this.zzdwu;
        }
        if (!TextUtils.isEmpty(this.zzdwv)) {
            zzaqmVar2.zzdwv = this.zzdwv;
        }
        if (!TextUtils.isEmpty(this.zzdww)) {
            zzaqmVar2.zzdww = this.zzdww;
        }
        if (TextUtils.isEmpty(this.zzdwx)) {
            return;
        }
        zzaqmVar2.zzdwx = this.zzdwx;
    }

    public final void zzdm(String str) {
        this.zzdwr = str;
    }

    public final void zzdn(String str) {
        this.zzdws = str;
    }

    public final void zzdo(String str) {
        this.zzdwt = str;
    }

    public final void zzdp(String str) {
        this.zzbwz = str;
    }

    public final void zzdq(String str) {
        this.zzbzd = str;
    }

    public final void zzdr(String str) {
        this.zzdwu = str;
    }

    public final void zzds(String str) {
        this.zzdwv = str;
    }

    public final void zzdt(String str) {
        this.zzdww = str;
    }

    public final void zzdu(String str) {
        this.zzdwx = str;
    }

    public final String zzwq() {
        return this.zzdws;
    }

    public final String zzwr() {
        return this.zzdwt;
    }

    public final String zzws() {
        return this.zzdwu;
    }

    public final String zzwt() {
        return this.zzdwv;
    }

    public final String zzwu() {
        return this.zzdww;
    }

    public final String zzwv() {
        return this.zzdwx;
    }
}
