package com.google.android.gms.internal;

import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.concurrent.Callable;

/* loaded from: classes.dex */
public abstract class zzeu implements Callable {
    private String TAG = getClass().getSimpleName();
    private String className;
    protected final zzdm zzagq;
    protected final zzba zzakm;
    private String zzaks;
    protected Method zzaku;
    private int zzaky;
    private int zzakz;

    public zzeu(zzdm zzdmVar, String str, String str2, zzba zzbaVar, int i, int i2) {
        this.zzagq = zzdmVar;
        this.className = str;
        this.zzaks = str2;
        this.zzakm = zzbaVar;
        this.zzaky = i;
        this.zzakz = i2;
    }

    protected abstract void zzaw() throws IllegalAccessException, InvocationTargetException;

    @Override // java.util.concurrent.Callable
    /* renamed from: zzay, reason: merged with bridge method [inline-methods] */
    public Void call() throws Exception {
        long nanoTime;
        try {
            nanoTime = System.nanoTime();
            this.zzaku = this.zzagq.zza(this.className, this.zzaks);
        } catch (IllegalAccessException | InvocationTargetException unused) {
        }
        if (this.zzaku == null) {
            return null;
        }
        zzaw();
        zzcp zzaj = this.zzagq.zzaj();
        if (zzaj != null && this.zzaky != Integer.MIN_VALUE) {
            zzaj.zza(this.zzakz, this.zzaky, (System.nanoTime() - nanoTime) / 1000);
        }
        return null;
    }
}
