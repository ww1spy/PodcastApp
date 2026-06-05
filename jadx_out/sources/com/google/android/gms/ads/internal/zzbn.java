package com.google.android.gms.ads.internal;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.AsyncTask;
import android.os.RemoteException;
import android.support.annotation.Nullable;
import android.text.TextUtils;
import android.view.ViewGroup;
import android.webkit.WebView;
import com.google.android.gms.actions.SearchIntents;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.internal.zzabh;
import com.google.android.gms.internal.zzafc;
import com.google.android.gms.internal.zzahw;
import com.google.android.gms.internal.zzaid;
import com.google.android.gms.internal.zzako;
import com.google.android.gms.internal.zzala;
import com.google.android.gms.internal.zzcv;
import com.google.android.gms.internal.zzcw;
import com.google.android.gms.internal.zzkk;
import com.google.android.gms.internal.zzko;
import com.google.android.gms.internal.zzlc;
import com.google.android.gms.internal.zzlf;
import com.google.android.gms.internal.zzli;
import com.google.android.gms.internal.zzlu;
import com.google.android.gms.internal.zzly;
import com.google.android.gms.internal.zzme;
import com.google.android.gms.internal.zzmm;
import com.google.android.gms.internal.zzms;
import com.google.android.gms.internal.zzns;
import com.google.android.gms.internal.zzoi;
import com.google.android.gms.internal.zzpb;
import com.google.android.gms.internal.zzyx;
import com.google.android.gms.internal.zzzd;
import io.fabric.sdk.android.services.settings.SettingsJsonConstants;
import java.util.Map;
import java.util.concurrent.Future;

@zzabh
/* loaded from: classes.dex */
public final class zzbn extends zzlu {
    private final Context mContext;

    @Nullable
    private zzli zzapd;
    private final zzala zzapq;
    private final zzko zzasd;
    private final Future<zzcv> zzase = zzaid.zza(zzaid.zzdfi, new zzbq(this));
    private final zzbs zzasf;

    @Nullable
    private WebView zzasg;

    @Nullable
    private zzcv zzash;
    private AsyncTask<Void, Void, String> zzasi;

