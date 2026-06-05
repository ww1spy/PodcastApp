package com.google.android.gms.internal;

import android.annotation.TargetApi;
import android.content.Context;
import android.graphics.SurfaceTexture;
import android.media.MediaPlayer;
import android.net.Uri;
import android.os.Build;
import android.view.Surface;
import android.view.TextureView;
import com.google.android.gms.common.internal.Hide;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

@Hide
@TargetApi(14)
@zzabh
/* loaded from: classes.dex */
public final class zzamp extends zzamz implements MediaPlayer.OnBufferingUpdateListener, MediaPlayer.OnCompletionListener, MediaPlayer.OnErrorListener, MediaPlayer.OnInfoListener, MediaPlayer.OnPreparedListener, MediaPlayer.OnVideoSizeChangedListener, TextureView.SurfaceTextureListener {
    private static final Map<Integer, String> zzdkj = new HashMap();
    private final zzano zzdkk;
    private final boolean zzdkl;
    private int zzdkm;
    private int zzdkn;
    private MediaPlayer zzdko;
    private Uri zzdkp;
    private int zzdkq;
    private int zzdkr;
    private int zzdks;
    private int zzdkt;
    private int zzdku;
    private zzanl zzdkv;
    private boolean zzdkw;
    private int zzdkx;
    private zzamy zzdky;

    static {
        if (Build.VERSION.SDK_INT >= 17) {
            zzdkj.put(-1004, "MEDIA_ERROR_IO");
            zzdkj.put(-1007, "MEDIA_ERROR_MALFORMED");
            zzdkj.put(-1010, "MEDIA_ERROR_UNSUPPORTED");
            zzdkj.put(-110, "MEDIA_ERROR_TIMED_OUT");
            zzdkj.put(3, "MEDIA_INFO_VIDEO_RENDERING_START");
        }
        zzdkj.put(100, "MEDIA_ERROR_SERVER_DIED");
        zzdkj.put(1, "MEDIA_ERROR_UNKNOWN");
        zzdkj.put(1, "MEDIA_INFO_UNKNOWN");
        zzdkj.put(700, "MEDIA_INFO_VIDEO_TRACK_LAGGING");
        zzdkj.put(701, "MEDIA_INFO_BUFFERING_START");
        zzdkj.put(702, "MEDIA_INFO_BUFFERING_END");
        zzdkj.put(800, "MEDIA_INFO_BAD_INTERLEAVING");
        zzdkj.put(801, "MEDIA_INFO_NOT_SEEKABLE");
        zzdkj.put(802, "MEDIA_INFO_METADATA_UPDATE");
        if (Build.VERSION.SDK_INT >= 19) {
            zzdkj.put(901, "MEDIA_INFO_UNSUPPORTED_SUBTITLE");
            zzdkj.put(902, "MEDIA_INFO_SUBTITLE_TIMED_OUT");
        }
    }

    public zzamp(Context context, boolean z, boolean z2, zzanm zzanmVar, zzano zzanoVar) {
        super(context);
        this.zzdkm = 0;
        this.zzdkn = 0;
        setSurfaceTextureListener(this);
        this.zzdkk = zzanoVar;
        this.zzdkw = z;
        this.zzdkl = z2;
        this.zzdkk.zza(this);
    }

    private final void zza(float f) {
        if (this.zzdko == null) {
            zzahw.zzcz("AdMediaPlayerView setMediaPlayerVolume() called before onPrepared().");
        } else {
            try {
                this.zzdko.setVolume(f, f);
            } catch (IllegalStateException unused) {
            }
        }
    }

    private final void zzaf(int i) {
        if (i == 3) {
            this.zzdkk.zzto();
            this.zzdlf.zzto();
        } else if (this.zzdkm == 3) {
            this.zzdkk.zztp();
            this.zzdlf.zztp();
        }
        this.zzdkm = i;
    }

    private final void zzaf(boolean z) {
        zzahw.v("AdMediaPlayerView release");
        if (this.zzdkv != null) {
            this.zzdkv.zztc();
            this.zzdkv = null;
        }
        if (this.zzdko != null) {
            this.zzdko.reset();
            this.zzdko.release();
            this.zzdko = null;
            zzaf(0);
            if (z) {
                this.zzdkn = 0;
                this.zzdkn = 0;
            }
        }
    }

