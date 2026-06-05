package com.google.android.gms.ads.internal;

import android.os.RemoteException;
import com.google.android.gms.internal.zzahw;
import com.google.android.gms.internal.zzpk;
import com.google.android.gms.internal.zzpm;
import com.google.android.gms.internal.zzpr;
import com.google.android.gms.internal.zzpx;
import com.google.android.gms.internal.zzsh;
import java.util.List;

/* loaded from: classes.dex */
final class zzbe implements Runnable {
    private /* synthetic */ zzbb zzaro;
    private /* synthetic */ int zzarp;
    private /* synthetic */ zzpx zzars;
    private /* synthetic */ List zzart;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzbe(zzbb zzbbVar, zzpx zzpxVar, int i, List list) {
        this.zzaro = zzbbVar;
        this.zzars = zzpxVar;
        this.zzarp = i;
        this.zzart = list;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzpr zza;
        zzpr zza2;
        try {
            if ((this.zzars instanceof zzpm) && this.zzaro.zzanm.zzaun != null) {
                this.zzaro.zzank = this.zzarp != this.zzart.size() - 1;
                zzsh zzshVar = this.zzaro.zzanm.zzaun;
                zza2 = zzbb.zza(this.zzars);
                zzshVar.zza(zza2);
                return;
            }
            if ((this.zzars instanceof zzpm) && this.zzaro.zzanm.zzaum != null) {
                this.zzaro.zzank = this.zzarp != this.zzart.size() - 1;
                this.zzaro.zzanm.zzaum.zza((zzpm) this.zzars);
                return;
            }
            if ((this.zzars instanceof zzpk) && this.zzaro.zzanm.zzaun != null) {
                this.zzaro.zzank = this.zzarp != this.zzart.size() - 1;
                zzsh zzshVar2 = this.zzaro.zzanm.zzaun;
                zza = zzbb.zza(this.zzars);
                zzshVar2.zza(zza);
                return;
            }
            if (!(this.zzars instanceof zzpk) || this.zzaro.zzanm.zzaul == null) {
                this.zzaro.zzc(3, this.zzarp != this.zzart.size() - 1);
            } else {
                this.zzaro.zzank = this.zzarp != this.zzart.size() - 1;
                this.zzaro.zzanm.zzaul.zza((zzpk) this.zzars);
            }
        } catch (RemoteException e) {
            zzahw.zzc("Could not call native ad loaded", e);
        }
    }
}
