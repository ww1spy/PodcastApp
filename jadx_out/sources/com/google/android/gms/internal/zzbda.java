package com.google.android.gms.internal;

import com.google.android.gms.cast.games.GameManagerState;
import com.google.android.gms.cast.games.PlayerInfo;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import org.json.JSONObject;

/* loaded from: classes.dex */
public final class zzbda implements GameManagerState {
    private final String zzflg;
    private final int zzflh;
    private final int zzfll;
    private final int zzflm;
    private final JSONObject zzflo;
    private final String zzflp;
    private final Map<String, PlayerInfo> zzflr;

    public zzbda(int i, int i2, String str, JSONObject jSONObject, Collection<PlayerInfo> collection, String str2, int i3) {
        this.zzflm = i;
        this.zzfll = i2;
        this.zzflp = str;
        this.zzflo = jSONObject;
        this.zzflg = str2;
        this.zzflh = i3;
        this.zzflr = new HashMap(collection.size());
        for (PlayerInfo playerInfo : collection) {
            this.zzflr.put(playerInfo.getPlayerId(), playerInfo);
        }
    }

    public final boolean equals(Object obj) {
        if (obj == null || !(obj instanceof GameManagerState)) {
            return false;
        }
        GameManagerState gameManagerState = (GameManagerState) obj;
        if (getPlayers().size() != gameManagerState.getPlayers().size()) {
            return false;
        }
        for (PlayerInfo playerInfo : getPlayers()) {
            boolean z = false;
            for (PlayerInfo playerInfo2 : gameManagerState.getPlayers()) {
                if (zzbdw.zza(playerInfo.getPlayerId(), playerInfo2.getPlayerId())) {
                    if (!zzbdw.zza(playerInfo, playerInfo2)) {
                        return false;
                    }
                    z = true;
                }
            }
            if (!z) {
                return false;
            }
        }
        return this.zzflm == gameManagerState.getLobbyState() && this.zzfll == gameManagerState.getGameplayState() && this.zzflh == gameManagerState.getMaxPlayers() && zzbdw.zza(this.zzflg, gameManagerState.getApplicationName()) && zzbdw.zza(this.zzflp, gameManagerState.getGameStatusText()) && com.google.android.gms.common.util.zzq.zzc(this.zzflo, gameManagerState.getGameData());
    }

    @Override // com.google.android.gms.cast.games.GameManagerState
    public final CharSequence getApplicationName() {
        return this.zzflg;
    }

    @Override // com.google.android.gms.cast.games.GameManagerState
    public final List<PlayerInfo> getConnectedControllablePlayers() {
        ArrayList arrayList = new ArrayList();
        for (PlayerInfo playerInfo : getPlayers()) {
            if (playerInfo.isConnected() && playerInfo.isControllable()) {
                arrayList.add(playerInfo);
            }
        }
        return arrayList;
    }

    @Override // com.google.android.gms.cast.games.GameManagerState
    public final List<PlayerInfo> getConnectedPlayers() {
        ArrayList arrayList = new ArrayList();
        for (PlayerInfo playerInfo : getPlayers()) {
            if (playerInfo.isConnected()) {
                arrayList.add(playerInfo);
            }
        }
        return arrayList;
    }

    @Override // com.google.android.gms.cast.games.GameManagerState
    public final List<PlayerInfo> getControllablePlayers() {
        ArrayList arrayList = new ArrayList();
        for (PlayerInfo playerInfo : getPlayers()) {
            if (playerInfo.isControllable()) {
                arrayList.add(playerInfo);
            }
        }
        return arrayList;
    }

    @Override // com.google.android.gms.cast.games.GameManagerState
    public final JSONObject getGameData() {
        return this.zzflo;
    }

    @Override // com.google.android.gms.cast.games.GameManagerState
    public final CharSequence getGameStatusText() {
        return this.zzflp;
    }

    @Override // com.google.android.gms.cast.games.GameManagerState
    public final int getGameplayState() {
        return this.zzfll;
    }

