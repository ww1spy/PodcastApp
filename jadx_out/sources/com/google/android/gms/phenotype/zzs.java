package com.google.android.gms.phenotype;

import android.content.SharedPreferences;
import android.util.Log;
import com.google.android.gms.phenotype.PhenotypeFlag;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzs extends PhenotypeFlag<String> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public zzs(PhenotypeFlag.Factory factory, String str, String str2) {
        super(factory, str, str2, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Override // com.google.android.gms.phenotype.PhenotypeFlag
    /* renamed from: zzc, reason: merged with bridge method [inline-methods] */
    public final String zzb(SharedPreferences sharedPreferences) {
        try {
            return sharedPreferences.getString(this.zzkgv, null);
        } catch (ClassCastException e) {
            String valueOf = String.valueOf(this.zzkgv);
            Log.e("PhenotypeFlag", valueOf.length() != 0 ? "Invalid string value in SharedPreferences for ".concat(valueOf) : new String("Invalid string value in SharedPreferences for "), e);
            return null;
        }
    }

    @Override // com.google.android.gms.phenotype.PhenotypeFlag
    public final /* synthetic */ String zzkz(String str) {
        return str;
    }
}
