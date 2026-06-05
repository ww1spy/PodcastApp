package com.google.android.gms.internal;

import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public final class zzbdc {
    private final int zzexd;
    private final String zzfld;
    private final JSONObject zzfls;

    private zzbdc(String str, int i, JSONObject jSONObject) {
        this.zzfld = str;
        this.zzexd = i;
        this.zzfls = jSONObject;
    }

    public zzbdc(JSONObject jSONObject) throws JSONException {
        this(jSONObject.optString("playerId"), jSONObject.optInt("playerState"), jSONObject.optJSONObject("playerData"));
    }

    public final boolean equals(Object obj) {
        if (obj == null || !(obj instanceof zzbdc)) {
            return false;
        }
        zzbdc zzbdcVar = (zzbdc) obj;
        return this.zzexd == zzbdcVar.zzexd && zzbdw.zza(this.zzfld, zzbdcVar.zzfld) && com.google.android.gms.common.util.zzq.zzc(this.zzfls, zzbdcVar.zzfls);
    }

    public final JSONObject getPlayerData() {
        return this.zzfls;
    }

    public final String getPlayerId() {
        return this.zzfld;
    }

    public final int getPlayerState() {
        return this.zzexd;
    }
}
