package com.google.ads.mediation.customevent;

import com.google.android.gms.common.internal.Hide;

@Hide
@Deprecated
/* loaded from: classes.dex */
public interface CustomEventListener {
    void onDismissScreen();

    void onFailedToReceiveAd();

    void onLeaveApplication();

    void onPresentScreen();
}
