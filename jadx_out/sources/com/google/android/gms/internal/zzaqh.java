package com.google.android.gms.internal;

import android.os.Build;
import android.webkit.WebSettings;
import android.webkit.WebView;
import com.google.android.gms.common.internal.Hide;

@Hide
@zzabh
/* loaded from: classes.dex */
public class zzaqh extends WebView {
    private final zzapz zzdsu;

    public zzaqh(zzapz zzapzVar) {
        super(zzapzVar);
        this.zzdsu = zzapzVar;
        setBackgroundColor(0);
        WebSettings settings = getSettings();
        settings.setAllowFileAccess(false);
        settings.setSavePassword(false);
        settings.setSupportMultipleWindows(true);
        settings.setJavaScriptCanOpenWindowsAutomatically(true);
        if (Build.VERSION.SDK_INT >= 21) {
            settings.setMixedContentMode(2);
        }
        com.google.android.gms.ads.internal.zzbt.zzen().zza(getContext(), settings);
        removeJavascriptInterface("accessibility");
        removeJavascriptInterface("accessibilityTraversal");
        try {
            getSettings().setJavaScriptEnabled(true);
        } catch (NullPointerException e) {
            zzahw.zzb("Unable to enable Javascript.", e);
        }
        setLayerType(1, null);
    }

    @Override // android.webkit.WebView, com.google.android.gms.internal.zzaof
    public void loadUrl(String str) {
        try {
            super.loadUrl(str);
        } catch (Exception | IncompatibleClassChangeError | NoClassDefFoundError e) {
            com.google.android.gms.ads.internal.zzbt.zzep().zza(e, "CoreWebView.loadUrl");
            zzahw.zzc("Could not call loadUrl. ", e);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void zzdj(String str) {
        zzaqi.zza(this, str);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final zzapz zzvo() {
        return this.zzdsu;
    }
}
