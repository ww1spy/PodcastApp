package com.google.android.gms.tagmanager;

/* loaded from: classes.dex */
final class zzgj extends Number implements Comparable<zzgj> {
    private double zzkuh;
    private long zzkui;
    private boolean zzkuj = false;

    private zzgj(double d) {
        this.zzkuh = d;
    }

    private zzgj(long j) {
        this.zzkui = j;
    }

    public static zzgj zzb(Double d) {
        return new zzgj(d.doubleValue());
    }

    public static zzgj zzbi(long j) {
        return new zzgj(j);
    }

    public static zzgj zzmh(String str) throws NumberFormatException {
        try {
            try {
                return new zzgj(Long.parseLong(str));
            } catch (NumberFormatException unused) {
                throw new NumberFormatException(String.valueOf(str).concat(" is not a valid TypedNumber"));
            }
        } catch (NumberFormatException unused2) {
            return new zzgj(Double.parseDouble(str));
        }
    }

    @Override // java.lang.Number
    public final byte byteValue() {
        return (byte) longValue();
    }

    @Override // java.lang.Number
    public final double doubleValue() {
        return this.zzkuj ? this.zzkui : this.zzkuh;
    }

    public final boolean equals(Object obj) {
        return (obj instanceof zzgj) && compareTo((zzgj) obj) == 0;
    }

    @Override // java.lang.Number
    public final float floatValue() {
        return (float) doubleValue();
    }

    public final int hashCode() {
        return new Long(longValue()).hashCode();
    }

    @Override // java.lang.Number
    public final int intValue() {
        return (int) longValue();
    }

    @Override // java.lang.Number
    public final long longValue() {
        return this.zzkuj ? this.zzkui : (long) this.zzkuh;
    }

    @Override // java.lang.Number
    public final short shortValue() {
        return (short) longValue();
    }

    public final String toString() {
        return this.zzkuj ? Long.toString(this.zzkui) : Double.toString(this.zzkuh);
    }

    @Override // java.lang.Comparable
    /* renamed from: zza, reason: merged with bridge method [inline-methods] */
    public final int compareTo(zzgj zzgjVar) {
        return (this.zzkuj && zzgjVar.zzkuj) ? new Long(this.zzkui).compareTo(Long.valueOf(zzgjVar.zzkui)) : Double.compare(doubleValue(), zzgjVar.doubleValue());
    }

    public final boolean zzbid() {
        return !this.zzkuj;
    }

    public final boolean zzbie() {
        return this.zzkuj;
    }
}
