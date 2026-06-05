package com.google.android.gms.internal;

import android.content.Context;
import android.util.Log;
import com.google.android.gms.clearcut.ClearcutLogger;
import com.google.android.gms.phenotype.Phenotype;
import com.google.android.gms.phenotype.PhenotypeFlag;
import io.fabric.sdk.android.services.network.HttpRequest;
import java.nio.ByteBuffer;
import java.nio.charset.Charset;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes.dex */
public final class zzbft implements ClearcutLogger.zza {
    private static final Charset UTF_8 = Charset.forName(HttpRequest.CHARSET_UTF8);
    private static final PhenotypeFlag.Factory zzfqj = new PhenotypeFlag.Factory(Phenotype.getContentProviderUri("com.google.android.gms.clearcut.public")).withGservicePrefix("gms:playlog:service:sampling_").withPhenotypePrefix("LogSampling__");
    private static Map<String, PhenotypeFlag<String>> zzfqk;
    private static Boolean zzfql;
    private static Long zzfqm;
    private final Context zzaiq;

    public zzbft(Context context) {
        this.zzaiq = context;
        if (zzfqk == null) {
            zzfqk = new HashMap();
        }
        if (this.zzaiq != null) {
            PhenotypeFlag.maybeInit(this.zzaiq);
        }
    }

    private static boolean zzcc(Context context) {
        if (zzfql == null) {
            zzfql = Boolean.valueOf(zzbih.zzdd(context).checkCallingOrSelfPermission("com.google.android.providers.gsf.permission.READ_GSERVICES") == 0);
        }
        return zzfql.booleanValue();
    }

    private static zzbfu zzge(String str) {
        if (str == null) {
            return null;
        }
        String str2 = "";
        int indexOf = str.indexOf(44);
        int i = 0;
        if (indexOf >= 0) {
            str2 = str.substring(0, indexOf);
            i = indexOf + 1;
        }
        String str3 = str2;
        int indexOf2 = str.indexOf(47, i);
        if (indexOf2 <= 0) {
            String valueOf = String.valueOf(str);
            Log.e("LogSamplerImpl", valueOf.length() != 0 ? "Failed to parse the rule: ".concat(valueOf) : new String("Failed to parse the rule: "));
            return null;
        }
        try {
            long parseLong = Long.parseLong(str.substring(i, indexOf2));
            long parseLong2 = Long.parseLong(str.substring(indexOf2 + 1));
            if (parseLong >= 0 && parseLong2 >= 0) {
                return new zzbfu(str3, parseLong, parseLong2);
            }
            StringBuilder sb = new StringBuilder(72);
            sb.append("negative values not supported: ");
            sb.append(parseLong);
            sb.append("/");
            sb.append(parseLong2);
            Log.e("LogSamplerImpl", sb.toString());
            return null;
        } catch (NumberFormatException e) {
            String valueOf2 = String.valueOf(str);
            Log.e("LogSamplerImpl", valueOf2.length() != 0 ? "parseLong() failed while parsing: ".concat(valueOf2) : new String("parseLong() failed while parsing: "), e);
            return null;
        }
    }

    @Override // com.google.android.gms.clearcut.ClearcutLogger.zza
    public final boolean zzg(String str, int i) {
        long longValue;
        byte[] array;
        long j;
        long j2;
        String str2 = null;
        String valueOf = (str == null || str.isEmpty()) ? i >= 0 ? String.valueOf(i) : null : str;
        if (valueOf == null) {
            return true;
        }
        if (this.zzaiq != null && zzcc(this.zzaiq)) {
            PhenotypeFlag<String> phenotypeFlag = zzfqk.get(valueOf);
            if (phenotypeFlag == null) {
                phenotypeFlag = zzfqj.createFlag(valueOf, null);
                zzfqk.put(valueOf, phenotypeFlag);
            }
            str2 = phenotypeFlag.get();
        }
        zzbfu zzge = zzge(str2);
        if (zzge == null) {
            return true;
        }
        String str3 = zzge.zzfqn;
        Context context = this.zzaiq;
        if (zzfqm == null) {
            if (context == null) {
                longValue = 0;
                if (str3 != null || str3.isEmpty()) {
                    array = ByteBuffer.allocate(8).putLong(longValue).array();
                } else {
                    byte[] bytes = str3.getBytes(UTF_8);
                    ByteBuffer allocate = ByteBuffer.allocate(bytes.length + 8);
                    allocate.put(bytes);
                    allocate.putLong(longValue);
                    array = allocate.array();
                }
                long zzi = zzbfo.zzi(array);
                j = zzge.zzfqo;
                j2 = zzge.zzfqp;
                if (j < 0 && j2 >= 0) {
                    if (j2 <= 0) {
                        return false;
                    }
                    if (zzi < 0) {
                        zzi = (Long.MAX_VALUE % j2) + 1 + ((zzi & Long.MAX_VALUE) % j2);
                    }
                    return zzi % j2 < j;
                }
                StringBuilder sb = new StringBuilder(72);
                sb.append("negative values not supported: ");
                sb.append(j);
                sb.append("/");
                sb.append(j2);
                throw new IllegalArgumentException(sb.toString());
            }
            zzfqm = zzcc(context) ? Long.valueOf(zzdnm.getLong(context.getContentResolver(), "android_id", 0L)) : 0L;
        }
        longValue = zzfqm.longValue();
        if (str3 != null) {
        }
        array = ByteBuffer.allocate(8).putLong(longValue).array();
        long zzi2 = zzbfo.zzi(array);
        j = zzge.zzfqo;
        j2 = zzge.zzfqp;
        if (j < 0) {
        }
        StringBuilder sb2 = new StringBuilder(72);
        sb2.append("negative values not supported: ");
        sb2.append(j);
        sb2.append("/");
        sb2.append(j2);
        throw new IllegalArgumentException(sb2.toString());
    }
}
