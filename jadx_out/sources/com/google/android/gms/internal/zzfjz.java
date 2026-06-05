package com.google.android.gms.internal;

import java.util.Collections;
import java.util.List;
import java.util.Map;

/* JADX INFO: Access modifiers changed from: package-private */
/* JADX INFO: Add missing generic type declarations: [FieldDescriptorType] */
/* loaded from: classes.dex */
public final class zzfjz<FieldDescriptorType> extends zzfjy<FieldDescriptorType, Object> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public zzfjz(int i) {
        super(i, null);
    }

    @Override // com.google.android.gms.internal.zzfjy
    public final void zzbkr() {
        if (!isImmutable()) {
            for (int i = 0; i < zzdbp(); i++) {
                Map.Entry<FieldDescriptorType, Object> zzmr = zzmr(i);
                if (((zzfhs) zzmr.getKey()).zzczn()) {
                    zzmr.setValue(Collections.unmodifiableList((List) zzmr.getValue()));
                }
            }
            for (Map.Entry<FieldDescriptorType, Object> entry : zzdbq()) {
                if (((zzfhs) entry.getKey()).zzczn()) {
                    entry.setValue(Collections.unmodifiableList((List) entry.getValue()));
                }
            }
        }
        super.zzbkr();
    }
}
