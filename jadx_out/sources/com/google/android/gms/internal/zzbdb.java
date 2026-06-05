package com.google.android.gms.internal;

import com.google.android.gms.cast.games.PlayerInfo;
import java.util.Arrays;
import org.json.JSONObject;

/* loaded from: classes.dex */
public final class zzbdb implements PlayerInfo {
    private final int zzexd;
    private final String zzfld;
    private final JSONObject zzfls;
    private final boolean zzflt;

    public zzbdb(String str, int i, JSONObject jSONObject, boolean z) {
        this.zzfld = str;
        this.zzexd = i;
        this.zzfls = jSONObject;
        this.zzflt = z;
    }

    public final boolean equals(Object obj) {
        if (obj == null || !(obj instanceof PlayerInfo)) {
            return false;
        }
        PlayerInfo playerInfo = (PlayerInfo) obj;
        return this.zzflt == playerInfo.isControllable() && this.zzexd == playerInfo.getPlayerState() && zzbdw.zza(this.zzfld, playerInfo.getPlayerId()) && com.google.android.gms.common.util.zzq.zzc(this.zzfls, playerInfo.getPlayerData());
    }

    @Override // com.google.android.gms.cast.games.PlayerInfo
    public final JSONObject getPlayerData() {
        return this.zzfls;
    }

    @Override // com.google.android.gms.cast.games.PlayerInfo
    public final String getPlayerId() {
        return this.zzfld;
    }

    @Override // com.google.android.gms.cast.games.PlayerInfo
    public final int getPlayerState() {
        return this.zzexd;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.zzfld, Integer.valueOf(this.zzexd), this.zzfls, Boolean.valueOf(this.zzflt)});
    }

    @Override // com.google.android.gms.cast.games.PlayerInfo
    public final boolean isConnected() {
        switch (this.zzexd) {
            case 3:
            case 4:
            case 5:
            case 6:
                return true;
            default:
                return false;
        }
    }

    @Override // com.google.android.gms.cast.games.PlayerInfo
    public final boolean isControllable() {
        return this.zzflt;
    }
}
