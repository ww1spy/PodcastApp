package com.google.android.gms.internal;

import android.os.RemoteException;
import com.google.android.gms.ads.reward.RewardItem;
import com.google.android.gms.common.internal.Hide;

@Hide
@zzabh
/* loaded from: classes.dex */
public final class zzaff implements RewardItem {
    private final zzaeu zzczy;

    public zzaff(zzaeu zzaeuVar) {
        this.zzczy = zzaeuVar;
    }

    @Override // com.google.android.gms.ads.reward.RewardItem
    public final int getAmount() {
        if (this.zzczy == null) {
            return 0;
        }
        try {
            return this.zzczy.getAmount();
        } catch (RemoteException e) {
            zzaky.zzc("Could not forward getAmount to RewardItem", e);
            return 0;
        }
    }

    @Override // com.google.android.gms.ads.reward.RewardItem
    public final String getType() {
        if (this.zzczy == null) {
            return null;
        }
        try {
            return this.zzczy.getType();
        } catch (RemoteException e) {
            zzaky.zzc("Could not forward getType to RewardItem", e);
            return null;
        }
    }
}
