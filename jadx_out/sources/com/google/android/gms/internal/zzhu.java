package com.google.android.gms.internal;

import java.util.Comparator;

/* loaded from: classes.dex */
final class zzhu implements Comparator<zzia> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public zzhu(zzht zzhtVar) {
    }

    @Override // java.util.Comparator
    public final /* synthetic */ int compare(zzia zziaVar, zzia zziaVar2) {
        zzia zziaVar3 = zziaVar;
        zzia zziaVar4 = zziaVar2;
        int i = zziaVar3.zzbal - zziaVar4.zzbal;
        return i != 0 ? i : (int) (zziaVar3.value - zziaVar4.value);
    }
}
