package com.google.android.gms.internal;

import android.app.KeyguardManager;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.IntentFilter;
import android.graphics.Rect;
import android.os.Build;
import android.os.Handler;
import android.os.PowerManager;
import android.provider.Settings;
import android.support.annotation.Nullable;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.View;
import android.view.ViewTreeObserver;
import android.view.WindowManager;
import com.google.android.gms.common.internal.Hide;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.UUID;
import mobi.beyondpod.ui.views.notifications.NotificationPreferences;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

@Hide
@zzabh
/* loaded from: classes.dex */
public final class zzfv implements ViewTreeObserver.OnGlobalLayoutListener, ViewTreeObserver.OnScrollChangedListener {
    private final Context mApplicationContext;
    private final WeakReference<zzahd> zzavv;
    private final zzhf zzavx;
    protected final zzft zzavy;
    private final WindowManager zzavz;
    private final PowerManager zzawa;
    private final KeyguardManager zzawb;
    private final DisplayMetrics zzawc;

    @Nullable
    private zzgc zzawd;
    private boolean zzawe;
    private boolean zzawh;

    @Nullable
    private BroadcastReceiver zzawj;
    private float zzawo;
    private Object mLock = new Object();
    private boolean zzarz = false;
    private boolean zzawf = false;
    private final HashSet<zzfs> zzawk = new HashSet<>();
    private final HashSet<zzgq> zzawl = new HashSet<>();
    private final Rect zzawm = new Rect();
    private WeakReference<ViewTreeObserver> zzavw = new WeakReference<>(null);
    private boolean zzawg = true;
    private boolean zzawi = false;
    private zzake zzavf = new zzake(200);
    private final zzfy zzawn = new zzfy(this, new Handler());

    public zzfv(Context context, zzko zzkoVar, zzahd zzahdVar, zzala zzalaVar, zzhf zzhfVar) {
        this.zzavv = new WeakReference<>(zzahdVar);
        this.zzavx = zzhfVar;
        this.zzavy = new zzft(UUID.randomUUID().toString(), zzalaVar, zzkoVar.zzbia, zzahdVar.zzdch, zzahdVar.zzfz(), zzkoVar.zzbid);
        this.zzavz = (WindowManager) context.getSystemService("window");
        this.zzawa = (PowerManager) context.getApplicationContext().getSystemService("power");
        this.zzawb = (KeyguardManager) context.getSystemService("keyguard");
        this.mApplicationContext = context;
        this.mApplicationContext.getContentResolver().registerContentObserver(Settings.System.CONTENT_URI, true, this.zzawn);
        this.zzawc = context.getResources().getDisplayMetrics();
        Display defaultDisplay = this.zzavz.getDefaultDisplay();
        this.zzawm.right = defaultDisplay.getWidth();
        this.zzawm.bottom = defaultDisplay.getHeight();
        zzgb();
    }

    private final boolean isScreenOn() {
        return Build.VERSION.SDK_INT >= 20 ? this.zzawa.isInteractive() : this.zzawa.isScreenOn();
    }

    private static int zza(int i, DisplayMetrics displayMetrics) {
        return (int) (i / displayMetrics.density);
    }

