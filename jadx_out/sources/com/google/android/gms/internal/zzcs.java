package com.google.android.gms.internal;

import android.app.Activity;
import android.content.Context;
import android.util.DisplayMetrics;
import android.view.MotionEvent;
import android.view.View;
import java.io.UnsupportedEncodingException;
import java.security.GeneralSecurityException;
import java.util.Iterator;
import java.util.LinkedList;

/* loaded from: classes.dex */
public abstract class zzcs implements zzcr {
    protected MotionEvent zzagw;
    protected double zzahf;
    private double zzahg;
    private double zzahh;
    protected float zzahi;
    protected float zzahj;
    protected float zzahk;
    protected float zzahl;
    protected DisplayMetrics zzaho;
    protected LinkedList<MotionEvent> zzagx = new LinkedList<>();
    protected long zzagy = 0;
    protected long zzagz = 0;
    protected long zzaha = 0;
    protected long zzahb = 0;
    protected long zzahc = 0;
    protected long zzahd = 0;
    protected long zzahe = 0;
    private boolean zzahm = false;
    protected boolean zzahn = false;

    /* JADX INFO: Access modifiers changed from: protected */
    public zzcs(Context context) {
        try {
            if (((Boolean) zzlc.zzio().zzd(zzoi.zzbrr)).booleanValue()) {
                zzbx.zzz();
            } else {
                zzdq.zzar();
            }
            this.zzaho = context.getResources().getDisplayMetrics();
        } catch (Throwable unused) {
        }
    }

    private final String zza(Context context, String str, boolean z, View view, Activity activity, byte[] bArr) {
        int i;
        zzba zza;
        try {
            if (z) {
                zza = zza(context, view, activity);
                this.zzahm = true;
            } else {
                zza = zza(context, null);
            }
            if (zza != null && zza.zzhs() != 0) {
                return zzbx.zza(zza, str);
            }
            return Integer.toString(5);
        } catch (UnsupportedEncodingException | GeneralSecurityException unused) {
            i = 7;
            return Integer.toString(i);
        } catch (Throwable unused2) {
            i = 3;
            return Integer.toString(i);
        }
    }

    protected abstract long zza(StackTraceElement[] stackTraceElementArr) throws zzdj;

    protected abstract zzba zza(Context context, View view, Activity activity);

    protected abstract zzba zza(Context context, zzax zzaxVar);

    @Override // com.google.android.gms.internal.zzcr
    public final String zza(Context context) {
        if (zzds.zzas()) {
            if (((Boolean) zzlc.zzio().zzd(zzoi.zzbrt)).booleanValue()) {
                throw new IllegalStateException("The caller must not be called from the UI thread.");
            }
        }
        return zza(context, null, false, null, null, null);
    }

    @Override // com.google.android.gms.internal.zzcr
    public final String zza(Context context, String str, View view) {
        return zza(context, str, view, null);
    }

    @Override // com.google.android.gms.internal.zzcr
    public final String zza(Context context, String str, View view, Activity activity) {
        return zza(context, str, true, view, activity, null);
    }

    @Override // com.google.android.gms.internal.zzcr
    public final void zza(int i, int i2, int i3) {
        MotionEvent motionEvent;
        if (this.zzagw != null) {
            this.zzagw.recycle();
        }
        if (this.zzaho != null) {
            motionEvent = MotionEvent.obtain(0L, i3, 1, this.zzaho.density * i, this.zzaho.density * i2, 0.0f, 0.0f, 0, 0.0f, 0.0f, 0, 0);
        } else {
            motionEvent = null;
        }
        this.zzagw = motionEvent;
        this.zzahn = false;
    }

    @Override // com.google.android.gms.internal.zzcr
    public final void zza(MotionEvent motionEvent) {
        boolean z = false;
        if (this.zzahm) {
            this.zzahb = 0L;
            this.zzaha = 0L;
            this.zzagz = 0L;
            this.zzagy = 0L;
            this.zzahc = 0L;
            this.zzahe = 0L;
            this.zzahd = 0L;
            Iterator<MotionEvent> it = this.zzagx.iterator();
            while (it.hasNext()) {
                it.next().recycle();
            }
            this.zzagx.clear();
            this.zzagw = null;
            this.zzahm = false;
        }
        switch (motionEvent.getAction()) {
            case 0:
                this.zzahf = 0.0d;
                this.zzahg = motionEvent.getRawX();
                this.zzahh = motionEvent.getRawY();
                break;
            case 1:
            case 2:
                double rawX = motionEvent.getRawX();
                double rawY = motionEvent.getRawY();
                double d = rawX - this.zzahg;
                double d2 = rawY - this.zzahh;
                this.zzahf += Math.sqrt((d * d) + (d2 * d2));
                this.zzahg = rawX;
                this.zzahh = rawY;
                break;
        }
        try {
            switch (motionEvent.getAction()) {
                case 0:
                    if (((Boolean) zzlc.zzio().zzd(zzoi.zzbro)).booleanValue()) {
                        this.zzahi = motionEvent.getX();
                        this.zzahj = motionEvent.getY();
                        this.zzahk = motionEvent.getRawX();
                        this.zzahl = motionEvent.getRawY();
                    }
                    this.zzagy++;
                    break;
                case 1:
                    this.zzagw = MotionEvent.obtain(motionEvent);
                    this.zzagx.add(this.zzagw);
                    if (this.zzagx.size() > 6) {
                        this.zzagx.remove().recycle();
                    }
                    this.zzaha++;
                    this.zzahc = zza(new Throwable().getStackTrace());
                    break;
                case 2:
                    this.zzagz += motionEvent.getHistorySize() + 1;
                    zzdr zzb = zzb(motionEvent);
                    if ((zzb == null || zzb.zzfl == null || zzb.zzajp == null) ? false : true) {
                        this.zzahd += zzb.zzfl.longValue() + zzb.zzajp.longValue();
                    }
                    if (this.zzaho != null && zzb != null && zzb.zzfj != null && zzb.zzajq != null) {
                        z = true;
                    }
                    if (z) {
                        this.zzahe += zzb.zzfj.longValue() + zzb.zzajq.longValue();
                        break;
                    }
                    break;
                case 3:
                    this.zzahb++;
                    break;
            }
        } catch (zzdj unused) {
        }
        this.zzahn = true;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public abstract zzdr zzb(MotionEvent motionEvent) throws zzdj;

    @Override // com.google.android.gms.internal.zzcr
    public void zzb(View view) {
    }
}
