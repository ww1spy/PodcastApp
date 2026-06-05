package com.google.android.gms.internal;

import android.annotation.TargetApi;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.drawable.BitmapDrawable;
import android.net.Uri;
import android.os.Looper;
import android.os.SystemClock;
import java.io.InputStream;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzaac implements zzajx<zzpj> {
    private /* synthetic */ String zzclo;
    private /* synthetic */ zzzy zzcpf;
    private /* synthetic */ boolean zzcpp;
    private /* synthetic */ double zzcpq;
    private /* synthetic */ boolean zzcpr;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzaac(zzzy zzzyVar, boolean z, double d, boolean z2, String str) {
        this.zzcpf = zzzyVar;
        this.zzcpp = z;
        this.zzcpq = d;
        this.zzcpr = z2;
        this.zzclo = str;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Override // com.google.android.gms.internal.zzajx
    @TargetApi(19)
    /* renamed from: zzd, reason: merged with bridge method [inline-methods] */
    public final zzpj zze(InputStream inputStream) {
        Bitmap bitmap;
        BitmapFactory.Options options = new BitmapFactory.Options();
        options.inDensity = (int) (160.0d * this.zzcpq);
        if (!this.zzcpr) {
            options.inPreferredConfig = Bitmap.Config.RGB_565;
        }
        long uptimeMillis = SystemClock.uptimeMillis();
        try {
            bitmap = BitmapFactory.decodeStream(inputStream, null, options);
        } catch (Exception e) {
            zzahw.zzb("Error grabbing image.", e);
            bitmap = null;
        }
        if (bitmap == null) {
            this.zzcpf.zzd(2, this.zzcpp);
            return null;
        }
        long uptimeMillis2 = SystemClock.uptimeMillis();
        if (com.google.android.gms.common.util.zzs.zzanv() && zzahw.zzqk()) {
            int width = bitmap.getWidth();
            int height = bitmap.getHeight();
            int allocationByteCount = bitmap.getAllocationByteCount();
            long j = uptimeMillis2 - uptimeMillis;
            boolean z = Looper.getMainLooper().getThread() == Thread.currentThread();
            StringBuilder sb = new StringBuilder(108);
            sb.append("Decoded image w: ");
            sb.append(width);
            sb.append(" h:");
            sb.append(height);
            sb.append(" bytes: ");
            sb.append(allocationByteCount);
            sb.append(" time: ");
            sb.append(j);
            sb.append(" on ui thread: ");
            sb.append(z);
            zzahw.v(sb.toString());
        }
        return new zzpj(new BitmapDrawable(Resources.getSystem(), bitmap), Uri.parse(this.zzclo), this.zzcpq);
    }

    @Override // com.google.android.gms.internal.zzajx
    public final /* synthetic */ zzpj zznx() {
        this.zzcpf.zzd(2, this.zzcpp);
        return null;
    }
}
