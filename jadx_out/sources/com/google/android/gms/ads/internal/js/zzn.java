package com.google.android.gms.ads.internal.js;

import android.content.Context;
import android.support.annotation.Nullable;
import com.google.android.gms.ads.internal.zzbt;
import com.google.android.gms.common.internal.Hide;
import com.google.android.gms.internal.zzabh;
import com.google.android.gms.internal.zzahw;
import com.google.android.gms.internal.zzaij;
import com.google.android.gms.internal.zzajm;
import com.google.android.gms.internal.zzakf;
import com.google.android.gms.internal.zzala;
import com.google.android.gms.internal.zzaly;
import com.google.android.gms.internal.zzcv;
import java.util.concurrent.Executor;

@Hide
@zzabh
/* loaded from: classes.dex */
public final class zzn {
    private final Context mContext;
    private final Object mLock;
    private final zzala zzapq;
    private final String zzcfh;
    private zzajm<zzc> zzcfi;
    private zzajm<zzc> zzcfj;

    @Nullable
    private zzae zzcfk;
    private int zzcfl;

    public zzn(Context context, zzala zzalaVar, String str) {
        this.mLock = new Object();
        this.zzcfl = 1;
        this.zzcfh = str;
        this.mContext = context.getApplicationContext();
        this.zzapq = zzalaVar;
        this.zzcfi = new zzz();
        this.zzcfj = new zzz();
    }

    public zzn(Context context, zzala zzalaVar, String str, zzajm<zzc> zzajmVar, zzajm<zzc> zzajmVar2) {
        this(context, zzalaVar, str);
        this.zzcfi = zzajmVar;
        this.zzcfj = zzajmVar2;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final zzae zza(@Nullable final zzcv zzcvVar) {
        final zzae zzaeVar = new zzae(this.zzcfj);
        zzaly.zzdjt.execute(new Runnable(this, zzcvVar, zzaeVar) { // from class: com.google.android.gms.ads.internal.js.zzo
            private final zzn zzcfm;
            private final zzcv zzcfn;
            private final zzae zzcfo;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.zzcfm = this;
                this.zzcfn = zzcvVar;
                this.zzcfo = zzaeVar;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.zzcfm.zza(this.zzcfn, this.zzcfo);
            }
        });
        zzaeVar.zza(new zzw(this, zzaeVar), new zzx(this, zzaeVar));
        return zzaeVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void zza(zzae zzaeVar, zzc zzcVar) {
        synchronized (this.mLock) {
            if (zzaeVar.getStatus() != -1 && zzaeVar.getStatus() != 1) {
                zzaeVar.reject();
                Executor executor = zzaly.zzdjt;
                zzcVar.getClass();
                executor.execute(zzr.zza(zzcVar));
                zzahw.v("Could not receive loaded message in a timely manner. Rejecting.");
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void zza(zzcv zzcvVar, final zzae zzaeVar) {
        try {
            final zze zzeVar = new zze(this.mContext, this.zzapq, zzcvVar, null);
            zzeVar.zza(new zzd(this, zzaeVar, zzeVar) { // from class: com.google.android.gms.ads.internal.js.zzp
                private final zzn zzcfm;
                private final zzae zzcfp;
                private final zzc zzcfq;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.zzcfm = this;
                    this.zzcfp = zzaeVar;
                    this.zzcfq = zzeVar;
                }

                @Override // com.google.android.gms.ads.internal.js.zzd
                public final void zzlz() {
                    final zzn zznVar = this.zzcfm;
                    final zzae zzaeVar2 = this.zzcfp;
                    final zzc zzcVar = this.zzcfq;
                    zzaij.zzdfn.postDelayed(new Runnable(zznVar, zzaeVar2, zzcVar) { // from class: com.google.android.gms.ads.internal.js.zzq
                        private final zzn zzcfm;
                        private final zzae zzcfp;
                        private final zzc zzcfq;

                        /* JADX INFO: Access modifiers changed from: package-private */
                        {
                            this.zzcfm = zznVar;
                            this.zzcfp = zzaeVar2;
                            this.zzcfq = zzcVar;
                        }

                        @Override // java.lang.Runnable
                        public final void run() {
                            this.zzcfm.zza(this.zzcfp, this.zzcfq);
                        }
                    }, zzy.zzcfz);
                }
            });
            zzeVar.zza("/jsLoaded", new zzs(this, zzaeVar, zzeVar));
            zzakf zzakfVar = new zzakf();
            zzt zztVar = new zzt(this, zzcvVar, zzeVar, zzakfVar);
            zzakfVar.set(zztVar);
            zzeVar.zza("/requestReload", zztVar);
            if (this.zzcfh.endsWith(".js")) {
                zzeVar.zzbb(this.zzcfh);
            } else if (this.zzcfh.startsWith("<html>")) {
                zzeVar.zzbd(this.zzcfh);
            } else {
                zzeVar.zzbc(this.zzcfh);
            }
            zzaij.zzdfn.postDelayed(new zzu(this, zzaeVar, zzeVar), zzy.zzcfy);
        } catch (Throwable th) {
            zzahw.zzb("Error creating webview.", th);
            zzbt.zzep().zza(th, "SdkJavascriptFactory.loadJavascriptEngine");
            zzaeVar.reject();
        }
    }

    public final zzaa zzb(@Nullable zzcv zzcvVar) {
        synchronized (this.mLock) {
            if (this.zzcfk != null && this.zzcfk.getStatus() != -1) {
                if (this.zzcfl == 0) {
                    return this.zzcfk.zzma();
                }
                if (this.zzcfl == 1) {
                    this.zzcfl = 2;
                    zza((zzcv) null);
                    return this.zzcfk.zzma();
                }
                if (this.zzcfl == 2) {
                    return this.zzcfk.zzma();
                }
                return this.zzcfk.zzma();
            }
            this.zzcfl = 2;
            this.zzcfk = zza((zzcv) null);
            return this.zzcfk.zzma();
        }
    }
}