    private final void zzsk() {
        zzahw.v("AdMediaPlayerView init MediaPlayer");
        SurfaceTexture surfaceTexture = getSurfaceTexture();
        if (this.zzdkp == null || surfaceTexture == null) {
            return;
        }
        zzaf(false);
        try {
            com.google.android.gms.ads.internal.zzbt.zzfb();
            this.zzdko = new MediaPlayer();
            this.zzdko.setOnBufferingUpdateListener(this);
            this.zzdko.setOnCompletionListener(this);
            this.zzdko.setOnErrorListener(this);
            this.zzdko.setOnInfoListener(this);
            this.zzdko.setOnPreparedListener(this);
            this.zzdko.setOnVideoSizeChangedListener(this);
            this.zzdks = 0;
            if (this.zzdkw) {
                this.zzdkv = new zzanl(getContext());
                this.zzdkv.zza(surfaceTexture, getWidth(), getHeight());
                this.zzdkv.start();
                SurfaceTexture zztd = this.zzdkv.zztd();
                if (zztd != null) {
                    surfaceTexture = zztd;
                } else {
                    this.zzdkv.zztc();
                    this.zzdkv = null;
                }
            }
            this.zzdko.setDataSource(getContext(), this.zzdkp);
            com.google.android.gms.ads.internal.zzbt.zzfc();
            this.zzdko.setSurface(new Surface(surfaceTexture));
            this.zzdko.setAudioStreamType(3);
            this.zzdko.setScreenOnWhilePlaying(true);
            this.zzdko.prepareAsync();
            zzaf(1);
        } catch (IOException | IllegalArgumentException | IllegalStateException e) {
            String valueOf = String.valueOf(this.zzdkp);
            StringBuilder sb = new StringBuilder(36 + String.valueOf(valueOf).length());
            sb.append("Failed to initialize MediaPlayer at ");
            sb.append(valueOf);
            zzahw.zzc(sb.toString(), e);
            onError(this.zzdko, 1, 0);
        }
    }

    private final void zzsl() {
        if (this.zzdkl && zzsm() && this.zzdko.getCurrentPosition() > 0 && this.zzdkn != 3) {
            zzahw.v("AdMediaPlayerView nudging MediaPlayer");
            zza(0.0f);
            this.zzdko.start();
            int currentPosition = this.zzdko.getCurrentPosition();
            long currentTimeMillis = com.google.android.gms.ads.internal.zzbt.zzes().currentTimeMillis();
            while (zzsm() && this.zzdko.getCurrentPosition() == currentPosition && com.google.android.gms.ads.internal.zzbt.zzes().currentTimeMillis() - currentTimeMillis <= 250) {
            }
            this.zzdko.pause();
            zzsn();
        }
    }

    private final boolean zzsm() {
        return (this.zzdko == null || this.zzdkm == -1 || this.zzdkm == 0 || this.zzdkm == 1) ? false : true;
    }

    @Override // com.google.android.gms.internal.zzamz
    public final int getCurrentPosition() {
        if (zzsm()) {
            return this.zzdko.getCurrentPosition();
        }
        return 0;
    }

    @Override // com.google.android.gms.internal.zzamz
    public final int getDuration() {
        if (zzsm()) {
            return this.zzdko.getDuration();
        }
        return -1;
    }

    @Override // com.google.android.gms.internal.zzamz
    public final int getVideoHeight() {
        if (this.zzdko != null) {
            return this.zzdko.getVideoHeight();
        }
        return 0;
    }

    @Override // com.google.android.gms.internal.zzamz
    public final int getVideoWidth() {
        if (this.zzdko != null) {
            return this.zzdko.getVideoWidth();
        }
        return 0;
    }

    @Override // android.media.MediaPlayer.OnBufferingUpdateListener
    public final void onBufferingUpdate(MediaPlayer mediaPlayer, int i) {
        this.zzdks = i;
    }

