package com.google.android.gms.internal;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.MutableContextWrapper;

@zzabh
/* loaded from: classes.dex */
public final class zzapz extends MutableContextWrapper {
    private Context mApplicationContext;
    private Activity zzdid;
    private Context zzdsi;

    public zzapz(Context context) {
        super(context);
        setBaseContext(context);
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public final Object getSystemService(String str) {
        return this.zzdsi.getSystemService(str);
    }

    @Override // android.content.MutableContextWrapper
    public final void setBaseContext(Context context) {
        this.mApplicationContext = context.getApplicationContext();
        this.zzdid = context instanceof Activity ? (Activity) context : null;
        this.zzdsi = context;
        super.setBaseContext(this.mApplicationContext);
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public final void startActivity(Intent intent) {
        if (this.zzdid != null) {
            this.zzdid.startActivity(intent);
        } else {
            intent.setFlags(268435456);
            this.mApplicationContext.startActivity(intent);
        }
    }

    public final Activity zztj() {
        return this.zzdid;
    }

    public final Context zztv() {
        return this.zzdsi;
    }
}
