package com.google.ads.mediation;

import com.google.ads.mediation.MediationServerParameters;
import com.google.android.gms.common.internal.Hide;

@Hide
@Deprecated
/* loaded from: classes.dex */
public interface MediationAdapter<ADDITIONAL_PARAMETERS, SERVER_PARAMETERS extends MediationServerParameters> {
    void destroy();

    Class<ADDITIONAL_PARAMETERS> getAdditionalParametersType();

    Class<SERVER_PARAMETERS> getServerParametersType();
}