    private final JSONObject zza(@Nullable View view, @Nullable Boolean bool) throws JSONException {
        if (view == null) {
            return zzgg().put("isAttachedToWindow", false).put("isScreenOn", isScreenOn()).put("isVisible", false);
        }
        boolean isAttachedToWindow = com.google.android.gms.ads.internal.zzbt.zzen().isAttachedToWindow(view);
        int[] iArr = new int[2];
        int[] iArr2 = new int[2];
        try {
            view.getLocationOnScreen(iArr);
            view.getLocationInWindow(iArr2);
        } catch (Exception e) {
            zzahw.zzb("Failure getting view location.", e);
        }
        Rect rect = new Rect();
        rect.left = iArr[0];
        rect.top = iArr[1];
        rect.right = rect.left + view.getWidth();
        rect.bottom = rect.top + view.getHeight();
        Rect rect2 = new Rect();
        boolean globalVisibleRect = view.getGlobalVisibleRect(rect2, null);
        Rect rect3 = new Rect();
        boolean localVisibleRect = view.getLocalVisibleRect(rect3);
        Rect rect4 = new Rect();
        view.getHitRect(rect4);
        JSONObject zzgg = zzgg();
        zzgg.put("windowVisibility", view.getWindowVisibility()).put("isAttachedToWindow", isAttachedToWindow).put("viewBox", new JSONObject().put("top", zza(this.zzawm.top, this.zzawc)).put("bottom", zza(this.zzawm.bottom, this.zzawc)).put("left", zza(this.zzawm.left, this.zzawc)).put("right", zza(this.zzawm.right, this.zzawc))).put("adBox", new JSONObject().put("top", zza(rect.top, this.zzawc)).put("bottom", zza(rect.bottom, this.zzawc)).put("left", zza(rect.left, this.zzawc)).put("right", zza(rect.right, this.zzawc))).put("globalVisibleBox", new JSONObject().put("top", zza(rect2.top, this.zzawc)).put("bottom", zza(rect2.bottom, this.zzawc)).put("left", zza(rect2.left, this.zzawc)).put("right", zza(rect2.right, this.zzawc))).put("globalVisibleBoxVisible", globalVisibleRect).put("localVisibleBox", new JSONObject().put("top", zza(rect3.top, this.zzawc)).put("bottom", zza(rect3.bottom, this.zzawc)).put("left", zza(rect3.left, this.zzawc)).put("right", zza(rect3.right, this.zzawc))).put("localVisibleBoxVisible", localVisibleRect).put("hitBox", new JSONObject().put("top", zza(rect4.top, this.zzawc)).put("bottom", zza(rect4.bottom, this.zzawc)).put("left", zza(rect4.left, this.zzawc)).put("right", zza(rect4.right, this.zzawc))).put("screenDensity", this.zzawc.density);
        if (bool == null) {
            bool = Boolean.valueOf(com.google.android.gms.ads.internal.zzbt.zzel().zza(view, this.zzawa, this.zzawb));
        }
        zzgg.put("isVisible", bool.booleanValue());
        return zzgg;
    }

    private static JSONObject zza(JSONObject jSONObject) throws JSONException {
        JSONArray jSONArray = new JSONArray();
        JSONObject jSONObject2 = new JSONObject();
        jSONArray.put(jSONObject);
        jSONObject2.put("units", jSONArray);
        return jSONObject2;
    }

    private final void zza(JSONObject jSONObject, boolean z) {
        try {
            JSONObject zza = zza(jSONObject);
            ArrayList arrayList = new ArrayList(this.zzawl);
            int size = arrayList.size();
            int i = 0;
            while (i < size) {
                Object obj = arrayList.get(i);
                i++;
                ((zzgq) obj).zzb(zza, z);
            }
        } catch (Throwable th) {
            zzahw.zzb("Skipping active view message.", th);
        }
    }

    private final void zzgd() {
        if (this.zzawd != null) {
            this.zzawd.zza(this);
        }
    }

    private final void zzgf() {
        ViewTreeObserver viewTreeObserver = this.zzavw.get();
        if (viewTreeObserver == null || !viewTreeObserver.isAlive()) {
            return;
        }
        viewTreeObserver.removeOnScrollChangedListener(this);
        viewTreeObserver.removeGlobalOnLayoutListener(this);
    }

    private final JSONObject zzgg() throws JSONException {
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("afmaVersion", this.zzavy.zzfw()).put("activeViewJSON", this.zzavy.zzfx()).put("timestamp", com.google.android.gms.ads.internal.zzbt.zzes().elapsedRealtime()).put("adFormat", this.zzavy.zzfv()).put("hashCode", this.zzavy.zzfy()).put("isMraid", this.zzavy.zzfz()).put("isStopped", this.zzawf).put("isPaused", this.zzarz).put("isNative", this.zzavy.zzga()).put("isScreenOn", isScreenOn()).put("appMuted", com.google.android.gms.ads.internal.zzbt.zzfj().zzdq()).put("appVolume", com.google.android.gms.ads.internal.zzbt.zzfj().zzdp()).put("deviceVolume", this.zzawo);
        return jSONObject;
    }

    @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
    public final void onGlobalLayout() {
        zzl(2);
    }

    @Override // android.view.ViewTreeObserver.OnScrollChangedListener
    public final void onScrollChanged() {
        zzl(1);
    }

    public final void pause() {
        synchronized (this.mLock) {
            this.zzarz = true;
            zzl(3);
        }
    }

    public final void resume() {
        synchronized (this.mLock) {
            this.zzarz = false;
            zzl(3);
        }
    }

