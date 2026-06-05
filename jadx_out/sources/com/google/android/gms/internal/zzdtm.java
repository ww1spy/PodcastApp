package com.google.android.gms.internal;

import java.util.Arrays;

/* loaded from: classes.dex */
public final class zzdtm<P> {
    private final P zzmex;
    private final byte[] zzmey;
    private final zzdwj zzmez;
    private final zzdxb zzmfa;

    public zzdtm(P p, byte[] bArr, zzdwj zzdwjVar, zzdxb zzdxbVar) {
        this.zzmex = p;
        this.zzmey = Arrays.copyOf(bArr, bArr.length);
        this.zzmez = zzdwjVar;
        this.zzmfa = zzdxbVar;
    }

    public final P zzbog() {
        return this.zzmex;
    }

    public final byte[] zzboh() {
        if (this.zzmey == null) {
            return null;
        }
        return Arrays.copyOf(this.zzmey, this.zzmey.length);
    }
}
