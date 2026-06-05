package com.google.android.gms.tagmanager;

import android.content.Context;
import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import android.support.annotation.RawRes;
import android.support.annotation.RequiresPermission;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.internal.Hide;
import java.util.Iterator;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;

/* loaded from: classes.dex */
public class TagManager {
    private static TagManager zzkuc;
    private final Context mContext;
    private final DataLayer zzknd;
    private final zzal zzksc;
    private final zza zzktz;
    private final zzfn zzkua;
    private final ConcurrentMap<String, zzv> zzkub;

    @Hide
    /* loaded from: classes.dex */
    public interface zza {
        zzy zza(Context context, TagManager tagManager, Looper looper, String str, int i, zzal zzalVar);
    }

    private TagManager(Context context, zza zzaVar, DataLayer dataLayer, zzfn zzfnVar) {
        if (context == null) {
            throw new NullPointerException("context cannot be null");
        }
        this.mContext = context.getApplicationContext();
        this.zzkua = zzfnVar;
        this.zzktz = zzaVar;
        this.zzkub = new ConcurrentHashMap();
        this.zzknd = dataLayer;
        this.zzknd.zza(new zzgb(this));
        this.zzknd.zza(new zzg(this.mContext));
        this.zzksc = new zzal();
        this.mContext.registerComponentCallbacks(new zzgd(this));
        com.google.android.gms.tagmanager.zza.zzeg(this.mContext);
    }

    @RequiresPermission(allOf = {"android.permission.INTERNET", "android.permission.ACCESS_NETWORK_STATE"})
    public static TagManager getInstance(Context context) {
        TagManager tagManager;
        synchronized (TagManager.class) {
            if (zzkuc == null) {
                if (context == null) {
                    zzdj.e("TagManager.getInstance requires non-null context.");
                    throw new NullPointerException();
                }
                zzkuc = new TagManager(context, new zzgc(), new DataLayer(new zzat(context)), zzfo.zzbhz());
            }
            tagManager = zzkuc;
        }
        return tagManager;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void zzme(String str) {
        Iterator<zzv> it = this.zzkub.values().iterator();
        while (it.hasNext()) {
            it.next().zzlj(str);
        }
    }

    public void dispatch() {
        this.zzkua.dispatch();
    }

    public DataLayer getDataLayer() {
        return this.zzknd;
    }

    public PendingResult<ContainerHolder> loadContainerDefaultOnly(String str, @RawRes int i) {
        zzy zza2 = this.zzktz.zza(this.mContext, this, null, str, i, this.zzksc);
        zza2.zzbfq();
        return zza2;
    }

    public PendingResult<ContainerHolder> loadContainerDefaultOnly(String str, @RawRes int i, Handler handler) {
        zzy zza2 = this.zzktz.zza(this.mContext, this, handler.getLooper(), str, i, this.zzksc);
        zza2.zzbfq();
        return zza2;
    }

    public PendingResult<ContainerHolder> loadContainerPreferFresh(String str, @RawRes int i) {
        zzy zza2 = this.zzktz.zza(this.mContext, this, null, str, i, this.zzksc);
        zza2.zzbfs();
        return zza2;
    }

    public PendingResult<ContainerHolder> loadContainerPreferFresh(String str, @RawRes int i, Handler handler) {
        zzy zza2 = this.zzktz.zza(this.mContext, this, handler.getLooper(), str, i, this.zzksc);
        zza2.zzbfs();
        return zza2;
    }

    public PendingResult<ContainerHolder> loadContainerPreferNonDefault(String str, @RawRes int i) {
        zzy zza2 = this.zzktz.zza(this.mContext, this, null, str, i, this.zzksc);
        zza2.zzbfr();
        return zza2;
    }

    public PendingResult<ContainerHolder> loadContainerPreferNonDefault(String str, @RawRes int i, Handler handler) {
        zzy zza2 = this.zzktz.zza(this.mContext, this, handler.getLooper(), str, i, this.zzksc);
        zza2.zzbfr();
        return zza2;
    }

    public void setVerboseLoggingEnabled(boolean z) {
        zzdj.setLogLevel(z ? 2 : 5);
    }

    @Hide
    public final int zza(zzv zzvVar) {
        this.zzkub.put(zzvVar.getContainerId(), zzvVar);
        return this.zzkub.size();
    }

    @Hide
    public final boolean zzb(zzv zzvVar) {
        return this.zzkub.remove(zzvVar.getContainerId()) != null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final synchronized boolean zzq(Uri uri) {
        boolean z;
        zzei zzbhh = zzei.zzbhh();
        if (zzbhh.zzq(uri)) {
            String containerId = zzbhh.getContainerId();
            switch (zzge.zzkue[zzbhh.zzbhi().ordinal()]) {
                case 1:
                    zzv zzvVar = this.zzkub.get(containerId);
                    if (zzvVar != null) {
                        zzvVar.zzlk(null);
                        zzvVar.refresh();
                        break;
                    }
                    break;
                case 2:
                case 3:
                    for (String str : this.zzkub.keySet()) {
                        zzv zzvVar2 = this.zzkub.get(str);
                        if (str.equals(containerId)) {
                            zzvVar2.zzlk(zzbhh.zzbhj());
                        } else if (zzvVar2.zzbfn() != null) {
                            zzvVar2.zzlk(null);
                        }
                        zzvVar2.refresh();
                    }
                    break;
            }
            z = true;
        } else {
            z = false;
        }
        return z;
    }
}
