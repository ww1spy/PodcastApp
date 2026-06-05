package com.google.android.gms.internal;

import android.content.Context;
import com.google.android.gms.common.internal.Hide;
import java.io.File;
import java.util.regex.Pattern;

@Hide
@zzabh
/* loaded from: classes.dex */
public final class zzajl extends zzaj {
    private final Context mContext;

    private zzajl(Context context, zzar zzarVar) {
        super(zzarVar);
        this.mContext = context;
    }

    public static zzv zzax(Context context) {
        zzv zzvVar = new zzv(new zzam(new File(context.getCacheDir(), "admob_volley")), new zzajl(context, new zzas()));
        zzvVar.start();
        return zzvVar;
    }

    @Override // com.google.android.gms.internal.zzaj, com.google.android.gms.internal.zzm
    public final zzp zzc(zzr<?> zzrVar) throws zzae {
        if (zzrVar.zzg() && zzrVar.getMethod() == 0) {
            if (Pattern.matches((String) zzlc.zzio().zzd(zzoi.zzbum), zzrVar.getUrl())) {
                zzlc.zzij();
                if (zzako.zzbb(this.mContext)) {
                    zzp zzc = new zzte(this.mContext).zzc(zzrVar);
                    if (zzc != null) {
                        String valueOf = String.valueOf(zzrVar.getUrl());
                        zzahw.v(valueOf.length() != 0 ? "Got gmscore asset response: ".concat(valueOf) : new String("Got gmscore asset response: "));
                        return zzc;
                    }
                    String valueOf2 = String.valueOf(zzrVar.getUrl());
                    zzahw.v(valueOf2.length() != 0 ? "Failed to get gmscore asset response: ".concat(valueOf2) : new String("Failed to get gmscore asset response: "));
                }
            }
        }
        return super.zzc(zzrVar);
    }
}
