package com.google.android.gms.tagmanager;

import android.content.Context;
import com.google.android.gms.common.internal.Hide;
import com.google.android.gms.internal.zzdkh;
import com.google.android.gms.internal.zzdkl;
import com.google.android.gms.internal.zzdkp;
import com.google.android.gms.tagmanager.zzei;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes.dex */
public class Container {
    private final Context mContext;
    private final String zzknc;
    private final DataLayer zzknd;
    private zzfc zzkne;
    private Map<String, FunctionCallMacroCallback> zzknf;
    private Map<String, FunctionCallTagCallback> zzkng;
    private volatile long zzknh;
    private volatile String zzkni;

    /* loaded from: classes.dex */
    public interface FunctionCallMacroCallback {
        Object getValue(String str, Map<String, Object> map);
    }

    /* loaded from: classes.dex */
    public interface FunctionCallTagCallback {
        void execute(String str, Map<String, Object> map);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class zza implements zzan {
        private zza() {
        }

        @Override // com.google.android.gms.tagmanager.zzan
        public final Object zze(String str, Map<String, Object> map) {
            FunctionCallMacroCallback zzlh = Container.this.zzlh(str);
            if (zzlh == null) {
                return null;
            }
            return zzlh.getValue(str, map);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class zzb implements zzan {
        private zzb() {
        }

        @Override // com.google.android.gms.tagmanager.zzan
        public final Object zze(String str, Map<String, Object> map) {
            FunctionCallTagCallback zzli = Container.this.zzli(str);
            if (zzli != null) {
                zzli.execute(str, map);
            }
            return zzgk.zzbik();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Container(Context context, DataLayer dataLayer, String str, long j, com.google.android.gms.internal.zzbs zzbsVar) {
        this.zzknf = new HashMap();
        this.zzkng = new HashMap();
        this.zzkni = "";
        this.mContext = context;
        this.zzknd = dataLayer;
        this.zzknc = str;
        this.zzknh = j;
        com.google.android.gms.internal.zzbp zzbpVar = zzbsVar.zzyi;
        if (zzbpVar == null) {
            throw new NullPointerException();
        }
        try {
            zza(zzdkh.zza(zzbpVar));
        } catch (zzdkp e) {
            String valueOf = String.valueOf(zzbpVar);
            String zzdkpVar = e.toString();
            StringBuilder sb = new StringBuilder(46 + String.valueOf(valueOf).length() + String.valueOf(zzdkpVar).length());
            sb.append("Not loading resource: ");
            sb.append(valueOf);
            sb.append(" because it is invalid: ");
            sb.append(zzdkpVar);
            zzdj.e(sb.toString());
        }
        if (zzbsVar.zzyh != null) {
            zza(zzbsVar.zzyh);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Container(Context context, DataLayer dataLayer, String str, long j, zzdkl zzdklVar) {
        this.zzknf = new HashMap();
        this.zzkng = new HashMap();
        this.zzkni = "";
        this.mContext = context;
        this.zzknd = dataLayer;
        this.zzknc = str;
        this.zzknh = 0L;
        zza(zzdklVar);
    }

    private final void zza(zzdkl zzdklVar) {
        this.zzkni = zzdklVar.getVersion();
        String str = this.zzkni;
        zzei.zzbhh().zzbhi().equals(zzei.zza.CONTAINER_DEBUG);
        zza(new zzfc(this.mContext, zzdklVar, this.zzknd, new zza(), new zzb(), new zzdr()));
        if (getBoolean("_gtm.loadEventEnabled")) {
            this.zzknd.pushEvent("gtm.load", DataLayer.mapOf("gtm.id", this.zzknc));
        }
    }

    private final synchronized void zza(zzfc zzfcVar) {
        this.zzkne = zzfcVar;
    }

    private final void zza(com.google.android.gms.internal.zzbr[] zzbrVarArr) {
        ArrayList arrayList = new ArrayList();
        for (com.google.android.gms.internal.zzbr zzbrVar : zzbrVarArr) {
            arrayList.add(zzbrVar);
        }
        zzbfm().zzan(arrayList);
    }

    private final synchronized zzfc zzbfm() {
        return this.zzkne;
    }

    public boolean getBoolean(String str) {
        String sb;
        zzfc zzbfm = zzbfm();
        if (zzbfm == null) {
            sb = "getBoolean called for closed container.";
        } else {
            try {
                return zzgk.zzh(zzbfm.zzmc(str).getObject()).booleanValue();
            } catch (Exception e) {
                String message = e.getMessage();
                StringBuilder sb2 = new StringBuilder(66 + String.valueOf(message).length());
                sb2.append("Calling getBoolean() threw an exception: ");
                sb2.append(message);
                sb2.append(" Returning default value.");
                sb = sb2.toString();
            }
        }
        zzdj.e(sb);
        return zzgk.zzbii().booleanValue();
    }

    public String getContainerId() {
        return this.zzknc;
    }

    public double getDouble(String str) {
        String sb;
        zzfc zzbfm = zzbfm();
        if (zzbfm == null) {
            sb = "getDouble called for closed container.";
        } else {
            try {
                return zzgk.zzg(zzbfm.zzmc(str).getObject()).doubleValue();
            } catch (Exception e) {
                String message = e.getMessage();
                StringBuilder sb2 = new StringBuilder(65 + String.valueOf(message).length());
                sb2.append("Calling getDouble() threw an exception: ");
                sb2.append(message);
                sb2.append(" Returning default value.");
                sb = sb2.toString();
            }
        }
        zzdj.e(sb);
        return zzgk.zzbih().doubleValue();
    }

    public long getLastRefreshTime() {
        return this.zzknh;
    }

    public long getLong(String str) {
        String sb;
        zzfc zzbfm = zzbfm();
        if (zzbfm == null) {
            sb = "getLong called for closed container.";
        } else {
            try {
                return zzgk.zzf(zzbfm.zzmc(str).getObject()).longValue();
            } catch (Exception e) {
                String message = e.getMessage();
                StringBuilder sb2 = new StringBuilder(63 + String.valueOf(message).length());
                sb2.append("Calling getLong() threw an exception: ");
                sb2.append(message);
                sb2.append(" Returning default value.");
                sb = sb2.toString();
            }
        }
        zzdj.e(sb);
        return zzgk.zzbig().longValue();
    }

    public String getString(String str) {
        String sb;
        zzfc zzbfm = zzbfm();
        if (zzbfm == null) {
            sb = "getString called for closed container.";
        } else {
            try {
                return zzgk.zzd(zzbfm.zzmc(str).getObject());
            } catch (Exception e) {
                String message = e.getMessage();
                StringBuilder sb2 = new StringBuilder(65 + String.valueOf(message).length());
                sb2.append("Calling getString() threw an exception: ");
                sb2.append(message);
                sb2.append(" Returning default value.");
                sb = sb2.toString();
            }
        }
        zzdj.e(sb);
        return zzgk.zzbik();
    }

    public boolean isDefault() {
        return getLastRefreshTime() == 0;
    }

    public void registerFunctionCallMacroCallback(String str, FunctionCallMacroCallback functionCallMacroCallback) {
        if (functionCallMacroCallback == null) {
            throw new NullPointerException("Macro handler must be non-null");
        }
        synchronized (this.zzknf) {
            this.zzknf.put(str, functionCallMacroCallback);
        }
    }

    public void registerFunctionCallTagCallback(String str, FunctionCallTagCallback functionCallTagCallback) {
        if (functionCallTagCallback == null) {
            throw new NullPointerException("Tag callback must be non-null");
        }
        synchronized (this.zzkng) {
            this.zzkng.put(str, functionCallTagCallback);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void release() {
        this.zzkne = null;
    }

    public void unregisterFunctionCallMacroCallback(String str) {
        synchronized (this.zzknf) {
            this.zzknf.remove(str);
        }
    }

    public void unregisterFunctionCallTagCallback(String str) {
        synchronized (this.zzkng) {
            this.zzkng.remove(str);
        }
    }

    @Hide
    public final String zzbfl() {
        return this.zzkni;
    }

    final FunctionCallMacroCallback zzlh(String str) {
        FunctionCallMacroCallback functionCallMacroCallback;
        synchronized (this.zzknf) {
            functionCallMacroCallback = this.zzknf.get(str);
        }
        return functionCallMacroCallback;
    }

    @Hide
    public final FunctionCallTagCallback zzli(String str) {
        FunctionCallTagCallback functionCallTagCallback;
        synchronized (this.zzkng) {
            functionCallTagCallback = this.zzkng.get(str);
        }
        return functionCallTagCallback;
    }

    @Hide
    public final void zzlj(String str) {
        zzbfm().zzlj(str);
    }
}
