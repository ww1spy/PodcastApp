package com.google.android.gms.internal;

import android.annotation.TargetApi;
import android.content.Context;
import android.graphics.Bitmap;
import android.support.annotation.Nullable;
import android.support.v4.internal.view.SupportMenu;
import android.support.v4.view.InputDeviceCompat;
import android.support.v7.media.MediaRouteProviderProtocol;
import android.text.TextUtils;
import android.view.MotionEvent;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import com.google.android.gms.common.internal.Hide;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import mobi.beyondpod.services.player.MediaPlaybackService;
import mobi.beyondpod.ui.views.notifications.NotificationPreferences;

@Hide
@zzabh
/* loaded from: classes.dex */
public final class zzanb extends FrameLayout implements zzamy {
    private final zzann zzdlg;
    private final FrameLayout zzdlh;
    private final zzov zzdli;
    private final zzanp zzdlj;
    private final long zzdlk;

    @Nullable
    private zzamz zzdll;
    private boolean zzdlm;
    private boolean zzdln;
    private boolean zzdlo;
    private boolean zzdlp;
    private long zzdlq;
    private long zzdlr;
    private String zzdls;
    private Bitmap zzdlt;
    private ImageView zzdlu;
    private boolean zzdlv;

    public zzanb(Context context, zzann zzannVar, int i, boolean z, zzov zzovVar, zzanm zzanmVar) {
        super(context);
        this.zzdlg = zzannVar;
        this.zzdli = zzovVar;
        this.zzdlh = new FrameLayout(context);
        addView(this.zzdlh, new FrameLayout.LayoutParams(-1, -1));
        com.google.android.gms.common.internal.zzc.zzv(zzannVar.zzbo());
        this.zzdll = zzannVar.zzbo().zzaol.zza(context, zzannVar, i, z, zzovVar, zzanmVar);
        if (this.zzdll != null) {
            this.zzdlh.addView(this.zzdll, new FrameLayout.LayoutParams(-1, -1, 17));
            if (((Boolean) zzlc.zzio().zzd(zzoi.zzbmd)).booleanValue()) {
                zzsx();
            }
        }
        this.zzdlu = new ImageView(context);
        this.zzdlk = ((Long) zzlc.zzio().zzd(zzoi.zzbmh)).longValue();
        this.zzdlp = ((Boolean) zzlc.zzio().zzd(zzoi.zzbmf)).booleanValue();
        if (this.zzdli != null) {
            this.zzdli.zzf("spinner_used", this.zzdlp ? NotificationPreferences.YES : NotificationPreferences.NO);
        }
        this.zzdlj = new zzanp(this);
        if (this.zzdll != null) {
            this.zzdll.zza(this);
        }
        if (this.zzdll == null) {
            zzg("AdVideoUnderlay Error", "Allocating player failed.");
        }
    }

    public static void zza(zzann zzannVar) {
        HashMap hashMap = new HashMap();
        hashMap.put("event", "no_video_view");
        zzannVar.zza("onVideoEvent", hashMap);
    }

    public static void zza(zzann zzannVar, String str) {
        HashMap hashMap = new HashMap();
        hashMap.put("event", "decoderProps");
        hashMap.put(MediaRouteProviderProtocol.SERVICE_DATA_ERROR, str);
        zzannVar.zza("onVideoEvent", hashMap);
    }

