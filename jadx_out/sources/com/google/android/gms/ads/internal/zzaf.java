package com.google.android.gms.ads.internal;

import android.app.Activity;
import android.content.Context;
import android.view.MotionEvent;
import android.view.View;
import com.google.android.gms.common.internal.Hide;
import com.google.android.gms.internal.zzabh;
import com.google.android.gms.internal.zzahw;
import com.google.android.gms.internal.zzaid;
import com.google.android.gms.internal.zzako;
import com.google.android.gms.internal.zzala;
import com.google.android.gms.internal.zzcr;
import com.google.android.gms.internal.zzcu;
import com.google.android.gms.internal.zzlc;
import com.google.android.gms.internal.zzoi;
import java.util.List;
import java.util.Vector;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.atomic.AtomicReference;

@Hide
@zzabh
/* loaded from: classes.dex */
public final class zzaf implements zzcr, Runnable {
    private Context zzaiq;
    private final List<Object[]> zzaoz;
    private final AtomicReference<zzcr> zzapa;
    private zzala zzapb;
    private CountDownLatch zzapc;

    private zzaf(Context context, zzala zzalaVar) {
        this.zzaoz = new Vector();
        this.zzapa = new AtomicReference<>();
        this.zzapc = new CountDownLatch(1);
        this.zzaiq = context;
        this.zzapb = zzalaVar;
        zzlc.zzij();
        if (zzako.zzsa()) {
            zzaid.zzb(this);
        } else {
            run();
        }
    }

    public zzaf(zzbu zzbuVar) {
        this(zzbuVar.zzaiq, zzbuVar.zzatz);
    }

    private static Context zzd(Context context) {
        Context applicationContext = context.getApplicationContext();
        return applicationContext == null ? context : applicationContext;
    }

    private final boolean zzdd() {
        try {
            this.zzapc.await();
            return true;
        } catch (InterruptedException e) {
            zzahw.zzc("Interrupted during GADSignals creation.", e);
            return false;
        }
    }

    private final void zzde() {
        if (this.zzaoz.isEmpty()) {
            return;
        }
        for (Object[] objArr : this.zzaoz) {
            if (objArr.length == 1) {
                this.zzapa.get().zza((MotionEvent) objArr[0]);
            } else if (objArr.length == 3) {
                this.zzapa.get().zza(((Integer) objArr[0]).intValue(), ((Integer) objArr[1]).intValue(), ((Integer) objArr[2]).intValue());
            }
        }
        this.zzaoz.clear();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.lang.Runnable
    public final void run() {
        boolean z = false;
        try {
            boolean z2 = this.zzapb.zzdjb;
            if (!((Boolean) zzlc.zzio().zzd(zzoi.zzbpf)).booleanValue() && z2) {
                z = true;
            }
            this.zzapa.set(zzcu.zza(this.zzapb.zzcu, zzd(this.zzaiq), z));
        } finally {
            this.zzapc.countDown();
            this.zzaiq = null;
            this.zzapb = null;
        }
    }

    @Override // com.google.android.gms.internal.zzcr
    public final String zza(Context context) {
        zzcr zzcrVar;
        if (!zzdd() || (zzcrVar = this.zzapa.get()) == null) {
            return "";
        }
        zzde();
        return zzcrVar.zza(zzd(context));
    }

    @Override // com.google.android.gms.internal.zzcr
    public final String zza(Context context, String str, View view) {
        return zza(context, str, view, null);
    }

    @Override // com.google.android.gms.internal.zzcr
    public final String zza(Context context, String str, View view, Activity activity) {
        zzcr zzcrVar;
        if (!zzdd() || (zzcrVar = this.zzapa.get()) == null) {
            return "";
        }
        zzde();
        return zzcrVar.zza(zzd(context), str, view, activity);
    }

    @Override // com.google.android.gms.internal.zzcr
    public final void zza(int i, int i2, int i3) {
        zzcr zzcrVar = this.zzapa.get();
        if (zzcrVar == null) {
            this.zzaoz.add(new Object[]{Integer.valueOf(i), Integer.valueOf(i2), Integer.valueOf(i3)});
        } else {
            zzde();
            zzcrVar.zza(i, i2, i3);
        }
    }

    @Override // com.google.android.gms.internal.zzcr
    public final void zza(MotionEvent motionEvent) {
        zzcr zzcrVar = this.zzapa.get();
        if (zzcrVar == null) {
            this.zzaoz.add(new Object[]{motionEvent});
        } else {
            zzde();
            zzcrVar.zza(motionEvent);
        }
    }

    @Override // com.google.android.gms.internal.zzcr
    public final void zzb(View view) {
        zzcr zzcrVar = this.zzapa.get();
        if (zzcrVar != null) {
            zzcrVar.zzb(view);
        }
    }
}
