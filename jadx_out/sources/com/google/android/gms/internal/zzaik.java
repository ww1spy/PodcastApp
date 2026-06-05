package com.google.android.gms.internal;

import android.app.Activity;
import android.content.Context;
import android.net.Uri;
import java.util.List;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzaik implements zzpg {
    private /* synthetic */ Context val$context;
    private /* synthetic */ List zzdft;
    private /* synthetic */ zzpf zzdfu;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzaik(zzaij zzaijVar, List list, zzpf zzpfVar, Context context) {
        this.zzdft = list;
        this.zzdfu = zzpfVar;
        this.val$context = context;
    }

    @Override // com.google.android.gms.internal.zzpg
    public final void zzju() {
        for (String str : this.zzdft) {
            String valueOf = String.valueOf(str);
            zzahw.zzcy(valueOf.length() != 0 ? "Pinging url: ".concat(valueOf) : new String("Pinging url: "));
            this.zzdfu.mayLaunchUrl(Uri.parse(str), null, null);
        }
        this.zzdfu.zzc((Activity) this.val$context);
    }

    @Override // com.google.android.gms.internal.zzpg
    public final void zzjv() {
    }
}