    public static void zza(zzann zzannVar, Map<String, List<Map<String, Object>>> map) {
        HashMap hashMap = new HashMap();
        hashMap.put("event", "decoderProps");
        hashMap.put("mimeTypes", map);
        zzannVar.zza("onVideoEvent", hashMap);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void zza(String str, String... strArr) {
        HashMap hashMap = new HashMap();
        hashMap.put("event", str);
        String str2 = null;
        for (String str3 : strArr) {
            if (str2 == null) {
                str2 = str3;
            } else {
                hashMap.put(str2, str3);
                str2 = null;
            }
        }
        this.zzdlg.zza("onVideoEvent", hashMap);
    }

    private final boolean zzsz() {
        return this.zzdlu.getParent() != null;
    }

    private final void zzta() {
        if (this.zzdlg.zztj() == null || !this.zzdln || this.zzdlo) {
            return;
        }
        this.zzdlg.zztj().getWindow().clearFlags(128);
        this.zzdln = false;
    }

    public final void destroy() {
        this.zzdlj.pause();
        if (this.zzdll != null) {
            this.zzdll.stop();
        }
        zzta();
    }

    @Override // com.google.android.gms.internal.zzamy
    public final void onPaused() {
        zza(MediaPlaybackService.CMDPAUSE, new String[0]);
        zzta();
        this.zzdlm = false;
    }

    public final void pause() {
        if (this.zzdll == null) {
            return;
        }
        this.zzdll.pause();
    }

    public final void play() {
        if (this.zzdll == null) {
            return;
        }
        this.zzdll.play();
    }

    public final void seekTo(int i) {
        if (this.zzdll == null) {
            return;
        }
        this.zzdll.seekTo(i);
    }

    public final void zza(float f, float f2) {
        if (this.zzdll != null) {
            this.zzdll.zza(f, f2);
        }
    }

    public final void zzb(float f) {
        if (this.zzdll == null) {
            return;
        }
        zzamz zzamzVar = this.zzdll;
        zzamzVar.zzdlf.zzb(f);
        zzamzVar.zzsn();
    }

    public final void zzd(int i, int i2, int i3, int i4) {
        if (i3 == 0 || i4 == 0) {
            return;
        }
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(i3, i4);
        layoutParams.setMargins(i, i2, 0, 0);
        this.zzdlh.setLayoutParams(layoutParams);
        requestLayout();
    }

    public final void zzda(String str) {
        this.zzdls = str;
    }

    @Override // com.google.android.gms.internal.zzamy
    public final void zzf(int i, int i2) {
        if (this.zzdlp) {
            int max = Math.max(i / ((Integer) zzlc.zzio().zzd(zzoi.zzbmg)).intValue(), 1);
            int max2 = Math.max(i2 / ((Integer) zzlc.zzio().zzd(zzoi.zzbmg)).intValue(), 1);
            if (this.zzdlt != null && this.zzdlt.getWidth() == max && this.zzdlt.getHeight() == max2) {
                return;
            }
            this.zzdlt = Bitmap.createBitmap(max, max2, Bitmap.Config.ARGB_8888);
            this.zzdlv = false;
        }
    }

    @TargetApi(14)
    public final void zzf(MotionEvent motionEvent) {
        if (this.zzdll == null) {
            return;
        }
        this.zzdll.dispatchTouchEvent(motionEvent);
    }

    @Override // com.google.android.gms.internal.zzamy
    public final void zzg(String str, @Nullable String str2) {
        zza(MediaRouteProviderProtocol.SERVICE_DATA_ERROR, "what", str, "extra", str2);
    }

    @Override // com.google.android.gms.internal.zzamy
    public final void zzso() {
        this.zzdlj.resume();
        zzaij.zzdfn.post(new zzanc(this));
    }

    @Override // com.google.android.gms.internal.zzamy
    public final void zzsp() {
        if (this.zzdll != null && this.zzdlr == 0) {
            zza("canplaythrough", "duration", String.valueOf(this.zzdll.getDuration() / 1000.0f), "videoWidth", String.valueOf(this.zzdll.getVideoWidth()), "videoHeight", String.valueOf(this.zzdll.getVideoHeight()));
        }
    }

    @Override // com.google.android.gms.internal.zzamy
    public final void zzsq() {
        if (this.zzdlg.zztj() != null && !this.zzdln) {
            this.zzdlo = (this.zzdlg.zztj().getWindow().getAttributes().flags & 128) != 0;
            if (!this.zzdlo) {
                this.zzdlg.zztj().getWindow().addFlags(128);
                this.zzdln = true;
            }
        }
        this.zzdlm = true;
    }

    @Override // com.google.android.gms.internal.zzamy
    public final void zzsr() {
        zza("ended", new String[0]);
        zzta();
    }

    @Override // com.google.android.gms.internal.zzamy
    public final void zzss() {
        if (this.zzdlv && this.zzdlt != null && !zzsz()) {
            this.zzdlu.setImageBitmap(this.zzdlt);
            this.zzdlu.invalidate();
            this.zzdlh.addView(this.zzdlu, new FrameLayout.LayoutParams(-1, -1));
            this.zzdlh.bringChildToFront(this.zzdlu);
        }
        this.zzdlj.pause();
        this.zzdlr = this.zzdlq;
        zzaij.zzdfn.post(new zzand(this));
    }

    @Override // com.google.android.gms.internal.zzamy
    public final void zzst() {
        if (this.zzdlm && zzsz()) {
            this.zzdlh.removeView(this.zzdlu);
        }
        if (this.zzdlt != null) {
            long elapsedRealtime = com.google.android.gms.ads.internal.zzbt.zzes().elapsedRealtime();
            if (this.zzdll.getBitmap(this.zzdlt) != null) {
                this.zzdlv = true;
            }
            long elapsedRealtime2 = com.google.android.gms.ads.internal.zzbt.zzes().elapsedRealtime() - elapsedRealtime;
            if (zzahw.zzqk()) {
                StringBuilder sb = new StringBuilder(46);
                sb.append("Spinner frame grab took ");
                sb.append(elapsedRealtime2);
                sb.append("ms");
                zzahw.v(sb.toString());
            }
            if (elapsedRealtime2 > this.zzdlk) {
                zzahw.zzcz("Spinner frame grab crossed jank threshold! Suspending spinner.");
                this.zzdlp = false;
                this.zzdlt = null;
                if (this.zzdli != null) {
                    this.zzdli.zzf("spinner_jank", Long.toString(elapsedRealtime2));
                }
            }
        }
    }

    public final void zzsu() {
        if (this.zzdll == null) {
            return;
        }
        if (TextUtils.isEmpty(this.zzdls)) {
            zza("no_src", new String[0]);
        } else {
            this.zzdll.setVideoPath(this.zzdls);
        }
    }

    public final void zzsv() {
        if (this.zzdll == null) {
            return;
        }
        zzamz zzamzVar = this.zzdll;
        zzamzVar.zzdlf.setMuted(true);
        zzamzVar.zzsn();
    }

    public final void zzsw() {
        if (this.zzdll == null) {
            return;
        }
        zzamz zzamzVar = this.zzdll;
        zzamzVar.zzdlf.setMuted(false);
        zzamzVar.zzsn();
    }

    @TargetApi(14)
    public final void zzsx() {
        if (this.zzdll == null) {
            return;
        }
        TextView textView = new TextView(this.zzdll.getContext());
        String valueOf = String.valueOf(this.zzdll.zzsj());
        textView.setText(valueOf.length() != 0 ? "AdMob - ".concat(valueOf) : new String("AdMob - "));
        textView.setTextColor(SupportMenu.CATEGORY_MASK);
        textView.setBackgroundColor(InputDeviceCompat.SOURCE_ANY);
        this.zzdlh.addView(textView, new FrameLayout.LayoutParams(-2, -2, 17));
        this.zzdlh.bringChildToFront(textView);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void zzsy() {
        if (this.zzdll == null) {
            return;
        }
        long currentPosition = this.zzdll.getCurrentPosition();
        if (this.zzdlq == currentPosition || currentPosition <= 0) {
            return;
        }
        zza("timeupdate", "time", String.valueOf(((float) currentPosition) / 1000.0f));
        this.zzdlq = currentPosition;
    }
}