    public zzbn(Context context, zzko zzkoVar, String str, zzala zzalaVar) {
        this.mContext = context;
        this.zzapq = zzalaVar;
        this.zzasd = zzkoVar;
        this.zzasg = new WebView(this.mContext);
        this.zzasf = new zzbs(str);
        zzk(0);
        this.zzasg.setVerticalScrollBarEnabled(false);
        this.zzasg.getSettings().setJavaScriptEnabled(true);
        this.zzasg.setWebViewClient(new zzbo(this));
        this.zzasg.setOnTouchListener(new zzbp(this));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final String zzw(String str) {
        if (this.zzash == null) {
            return str;
        }
        Uri parse = Uri.parse(str);
        try {
            parse = this.zzash.zza(parse, this.mContext, null, null);
        } catch (zzcw e) {
            zzahw.zzc("Unable to process ad data", e);
        }
        return parse.toString();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void zzx(String str) {
        Intent intent = new Intent("android.intent.action.VIEW");
        intent.setData(Uri.parse(str));
        this.mContext.startActivity(intent);
    }

    @Override // com.google.android.gms.internal.zzlt
    public final void destroy() throws RemoteException {
        com.google.android.gms.common.internal.zzbq.zzgn("destroy must be called on the main UI thread.");
        this.zzasi.cancel(true);
        this.zzase.cancel(true);
        this.zzasg.destroy();
        this.zzasg = null;
    }

    @Override // com.google.android.gms.internal.zzlt
    public final String getAdUnitId() {
        throw new IllegalStateException("getAdUnitId not implemented");
    }

    @Override // com.google.android.gms.internal.zzlt
    @Nullable
    public final String getMediationAdapterClassName() throws RemoteException {
        return null;
    }

    @Override // com.google.android.gms.internal.zzlt
    @Nullable
    public final zzmm getVideoController() {
        return null;
    }

    @Override // com.google.android.gms.internal.zzlt
    public final boolean isLoading() throws RemoteException {
        return false;
    }

    @Override // com.google.android.gms.internal.zzlt
    public final boolean isReady() throws RemoteException {
        return false;
    }

    @Override // com.google.android.gms.internal.zzlt
    public final void pause() throws RemoteException {
        com.google.android.gms.common.internal.zzbq.zzgn("pause must be called on the main UI thread.");
    }

    @Override // com.google.android.gms.internal.zzlt
    public final void resume() throws RemoteException {
        com.google.android.gms.common.internal.zzbq.zzgn("resume must be called on the main UI thread.");
    }

    @Override // com.google.android.gms.internal.zzlt
    public final void setImmersiveMode(boolean z) {
        throw new IllegalStateException("Unused method");
    }

    @Override // com.google.android.gms.internal.zzlt
    public final void setManualImpressionsEnabled(boolean z) throws RemoteException {
    }

    @Override // com.google.android.gms.internal.zzlt
    public final void setUserId(String str) throws RemoteException {
        throw new IllegalStateException("Unused method");
    }

    @Override // com.google.android.gms.internal.zzlt
    public final void showInterstitial() throws RemoteException {
        throw new IllegalStateException("Unused method");
    }

    @Override // com.google.android.gms.internal.zzlt
    public final void stopLoading() throws RemoteException {
    }

    @Override // com.google.android.gms.internal.zzlt
    public final void zza(zzafc zzafcVar) throws RemoteException {
        throw new IllegalStateException("Unused method");
    }

    @Override // com.google.android.gms.internal.zzlt
    public final void zza(zzko zzkoVar) throws RemoteException {
        throw new IllegalStateException("AdSize must be set before initialization");
    }

    @Override // com.google.android.gms.internal.zzlt
    public final void zza(zzlf zzlfVar) throws RemoteException {
        throw new IllegalStateException("Unused method");
    }

    @Override // com.google.android.gms.internal.zzlt
    public final void zza(zzli zzliVar) throws RemoteException {
        this.zzapd = zzliVar;
    }

    @Override // com.google.android.gms.internal.zzlt
    public final void zza(zzly zzlyVar) throws RemoteException {
        throw new IllegalStateException("Unused method");
    }

    @Override // com.google.android.gms.internal.zzlt
    public final void zza(zzme zzmeVar) throws RemoteException {
        throw new IllegalStateException("Unused method");
    }

    @Override // com.google.android.gms.internal.zzlt
    public final void zza(zzms zzmsVar) {
        throw new IllegalStateException("Unused method");
    }

    @Override // com.google.android.gms.internal.zzlt
    public final void zza(zzns zznsVar) {
        throw new IllegalStateException("Unused method");
    }

    @Override // com.google.android.gms.internal.zzlt
    public final void zza(zzpb zzpbVar) throws RemoteException {
        throw new IllegalStateException("Unused method");
    }

    @Override // com.google.android.gms.internal.zzlt
    public final void zza(zzyx zzyxVar) throws RemoteException {
        throw new IllegalStateException("Unused method");
    }

    @Override // com.google.android.gms.internal.zzlt
    public final void zza(zzzd zzzdVar, String str) throws RemoteException {
        throw new IllegalStateException("Unused method");
    }

    @Override // com.google.android.gms.internal.zzlt
    public final boolean zzb(zzkk zzkkVar) throws RemoteException {
        com.google.android.gms.common.internal.zzbq.checkNotNull(this.zzasg, "This Search Ad has already been torn down");
        this.zzasf.zza(zzkkVar, this.zzapq);
        this.zzasi = new zzbr(this, null).execute(new Void[0]);
        return true;
    }

    @Override // com.google.android.gms.internal.zzlt
    public final IObjectWrapper zzbp() throws RemoteException {
        com.google.android.gms.common.internal.zzbq.zzgn("getAdFrame must be called on the main UI thread.");
        return com.google.android.gms.dynamic.zzn.zzz(this.zzasg);
    }

    @Override // com.google.android.gms.internal.zzlt
    public final zzko zzbq() throws RemoteException {
        return this.zzasd;
    }

    @Override // com.google.android.gms.internal.zzlt
    public final void zzbs() throws RemoteException {
        throw new IllegalStateException("Unused method");
    }

    @Override // com.google.android.gms.internal.zzlt
    public final zzly zzcc() {
        throw new IllegalStateException("getIAppEventListener not implemented");
    }

    @Override // com.google.android.gms.internal.zzlt
    public final zzli zzcd() {
        throw new IllegalStateException("getIAdListener not implemented");
    }

    @Override // com.google.android.gms.internal.zzlt
    @Nullable
    public final String zzco() throws RemoteException {
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final String zzeb() {
        Uri.Builder builder = new Uri.Builder();
        builder.scheme("https://").appendEncodedPath((String) zzlc.zzio().zzd(zzoi.zzbtp));
        builder.appendQueryParameter(SearchIntents.EXTRA_QUERY, this.zzasf.getQuery());
        builder.appendQueryParameter("pubId", this.zzasf.zzee());
        Map<String, String> zzef = this.zzasf.zzef();
        for (String str : zzef.keySet()) {
            builder.appendQueryParameter(str, zzef.get(str));
        }
        Uri build = builder.build();
        if (this.zzash != null) {
            try {
                build = this.zzash.zza(build, this.mContext);
            } catch (zzcw e) {
                zzahw.zzc("Unable to process ad data", e);
            }
        }
        String zzec = zzec();
        String encodedQuery = build.getEncodedQuery();
        StringBuilder sb = new StringBuilder(1 + String.valueOf(zzec).length() + String.valueOf(encodedQuery).length());
        sb.append(zzec);
        sb.append("#");
        sb.append(encodedQuery);
        return sb.toString();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final String zzec() {
        String zzed = this.zzasf.zzed();
        if (TextUtils.isEmpty(zzed)) {
            zzed = "www.google.com";
        }
        String str = (String) zzlc.zzio().zzd(zzoi.zzbtp);
        StringBuilder sb = new StringBuilder(8 + String.valueOf(zzed).length() + String.valueOf(str).length());
        sb.append("https://");
        sb.append(zzed);
        sb.append(str);
        return sb.toString();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void zzk(int i) {
        if (this.zzasg == null) {
            return;
        }
        this.zzasg.setLayoutParams(new ViewGroup.LayoutParams(-1, i));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final int zzv(String str) {
        String queryParameter = Uri.parse(str).getQueryParameter(SettingsJsonConstants.ICON_HEIGHT_KEY);
        if (TextUtils.isEmpty(queryParameter)) {
            return 0;
        }
        try {
            zzlc.zzij();
            return zzako.zza(this.mContext, Integer.parseInt(queryParameter));
        } catch (NumberFormatException unused) {
            return 0;
        }
    }
}
