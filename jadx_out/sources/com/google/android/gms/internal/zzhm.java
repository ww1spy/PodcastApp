package com.google.android.gms.internal;

import android.annotation.TargetApi;
import android.app.ActivityManager;
import android.app.KeyguardManager;
import android.content.Context;
import android.graphics.Rect;
import android.os.PowerManager;
import android.os.Process;
import android.support.annotation.Nullable;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.WebView;
import android.widget.EditText;
import android.widget.TextView;
import com.google.android.gms.common.internal.Hide;
import java.util.List;
import org.json.JSONException;
import org.json.JSONObject;

@Hide
@TargetApi(14)
@zzabh
/* loaded from: classes.dex */
public final class zzhm extends Thread {
    private final zzhh zzaze;
    private final zzabf zzazf;
    private boolean mStarted = false;
    private boolean zzazd = false;
    private boolean zzbm = false;
    private final Object mLock = new Object();
    private final int zzayc = ((Integer) zzlc.zzio().zzd(zzoi.zzbni)).intValue();
    private final int zzazh = ((Integer) zzlc.zzio().zzd(zzoi.zzbnj)).intValue();
    private final int zzaye = ((Integer) zzlc.zzio().zzd(zzoi.zzbnk)).intValue();
    private final int zzazi = ((Integer) zzlc.zzio().zzd(zzoi.zzbnl)).intValue();
    private final int zzazj = ((Integer) zzlc.zzio().zzd(zzoi.zzbno)).intValue();
    private final int zzazk = ((Integer) zzlc.zzio().zzd(zzoi.zzbnq)).intValue();
    private final int zzazl = ((Integer) zzlc.zzio().zzd(zzoi.zzbnr)).intValue();
    private final int zzazg = ((Integer) zzlc.zzio().zzd(zzoi.zzbnm)).intValue();
    private final String zzazm = (String) zzlc.zzio().zzd(zzoi.zzbnt);
    private final boolean zzazn = ((Boolean) zzlc.zzio().zzd(zzoi.zzbnv)).booleanValue();

    public zzhm(zzhh zzhhVar, zzabf zzabfVar) {
        this.zzaze = zzhhVar;
        this.zzazf = zzabfVar;
        setName("ContentFetchTask");
    }

    private final zzhq zza(@Nullable View view, zzhg zzhgVar) {
        boolean z;
        if (view == null) {
            return new zzhq(this, 0, 0);
        }
        Context context = com.google.android.gms.ads.internal.zzbt.zzeo().getContext();
        if (context != null) {
            String str = (String) view.getTag(context.getResources().getIdentifier((String) zzlc.zzio().zzd(zzoi.zzbns), "id", context.getPackageName()));
            if (!TextUtils.isEmpty(this.zzazm) && str != null && str.equals(this.zzazm)) {
                return new zzhq(this, 0, 0);
            }
        }
        boolean globalVisibleRect = view.getGlobalVisibleRect(new Rect());
        if ((view instanceof TextView) && !(view instanceof EditText)) {
            CharSequence text = ((TextView) view).getText();
            if (TextUtils.isEmpty(text)) {
                return new zzhq(this, 0, 0);
            }
            zzhgVar.zzb(text.toString(), globalVisibleRect, view.getX(), view.getY(), view.getWidth(), view.getHeight());
            return new zzhq(this, 1, 0);
        }
        if ((view instanceof WebView) && !(view instanceof zzaof)) {
            zzhgVar.zzgt();
            WebView webView = (WebView) view;
            if (com.google.android.gms.common.util.zzs.zzanv()) {
                zzhgVar.zzgt();
                webView.post(new zzho(this, zzhgVar, webView, globalVisibleRect));
                z = true;
            } else {
                z = false;
            }
            return z ? new zzhq(this, 0, 1) : new zzhq(this, 0, 0);
        }
        if (!(view instanceof ViewGroup)) {
            return new zzhq(this, 0, 0);
        }
        ViewGroup viewGroup = (ViewGroup) view;
        int i = 0;
        int i2 = 0;
        for (int i3 = 0; i3 < viewGroup.getChildCount(); i3++) {
            zzhq zza = zza(viewGroup.getChildAt(i3), zzhgVar);
            i += zza.zzazv;
            i2 += zza.zzazw;
        }
        return new zzhq(this, i, i2);
    }

