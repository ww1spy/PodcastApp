package com.google.android.gms.internal;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Color;
import android.os.Bundle;
import android.support.annotation.Nullable;
import android.text.TextUtils;
import java.util.concurrent.TimeUnit;

@zzabh
/* loaded from: classes.dex */
public final class zzano {
    private final Context mContext;
    private final zzala zzarg;
    private final String zzcwj;

    @Nullable
    private final zzov zzdli;
    private boolean zzdlm;

    @Nullable
    private final zzot zzdnt;
    private final long[] zzdnv;
    private final String[] zzdnw;
    private zzamz zzdob;
    private boolean zzdoc;
    private boolean zzdod;
    private final zzajn zzdnu = new zzajq().zza("min_1", Double.MIN_VALUE, 1.0d).zza("1_5", 1.0d, 5.0d).zza("5_10", 5.0d, 10.0d).zza("10_20", 10.0d, 20.0d).zza("20_30", 20.0d, 30.0d).zza("30_max", 30.0d, Double.MAX_VALUE).zzrs();
    private boolean zzdnx = false;
    private boolean zzdny = false;
    private boolean zzdnz = false;
    private boolean zzdoa = false;
    private long zzdoe = -1;

    public zzano(Context context, zzala zzalaVar, String str, @Nullable zzov zzovVar, @Nullable zzot zzotVar) {
        this.mContext = context;
        this.zzarg = zzalaVar;
        this.zzcwj = str;
        this.zzdli = zzovVar;
        this.zzdnt = zzotVar;
        String str2 = (String) zzlc.zzio().zzd(zzoi.zzbmb);
        if (str2 == null) {
            this.zzdnw = new String[0];
            this.zzdnv = new long[0];
            return;
        }
        String[] split = TextUtils.split(str2, ",");
        this.zzdnw = new String[split.length];
        this.zzdnv = new long[split.length];
        for (int i = 0; i < split.length; i++) {
            try {
                this.zzdnv[i] = Long.parseLong(split[i]);
            } catch (NumberFormatException e) {
                zzahw.zzc("Unable to parse frame hash target time number.", e);
                this.zzdnv[i] = -1;
            }
        }
    }

    public final void onStop() {
        if (!((Boolean) zzlc.zzio().zzd(zzoi.zzbma)).booleanValue() || this.zzdoc) {
            return;
        }
        Bundle bundle = new Bundle();
        bundle.putString("type", "native-player-metrics");
        bundle.putString("request", this.zzcwj);
        bundle.putString("player", this.zzdob.zzsj());
        for (zzajp zzajpVar : this.zzdnu.getBuckets()) {
            String valueOf = String.valueOf("fps_c_");
            String valueOf2 = String.valueOf(zzajpVar.name);
            bundle.putString(valueOf2.length() != 0 ? valueOf.concat(valueOf2) : new String(valueOf), Integer.toString(zzajpVar.count));
            String valueOf3 = String.valueOf("fps_p_");
            String valueOf4 = String.valueOf(zzajpVar.name);
            bundle.putString(valueOf4.length() != 0 ? valueOf3.concat(valueOf4) : new String(valueOf3), Double.toString(zzajpVar.zzdgw));
        }
        for (int i = 0; i < this.zzdnv.length; i++) {
            String str = this.zzdnw[i];
            if (str != null) {
                String valueOf5 = String.valueOf(Long.valueOf(this.zzdnv[i]));
                StringBuilder sb = new StringBuilder(3 + String.valueOf(valueOf5).length());
                sb.append("fh_");
                sb.append(valueOf5);
                bundle.putString(sb.toString(), str);
            }
        }
        com.google.android.gms.ads.internal.zzbt.zzel().zza(this.mContext, this.zzarg.zzcu, "gmob-apps", bundle, true);
        this.zzdoc = true;
    }

    public final void zza(zzamz zzamzVar) {
        zzoo.zza(this.zzdli, this.zzdnt, "vpc2");
        this.zzdnx = true;
        if (this.zzdli != null) {
            this.zzdli.zzf("vpn", zzamzVar.zzsj());
        }
        this.zzdob = zzamzVar;
    }

    public final void zzb(zzamz zzamzVar) {
        if (this.zzdnz && !this.zzdoa) {
            zzoo.zza(this.zzdli, this.zzdnt, "vff2");
            this.zzdoa = true;
        }
        long nanoTime = com.google.android.gms.ads.internal.zzbt.zzes().nanoTime();
        if (this.zzdlm && this.zzdod && this.zzdoe != -1) {
            this.zzdnu.zza(TimeUnit.SECONDS.toNanos(1L) / (nanoTime - this.zzdoe));
        }
        this.zzdod = this.zzdlm;
        this.zzdoe = nanoTime;
        long longValue = ((Long) zzlc.zzio().zzd(zzoi.zzbmc)).longValue();
        long currentPosition = zzamzVar.getCurrentPosition();
        for (int i = 0; i < this.zzdnw.length; i++) {
            if (this.zzdnw[i] == null && longValue > Math.abs(currentPosition - this.zzdnv[i])) {
                String[] strArr = this.zzdnw;
                int i2 = 8;
                Bitmap bitmap = zzamzVar.getBitmap(8, 8);
                int i3 = 0;
                long j = 63;
                long j2 = 0;
                while (i3 < i2) {
                    long j3 = j;
                    long j4 = j2;
                    int i4 = 0;
                    while (i4 < i2) {
                        int pixel = bitmap.getPixel(i4, i3);
                        long j5 = j4 | (((Color.blue(pixel) + Color.red(pixel)) + Color.green(pixel) > 128 ? 1L : 0L) << ((int) j3));
                        i4++;
                        j3--;
                        j4 = j5;
                        i2 = 8;
                    }
                    i3++;
                    j2 = j4;
                    i2 = 8;
                    j = j3;
                }
                strArr[i] = String.format("%016X", Long.valueOf(j2));
                return;
            }
        }
    }

    public final void zzsp() {
        if (!this.zzdnx || this.zzdny) {
            return;
        }
        zzoo.zza(this.zzdli, this.zzdnt, "vfr2");
        this.zzdny = true;
    }

    public final void zzto() {
        this.zzdlm = true;
        if (!this.zzdny || this.zzdnz) {
            return;
        }
        zzoo.zza(this.zzdli, this.zzdnt, "vfp2");
        this.zzdnz = true;
    }

    public final void zztp() {
        this.zzdlm = false;
    }
}
