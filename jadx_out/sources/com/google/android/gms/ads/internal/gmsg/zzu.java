package com.google.android.gms.ads.internal.gmsg;

import com.google.android.gms.internal.zzahw;
import com.google.android.gms.internal.zzaij;
import java.util.Map;
import org.json.JSONObject;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzu implements Runnable {
    private /* synthetic */ Map zzcbx;
    final /* synthetic */ com.google.android.gms.ads.internal.js.zza zzcby;
    private /* synthetic */ HttpClient zzcbz;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzu(HttpClient httpClient, Map map, com.google.android.gms.ads.internal.js.zza zzaVar) {
        this.zzcbz = httpClient;
        this.zzcbx = map;
        this.zzcby = zzaVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzahw.zzby("Received Http request.");
        try {
            JSONObject send = this.zzcbz.send(new JSONObject((String) this.zzcbx.get("http_request")));
            if (send == null) {
                zzahw.e("Response should not be null.");
            } else {
                zzaij.zzdfn.post(new zzv(this, send));
            }
        } catch (Exception e) {
            zzahw.zzb("Error converting request to json.", e);
        }
    }
}
