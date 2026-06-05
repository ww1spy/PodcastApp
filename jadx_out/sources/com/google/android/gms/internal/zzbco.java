package com.google.android.gms.internal;

import com.google.android.gms.cast.CastStatusCodes;
import org.json.JSONObject;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzbco extends zzbcr {
    private /* synthetic */ zzbcl zzfkt;
    private /* synthetic */ int zzfkv;
    private /* synthetic */ String zzfkw;
    private /* synthetic */ JSONObject zzfkx;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzbco(zzbcl zzbclVar, int i, String str, JSONObject jSONObject) {
        super(zzbclVar);
        this.zzfkt = zzbclVar;
        this.zzfkv = i;
        this.zzfkw = str;
        this.zzfkx = jSONObject;
    }

    @Override // com.google.android.gms.internal.zzbct
    public final void execute() {
        int i;
        zzbei zzbeiVar;
        switch (this.zzfkv) {
            case 2:
                i = 5;
                break;
            case 3:
                i = 1;
                break;
            case 4:
                i = 2;
                break;
            case 5:
                i = 3;
                break;
            case 6:
                i = 4;
                break;
            default:
                i = 0;
                break;
        }
        if (i != 0) {
            this.zzfkt.zza(this.zzfkw, i, this.zzfkx, this.zzezb);
            return;
        }
        this.zzezb.zza(-1L, CastStatusCodes.INVALID_REQUEST, null);
        zzbeiVar = zzbcl.zzeus;
        zzbeiVar.zzf("sendPlayerRequest for unsupported playerState: %d", Integer.valueOf(this.zzfkv));
    }
}
