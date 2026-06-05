package com.google.android.gms.internal;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.Context;
import android.support.annotation.Nullable;
import android.text.TextUtils;
import android.view.MotionEvent;
import com.google.android.gms.common.internal.Hide;
import java.util.ArrayList;
import java.util.List;

@Hide
@zzabh
/* loaded from: classes.dex */
public final class zzajc {
    private final Context mContext;
    private int mState;
    private String zzapp;
    private String zzavp;
    private final float zzclx;

    @Nullable
    private String zzcwt;
    private String zzdfy;
    private float zzdfz;
    private float zzdga;
    private float zzdgb;

    public zzajc(Context context) {
        this.mState = 0;
        this.mContext = context;
        this.zzclx = context.getResources().getDisplayMetrics().density;
    }

    public zzajc(Context context, String str) {
        this(context);
        this.zzdfy = str;
    }

    private static int zza(List<String> list, String str, boolean z) {
        if (!z) {
            return -1;
        }
        list.add(str);
        return list.size() - 1;
    }

    private final void zza(int i, float f, float f2) {
        if (i == 0) {
            this.mState = 0;
            this.zzdfz = f;
            this.zzdga = f2;
            this.zzdgb = f2;
            return;
        }
        if (this.mState == -1) {
            return;
        }
        if (i != 2) {
            if (i == 1 && this.mState == 4) {
                showDialog();
                return;
            }
            return;
        }
        if (f2 > this.zzdga) {
            this.zzdga = f2;
        } else if (f2 < this.zzdgb) {
            this.zzdgb = f2;
        }
        if (this.zzdga - this.zzdgb > 30.0f * this.zzclx) {
            this.mState = -1;
            return;
        }
        if (this.mState == 0 || this.mState == 2 ? f - this.zzdfz >= 50.0f * this.zzclx : !((this.mState != 1 && this.mState != 3) || f - this.zzdfz > (-50.0f) * this.zzclx)) {
            this.zzdfz = f;
            this.mState++;
        }
        if (this.mState == 1 || this.mState == 3) {
            if (f > this.zzdfz) {
                this.zzdfz = f;
            }
        } else {
            if (this.mState != 2 || f >= this.zzdfz) {
                return;
            }
            this.zzdfz = f;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code restructure failed: missing block: B:14:0x006c, code lost:
    
        if (android.text.TextUtils.isEmpty(r0) == false) goto L16;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void zzrn() {
        /*
            r5 = this;
            android.content.Context r0 = r5.mContext
            boolean r0 = r0 instanceof android.app.Activity
            if (r0 != 0) goto Lc
            java.lang.String r0 = "Can not create dialog without Activity Context"
            com.google.android.gms.internal.zzahw.zzcy(r0)
            return
        Lc:
            java.lang.String r0 = r5.zzdfy
            boolean r1 = android.text.TextUtils.isEmpty(r0)
            if (r1 != 0) goto L6f
            java.lang.String r1 = "\\+"
            java.lang.String r2 = "%20"
            java.lang.String r0 = r0.replaceAll(r1, r2)
            android.net.Uri$Builder r1 = new android.net.Uri$Builder
            r1.<init>()
            android.net.Uri$Builder r0 = r1.encodedQuery(r0)
            android.net.Uri r0 = r0.build()
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            r1.<init>()
            com.google.android.gms.ads.internal.zzbt.zzel()
            java.util.Map r0 = com.google.android.gms.internal.zzaij.zzf(r0)
            java.util.Set r2 = r0.keySet()
            java.util.Iterator r2 = r2.iterator()
        L3d:
            boolean r3 = r2.hasNext()
            if (r3 == 0) goto L60
            java.lang.Object r3 = r2.next()
            java.lang.String r3 = (java.lang.String) r3
            r1.append(r3)
            java.lang.String r4 = " = "
            r1.append(r4)
            java.lang.Object r3 = r0.get(r3)
            java.lang.String r3 = (java.lang.String) r3
            r1.append(r3)
            java.lang.String r3 = "\n\n"
            r1.append(r3)
            goto L3d
        L60:
            java.lang.String r0 = r1.toString()
            java.lang.String r0 = r0.trim()
            boolean r1 = android.text.TextUtils.isEmpty(r0)
            if (r1 != 0) goto L6f
            goto L71
        L6f:
            java.lang.String r0 = "No debug information"
        L71:
            android.app.AlertDialog$Builder r1 = new android.app.AlertDialog$Builder
            android.content.Context r2 = r5.mContext
            r1.<init>(r2)
            r1.setMessage(r0)
            java.lang.String r2 = "Ad Information"
            r1.setTitle(r2)
            java.lang.String r2 = "Share"
            com.google.android.gms.internal.zzaje r3 = new com.google.android.gms.internal.zzaje
            r3.<init>(r5, r0)
            r1.setPositiveButton(r2, r3)
            java.lang.String r0 = "Close"
            com.google.android.gms.internal.zzajf r2 = new com.google.android.gms.internal.zzajf
            r2.<init>(r5)
            r1.setNegativeButton(r0, r2)
            android.app.AlertDialog r0 = r1.create()
            r0.show()
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.zzajc.zzrn():void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void zzro() {
        zzahw.zzby("Debug mode [Creative Preview] selected.");
        zzaid.zzb(new zzajg(this));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void zzrp() {
        zzahw.zzby("Debug mode [Troubleshooting] selected.");
        zzaid.zzb(new zzajh(this));
    }

    public final void setAdUnitId(String str) {
        this.zzapp = str;
    }

    public final void showDialog() {
        if (!((Boolean) zzlc.zzio().zzd(zzoi.zzbus)).booleanValue()) {
            if (!((Boolean) zzlc.zzio().zzd(zzoi.zzbur)).booleanValue()) {
                zzrn();
                return;
            }
        }
        if (!(this.mContext instanceof Activity)) {
            zzahw.zzcy("Can not create dialog without Activity Context");
            return;
        }
        String str = !TextUtils.isEmpty(com.google.android.gms.ads.internal.zzbt.zzev().zzrq()) ? "Creative Preview (Enabled)" : "Creative Preview";
        String str2 = com.google.android.gms.ads.internal.zzbt.zzev().zzrr() ? "Troubleshooting (Enabled)" : "Troubleshooting";
        ArrayList arrayList = new ArrayList();
        int zza = zza((List<String>) arrayList, "Ad Information", true);
        int zza2 = zza(arrayList, str, ((Boolean) zzlc.zzio().zzd(zzoi.zzbur)).booleanValue());
        int zza3 = zza(arrayList, str2, ((Boolean) zzlc.zzio().zzd(zzoi.zzbus)).booleanValue());
        AlertDialog.Builder builder = new AlertDialog.Builder(this.mContext, com.google.android.gms.ads.internal.zzbt.zzen().zzrl());
        builder.setTitle("Select a Debug Mode").setItems((CharSequence[]) arrayList.toArray(new String[0]), new zzajd(this, zza, zza2, zza3));
        builder.create().show();
    }

    public final void zzcq(String str) {
        this.zzavp = str;
    }

    public final void zzcr(String str) {
        this.zzdfy = str;
    }

    public final void zzcs(String str) {
        this.zzcwt = str;
    }

    public final void zze(MotionEvent motionEvent) {
        int historySize = motionEvent.getHistorySize();
        for (int i = 0; i < historySize; i++) {
            zza(motionEvent.getActionMasked(), motionEvent.getHistoricalX(0, i), motionEvent.getHistoricalY(0, i));
        }
        zza(motionEvent.getActionMasked(), motionEvent.getX(), motionEvent.getY());
    }
}
