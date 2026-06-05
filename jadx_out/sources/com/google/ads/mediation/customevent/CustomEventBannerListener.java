package com.google.ads.mediation.customevent;

import android.view.View;
import com.google.android.gms.common.internal.Hide;

@Hide
@Deprecated
/* loaded from: classes.dex */
public interface CustomEventBannerListener extends CustomEventListener {
    void onClick();

    void onReceivedAd(View view);
}