    private static boolean zzgy() {
        List<ActivityManager.RunningAppProcessInfo> runningAppProcesses;
        try {
            Context context = com.google.android.gms.ads.internal.zzbt.zzeo().getContext();
            if (context == null) {
                return false;
            }
            ActivityManager activityManager = (ActivityManager) context.getSystemService("activity");
            KeyguardManager keyguardManager = (KeyguardManager) context.getSystemService("keyguard");
            if (activityManager == null || keyguardManager == null || (runningAppProcesses = activityManager.getRunningAppProcesses()) == null) {
                return false;
            }
            for (ActivityManager.RunningAppProcessInfo runningAppProcessInfo : runningAppProcesses) {
                if (Process.myPid() == runningAppProcessInfo.pid) {
                    if (runningAppProcessInfo.importance != 100 || keyguardManager.inKeyguardRestrictedInputMode()) {
                        return false;
                    }
                    PowerManager powerManager = (PowerManager) context.getSystemService("power");
                    return powerManager == null ? false : powerManager.isScreenOn();
                }
            }
            return false;
        } catch (Throwable th) {
            com.google.android.gms.ads.internal.zzbt.zzep().zza(th, "ContentFetchTask.isInForeground");
            return false;
        }
    }

    private final void zzha() {
        synchronized (this.mLock) {
            this.zzazd = true;
            boolean z = this.zzazd;
            StringBuilder sb = new StringBuilder(42);
            sb.append("ContentFetchThread: paused, mPause = ");
            sb.append(z);
            zzahw.zzby(sb.toString());
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x007f A[EXC_TOP_SPLITTER, LOOP:1: B:11:0x007f->B:18:0x007f, LOOP_START, SYNTHETIC] */
    @Override // java.lang.Thread, java.lang.Runnable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void run() {
        /*
            r4 = this;
        L0:
            boolean r0 = zzgy()     // Catch: java.lang.Exception -> L68 java.lang.InterruptedException -> L76
            if (r0 == 0) goto L59
            com.google.android.gms.internal.zzhi r0 = com.google.android.gms.ads.internal.zzbt.zzeo()     // Catch: java.lang.Exception -> L68 java.lang.InterruptedException -> L76
            android.app.Activity r0 = r0.getActivity()     // Catch: java.lang.Exception -> L68 java.lang.InterruptedException -> L76
            if (r0 != 0) goto L19
            java.lang.String r0 = "ContentFetchThread: no activity. Sleeping."
            com.google.android.gms.internal.zzahw.zzby(r0)     // Catch: java.lang.Exception -> L68 java.lang.InterruptedException -> L76
        L15:
            r4.zzha()     // Catch: java.lang.Exception -> L68 java.lang.InterruptedException -> L76
            goto L5f
        L19:
            if (r0 == 0) goto L5f
            r1 = 0
            android.view.Window r2 = r0.getWindow()     // Catch: java.lang.Exception -> L3d java.lang.InterruptedException -> L76
            if (r2 == 0) goto L4c
            android.view.Window r2 = r0.getWindow()     // Catch: java.lang.Exception -> L3d java.lang.InterruptedException -> L76
            android.view.View r2 = r2.getDecorView()     // Catch: java.lang.Exception -> L3d java.lang.InterruptedException -> L76
            if (r2 == 0) goto L4c
            android.view.Window r0 = r0.getWindow()     // Catch: java.lang.Exception -> L3d java.lang.InterruptedException -> L76
            android.view.View r0 = r0.getDecorView()     // Catch: java.lang.Exception -> L3d java.lang.InterruptedException -> L76
            r2 = 16908290(0x1020002, float:2.3877235E-38)
            android.view.View r0 = r0.findViewById(r2)     // Catch: java.lang.Exception -> L3d java.lang.InterruptedException -> L76
            r1 = r0
            goto L4c
        L3d:
            r0 = move-exception
            com.google.android.gms.internal.zzahi r2 = com.google.android.gms.ads.internal.zzbt.zzep()     // Catch: java.lang.Exception -> L68 java.lang.InterruptedException -> L76
            java.lang.String r3 = "ContentFetchTask.extractContent"
            r2.zza(r0, r3)     // Catch: java.lang.Exception -> L68 java.lang.InterruptedException -> L76
            java.lang.String r0 = "Failed getting root view of activity. Content not extracted."
            com.google.android.gms.internal.zzahw.zzby(r0)     // Catch: java.lang.Exception -> L68 java.lang.InterruptedException -> L76
        L4c:
            if (r1 == 0) goto L5f
            if (r1 == 0) goto L5f
            com.google.android.gms.internal.zzhn r0 = new com.google.android.gms.internal.zzhn     // Catch: java.lang.Exception -> L68 java.lang.InterruptedException -> L76
            r0.<init>(r4, r1)     // Catch: java.lang.Exception -> L68 java.lang.InterruptedException -> L76
            r1.post(r0)     // Catch: java.lang.Exception -> L68 java.lang.InterruptedException -> L76
            goto L5f
        L59:
            java.lang.String r0 = "ContentFetchTask: sleeping"
            com.google.android.gms.internal.zzahw.zzby(r0)     // Catch: java.lang.Exception -> L68 java.lang.InterruptedException -> L76
            goto L15
        L5f:
            int r0 = r4.zzazg     // Catch: java.lang.Exception -> L68 java.lang.InterruptedException -> L76
            int r0 = r0 * 1000
            long r0 = (long) r0     // Catch: java.lang.Exception -> L68 java.lang.InterruptedException -> L76
            java.lang.Thread.sleep(r0)     // Catch: java.lang.Exception -> L68 java.lang.InterruptedException -> L76
            goto L7c
        L68:
            r0 = move-exception
            java.lang.String r1 = "Error in ContentFetchTask"
            com.google.android.gms.internal.zzahw.zzb(r1, r0)
            com.google.android.gms.internal.zzabf r1 = r4.zzazf
            java.lang.String r2 = "ContentFetchTask.run"
            r1.zza(r0, r2)
            goto L7c
        L76:
            r0 = move-exception
            java.lang.String r1 = "Error in ContentFetchTask"
            com.google.android.gms.internal.zzahw.zzb(r1, r0)
        L7c:
            java.lang.Object r0 = r4.mLock
            monitor-enter(r0)
        L7f:
            boolean r1 = r4.zzazd     // Catch: java.lang.Throwable -> L91
            if (r1 == 0) goto L8e
            java.lang.String r1 = "ContentFetchTask: waiting"
            com.google.android.gms.internal.zzahw.zzby(r1)     // Catch: java.lang.InterruptedException -> L7f java.lang.Throwable -> L91
            java.lang.Object r1 = r4.mLock     // Catch: java.lang.InterruptedException -> L7f java.lang.Throwable -> L91
            r1.wait()     // Catch: java.lang.InterruptedException -> L7f java.lang.Throwable -> L91
            goto L7f
        L8e:
            monitor-exit(r0)     // Catch: java.lang.Throwable -> L91
            goto L0
        L91:
            r1 = move-exception
            monitor-exit(r0)     // Catch: java.lang.Throwable -> L91
            throw r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.zzhm.run():void");
    }

    public final void wakeup() {
        synchronized (this.mLock) {
            this.zzazd = false;
            this.mLock.notifyAll();
            zzahw.zzby("ContentFetchThread: wakeup");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void zza(zzhg zzhgVar, WebView webView, String str, boolean z) {
        zzhgVar.zzgs();
        try {
            if (!TextUtils.isEmpty(str)) {
                String optString = new JSONObject(str).optString("text");
                if (this.zzazn || TextUtils.isEmpty(webView.getTitle())) {
                    zzhgVar.zza(optString, z, webView.getX(), webView.getY(), webView.getWidth(), webView.getHeight());
                } else {
                    String title = webView.getTitle();
                    StringBuilder sb = new StringBuilder(1 + String.valueOf(title).length() + String.valueOf(optString).length());
                    sb.append(title);
                    sb.append("\n");
                    sb.append(optString);
                    zzhgVar.zza(sb.toString(), z, webView.getX(), webView.getY(), webView.getWidth(), webView.getHeight());
                }
            }
            if (zzhgVar.zzgn()) {
                this.zzaze.zzb(zzhgVar);
            }
        } catch (JSONException unused) {
            zzahw.zzby("Json string may be malformed.");
        } catch (Throwable th) {
            zzahw.zza("Failed to get webview content.", th);
            this.zzazf.zza(th, "ContentFetchTask.processWebViewContent");
        }
    }

    public final void zzgx() {
        synchronized (this.mLock) {
            if (this.mStarted) {
                zzahw.zzby("Content hash thread already started, quiting...");
            } else {
                this.mStarted = true;
                start();
            }
        }
    }

    public final zzhg zzgz() {
        return this.zzaze.zzgw();
    }

    public final boolean zzhb() {
        return this.zzazd;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void zzj(View view) {
        try {
            zzhg zzhgVar = new zzhg(this.zzayc, this.zzazh, this.zzaye, this.zzazi, this.zzazj, this.zzazk, this.zzazl);
            zzhq zza = zza(view, zzhgVar);
            zzhgVar.zzgu();
            if (zza.zzazv == 0 && zza.zzazw == 0) {
                return;
            }
            if (zza.zzazw == 0 && zzhgVar.zzgv() == 0) {
                return;
            }
            if (zza.zzazw == 0 && this.zzaze.zza(zzhgVar)) {
                return;
            }
            this.zzaze.zzc(zzhgVar);
        } catch (Exception e) {
            zzahw.zzb("Exception in fetchContentOnUIThread", e);
            this.zzazf.zza(e, "ContentFetchTask.fetchContent");
        }
    }
}
