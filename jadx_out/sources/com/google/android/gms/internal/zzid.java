package com.google.android.gms.internal;

import com.google.android.gms.common.internal.Hide;
import java.util.Comparator;

@Hide
/* loaded from: classes.dex */
public final class zzid implements Comparator<zzhr> {
    public zzid(zzic zzicVar) {
    }

    @Override // java.util.Comparator
    public final /* synthetic */ int compare(zzhr zzhrVar, zzhr zzhrVar2) {
        zzhr zzhrVar3 = zzhrVar;
        zzhr zzhrVar4 = zzhrVar2;
        if (zzhrVar3.zzhd() < zzhrVar4.zzhd()) {
            return -1;
        }
        if (zzhrVar3.zzhd() > zzhrVar4.zzhd()) {
            return 1;
        }
        if (zzhrVar3.zzhc() < zzhrVar4.zzhc()) {
            return -1;
        }
        if (zzhrVar3.zzhc() > zzhrVar4.zzhc()) {
            return 1;
        }
        float zzhf = (zzhrVar3.zzhf() - zzhrVar3.zzhd()) * (zzhrVar3.zzhe() - zzhrVar3.zzhc());
        float zzhf2 = (zzhrVar4.zzhf() - zzhrVar4.zzhd()) * (zzhrVar4.zzhe() - zzhrVar4.zzhc());
        if (zzhf > zzhf2) {
            return -1;
        }
        return zzhf < zzhf2 ? 1 : 0;
    }
}