    public final void stop() {
        synchronized (this.mLock) {
            this.zzawf = true;
            zzl(3);
        }
    }

    public final void zza(zzgc zzgcVar) {
        synchronized (this.mLock) {
            this.zzawd = zzgcVar;
        }
    }

    public final void zza(zzgq zzgqVar) {
        if (this.zzawl.isEmpty()) {
            synchronized (this.mLock) {
                if (this.zzawj == null) {
                    IntentFilter intentFilter = new IntentFilter();
                    intentFilter.addAction("android.intent.action.SCREEN_ON");
                    intentFilter.addAction("android.intent.action.SCREEN_OFF");
                    this.zzawj = new zzfw(this);
                    com.google.android.gms.ads.internal.zzbt.zzfk().zza(this.mApplicationContext, this.zzawj, intentFilter);
                }
            }
            zzl(3);
        }
        this.zzawl.add(zzgqVar);
        try {
            zzgqVar.zzb(zza(zza(this.zzavx.zzgh(), (Boolean) null)), false);
        } catch (JSONException e) {
            zzahw.zzb("Skipping measurement update for new client.", e);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void zza(zzgq zzgqVar, Map<String, String> map) {
        String valueOf = String.valueOf(this.zzavy.zzfy());
        zzahw.zzby(valueOf.length() != 0 ? "Received request to untrack: ".concat(valueOf) : new String("Received request to untrack: "));
        zzb(zzgqVar);
    }

    public final void zzb(zzgq zzgqVar) {
        this.zzawl.remove(zzgqVar);
        zzgqVar.zzgl();
        if (this.zzawl.isEmpty()) {
            synchronized (this.mLock) {
                zzgf();
                synchronized (this.mLock) {
                    if (this.zzawj != null) {
                        try {
                            com.google.android.gms.ads.internal.zzbt.zzfk().zza(this.mApplicationContext, this.zzawj);
                        } catch (IllegalStateException e) {
                            zzahw.zzb("Failed trying to unregister the receiver", e);
                        } catch (Exception e2) {
                            com.google.android.gms.ads.internal.zzbt.zzep().zza(e2, "ActiveViewUnit.stopScreenStatusMonitoring");
                        }
                        this.zzawj = null;
                    }
                }
                this.mApplicationContext.getContentResolver().unregisterContentObserver(this.zzawn);
                int i = 0;
                this.zzawg = false;
                zzgd();
                ArrayList arrayList = new ArrayList(this.zzawl);
                int size = arrayList.size();
                while (i < size) {
                    Object obj = arrayList.get(i);
                    i++;
                    zzb((zzgq) obj);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean zze(@Nullable Map<String, String> map) {
        if (map == null) {
            return false;
        }
        String str = map.get("hashCode");
        return !TextUtils.isEmpty(str) && str.equals(this.zzavy.zzfy());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void zzf(Map<String, String> map) {
        zzl(3);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void zzg(Map<String, String> map) {
        if (map.containsKey("isVisible")) {
            boolean z = NotificationPreferences.YES.equals(map.get("isVisible")) || "true".equals(map.get("isVisible"));
            Iterator<zzfs> it = this.zzawk.iterator();
            while (it.hasNext()) {
                it.next().zza(this, z);
            }
        }
    }

    public final void zzgb() {
        this.zzawo = zzaja.zzav(this.mApplicationContext);
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x0036 A[Catch: all -> 0x0046, TryCatch #0 {, blocks: (B:4:0x0003, B:6:0x0007, B:8:0x000a, B:9:0x0024, B:11:0x0036, B:12:0x0041, B:13:0x003b, B:17:0x001c, B:20:0x0044), top: B:3:0x0003 }] */
    /* JADX WARN: Removed duplicated region for block: B:13:0x003b A[Catch: all -> 0x0046, TryCatch #0 {, blocks: (B:4:0x0003, B:6:0x0007, B:8:0x000a, B:9:0x0024, B:11:0x0036, B:12:0x0041, B:13:0x003b, B:17:0x001c, B:20:0x0044), top: B:3:0x0003 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void zzgc() {
        /*
            r5 = this;
            java.lang.Object r0 = r5.mLock
            monitor-enter(r0)
            boolean r1 = r5.zzawg     // Catch: java.lang.Throwable -> L46
            if (r1 == 0) goto L44
            r1 = 1
            r5.zzawh = r1     // Catch: java.lang.Throwable -> L46
            org.json.JSONObject r2 = r5.zzgg()     // Catch: java.lang.RuntimeException -> L19 org.json.JSONException -> L20 java.lang.Throwable -> L46
            java.lang.String r3 = "doneReasonCode"
            java.lang.String r4 = "u"
            r2.put(r3, r4)     // Catch: java.lang.RuntimeException -> L19 org.json.JSONException -> L20 java.lang.Throwable -> L46
            r5.zza(r2, r1)     // Catch: java.lang.RuntimeException -> L19 org.json.JSONException -> L20 java.lang.Throwable -> L46
            goto L24
        L19:
            r1 = move-exception
            java.lang.String r2 = "Failure while processing active view data."
        L1c:
            com.google.android.gms.internal.zzahw.zzb(r2, r1)     // Catch: java.lang.Throwable -> L46
            goto L24
        L20:
            r1 = move-exception
            java.lang.String r2 = "JSON failure while processing active view data."
            goto L1c
        L24:
            java.lang.String r1 = "Untracking ad unit: "
            com.google.android.gms.internal.zzft r2 = r5.zzavy     // Catch: java.lang.Throwable -> L46
            java.lang.String r2 = r2.zzfy()     // Catch: java.lang.Throwable -> L46
            java.lang.String r2 = java.lang.String.valueOf(r2)     // Catch: java.lang.Throwable -> L46
            int r3 = r2.length()     // Catch: java.lang.Throwable -> L46
            if (r3 == 0) goto L3b
            java.lang.String r1 = r1.concat(r2)     // Catch: java.lang.Throwable -> L46
            goto L41
        L3b:
            java.lang.String r2 = new java.lang.String     // Catch: java.lang.Throwable -> L46
            r2.<init>(r1)     // Catch: java.lang.Throwable -> L46
            r1 = r2
        L41:
            com.google.android.gms.internal.zzahw.zzby(r1)     // Catch: java.lang.Throwable -> L46
        L44:
            monitor-exit(r0)     // Catch: java.lang.Throwable -> L46
            return
        L46:
            r1 = move-exception
            monitor-exit(r0)     // Catch: java.lang.Throwable -> L46
            throw r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.zzfv.zzgc():void");
    }

    public final boolean zzge() {
        boolean z;
        synchronized (this.mLock) {
            z = this.zzawg;
        }
        return z;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void zzl(int i) {
        boolean z;
        ViewTreeObserver viewTreeObserver;
        ViewTreeObserver viewTreeObserver2;
        synchronized (this.mLock) {
            Iterator<zzgq> it = this.zzawl.iterator();
            while (true) {
                if (!it.hasNext()) {
                    z = false;
                    break;
                } else if (it.next().zzgk()) {
                    z = true;
                    break;
                }
            }
            if (z && this.zzawg) {
                View zzgh = this.zzavx.zzgh();
                boolean z2 = zzgh != null && com.google.android.gms.ads.internal.zzbt.zzel().zza(zzgh, this.zzawa, this.zzawb);
                boolean z3 = zzgh != null && z2 && zzgh.getGlobalVisibleRect(new Rect(), null);
                if (this.zzavx.zzgi()) {
                    zzgc();
                    return;
                }
                if (i == 1 && !this.zzavf.tryAcquire() && z3 == this.zzawi) {
                    return;
                }
                if (z3 || this.zzawi || i != 1) {
                    try {
                        zza(zza(zzgh, Boolean.valueOf(z2)), false);
                        this.zzawi = z3;
                    } catch (RuntimeException | JSONException e) {
                        zzahw.zza("Active view update failed.", e);
                    }
                    View zzgh2 = this.zzavx.zzgj().zzgh();
                    if (zzgh2 != null && (viewTreeObserver2 = zzgh2.getViewTreeObserver()) != (viewTreeObserver = this.zzavw.get())) {
                        zzgf();
                        if (!this.zzawe || (viewTreeObserver != null && viewTreeObserver.isAlive())) {
                            this.zzawe = true;
                            viewTreeObserver2.addOnScrollChangedListener(this);
                            viewTreeObserver2.addOnGlobalLayoutListener(this);
                        }
                        this.zzavw = new WeakReference<>(viewTreeObserver2);
                    }
                    zzgd();
                }
            }
        }
    }
}
