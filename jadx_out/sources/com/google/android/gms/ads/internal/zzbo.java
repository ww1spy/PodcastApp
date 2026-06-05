package com.google.android.gms.ads.internal;

import android.os.RemoteException;
import android.webkit.WebResourceError;
import android.webkit.WebResourceRequest;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.google.android.gms.internal.zzahw;
import com.google.android.gms.internal.zzlc;
import com.google.android.gms.internal.zzli;
import com.google.android.gms.internal.zzoi;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzbo extends WebViewClient {
    private /* synthetic */ zzbn zzasj;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzbo(zzbn zzbnVar) {
        this.zzasj = zzbnVar;
    }

    @Override // android.webkit.WebViewClient
    public final void onReceivedError(WebView webView, WebResourceRequest webResourceRequest, WebResourceError webResourceError) {
        zzli zzliVar;
        zzli zzliVar2;
        zzliVar = this.zzasj.zzapd;
        if (zzliVar != null) {
            try {
                zzliVar2 = this.zzasj.zzapd;
                zzliVar2.onAdFailedToLoad(0);
            } catch (RemoteException e) {
                zzahw.zzc("Could not call AdListener.onAdFailedToLoad().", e);
            }
        }
    }

    @Override // android.webkit.WebViewClient
    public final boolean shouldOverrideUrlLoading(WebView webView, String str) {
        zzli zzliVar;
        zzli zzliVar2;
        String zzw;
        zzli zzliVar3;
        zzli zzliVar4;
        zzli zzliVar5;
        zzli zzliVar6;
        zzli zzliVar7;
        zzli zzliVar8;
        if (str.startsWith(this.zzasj.zzec())) {
            return false;
        }
        if (str.startsWith((String) zzlc.zzio().zzd(zzoi.zzbtm))) {
            zzliVar7 = this.zzasj.zzapd;
            if (zzliVar7 != null) {
                try {
                    zzliVar8 = this.zzasj.zzapd;
                    zzliVar8.onAdFailedToLoad(3);
                } catch (RemoteException e) {
                    zzahw.zzc("Could not call AdListener.onAdFailedToLoad().", e);
                }
            }
            this.zzasj.zzk(0);
            return true;
        }
        if (str.startsWith((String) zzlc.zzio().zzd(zzoi.zzbtn))) {
            zzliVar5 = this.zzasj.zzapd;
            if (zzliVar5 != null) {
                try {
                    zzliVar6 = this.zzasj.zzapd;
                    zzliVar6.onAdFailedToLoad(0);
                } catch (RemoteException e2) {
                    zzahw.zzc("Could not call AdListener.onAdFailedToLoad().", e2);
                }
            }
            this.zzasj.zzk(0);
            return true;
        }
        if (str.startsWith((String) zzlc.zzio().zzd(zzoi.zzbto))) {
            zzliVar3 = this.zzasj.zzapd;
            if (zzliVar3 != null) {
                try {
                    zzliVar4 = this.zzasj.zzapd;
                    zzliVar4.onAdLoaded();
                } catch (RemoteException e3) {
                    zzahw.zzc("Could not call AdListener.onAdLoaded().", e3);
                }
            }
            this.zzasj.zzk(this.zzasj.zzv(str));
            return true;
        }
        if (str.startsWith("gmsg://")) {
            return true;
        }
        zzliVar = this.zzasj.zzapd;
        if (zzliVar != null) {
            try {
                zzliVar2 = this.zzasj.zzapd;
                zzliVar2.onAdLeftApplication();
            } catch (RemoteException e4) {
                zzahw.zzc("Could not call AdListener.onAdLeftApplication().", e4);
            }
        }
        zzw = this.zzasj.zzw(str);
        this.zzasj.zzx(zzw);
        return true;
    }
}
