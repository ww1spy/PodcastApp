package com.google.android.gms.internal;

import java.lang.Comparable;
import java.util.AbstractMap;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.SortedMap;
import java.util.TreeMap;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class zzfjy<K extends Comparable<K>, V> extends AbstractMap<K, V> {
    private boolean zzldh;
    private final int zzpsk;
    private List<zzfkd> zzpsl;
    private Map<K, V> zzpsm;
    private volatile zzfkf zzpsn;
    private Map<K, V> zzpso;

    private zzfjy(int i) {
        this.zzpsk = i;
        this.zzpsl = Collections.emptyList();
        this.zzpsm = Collections.emptyMap();
        this.zzpso = Collections.emptyMap();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ zzfjy(int i, zzfjz zzfjzVar) {
        this(i);
    }

    private final int zza(K k) {
        int size = this.zzpsl.size() - 1;
        if (size >= 0) {
            int compareTo = k.compareTo((Comparable) this.zzpsl.get(size).getKey());
            if (compareTo > 0) {
                return -(size + 2);
            }
            if (compareTo == 0) {
                return size;
            }
        }
        int i = 0;
        while (i <= size) {
            int i2 = (i + size) / 2;
            int compareTo2 = k.compareTo((Comparable) this.zzpsl.get(i2).getKey());
            if (compareTo2 < 0) {
                size = i2 - 1;
            } else {
                if (compareTo2 <= 0) {
                    return i2;
                }
                i = i2 + 1;
            }
        }
        return -(i + 1);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void zzdbr() {
        if (this.zzldh) {
            throw new UnsupportedOperationException();
        }
    }

    private final SortedMap<K, V> zzdbs() {
        zzdbr();
        if (this.zzpsm.isEmpty() && !(this.zzpsm instanceof TreeMap)) {
            this.zzpsm = new TreeMap();
            this.zzpso = ((TreeMap) this.zzpsm).descendingMap();
        }
        return (SortedMap) this.zzpsm;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <FieldDescriptorType extends zzfhs<FieldDescriptorType>> zzfjy<FieldDescriptorType, Object> zzmq(int i) {
        return new zzfjz(i);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final V zzms(int i) {
        zzdbr();
        V v = (V) this.zzpsl.remove(i).getValue();
        if (!this.zzpsm.isEmpty()) {
            Iterator<Map.Entry<K, V>> it = zzdbs().entrySet().iterator();
            this.zzpsl.add(new zzfkd(this, it.next()));
            it.remove();
        }
        return v;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public void clear() {
        zzdbr();
        if (!this.zzpsl.isEmpty()) {
            this.zzpsl.clear();
        }
        if (this.zzpsm.isEmpty()) {
            return;
        }
        this.zzpsm.clear();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.AbstractMap, java.util.Map
    public boolean containsKey(Object obj) {
        Comparable comparable = (Comparable) obj;
        return zza((zzfjy<K, V>) comparable) >= 0 || this.zzpsm.containsKey(comparable);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public Set<Map.Entry<K, V>> entrySet() {
        if (this.zzpsn == null) {
            this.zzpsn = new zzfkf(this, null);
        }
        return this.zzpsn;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof zzfjy)) {
            return super.equals(obj);
        }
        zzfjy zzfjyVar = (zzfjy) obj;
        int size = size();
        if (size != zzfjyVar.size()) {
            return false;
        }
        int zzdbp = zzdbp();
        if (zzdbp != zzfjyVar.zzdbp()) {
            return entrySet().equals(zzfjyVar.entrySet());
        }
        for (int i = 0; i < zzdbp; i++) {
            if (!zzmr(i).equals(zzfjyVar.zzmr(i))) {
                return false;
            }
        }
        if (zzdbp != size) {
            return this.zzpsm.equals(zzfjyVar.zzpsm);
        }
        return true;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.AbstractMap, java.util.Map
    public V get(Object obj) {
        Comparable comparable = (Comparable) obj;
        int zza = zza((zzfjy<K, V>) comparable);
        return zza >= 0 ? (V) this.zzpsl.get(zza).getValue() : this.zzpsm.get(comparable);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public int hashCode() {
        int zzdbp = zzdbp();
        int i = 0;
        for (int i2 = 0; i2 < zzdbp; i2++) {
            i += this.zzpsl.get(i2).hashCode();
        }
        return this.zzpsm.size() > 0 ? i + this.zzpsm.hashCode() : i;
    }

    public final boolean isImmutable() {
        return this.zzldh;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.AbstractMap, java.util.Map
    public /* synthetic */ Object put(Object obj, Object obj2) {
        return zza((zzfjy<K, V>) obj, (Comparable) obj2);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.AbstractMap, java.util.Map
    public V remove(Object obj) {
        zzdbr();
        Comparable comparable = (Comparable) obj;
        int zza = zza((zzfjy<K, V>) comparable);
        if (zza >= 0) {
            return (V) zzms(zza);
        }
        if (this.zzpsm.isEmpty()) {
            return null;
        }
        return this.zzpsm.remove(comparable);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public int size() {
        return this.zzpsl.size() + this.zzpsm.size();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final V zza(K k, V v) {
        zzdbr();
        int zza = zza((zzfjy<K, V>) k);
        if (zza >= 0) {
            return (V) this.zzpsl.get(zza).setValue(v);
        }
        zzdbr();
        if (this.zzpsl.isEmpty() && !(this.zzpsl instanceof ArrayList)) {
            this.zzpsl = new ArrayList(this.zzpsk);
        }
        int i = -(zza + 1);
        if (i >= this.zzpsk) {
            return zzdbs().put(k, v);
        }
        if (this.zzpsl.size() == this.zzpsk) {
            zzfkd remove = this.zzpsl.remove(this.zzpsk - 1);
            zzdbs().put((Comparable) remove.getKey(), remove.getValue());
        }
        this.zzpsl.add(i, new zzfkd(this, k, v));
        return null;
    }

    public void zzbkr() {
        if (this.zzldh) {
            return;
        }
        this.zzpsm = this.zzpsm.isEmpty() ? Collections.emptyMap() : Collections.unmodifiableMap(this.zzpsm);
        this.zzpso = this.zzpso.isEmpty() ? Collections.emptyMap() : Collections.unmodifiableMap(this.zzpso);
        this.zzldh = true;
    }

    public final int zzdbp() {
        return this.zzpsl.size();
    }

    public final Iterable<Map.Entry<K, V>> zzdbq() {
        return this.zzpsm.isEmpty() ? zzfka.zzdbt() : this.zzpsm.entrySet();
    }

    public final Map.Entry<K, V> zzmr(int i) {
        return this.zzpsl.get(i);
    }
}
