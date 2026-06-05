package com.google.android.gms.tasks;

import android.support.annotation.NonNull;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public interface zzm<TResult> {
    void cancel();

    void onComplete(@NonNull Task<TResult> task);
}