    @Override // android.media.MediaPlayer.OnCompletionListener
    public final void onCompletion(MediaPlayer mediaPlayer) {
        zzahw.v("AdMediaPlayerView completion");
        zzaf(5);
        this.zzdkn = 5;
        zzaij.zzdfn.post(new zzamr(this));
    }

    @Override // android.media.MediaPlayer.OnErrorListener
    public final boolean onError(MediaPlayer mediaPlayer, int i, int i2) {
        String str = zzdkj.get(Integer.valueOf(i));
        String str2 = zzdkj.get(Integer.valueOf(i2));
        StringBuilder sb = new StringBuilder(38 + String.valueOf(str).length() + String.valueOf(str2).length());
        sb.append("AdMediaPlayerView MediaPlayer error: ");
        sb.append(str);
        sb.append(":");
        sb.append(str2);
        zzahw.zzcz(sb.toString());
        zzaf(-1);
        this.zzdkn = -1;
        zzaij.zzdfn.post(new zzams(this, str, str2));
        return true;
    }

    @Override // android.media.MediaPlayer.OnInfoListener
    public final boolean onInfo(MediaPlayer mediaPlayer, int i, int i2) {
        String str = zzdkj.get(Integer.valueOf(i));
        String str2 = zzdkj.get(Integer.valueOf(i2));
        StringBuilder sb = new StringBuilder(37 + String.valueOf(str).length() + String.valueOf(str2).length());
        sb.append("AdMediaPlayerView MediaPlayer info: ");
        sb.append(str);
        sb.append(":");
        sb.append(str2);
        zzahw.v(sb.toString());
        return true;
    }

