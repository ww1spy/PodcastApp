package com.google.android.gms.internal;

import android.app.Activity;
import android.content.Context;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.WindowManager;
import com.google.android.gms.common.internal.Hide;
import java.util.Map;

@Hide
@zzabh
/* loaded from: classes.dex */
public final class zzym extends zzyn implements com.google.android.gms.ads.internal.gmsg.zzt<zzaof> {
    private final Context mContext;
    private final WindowManager zzavz;
    private DisplayMetrics zzaxo;
    private final zzaof zzcct;
    private final zznu zzclw;
    private float zzclx;
    private int zzcly;
    private int zzclz;
    private int zzcma;
    private int zzcmb;
    private int zzcmc;
    private int zzcmd;
    private int zzcme;

    public zzym(zzaof zzaofVar, Context context, zznu zznuVar) {
        super(zzaofVar);
        this.zzcly = -1;
        this.zzclz = -1;
        this.zzcmb = -1;
        this.zzcmc = -1;
        this.zzcmd = -1;
        this.zzcme = -1;
        this.zzcct = zzaofVar;
        this.mContext = context;
        this.zzclw = zznuVar;
        this.zzavz = (WindowManager) context.getSystemService("window");
    }

    @Override // com.google.android.gms.ads.internal.gmsg.zzt
    public final /* synthetic */ void zza(zzaof zzaofVar, Map map) {
        int i;
        this.zzaxo = new DisplayMetrics();
        Display defaultDisplay = this.zzavz.getDefaultDisplay();
        defaultDisplay.getMetrics(this.zzaxo);
        this.zzclx = this.zzaxo.density;
        this.zzcma = defaultDisplay.getRotation();
        zzlc.zzij();
        this.zzcly = zzako.zzb(this.zzaxo, this.zzaxo.widthPixels);
        zzlc.zzij();
        this.zzclz = zzako.zzb(this.zzaxo, this.zzaxo.heightPixels);
        Activity zztj = this.zzcct.zztj();
        if (zztj == null || zztj.getWindow() == null) {
            this.zzcmb = this.zzcly;
            i = this.zzclz;
        } else {
            com.google.android.gms.ads.internal.zzbt.zzel();
            int[] zzf = zzaij.zzf(zztj);
            zzlc.zzij();
            this.zzcmb = zzako.zzb(this.zzaxo, zzf[0]);
            zzlc.zzij();
            i = zzako.zzb(this.zzaxo, zzf[1]);
        }
        this.zzcmc = i;
        if (this.zzcct.zzty().zzvl()) {
            this.zzcmd = this.zzcly;
            this.zzcme = this.zzclz;
        } else {
            this.zzcct.measure(0, 0);
        }
        zza(this.zzcly, this.zzclz, this.zzcmb, this.zzcmc, this.zzclx, this.zzcma);
        this.zzcct.zza("onDeviceFeaturesReceived", new zzyj(new zzyl().zzo(this.zzclw.zzja()).zzn(this.zzclw.zzjb()).zzp(this.zzclw.zzjd()).zzq(this.zzclw.zzjc()).zzr(true)).toJson());
        int[] iArr = new int[2];
        this.zzcct.getLocationOnScreen(iArr);
        zzlc.zzij();
        int zzb = zzako.zzb(this.mContext, iArr[0]);
        zzlc.zzij();
        zzc(zzb, zzako.zzb(this.mContext, iArr[1]));
        if (zzahw.zzae(2)) {
            zzahw.zzcy("Dispatching Ready Event.");
        }
        zzbn(this.zzcct.zztl().zzcu);
    }

    public final void zzc(int i, int i2) {
        int i3 = this.mContext instanceof Activity ? com.google.android.gms.ads.internal.zzbt.zzel().zzh((Activity) this.mContext)[0] : 0;
        if (this.zzcct.zzty() == null || !this.zzcct.zzty().zzvl()) {
            zzlc.zzij();
            this.zzcmd = zzako.zzb(this.mContext, this.zzcct.getWidth());
            zzlc.zzij();
            this.zzcme = zzako.zzb(this.mContext, this.zzcct.getHeight());
        }
        zzc(i, i2 - i3, this.zzcmd, this.zzcme);
        this.zzcct.zzua().zzb(i, i2);
    }
}