    @Override // com.google.android.gms.cast.games.GameManagerState
    public final Collection<String> getListOfChangedPlayers(GameManagerState gameManagerState) {
        HashSet hashSet = new HashSet();
        for (PlayerInfo playerInfo : getPlayers()) {
            PlayerInfo player = gameManagerState.getPlayer(playerInfo.getPlayerId());
            if (player == null || !playerInfo.equals(player)) {
                hashSet.add(playerInfo.getPlayerId());
            }
        }
        for (PlayerInfo playerInfo2 : gameManagerState.getPlayers()) {
            if (getPlayer(playerInfo2.getPlayerId()) == null) {
                hashSet.add(playerInfo2.getPlayerId());
            }
        }
        return hashSet;
    }

    @Override // com.google.android.gms.cast.games.GameManagerState
    public final int getLobbyState() {
        return this.zzflm;
    }

    @Override // com.google.android.gms.cast.games.GameManagerState
    public final int getMaxPlayers() {
        return this.zzflh;
    }

    @Override // com.google.android.gms.cast.games.GameManagerState
    public final PlayerInfo getPlayer(String str) {
        if (str == null) {
            return null;
        }
        return this.zzflr.get(str);
    }

    @Override // com.google.android.gms.cast.games.GameManagerState
    public final Collection<PlayerInfo> getPlayers() {
        return Collections.unmodifiableCollection(this.zzflr.values());
    }

    @Override // com.google.android.gms.cast.games.GameManagerState
    public final List<PlayerInfo> getPlayersInState(int i) {
        ArrayList arrayList = new ArrayList();
        for (PlayerInfo playerInfo : getPlayers()) {
            if (playerInfo.getPlayerState() == i) {
                arrayList.add(playerInfo);
            }
        }
        return arrayList;
    }

    @Override // com.google.android.gms.cast.games.GameManagerState
    public final boolean hasGameDataChanged(GameManagerState gameManagerState) {
        return !com.google.android.gms.common.util.zzq.zzc(this.zzflo, gameManagerState.getGameData());
    }

    @Override // com.google.android.gms.cast.games.GameManagerState
    public final boolean hasGameStatusTextChanged(GameManagerState gameManagerState) {
        return !zzbdw.zza(this.zzflp, gameManagerState.getGameStatusText());
    }

    @Override // com.google.android.gms.cast.games.GameManagerState
    public final boolean hasGameplayStateChanged(GameManagerState gameManagerState) {
        return this.zzfll != gameManagerState.getGameplayState();
    }

    @Override // com.google.android.gms.cast.games.GameManagerState
    public final boolean hasLobbyStateChanged(GameManagerState gameManagerState) {
        return this.zzflm != gameManagerState.getLobbyState();
    }

    @Override // com.google.android.gms.cast.games.GameManagerState
    public final boolean hasPlayerChanged(String str, GameManagerState gameManagerState) {
        return !zzbdw.zza(getPlayer(str), gameManagerState.getPlayer(str));
    }

    @Override // com.google.android.gms.cast.games.GameManagerState
    public final boolean hasPlayerDataChanged(String str, GameManagerState gameManagerState) {
        PlayerInfo player = getPlayer(str);
        PlayerInfo player2 = gameManagerState.getPlayer(str);
        if (player == null && player2 == null) {
            return false;
        }
        return player == null || player2 == null || !com.google.android.gms.common.util.zzq.zzc(player.getPlayerData(), player2.getPlayerData());
    }

    @Override // com.google.android.gms.cast.games.GameManagerState
    public final boolean hasPlayerStateChanged(String str, GameManagerState gameManagerState) {
        PlayerInfo player = getPlayer(str);
        PlayerInfo player2 = gameManagerState.getPlayer(str);
        if (player == null && player2 == null) {
            return false;
        }
        return player == null || player2 == null || player.getPlayerState() != player2.getPlayerState();
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{Integer.valueOf(this.zzflm), Integer.valueOf(this.zzfll), this.zzflr, this.zzflp, this.zzflo, this.zzflg, Integer.valueOf(this.zzflh)});
    }
}
