package com.google.android.gms.internal;

import android.os.IBinder;
import android.os.IInterface;
import android.os.RemoteException;
import com.google.android.gms.ads.formats.NativeAd;
import com.google.android.gms.common.internal.Hide;
import java.util.ArrayList;
import java.util.List;

@Hide
@zzabh
/* loaded from: classes.dex */
public final class zzqr extends NativeAd.AdChoicesInfo {
    private final List<NativeAd.Image> zzbxk = new ArrayList();
    private final zzqo zzcag;
    private String zzcah;

    public zzqr(zzqo zzqoVar) {
        zzqs zzqsVar;
        IBinder iBinder;
        this.zzcag = zzqoVar;
        try {
            this.zzcah = this.zzcag.getText();
        } catch (RemoteException e) {
            zzaky.zzb("Error while obtaining attribution text.", e);
            this.zzcah = "";
        }
        try {
            for (zzqs zzqsVar2 : zzqoVar.zzjw()) {
                if (!(zzqsVar2 instanceof IBinder) || (iBinder = (IBinder) zzqsVar2) == null) {
                    zzqsVar = null;
                } else {
                    IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.formats.client.INativeAdImage");
                    zzqsVar = queryLocalInterface instanceof zzqs ? (zzqs) queryLocalInterface : new zzqu(iBinder);
                }
                if (zzqsVar != null) {
                    this.zzbxk.add(new zzqv(zzqsVar));
                }
            }
        } catch (RemoteException e2) {
            zzaky.zzb("Error while obtaining image.", e2);
        }
    }

    @Override // com.google.android.gms.ads.formats.NativeAd.AdChoicesInfo
    public final List<NativeAd.Image> getImages() {
        return this.zzbxk;
    }

    @Override // com.google.android.gms.ads.formats.NativeAd.AdChoicesInfo
    public final CharSequence getText() {
        return this.zzcah;
    }
}
