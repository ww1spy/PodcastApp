package com.google.android.gms.internal;

import android.content.Context;
import com.google.android.gms.common.internal.Hide;
import com.google.android.gms.dynamite.DynamiteModule;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.ads.dynamite.ModuleDescriptor;

@Hide
@zzabh
/* loaded from: classes.dex */
public final class zzabv {
    /* JADX INFO: Access modifiers changed from: private */
    public static boolean zzd(Context context, boolean z) {
        if (!z) {
            return true;
        }
        int zzy = DynamiteModule.zzy(context, ModuleDescriptor.MODULE_ID);
        return zzy != 0 && zzy <= DynamiteModule.zzx(context, ModuleDescriptor.MODULE_ID);
    }
}
