package com.google.android.gms.internal;

import android.location.Location;
import android.support.annotation.Nullable;
import com.google.android.gms.common.internal.Hide;
import java.text.SimpleDateFormat;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Locale;
import org.json.JSONArray;
import org.json.JSONException;

@Hide
@zzabh
/* loaded from: classes.dex */
public final class zzads {
    private static final SimpleDateFormat zzcwi = new SimpleDateFormat("yyyyMMdd", Locale.US);

    /* JADX WARN: Removed duplicated region for block: B:30:0x00dc A[Catch: JSONException -> 0x0241, TryCatch #0 {JSONException -> 0x0241, blocks: (B:3:0x0003, B:5:0x0026, B:8:0x002f, B:10:0x0037, B:12:0x003f, B:14:0x0047, B:16:0x004f, B:17:0x0053, B:19:0x0069, B:20:0x007c, B:22:0x008b, B:24:0x00a9, B:26:0x00af, B:28:0x00b5, B:30:0x00dc, B:33:0x00e2, B:37:0x00f0, B:38:0x00f5, B:42:0x0103, B:43:0x0108, B:47:0x0116, B:49:0x0121, B:51:0x0125, B:52:0x0129, B:54:0x0131, B:55:0x0137, B:57:0x0145, B:58:0x0150, B:63:0x0112, B:64:0x00ff, B:65:0x00ec, B:67:0x0096, B:69:0x009e), top: B:2:0x0003 }] */
    /* JADX WARN: Removed duplicated region for block: B:33:0x00e2 A[Catch: JSONException -> 0x0241, TryCatch #0 {JSONException -> 0x0241, blocks: (B:3:0x0003, B:5:0x0026, B:8:0x002f, B:10:0x0037, B:12:0x003f, B:14:0x0047, B:16:0x004f, B:17:0x0053, B:19:0x0069, B:20:0x007c, B:22:0x008b, B:24:0x00a9, B:26:0x00af, B:28:0x00b5, B:30:0x00dc, B:33:0x00e2, B:37:0x00f0, B:38:0x00f5, B:42:0x0103, B:43:0x0108, B:47:0x0116, B:49:0x0121, B:51:0x0125, B:52:0x0129, B:54:0x0131, B:55:0x0137, B:57:0x0145, B:58:0x0150, B:63:0x0112, B:64:0x00ff, B:65:0x00ec, B:67:0x0096, B:69:0x009e), top: B:2:0x0003 }] */
    /* JADX WARN: Removed duplicated region for block: B:57:0x0145 A[Catch: JSONException -> 0x0241, TryCatch #0 {JSONException -> 0x0241, blocks: (B:3:0x0003, B:5:0x0026, B:8:0x002f, B:10:0x0037, B:12:0x003f, B:14:0x0047, B:16:0x004f, B:17:0x0053, B:19:0x0069, B:20:0x007c, B:22:0x008b, B:24:0x00a9, B:26:0x00af, B:28:0x00b5, B:30:0x00dc, B:33:0x00e2, B:37:0x00f0, B:38:0x00f5, B:42:0x0103, B:43:0x0108, B:47:0x0116, B:49:0x0121, B:51:0x0125, B:52:0x0129, B:54:0x0131, B:55:0x0137, B:57:0x0145, B:58:0x0150, B:63:0x0112, B:64:0x00ff, B:65:0x00ec, B:67:0x0096, B:69:0x009e), top: B:2:0x0003 }] */
    /* JADX WARN: Removed duplicated region for block: B:60:0x014e  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.google.android.gms.internal.zzacj zza(android.content.Context r52, com.google.android.gms.internal.zzacf r53, java.lang.String r54) {
        /*
            Method dump skipped, instructions count: 615
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.zzads.zza(android.content.Context, com.google.android.gms.internal.zzacf, java.lang.String):com.google.android.gms.internal.zzacj");
    }

    @Nullable
    private static List<String> zza(@Nullable JSONArray jSONArray, @Nullable List<String> list) throws JSONException {
        if (jSONArray == null) {
            return null;
        }
        if (list == null) {
            list = new LinkedList<>();
        }
        for (int i = 0; i < jSONArray.length(); i++) {
            list.add(jSONArray.getString(i));
        }
        return list;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:114:0x024e A[Catch: JSONException -> 0x08f9, TryCatch #3 {JSONException -> 0x08f9, blocks: (B:3:0x000c, B:5:0x0028, B:6:0x0035, B:8:0x0039, B:9:0x0040, B:11:0x0048, B:12:0x004d, B:14:0x0055, B:15:0x0067, B:17:0x006b, B:18:0x0072, B:20:0x0077, B:21:0x0082, B:23:0x0086, B:24:0x008d, B:26:0x0091, B:27:0x009c, B:29:0x00a1, B:31:0x00b3, B:32:0x00b9, B:34:0x00c2, B:36:0x00c7, B:38:0x00cb, B:39:0x00d4, B:41:0x00dc, B:42:0x00e3, B:44:0x00e8, B:46:0x00ec, B:47:0x00f3, B:49:0x00f8, B:51:0x00fc, B:52:0x0103, B:54:0x0107, B:55:0x010e, B:57:0x0112, B:58:0x0119, B:60:0x011e, B:62:0x0122, B:63:0x0129, B:65:0x012e, B:66:0x0139, B:68:0x013f, B:70:0x014e, B:71:0x018c, B:73:0x0192, B:74:0x0199, B:76:0x01a0, B:77:0x01a7, B:79:0x01ad, B:81:0x01bb, B:85:0x01f6, B:86:0x01c3, B:88:0x01c9, B:89:0x01ce, B:91:0x01d2, B:92:0x01dc, B:94:0x01e9, B:95:0x01f3, B:97:0x01f1, B:98:0x01da, B:101:0x01fd, B:103:0x0203, B:104:0x020b, B:106:0x0210, B:107:0x0215, B:109:0x021b, B:112:0x0243, B:114:0x024e, B:115:0x0255, B:117:0x0259, B:118:0x0264, B:125:0x027b, B:126:0x0236, B:127:0x0238, B:131:0x0280, B:133:0x0284, B:135:0x028c, B:136:0x0292, B:138:0x0298, B:149:0x02a5, B:144:0x02ac, B:140:0x02b0, B:143:0x02b7, B:151:0x02be, B:153:0x02c4, B:154:0x02ce, B:156:0x02e0, B:157:0x02ea, B:159:0x02ee, B:160:0x0305, B:162:0x0319, B:163:0x0326, B:165:0x0373, B:166:0x037a, B:168:0x0385, B:169:0x038f, B:171:0x0393, B:172:0x039f, B:174:0x03c4, B:175:0x03cb, B:177:0x03db, B:178:0x03e6, B:180:0x0454, B:181:0x0473, B:183:0x048b, B:185:0x04e7, B:186:0x054a, B:187:0x0559, B:189:0x056d, B:190:0x0574, B:192:0x059c, B:194:0x05a0, B:195:0x05af, B:197:0x05b5, B:198:0x05c3, B:199:0x05c7, B:201:0x05d8, B:203:0x05ed, B:204:0x060b, B:206:0x0610, B:207:0x0617, B:209:0x061c, B:211:0x0620, B:213:0x062d, B:214:0x0634, B:216:0x0639, B:217:0x067c, B:219:0x0681, B:221:0x069d, B:227:0x0698, B:228:0x06a8, B:230:0x06ad, B:231:0x06b4, B:233:0x06ba, B:235:0x06c2, B:236:0x06c9, B:238:0x06cf, B:239:0x06da, B:241:0x06e0, B:242:0x06eb, B:244:0x06f1, B:246:0x06f5, B:247:0x0700, B:249:0x0706, B:252:0x0711, B:253:0x070e, B:254:0x0718, B:256:0x071e, B:257:0x0729, B:259:0x072d, B:261:0x0749, B:267:0x0744, B:268:0x0754, B:270:0x0758, B:271:0x0763, B:273:0x07d0, B:274:0x07d7, B:276:0x07dd, B:278:0x07e1, B:279:0x07e8, B:281:0x07fa, B:283:0x0806, B:287:0x0812, B:292:0x081f, B:295:0x082e, B:297:0x0832, B:298:0x0839, B:300:0x083d, B:302:0x0847, B:303:0x0853, B:304:0x0861, B:306:0x0865, B:307:0x086c, B:309:0x0872, B:310:0x087d, B:312:0x088b, B:314:0x0891, B:316:0x08a5, B:318:0x08b3, B:320:0x08bf, B:321:0x08c4, B:323:0x08cb, B:325:0x08e3, B:326:0x08ed, B:327:0x08e8, B:328:0x08f0, B:332:0x0857, B:334:0x065b, B:335:0x05f5, B:337:0x05fe, B:339:0x0604, B:342:0x0156, B:344:0x0162, B:347:0x016a, B:348:0x0173, B:351:0x0179, B:356:0x0186, B:263:0x0735, B:223:0x0689, B:121:0x026c), top: B:2:0x000c, inners: #0, #1, #2 }] */
    /* JADX WARN: Removed duplicated region for block: B:117:0x0259 A[Catch: JSONException -> 0x08f9, TryCatch #3 {JSONException -> 0x08f9, blocks: (B:3:0x000c, B:5:0x0028, B:6:0x0035, B:8:0x0039, B:9:0x0040, B:11:0x0048, B:12:0x004d, B:14:0x0055, B:15:0x0067, B:17:0x006b, B:18:0x0072, B:20:0x0077, B:21:0x0082, B:23:0x0086, B:24:0x008d, B:26:0x0091, B:27:0x009c, B:29:0x00a1, B:31:0x00b3, B:32:0x00b9, B:34:0x00c2, B:36:0x00c7, B:38:0x00cb, B:39:0x00d4, B:41:0x00dc, B:42:0x00e3, B:44:0x00e8, B:46:0x00ec, B:47:0x00f3, B:49:0x00f8, B:51:0x00fc, B:52:0x0103, B:54:0x0107, B:55:0x010e, B:57:0x0112, B:58:0x0119, B:60:0x011e, B:62:0x0122, B:63:0x0129, B:65:0x012e, B:66:0x0139, B:68:0x013f, B:70:0x014e, B:71:0x018c, B:73:0x0192, B:74:0x0199, B:76:0x01a0, B:77:0x01a7, B:79:0x01ad, B:81:0x01bb, B:85:0x01f6, B:86:0x01c3, B:88:0x01c9, B:89:0x01ce, B:91:0x01d2, B:92:0x01dc, B:94:0x01e9, B:95:0x01f3, B:97:0x01f1, B:98:0x01da, B:101:0x01fd, B:103:0x0203, B:104:0x020b, B:106:0x0210, B:107:0x0215, B:109:0x021b, B:112:0x0243, B:114:0x024e, B:115:0x0255, B:117:0x0259, B:118:0x0264, B:125:0x027b, B:126:0x0236, B:127:0x0238, B:131:0x0280, B:133:0x0284, B:135:0x028c, B:136:0x0292, B:138:0x0298, B:149:0x02a5, B:144:0x02ac, B:140:0x02b0, B:143:0x02b7, B:151:0x02be, B:153:0x02c4, B:154:0x02ce, B:156:0x02e0, B:157:0x02ea, B:159:0x02ee, B:160:0x0305, B:162:0x0319, B:163:0x0326, B:165:0x0373, B:166:0x037a, B:168:0x0385, B:169:0x038f, B:171:0x0393, B:172:0x039f, B:174:0x03c4, B:175:0x03cb, B:177:0x03db, B:178:0x03e6, B:180:0x0454, B:181:0x0473, B:183:0x048b, B:185:0x04e7, B:186:0x054a, B:187:0x0559, B:189:0x056d, B:190:0x0574, B:192:0x059c, B:194:0x05a0, B:195:0x05af, B:197:0x05b5, B:198:0x05c3, B:199:0x05c7, B:201:0x05d8, B:203:0x05ed, B:204:0x060b, B:206:0x0610, B:207:0x0617, B:209:0x061c, B:211:0x0620, B:213:0x062d, B:214:0x0634, B:216:0x0639, B:217:0x067c, B:219:0x0681, B:221:0x069d, B:227:0x0698, B:228:0x06a8, B:230:0x06ad, B:231:0x06b4, B:233:0x06ba, B:235:0x06c2, B:236:0x06c9, B:238:0x06cf, B:239:0x06da, B:241:0x06e0, B:242:0x06eb, B:244:0x06f1, B:246:0x06f5, B:247:0x0700, B:249:0x0706, B:252:0x0711, B:253:0x070e, B:254:0x0718, B:256:0x071e, B:257:0x0729, B:259:0x072d, B:261:0x0749, B:267:0x0744, B:268:0x0754, B:270:0x0758, B:271:0x0763, B:273:0x07d0, B:274:0x07d7, B:276:0x07dd, B:278:0x07e1, B:279:0x07e8, B:281:0x07fa, B:283:0x0806, B:287:0x0812, B:292:0x081f, B:295:0x082e, B:297:0x0832, B:298:0x0839, B:300:0x083d, B:302:0x0847, B:303:0x0853, B:304:0x0861, B:306:0x0865, B:307:0x086c, B:309:0x0872, B:310:0x087d, B:312:0x088b, B:314:0x0891, B:316:0x08a5, B:318:0x08b3, B:320:0x08bf, B:321:0x08c4, B:323:0x08cb, B:325:0x08e3, B:326:0x08ed, B:327:0x08e8, B:328:0x08f0, B:332:0x0857, B:334:0x065b, B:335:0x05f5, B:337:0x05fe, B:339:0x0604, B:342:0x0156, B:344:0x0162, B:347:0x016a, B:348:0x0173, B:351:0x0179, B:356:0x0186, B:263:0x0735, B:223:0x0689, B:121:0x026c), top: B:2:0x000c, inners: #0, #1, #2 }] */
    /* JADX WARN: Removed duplicated region for block: B:120:0x026c A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:289:0x0816  */
    /* JADX WARN: Removed duplicated region for block: B:293:0x0819  */
    @android.support.annotation.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static org.json.JSONObject zza(android.content.Context r25, com.google.android.gms.internal.zzadl r26) {
        /*
            Method dump skipped, instructions count: 2340
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.zzads.zza(android.content.Context, com.google.android.gms.internal.zzadl):org.json.JSONObject");
    }

    private static void zza(HashMap<String, Object> hashMap, Location location) {
        HashMap hashMap2 = new HashMap();
        Float valueOf = Float.valueOf(location.getAccuracy() * 1000.0f);
        Long valueOf2 = Long.valueOf(location.getTime() * 1000);
        Long valueOf3 = Long.valueOf((long) (location.getLatitude() * 1.0E7d));
        Long valueOf4 = Long.valueOf((long) (location.getLongitude() * 1.0E7d));
        hashMap2.put("radius", valueOf);
        hashMap2.put("lat", valueOf3);
        hashMap2.put("long", valueOf4);
        hashMap2.put("time", valueOf2);
        hashMap.put("uule", hashMap2);
    }

    /* JADX WARN: Removed duplicated region for block: B:26:0x0086  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x0095  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x00a4  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x00b3  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x00c5  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x00f5  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x0102  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x0111  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x011e  */
    /* JADX WARN: Removed duplicated region for block: B:53:0x0131  */
    /* JADX WARN: Removed duplicated region for block: B:56:0x0140  */
    /* JADX WARN: Removed duplicated region for block: B:59:0x014f  */
    /* JADX WARN: Removed duplicated region for block: B:63:0x0121  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static org.json.JSONObject zzb(com.google.android.gms.internal.zzacj r9) throws org.json.JSONException {
        /*
            Method dump skipped, instructions count: 391
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.zzads.zzb(com.google.android.gms.internal.zzacj):org.json.JSONObject");
    }

    @Nullable
    private static JSONArray zzp(List<String> list) throws JSONException {
        JSONArray jSONArray = new JSONArray();
        Iterator<String> it = list.iterator();
        while (it.hasNext()) {
            jSONArray.put(it.next());
        }
        return jSONArray;
    }

    private static Integer zzu(boolean z) {
        return Integer.valueOf(z ? 1 : 0);
    }
}
