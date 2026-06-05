package com.google.android.gms.internal;

import android.content.Context;
import android.content.SharedPreferences;
import android.os.Bundle;
import java.util.Set;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzahz extends zzaib {
    private /* synthetic */ Context zzdff;
    private /* synthetic */ zzahy zzdfg;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzahz(zzahy zzahyVar, Context context) {
        super(null);
        this.zzdfg = zzahyVar;
        this.zzdff = context;
    }

    @Override // com.google.android.gms.internal.zzahs
    public final void zzdo() {
        Object obj;
        boolean zzql;
        SharedPreferences sharedPreferences;
        boolean z;
        SharedPreferences sharedPreferences2;
        boolean z2;
        SharedPreferences sharedPreferences3;
        String str;
        SharedPreferences sharedPreferences4;
        boolean z3;
        SharedPreferences sharedPreferences5;
        boolean z4;
        SharedPreferences sharedPreferences6;
        String str2;
        SharedPreferences sharedPreferences7;
        int i;
        SharedPreferences sharedPreferences8;
        String str3;
        SharedPreferences sharedPreferences9;
        long j;
        SharedPreferences sharedPreferences10;
        long j2;
        SharedPreferences sharedPreferences11;
        int i2;
        SharedPreferences sharedPreferences12;
        long j3;
        SharedPreferences sharedPreferences13;
        Set<String> set;
        Bundle zzqn;
        SharedPreferences sharedPreferences14;
        SharedPreferences sharedPreferences15 = this.zzdff.getSharedPreferences("admob", 0);
        SharedPreferences.Editor edit = sharedPreferences15.edit();
        obj = this.zzdfg.mLock;
        synchronized (obj) {
            this.zzdfg.zzbkx = sharedPreferences15;
            this.zzdfg.zzdev = edit;
            zzahy zzahyVar = this.zzdfg;
            zzahy zzahyVar2 = this.zzdfg;
            zzql = zzahy.zzql();
            zzahyVar.zzdew = zzql;
            zzahy zzahyVar3 = this.zzdfg;
            sharedPreferences = this.zzdfg.zzbkx;
            z = this.zzdfg.zzcxd;
            zzahyVar3.zzcxd = sharedPreferences.getBoolean("use_https", z);
            zzahy zzahyVar4 = this.zzdfg;
            sharedPreferences2 = this.zzdfg.zzbkx;
            z2 = this.zzdfg.zzcxe;
            zzahyVar4.zzcxe = sharedPreferences2.getBoolean("content_url_opted_out", z2);
            zzahy zzahyVar5 = this.zzdfg;
            sharedPreferences3 = this.zzdfg.zzbkx;
            str = this.zzdfg.zzdex;
            zzahyVar5.zzdex = sharedPreferences3.getString("content_url_hashes", str);
            zzahy zzahyVar6 = this.zzdfg;
            sharedPreferences4 = this.zzdfg.zzbkx;
            z3 = this.zzdfg.zzcxm;
            zzahyVar6.zzcxm = sharedPreferences4.getBoolean("auto_collect_location", z3);
            zzahy zzahyVar7 = this.zzdfg;
            sharedPreferences5 = this.zzdfg.zzbkx;
            z4 = this.zzdfg.zzcxf;
            zzahyVar7.zzcxf = sharedPreferences5.getBoolean("content_vertical_opted_out", z4);
            zzahy zzahyVar8 = this.zzdfg;
            sharedPreferences6 = this.zzdfg.zzbkx;
            str2 = this.zzdfg.zzdey;
            zzahyVar8.zzdey = sharedPreferences6.getString("content_vertical_hashes", str2);
            zzahy zzahyVar9 = this.zzdfg;
            sharedPreferences7 = this.zzdfg.zzbkx;
            i = this.zzdfg.zzdfc;
            zzahyVar9.zzdfc = sharedPreferences7.getInt("version_code", i);
            zzahy zzahyVar10 = this.zzdfg;
            sharedPreferences8 = this.zzdfg.zzbkx;
            str3 = this.zzdfg.zzddm;
            zzahyVar10.zzddm = sharedPreferences8.getString("app_settings_json", str3);
            zzahy zzahyVar11 = this.zzdfg;
            sharedPreferences9 = this.zzdfg.zzbkx;
            j = this.zzdfg.zzdez;
            zzahyVar11.zzdez = sharedPreferences9.getLong("app_settings_last_update_ms", j);
            zzahy zzahyVar12 = this.zzdfg;
            sharedPreferences10 = this.zzdfg.zzbkx;
            j2 = this.zzdfg.zzdfa;
            zzahyVar12.zzdfa = sharedPreferences10.getLong("app_last_background_time_ms", j2);
            zzahy zzahyVar13 = this.zzdfg;
            sharedPreferences11 = this.zzdfg.zzbkx;
            i2 = this.zzdfg.zzdef;
            zzahyVar13.zzdef = sharedPreferences11.getInt("request_in_session_count", i2);
            zzahy zzahyVar14 = this.zzdfg;
            sharedPreferences12 = this.zzdfg.zzbkx;
            j3 = this.zzdfg.zzdfb;
            zzahyVar14.zzdfb = sharedPreferences12.getLong("first_ad_req_time_ms", j3);
            zzahy zzahyVar15 = this.zzdfg;
            sharedPreferences13 = this.zzdfg.zzbkx;
            set = this.zzdfg.zzdfd;
            zzahyVar15.zzdfd = sharedPreferences13.getStringSet("never_pool_slots", set);
            try {
                zzahy zzahyVar16 = this.zzdfg;
                sharedPreferences14 = this.zzdfg.zzbkx;
                zzahyVar16.zzdfe = new JSONObject(sharedPreferences14.getString("native_advanced_settings", "{}"));
            } catch (JSONException e) {
                zzahw.zzc("Could not convert native advanced settings to json object", e);
            }
            zzahy zzahyVar17 = this.zzdfg;
            zzqn = this.zzdfg.zzqn();
            zzahyVar17.zzc(zzqn);
        }
    }
}
