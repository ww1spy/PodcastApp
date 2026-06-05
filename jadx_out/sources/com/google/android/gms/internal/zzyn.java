package com.google.android.gms.internal;

import io.fabric.sdk.android.services.settings.SettingsJsonConstants;
import org.json.JSONException;
import org.json.JSONObject;

@zzabh
/* loaded from: classes.dex */
public class zzyn {
    private final zzaof zzcct;
    private final String zzcmf;

    public zzyn(zzaof zzaofVar) {
        this(zzaofVar, "");
    }

    public zzyn(zzaof zzaofVar, String str) {
        this.zzcct = zzaofVar;
        this.zzcmf = str;
    }

    public final void zza(int i, int i2, int i3, int i4, float f, int i5) {
        try {
            this.zzcct.zza("onScreenInfoChanged", new JSONObject().put(SettingsJsonConstants.ICON_WIDTH_KEY, i).put(SettingsJsonConstants.ICON_HEIGHT_KEY, i2).put("maxSizeWidth", i3).put("maxSizeHeight", i4).put("density", f).put("rotation", i5));
        } catch (JSONException e) {
            zzahw.zzb("Error occured while obtaining screen information.", e);
        }
    }

    public final void zzb(int i, int i2, int i3, int i4) {
        try {
            this.zzcct.zza("onSizeChanged", new JSONObject().put("x", i).put("y", i2).put(SettingsJsonConstants.ICON_WIDTH_KEY, i3).put(SettingsJsonConstants.ICON_HEIGHT_KEY, i4));
        } catch (JSONException e) {
            zzahw.zzb("Error occured while dispatching size change.", e);
        }
    }

    public final void zzbm(String str) {
        try {
            this.zzcct.zza("onError", new JSONObject().put(SettingsJsonConstants.PROMPT_MESSAGE_KEY, str).put("action", this.zzcmf));
        } catch (JSONException e) {
            zzahw.zzb("Error occurred while dispatching error event.", e);
        }
    }

    public final void zzbn(String str) {
        try {
            this.zzcct.zza("onReadyEventReceived", new JSONObject().put("js", str));
        } catch (JSONException e) {
            zzahw.zzb("Error occured while dispatching ready Event.", e);
        }
    }

    public final void zzbo(String str) {
        try {
            this.zzcct.zza("onStateChanged", new JSONObject().put("state", str));
        } catch (JSONException e) {
            zzahw.zzb("Error occured while dispatching state change.", e);
        }
    }

    public final void zzc(int i, int i2, int i3, int i4) {
        try {
            this.zzcct.zza("onDefaultPositionReceived", new JSONObject().put("x", i).put("y", i2).put(SettingsJsonConstants.ICON_WIDTH_KEY, i3).put(SettingsJsonConstants.ICON_HEIGHT_KEY, i4));
        } catch (JSONException e) {
            zzahw.zzb("Error occured while dispatching default position.", e);
        }
    }
}
