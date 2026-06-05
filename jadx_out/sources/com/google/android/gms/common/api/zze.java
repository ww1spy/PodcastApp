package com.google.android.gms.common.api;

import com.google.android.gms.common.internal.Hide;
import java.util.Map;
import java.util.WeakHashMap;

@Hide
/* loaded from: classes.dex */
public abstract class zze {
    private static final Map<Object, zze> zzfto = new WeakHashMap();
    private static final Object sLock = new Object();

    public abstract void remove(int i);
}
