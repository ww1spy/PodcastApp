package com.google.android.gms.internal;

import android.content.Context;
import android.content.SharedPreferences;
import android.text.TextUtils;
import com.google.android.gms.cast.Cast;
import com.google.android.gms.cast.CastStatusCodes;
import com.google.android.gms.cast.games.GameManagerClient;
import com.google.android.gms.cast.games.GameManagerState;
import com.google.android.gms.cast.games.PlayerInfo;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.PendingResult;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public final class zzbcl extends zzbdg {
    private static String NAMESPACE = zzbdw.zzfw("com.google.cast.games");
    private static final zzbei zzeus = new zzbei("GameManagerChannel");
    private final com.google.android.gms.common.util.zze zzata;
    private final SharedPreferences zzbkx;
    private final Cast.CastApi zzfam;
    private final GoogleApiClient zzffo;
    private final Map<String, String> zzfkh;
    private final List<zzbeo> zzfki;
    private final String zzfkj;
    private zzbcy zzfkk;
    private boolean zzfkl;
    private GameManagerState zzfkm;
    private GameManagerState zzfkn;
    private String zzfko;
    private JSONObject zzfkp;
    private long zzfkq;
    private GameManagerClient.Listener zzfkr;
    private String zzfks;

    public zzbcl(GoogleApiClient googleApiClient, String str, Cast.CastApi castApi) throws IllegalArgumentException, IllegalStateException {
        super(NAMESPACE, "CastGameManagerChannel", null);
        this.zzfkh = new ConcurrentHashMap();
        this.zzfkl = false;
        this.zzfkq = 0L;
        if (TextUtils.isEmpty(str)) {
            throw new IllegalArgumentException("castSessionId cannot be null.");
        }
        if (googleApiClient == null || !googleApiClient.isConnected() || !googleApiClient.hasConnectedApi(Cast.API)) {
            throw new IllegalArgumentException("googleApiClient needs to be connected and contain the Cast.API API.");
        }
        this.zzata = com.google.android.gms.common.util.zzi.zzanq();
        this.zzfki = new ArrayList();
        this.zzfkj = str;
        this.zzfam = castApi;
        this.zzffo = googleApiClient;
        Context applicationContext = googleApiClient.getContext().getApplicationContext();
        this.zzbkx = applicationContext.getApplicationContext().getSharedPreferences(String.format(Locale.ROOT, "%s.%s", applicationContext.getPackageName(), "game_manager_channel_data"), 0);
        this.zzfkn = null;
        this.zzfkm = new zzbda(0, 0, "", null, new ArrayList(), "", -1);
    }

    private final synchronized boolean isInitialized() {
        return this.zzfkk != null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ zzbcy zza(zzbcl zzbclVar, zzbcy zzbcyVar) {
        zzbclVar.zzfkk = null;
        return null;
    }

    private final JSONObject zza(long j, String str, int i, JSONObject jSONObject) {
        try {
            JSONObject jSONObject2 = new JSONObject();
            jSONObject2.put("requestId", j);
            jSONObject2.put("type", i);
            jSONObject2.put("extraMessageData", jSONObject);
            jSONObject2.put("playerId", str);
            jSONObject2.put("playerToken", zzft(str));
            return jSONObject2;
        } catch (JSONException e) {
            zzeus.zzf("JSONException when trying to create a message: %s", e.getMessage());
            return null;
        }
    }

    private final synchronized void zza(zzbcz zzbczVar) {
        boolean z = true;
        if (zzbczVar.zzflj != 1) {
            z = false;
        }
        this.zzfkn = this.zzfkm;
        if (z && zzbczVar.zzfkk != null) {
            this.zzfkk = zzbczVar.zzfkk;
        }
        if (isInitialized()) {
            ArrayList arrayList = new ArrayList();
            for (zzbdc zzbdcVar : zzbczVar.zzfln) {
                String playerId = zzbdcVar.getPlayerId();
                arrayList.add(new zzbdb(playerId, zzbdcVar.getPlayerState(), zzbdcVar.getPlayerData(), this.zzfkh.containsKey(playerId)));
            }
            this.zzfkm = new zzbda(zzbczVar.zzflm, zzbczVar.zzfll, zzbczVar.zzflp, zzbczVar.zzflo, arrayList, this.zzfkk.zzagk(), this.zzfkk.getMaxPlayers());
            PlayerInfo player = this.zzfkm.getPlayer(zzbczVar.zzfld);
            if (player != null && player.isControllable() && zzbczVar.zzflj == 2) {
                this.zzfko = zzbczVar.zzfld;
                this.zzfkp = zzbczVar.zzflf;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void zza(String str, int i, JSONObject jSONObject, zzben zzbenVar) {
        long j = this.zzfkq + 1;
        this.zzfkq = j;
        JSONObject zza = zza(j, str, i, jSONObject);
        if (zza == null) {
            zzbenVar.zza(-1L, CastStatusCodes.INVALID_REQUEST, null);
            zzeus.zzf("Not sending request because it was invalid.", new Object[0]);
            return;
        }
        zzbeo zzbeoVar = new zzbeo(this.zzata, 30000L);
        zzbeoVar.zza(j, zzbenVar);
        this.zzfki.add(zzbeoVar);
        zzbg(true);
        this.zzfam.sendMessage(this.zzffo, getNamespace(), zza.toString()).setResultCallback(new zzbcq(this, j));
    }

    private final synchronized void zzagg() throws IllegalStateException {
        if (!isInitialized()) {
            throw new IllegalStateException("Attempted to perform an operation on the GameManagerChannel before it is initialized.");
        }
        if (isDisposed()) {
            throw new IllegalStateException("Attempted to perform an operation on the GameManagerChannel after it has been disposed.");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final synchronized void zzagh() {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("castSessionId", this.zzfkj);
            jSONObject.put("playerTokenMap", new JSONObject(this.zzfkh));
            this.zzbkx.edit().putString("save_data", jSONObject.toString()).commit();
        } catch (JSONException e) {
            zzeus.zzf("Error while saving data: %s", e.getMessage());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final synchronized void zzagi() {
        String string = this.zzbkx.getString("save_data", null);
        if (string == null) {
            return;
        }
        try {
            JSONObject jSONObject = new JSONObject(string);
            if (this.zzfkj.equals(jSONObject.getString("castSessionId"))) {
                JSONObject jSONObject2 = jSONObject.getJSONObject("playerTokenMap");
                Iterator<String> keys = jSONObject2.keys();
                while (keys.hasNext()) {
                    String next = keys.next();
                    this.zzfkh.put(next, jSONObject2.getString(next));
                }
                this.zzfkq = 0L;
            }
        } catch (JSONException e) {
            zzeus.zzf("Error while loading data: %s", e.getMessage());
        }
    }

    private final void zzb(long j, int i, Object obj) {
        Iterator<zzbeo> it = this.zzfki.iterator();
        while (it.hasNext()) {
            if (it.next().zzc(j, i, obj)) {
                it.remove();
            }
        }
    }

    private final synchronized String zzft(String str) throws IllegalStateException {
        if (str == null) {
            return null;
        }
        return this.zzfkh.get(str);
    }

    public final synchronized void dispose() throws IllegalStateException {
        if (this.zzfkl) {
            return;
        }
        this.zzfkm = null;
        this.zzfkn = null;
        this.zzfko = null;
        this.zzfkp = null;
        this.zzfkl = true;
        try {
            this.zzfam.removeMessageReceivedCallbacks(this.zzffo, getNamespace());
        } catch (IOException e) {
            zzeus.zzf("Exception while detaching game manager channel.", e);
        }
    }

    public final synchronized GameManagerState getCurrentState() throws IllegalStateException {
        zzagg();
        return this.zzfkm;
    }

    public final synchronized String getLastUsedPlayerId() throws IllegalStateException {
        zzagg();
        return this.zzfks;
    }

    public final synchronized boolean isDisposed() {
        return this.zzfkl;
    }

    public final synchronized void sendGameMessage(String str, JSONObject jSONObject) throws IllegalStateException {
        zzagg();
        long j = this.zzfkq + 1;
        this.zzfkq = j;
        JSONObject zza = zza(j, str, 7, jSONObject);
        if (zza == null) {
            return;
        }
        this.zzfam.sendMessage(this.zzffo, getNamespace(), zza.toString());
    }

    public final synchronized PendingResult<GameManagerClient.GameManagerResult> sendGameRequest(String str, JSONObject jSONObject) throws IllegalStateException {
        zzagg();
        return this.zzffo.zze(new zzbcp(this, str, jSONObject));
    }

    public final synchronized void setListener(GameManagerClient.Listener listener) {
        this.zzfkr = listener;
    }

    public final synchronized PendingResult<GameManagerClient.GameManagerInstanceResult> zza(GameManagerClient gameManagerClient) throws IllegalArgumentException {
        return this.zzffo.zze(new zzbcm(this, gameManagerClient));
    }

    public final synchronized PendingResult<GameManagerClient.GameManagerResult> zza(String str, int i, JSONObject jSONObject) throws IllegalStateException {
        zzagg();
        return this.zzffo.zze(new zzbco(this, i, str, jSONObject));
    }

    @Override // com.google.android.gms.internal.zzbdo
    public final void zzc(long j, int i) {
        zzb(j, i, null);
    }

    @Override // com.google.android.gms.internal.zzbdo
    public final void zzfu(String str) {
        int i = 0;
        zzeus.zzb("message received: %s", str);
        try {
            zzbcz zzw = zzbcz.zzw(new JSONObject(str));
            if (zzw == null) {
                zzeus.zzf("Could not parse game manager message from string: %s", str);
                return;
            }
            if ((isInitialized() || zzw.zzfkk != null) && !isDisposed()) {
                boolean z = zzw.zzflj == 1;
                if (z && !TextUtils.isEmpty(zzw.zzflq)) {
                    this.zzfkh.put(zzw.zzfld, zzw.zzflq);
                    zzagh();
                }
                if (zzw.zzcc == 0) {
                    zza(zzw);
                } else {
                    zzeus.zzf("Not updating from game message because the message contains error code: %d", Integer.valueOf(zzw.zzcc));
                }
                int i2 = zzw.zzcc;
                switch (i2) {
                    case 0:
                        break;
                    case 1:
                        i = CastStatusCodes.INVALID_REQUEST;
                        break;
                    case 2:
                        i = CastStatusCodes.NOT_ALLOWED;
                        break;
                    case 3:
                        i = GameManagerClient.STATUS_INCORRECT_VERSION;
                        break;
                    case 4:
                        i = GameManagerClient.STATUS_TOO_MANY_PLAYERS;
                        break;
                    default:
                        zzbei zzbeiVar = zzeus;
                        StringBuilder sb = new StringBuilder(53);
                        sb.append("Unknown GameManager protocol status code: ");
                        sb.append(i2);
                        zzbeiVar.zzf(sb.toString(), new Object[0]);
                        i = 13;
                        break;
                }
                if (z) {
                    zzb(zzw.zzfle, i, zzw);
                }
                if (isInitialized() && i == 0) {
                    if (this.zzfkr != null) {
                        if (this.zzfkn != null && !this.zzfkm.equals(this.zzfkn)) {
                            this.zzfkr.onStateChanged(this.zzfkm, this.zzfkn);
                        }
                        if (this.zzfkp != null && this.zzfko != null) {
                            this.zzfkr.onGameMessageReceived(this.zzfko, this.zzfkp);
                        }
                    }
                    this.zzfkn = null;
                    this.zzfko = null;
                    this.zzfkp = null;
                }
            }
        } catch (JSONException e) {
            zzeus.zzf("Message is malformed (%s); ignoring: %s", e.getMessage(), str);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.zzbdg
    public final boolean zzz(long j) {
        Iterator<zzbeo> it = this.zzfki.iterator();
        while (it.hasNext()) {
            if (it.next().zzd(j, 15)) {
                it.remove();
            }
        }
        boolean z = false;
        synchronized (zzbeo.zzakj) {
            Iterator<zzbeo> it2 = this.zzfki.iterator();
            while (true) {
                if (!it2.hasNext()) {
                    break;
                }
                if (it2.next().zzaha()) {
                    z = true;
                    break;
                }
            }
        }
        return z;
    }
}
