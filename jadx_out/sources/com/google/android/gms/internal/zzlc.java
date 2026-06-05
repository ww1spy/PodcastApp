package com.google.android.gms.internal;

import com.google.android.gms.common.internal.Hide;

@Hide
@zzabh
/* loaded from: classes.dex */
public final class zzlc {
    private static final Object sLock = new Object();
    private static zzlc zzbiy;
    private final zzako zzbiz = new zzako();
    private final zzks zzbja = new zzks(new zzkj(), new zzki(), new zznc(), new zzso(), new zzafg(), new zzyp(), new zzsp());
    private final String mSessionId = zzako.zzsb();
    private final zzoe zzbjb = new zzoe();
    private final zzof zzbjc = new zzof();
    private final zzog zzbjd = new zzog();

    static {
        zzlc zzlcVar = new zzlc();
        synchronized (sLock) {
            zzbiy = zzlcVar;
        }
    }

    protected zzlc() {
    }

    private static zzlc zzii() {
        zzlc zzlcVar;
        synchronized (sLock) {
            zzlcVar = zzbiy;
        }
        return zzlcVar;
    }

    public static zzako zzij() {
        return zzii().zzbiz;
    }

    public static zzks zzik() {
        return zzii().zzbja;
    }

    public static String zzil() {
        return zzii().mSessionId;
    }

    public static zzof zzim() {
        return zzii().zzbjc;
    }

    public static zzoe zzin() {
        return zzii().zzbjb;
    }

    public static zzog zzio() {
        return zzii().zzbjd;
    }
}