    /* JADX WARN: Code restructure failed: missing block: B:32:0x0045, code lost:
    
        if ((r5.zzdkq * r7) > (r5.zzdkr * r6)) goto L16;
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x0047, code lost:
    
        r1 = (r5.zzdkr * r6) / r5.zzdkq;
     */
    /* JADX WARN: Code restructure failed: missing block: B:44:0x006a, code lost:
    
        if (r1 > r6) goto L40;
     */
    /* JADX WARN: Code restructure failed: missing block: B:51:0x0082, code lost:
    
        if (r1 > r6) goto L16;
     */
    /* JADX WARN: Removed duplicated region for block: B:15:0x008e  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0099  */
    /* JADX WARN: Removed duplicated region for block: B:30:? A[RETURN, SYNTHETIC] */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected final void onMeasure(int r6, int r7) {
        /*
            r5 = this;
            int r0 = r5.zzdkq
            int r0 = getDefaultSize(r0, r6)
            int r1 = r5.zzdkr
            int r1 = getDefaultSize(r1, r7)
            int r2 = r5.zzdkq
            if (r2 <= 0) goto L85
            int r2 = r5.zzdkr
            if (r2 <= 0) goto L85
            com.google.android.gms.internal.zzanl r2 = r5.zzdkv
            if (r2 != 0) goto L85
            int r0 = android.view.View.MeasureSpec.getMode(r6)
            int r6 = android.view.View.MeasureSpec.getSize(r6)
            int r1 = android.view.View.MeasureSpec.getMode(r7)
            int r7 = android.view.View.MeasureSpec.getSize(r7)
            r2 = 1073741824(0x40000000, float:2.0)
            if (r0 != r2) goto L4f
            if (r1 != r2) goto L4f
            int r0 = r5.zzdkq
            int r0 = r0 * r7
            int r1 = r5.zzdkr
            int r1 = r1 * r6
            if (r0 >= r1) goto L3f
            int r6 = r5.zzdkq
            int r6 = r6 * r7
            int r0 = r5.zzdkr
            int r0 = r6 / r0
            r6 = r0
            goto L87
        L3f:
            int r0 = r5.zzdkq
            int r0 = r0 * r7
            int r1 = r5.zzdkr
            int r1 = r1 * r6
            if (r0 <= r1) goto L87
        L47:
            int r7 = r5.zzdkr
            int r7 = r7 * r6
            int r0 = r5.zzdkq
            int r1 = r7 / r0
            goto L86
        L4f:
            r3 = -2147483648(0xffffffff80000000, float:-0.0)
            if (r0 != r2) goto L60
            int r0 = r5.zzdkr
            int r0 = r0 * r6
            int r2 = r5.zzdkq
            int r0 = r0 / r2
            if (r1 != r3) goto L5e
            if (r0 <= r7) goto L5e
            goto L87
        L5e:
            r7 = r0
            goto L87
        L60:
            if (r1 != r2) goto L6f
            int r1 = r5.zzdkq
            int r1 = r1 * r7
            int r2 = r5.zzdkr
            int r1 = r1 / r2
            if (r0 != r3) goto L6d
            if (r1 <= r6) goto L6d
            goto L87
        L6d:
            r6 = r1
            goto L87
        L6f:
            int r2 = r5.zzdkq
            int r4 = r5.zzdkr
            if (r1 != r3) goto L7e
            if (r4 <= r7) goto L7e
            int r1 = r5.zzdkq
            int r1 = r1 * r7
            int r2 = r5.zzdkr
            int r1 = r1 / r2
            goto L80
        L7e:
            r1 = r2
            r7 = r4
        L80:
            if (r0 != r3) goto L6d
            if (r1 <= r6) goto L6d
            goto L47
        L85:
            r6 = r0
        L86:
            r7 = r1
        L87:
            r5.setMeasuredDimension(r6, r7)
            com.google.android.gms.internal.zzanl r0 = r5.zzdkv
            if (r0 == 0) goto L93
            com.google.android.gms.internal.zzanl r0 = r5.zzdkv
            r0.zzh(r6, r7)
        L93:
            int r0 = android.os.Build.VERSION.SDK_INT
            r1 = 16
            if (r0 != r1) goto Lb0
            int r0 = r5.zzdkt
            if (r0 <= 0) goto La1
            int r0 = r5.zzdkt
            if (r0 != r6) goto La9
        La1:
            int r0 = r5.zzdku
            if (r0 <= 0) goto Lac
            int r0 = r5.zzdku
            if (r0 == r7) goto Lac
        La9:
            r5.zzsl()
        Lac:
            r5.zzdkt = r6
            r5.zzdku = r7
        Lb0:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.zzamp.onMeasure(int, int):void");
    }

    @Override // android.media.MediaPlayer.OnPreparedListener
    public final void onPrepared(MediaPlayer mediaPlayer) {
        zzahw.v("AdMediaPlayerView prepared");
        zzaf(2);
        this.zzdkk.zzsp();
        zzaij.zzdfn.post(new zzamq(this));
        this.zzdkq = mediaPlayer.getVideoWidth();
        this.zzdkr = mediaPlayer.getVideoHeight();
        if (this.zzdkx != 0) {
            seekTo(this.zzdkx);
        }
        zzsl();
        int i = this.zzdkq;
        int i2 = this.zzdkr;
        StringBuilder sb = new StringBuilder(62);
        sb.append("AdMediaPlayerView stream dimensions: ");
        sb.append(i);
        sb.append(" x ");
        sb.append(i2);
        zzahw.zzcy(sb.toString());
        if (this.zzdkn == 3) {
            play();
        }
        zzsn();
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public final void onSurfaceTextureAvailable(SurfaceTexture surfaceTexture, int i, int i2) {
        zzahw.v("AdMediaPlayerView surface created");
        zzsk();
        zzaij.zzdfn.post(new zzamt(this));
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public final boolean onSurfaceTextureDestroyed(SurfaceTexture surfaceTexture) {
        zzahw.v("AdMediaPlayerView surface destroyed");
        if (this.zzdko != null && this.zzdkx == 0) {
            this.zzdkx = this.zzdko.getCurrentPosition();
        }
        if (this.zzdkv != null) {
            this.zzdkv.zztc();
        }
        zzaij.zzdfn.post(new zzamv(this));
        zzaf(true);
        return true;
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public final void onSurfaceTextureSizeChanged(SurfaceTexture surfaceTexture, int i, int i2) {
        zzahw.v("AdMediaPlayerView surface changed");
        boolean z = false;
        boolean z2 = this.zzdkn == 3;
        if (this.zzdkq == i && this.zzdkr == i2) {
            z = true;
        }
        if (this.zzdko != null && z2 && z) {
            if (this.zzdkx != 0) {
                seekTo(this.zzdkx);
            }
            play();
        }
        if (this.zzdkv != null) {
            this.zzdkv.zzh(i, i2);
        }
        zzaij.zzdfn.post(new zzamu(this, i, i2));
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public final void onSurfaceTextureUpdated(SurfaceTexture surfaceTexture) {
        this.zzdkk.zzb(this);
        this.zzdle.zza(surfaceTexture, this.zzdky);
    }

    @Override // android.media.MediaPlayer.OnVideoSizeChangedListener
    public final void onVideoSizeChanged(MediaPlayer mediaPlayer, int i, int i2) {
        StringBuilder sb = new StringBuilder(57);
        sb.append("AdMediaPlayerView size changed: ");
        sb.append(i);
        sb.append(" x ");
        sb.append(i2);
        zzahw.v(sb.toString());
        this.zzdkq = mediaPlayer.getVideoWidth();
        this.zzdkr = mediaPlayer.getVideoHeight();
        if (this.zzdkq == 0 || this.zzdkr == 0) {
            return;
        }
        requestLayout();
    }

    @Override // com.google.android.gms.internal.zzamz
    public final void pause() {
        zzahw.v("AdMediaPlayerView pause");
        if (zzsm() && this.zzdko.isPlaying()) {
            this.zzdko.pause();
            zzaf(4);
            zzaij.zzdfn.post(new zzamx(this));
        }
        this.zzdkn = 4;
    }

    @Override // com.google.android.gms.internal.zzamz
    public final void play() {
        zzahw.v("AdMediaPlayerView play");
        if (zzsm()) {
            this.zzdko.start();
            zzaf(3);
            this.zzdle.zzsq();
            zzaij.zzdfn.post(new zzamw(this));
        }
        this.zzdkn = 3;
    }

    @Override // com.google.android.gms.internal.zzamz
    public final void seekTo(int i) {
        StringBuilder sb = new StringBuilder(34);
        sb.append("AdMediaPlayerView seek ");
        sb.append(i);
        zzahw.v(sb.toString());
        if (!zzsm()) {
            this.zzdkx = i;
        } else {
            this.zzdko.seekTo(i);
            this.zzdkx = 0;
        }
    }

    @Override // com.google.android.gms.internal.zzamz
    public final void setVideoPath(String str) {
        Uri parse = Uri.parse(str);
        zzin zzd = zzin.zzd(parse);
        if (zzd != null) {
            parse = Uri.parse(zzd.url);
        }
        this.zzdkp = parse;
        this.zzdkx = 0;
        zzsk();
        requestLayout();
        invalidate();
    }

    @Override // com.google.android.gms.internal.zzamz
    public final void stop() {
        zzahw.v("AdMediaPlayerView stop");
        if (this.zzdko != null) {
            this.zzdko.stop();
            this.zzdko.release();
            this.zzdko = null;
            zzaf(0);
            this.zzdkn = 0;
        }
        this.zzdkk.onStop();
    }

    @Override // android.view.View
    public final String toString() {
        String name = getClass().getName();
        String hexString = Integer.toHexString(hashCode());
        StringBuilder sb = new StringBuilder(1 + String.valueOf(name).length() + String.valueOf(hexString).length());
        sb.append(name);
        sb.append("@");
        sb.append(hexString);
        return sb.toString();
    }

    @Override // com.google.android.gms.internal.zzamz
    public final void zza(float f, float f2) {
        if (this.zzdkv != null) {
            this.zzdkv.zzb(f, f2);
        }
    }

    @Override // com.google.android.gms.internal.zzamz
    public final void zza(zzamy zzamyVar) {
        this.zzdky = zzamyVar;
    }

    @Override // com.google.android.gms.internal.zzamz
    public final String zzsj() {
        String valueOf = String.valueOf(this.zzdkw ? " spherical" : "");
        return valueOf.length() != 0 ? "MediaPlayer".concat(valueOf) : new String("MediaPlayer");
    }

    @Override // com.google.android.gms.internal.zzamz, com.google.android.gms.internal.zzanr
    public final void zzsn() {
        zza(this.zzdlf.getVolume());
    }
}
