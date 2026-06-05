package com.google.android.gms.ads.mediation;

import android.os.Bundle;
import com.google.android.gms.common.internal.Hide;

/* loaded from: classes.dex */
public interface MediationAdapter {

    @Hide
    /* loaded from: classes.dex */
    public static class zza {
        private int zzdsw;

        public final zza zzah(int i) {
            this.zzdsw = 1;
            return this;
        }

        public final Bundle zzvp() {
            Bundle bundle = new Bundle();
            bundle.putInt("capabilities", this.zzdsw);
            return bundle;
        }
    }

    void onDestroy();

    void onPause();

    void onResume();
}
