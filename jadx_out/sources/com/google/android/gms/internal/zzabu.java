package com.google.android.gms.internal;

@zzabh
/* loaded from: classes.dex */
final class zzabu extends Exception {
    private final int mErrorCode;

    public zzabu(String str, int i) {
        super(str);
        this.mErrorCode = i;
    }

    public final int getErrorCode() {
        return this.mErrorCode;
    }
}
