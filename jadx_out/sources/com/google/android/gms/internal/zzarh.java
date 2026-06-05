package com.google.android.gms.internal;

import android.content.Context;
import android.text.TextUtils;
import android.util.Log;
import com.google.android.gms.analytics.GoogleAnalytics;
import com.google.android.gms.common.internal.Hide;

@Hide
/* loaded from: classes.dex */
public class zzarh {
    private final zzark zzdyp;

    /* JADX INFO: Access modifiers changed from: protected */
    public zzarh(zzark zzarkVar) {
        com.google.android.gms.common.internal.zzbq.checkNotNull(zzarkVar);
        this.zzdyp = zzarkVar;
    }

    private final void zza(int i, String str, Object obj, Object obj2, Object obj3) {
        zzatd zzym = this.zzdyp != null ? this.zzdyp.zzym() : null;
        if (zzym == null) {
            String str2 = zzast.zzebn.get();
            if (Log.isLoggable(str2, i)) {
                Log.println(i, str2, zzc(str, obj, obj2, obj3));
                return;
            }
            return;
        }
        String str3 = zzast.zzebn.get();
        if (Log.isLoggable(str3, i)) {
            Log.println(i, str3, zzatd.zzc(str, obj, obj2, obj3));
        }
        if (i >= 5) {
            zzym.zzb(i, str, obj, obj2, obj3);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Hide
    public static String zzc(String str, Object obj, Object obj2, Object obj3) {
        if (str == null) {
            str = "";
        }
        String zzm = zzm(obj);
        String zzm2 = zzm(obj2);
        String zzm3 = zzm(obj3);
        StringBuilder sb = new StringBuilder();
        String str2 = "";
        if (!TextUtils.isEmpty(str)) {
            sb.append(str);
            str2 = ": ";
        }
        if (!TextUtils.isEmpty(zzm)) {
            sb.append(str2);
            sb.append(zzm);
            str2 = ", ";
        }
        if (!TextUtils.isEmpty(zzm2)) {
            sb.append(str2);
            sb.append(zzm2);
            str2 = ", ";
        }
        if (!TextUtils.isEmpty(zzm3)) {
            sb.append(str2);
            sb.append(zzm3);
        }
        return sb.toString();
    }

    private static String zzm(Object obj) {
        return obj == null ? "" : obj instanceof String ? (String) obj : obj instanceof Boolean ? obj == Boolean.TRUE ? "true" : "false" : obj instanceof Throwable ? ((Throwable) obj).toString() : obj.toString();
    }

    @Hide
    public static boolean zzqk() {
        return Log.isLoggable(zzast.zzebn.get(), 2);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Hide
    public final Context getContext() {
        return this.zzdyp.getContext();
    }

    @Hide
    public final void zza(String str, Object obj) {
        zza(2, str, obj, null, null);
    }

    @Hide
    public final void zza(String str, Object obj, Object obj2) {
        zza(2, str, obj, obj2, null);
    }

    @Hide
    public final void zza(String str, Object obj, Object obj2, Object obj3) {
        zza(3, str, obj, obj2, obj3);
    }

    @Hide
    public final void zzb(String str, Object obj) {
        zza(3, str, obj, null, null);
    }

    @Hide
    public final void zzb(String str, Object obj, Object obj2) {
        zza(3, str, obj, obj2, null);
    }

    @Hide
    public final void zzb(String str, Object obj, Object obj2, Object obj3) {
        zza(5, str, obj, obj2, obj3);
    }

    @Hide
    public final void zzc(String str, Object obj) {
        zza(4, str, obj, null, null);
    }

    @Hide
    public final void zzc(String str, Object obj, Object obj2) {
        zza(5, str, obj, obj2, null);
    }

    @Hide
    public final void zzd(String str, Object obj) {
        zza(5, str, obj, null, null);
    }

    @Hide
    public final void zzd(String str, Object obj, Object obj2) {
        zza(6, str, obj, obj2, null);
    }

    @Hide
    public final void zze(String str, Object obj) {
        zza(6, str, obj, null, null);
    }

    @Hide
    public final void zzea(String str) {
        zza(2, str, null, null, null);
    }

    @Hide
    public final void zzeb(String str) {
        zza(3, str, null, null, null);
    }

    @Hide
    public final void zzec(String str) {
        zza(4, str, null, null, null);
    }

    @Hide
    public final void zzed(String str) {
        zza(5, str, null, null, null);
    }

    @Hide
    public final void zzee(String str) {
        zza(6, str, null, null, null);
    }

    @Hide
    public final zzark zzxw() {
        return this.zzdyp;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Hide
    public final com.google.android.gms.common.util.zze zzxx() {
        return this.zzdyp.zzxx();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Hide
    public final zzatd zzxy() {
        return this.zzdyp.zzxy();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Hide
    public final zzasl zzxz() {
        return this.zzdyp.zzxz();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Hide
    public final com.google.android.gms.analytics.zzk zzya() {
        return this.zzdyp.zzya();
    }

    @Hide
    public final GoogleAnalytics zzyb() {
        return this.zzdyp.zzyn();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Hide
    public final zzaqz zzyc() {
        return this.zzdyp.zzyc();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Hide
    public final zzasq zzyd() {
        return this.zzdyp.zzyd();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Hide
    public final zzatu zzye() {
        return this.zzdyp.zzye();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Hide
    public final zzath zzyf() {
        return this.zzdyp.zzyf();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Hide
    public final zzasc zzyg() {
        return this.zzdyp.zzyq();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Hide
    public final zzaqy zzyh() {
        return this.zzdyp.zzyp();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Hide
    public final zzarv zzyi() {
        return this.zzdyp.zzyi();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Hide
    public final zzasp zzyj() {
        return this.zzdyp.zzyj();
    }
}
