package com.google.android.gms.internal;

import com.google.android.gms.common.internal.Hide;
import org.json.JSONException;
import org.json.JSONObject;

@Hide
@zzabh
/* loaded from: classes.dex */
public final class zzyj {
    private final boolean zzclr;
    private final boolean zzcls;
    private final boolean zzclt;
    private final boolean zzclu;
    private final boolean zzclv;

    private zzyj(zzyl zzylVar) {
        boolean z;
        boolean z2;
        boolean z3;
        boolean z4;
        boolean z5;
        z = zzylVar.zzclr;
        this.zzclr = z;
        z2 = zzylVar.zzcls;
        this.zzcls = z2;
        z3 = zzylVar.zzclt;
        this.zzclt = z3;
        z4 = zzylVar.zzclu;
        this.zzclu = z4;
        z5 = zzylVar.zzclv;
        this.zzclv = z5;
    }

    public final JSONObject toJson() {
        try {
            return new JSONObject().put("sms", this.zzclr).put("tel", this.zzcls).put("calendar", this.zzclt).put("storePicture", this.zzclu).put("inlineVideo", this.zzclv);
        } catch (JSONException e) {
            zzahw.zzb("Error occured while obtaining the MRAID capabilities.", e);
            return null;
        }
    }
}
