package com.google.android.gms.internal;

import java.util.ArrayList;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public final class zzbcz {
    private static final zzbei zzeus = new zzbei("GameManagerMessage");
    protected final int zzcc;
    protected final zzbcy zzfkk;
    protected final String zzfld;
    protected final long zzfle;
    protected final JSONObject zzflf;
    protected final int zzflj;
    protected final String zzflk;
    protected final int zzfll;
    protected final int zzflm;
    protected final List<zzbdc> zzfln;
    protected final JSONObject zzflo;
    protected final String zzflp;
    protected final String zzflq;

    private zzbcz(int i, int i2, String str, JSONObject jSONObject, int i3, int i4, List<zzbdc> list, JSONObject jSONObject2, String str2, String str3, long j, String str4, zzbcy zzbcyVar) {
        this.zzflj = i;
        this.zzcc = i2;
        this.zzflk = str;
        this.zzflf = jSONObject;
        this.zzfll = i3;
        this.zzflm = i4;
        this.zzfln = list;
        this.zzflo = jSONObject2;
        this.zzflp = str2;
        this.zzfld = str3;
        this.zzfle = j;
        this.zzflq = str4;
        this.zzfkk = zzbcyVar;
    }

    private static List<zzbdc> zzb(JSONArray jSONArray) {
        ArrayList arrayList = new ArrayList();
        if (jSONArray == null) {
            return arrayList;
        }
        for (int i = 0; i < jSONArray.length(); i++) {
            JSONObject optJSONObject = jSONArray.optJSONObject(i);
            if (optJSONObject != null) {
                zzbdc zzbdcVar = null;
                try {
                    zzbdcVar = new zzbdc(optJSONObject);
                } catch (JSONException e) {
                    zzeus.zzc(e, "Exception when attempting to parse PlayerInfoMessageComponent at index %d", Integer.valueOf(i));
                }
                if (zzbdcVar != null) {
                    arrayList.add(zzbdcVar);
                }
            }
        }
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static zzbcz zzw(JSONObject jSONObject) {
        int optInt = jSONObject.optInt("type", -1);
        try {
            switch (optInt) {
                case 1:
                    JSONObject optJSONObject = jSONObject.optJSONObject("gameManagerConfig");
                    return new zzbcz(optInt, jSONObject.optInt("statusCode"), jSONObject.optString("errorDescription"), jSONObject.optJSONObject("extraMessageData"), jSONObject.optInt("gameplayState"), jSONObject.optInt("lobbyState"), zzb(jSONObject.optJSONArray("players")), jSONObject.optJSONObject("gameData"), jSONObject.optString("gameStatusText"), jSONObject.optString("playerId"), jSONObject.optLong("requestId"), jSONObject.optString("playerToken"), optJSONObject != null ? new zzbcy(optJSONObject) : null);
                case 2:
                    return new zzbcz(optInt, jSONObject.optInt("statusCode"), jSONObject.optString("errorDescription"), jSONObject.optJSONObject("extraMessageData"), jSONObject.optInt("gameplayState"), jSONObject.optInt("lobbyState"), zzb(jSONObject.optJSONArray("players")), jSONObject.optJSONObject("gameData"), jSONObject.optString("gameStatusText"), jSONObject.optString("playerId"), -1L, null, null);
                default:
                    zzeus.zzf("Unrecognized Game Message type %d", Integer.valueOf(optInt));
                    return null;
            }
        } catch (JSONException e) {
            zzeus.zzc(e, "Exception while parsing GameManagerMessage from json", new Object[0]);
            return null;
        }
    }
}
