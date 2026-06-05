package com.google.android.gms.internal;

import java.util.Map;

/* JADX INFO: Access modifiers changed from: package-private */
/* JADX INFO: Add missing generic type declarations: [V, K] */
/* JADX WARN: Incorrect field signature: TK; */
/* loaded from: classes.dex */
public final class zzfkd<K, V> implements Comparable<zzfkd>, Map.Entry<K, V> {
    private V value;
    private final Comparable zzpsr;
    private /* synthetic */ zzfjy zzpss;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Multi-variable type inference failed */
    public zzfkd(zzfjy zzfjyVar, K k, V v) {
        this.zzpss = zzfjyVar;
        this.zzpsr = k;
        this.value = v;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzfkd(zzfjy zzfjyVar, Map.Entry<K, V> entry) {
        this(zzfjyVar, (Comparable) entry.getKey(), entry.getValue());
    }

    private static boolean equals(Object obj, Object obj2) {
        return obj == null ? obj2 == null : obj.equals(obj2);
    }

    @Override // java.lang.Comparable
    public final /* synthetic */ int compareTo(zzfkd zzfkdVar) {
        return ((Comparable) getKey()).compareTo((Comparable) zzfkdVar.getKey());
    }

    @Override // java.util.Map.Entry
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof Map.Entry)) {
            return false;
        }
        Map.Entry entry = (Map.Entry) obj;
        return equals(this.zzpsr, entry.getKey()) && equals(this.value, entry.getValue());
    }

    @Override // java.util.Map.Entry
    public final /* synthetic */ Object getKey() {
        return this.zzpsr;
    }

    @Override // java.util.Map.Entry
    public final V getValue() {
        return this.value;
    }

    @Override // java.util.Map.Entry
    public final int hashCode() {
        return (this.zzpsr == null ? 0 : this.zzpsr.hashCode()) ^ (this.value != null ? this.value.hashCode() : 0);
    }

    @Override // java.util.Map.Entry
    public final V setValue(V v) {
        this.zzpss.zzdbr();
        V v2 = this.value;
        this.value = v;
        return v2;
    }

    public final String toString() {
        String valueOf = String.valueOf(this.zzpsr);
        String valueOf2 = String.valueOf(this.value);
        StringBuilder sb = new StringBuilder(1 + String.valueOf(valueOf).length() + String.valueOf(valueOf2).length());
        sb.append(valueOf);
        sb.append("=");
        sb.append(valueOf2);
        return sb.toString();
    }
}
