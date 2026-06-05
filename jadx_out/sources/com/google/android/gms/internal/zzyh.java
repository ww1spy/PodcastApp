package com.google.android.gms.internal;

import android.app.DownloadManager;
import android.content.Context;
import android.content.DialogInterface;
import android.net.Uri;
import android.os.Environment;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzyh implements DialogInterface.OnClickListener {
    private /* synthetic */ String zzclo;
    private /* synthetic */ String zzclp;
    private /* synthetic */ zzyg zzclq;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzyh(zzyg zzygVar, String str, String str2) {
        this.zzclq = zzygVar;
        this.zzclo = str;
        this.zzclp = str2;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i) {
        Context context;
        context = this.zzclq.mContext;
        DownloadManager downloadManager = (DownloadManager) context.getSystemService("download");
        try {
            String str = this.zzclo;
            String str2 = this.zzclp;
            DownloadManager.Request request = new DownloadManager.Request(Uri.parse(str));
            request.setDestinationInExternalPublicDir(Environment.DIRECTORY_PICTURES, str2);
            com.google.android.gms.ads.internal.zzbt.zzen().zza(request);
            downloadManager.enqueue(request);
        } catch (IllegalStateException unused) {
            this.zzclq.zzbm("Could not store picture.");
        }
    }
}
