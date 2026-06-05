package com.google.android.gms.tagmanager;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteException;
import android.text.TextUtils;
import com.google.android.gms.cast.CastStatusCodes;
import java.util.Collections;
import java.util.List;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzec implements zzcc {
    private static final String zzdzv = String.format("CREATE TABLE IF NOT EXISTS %s ( '%s' INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, '%s' INTEGER NOT NULL, '%s' TEXT NOT NULL,'%s' INTEGER NOT NULL);", "gtm_hits", "hit_id", "hit_time", "hit_url", "hit_first_send_time");
    private final Context mContext;
    private com.google.android.gms.common.util.zze zzata;
    private final zzee zzkra;
    private volatile zzbe zzkrb;
    private final zzcd zzkrc;
    private final String zzkrd;
    private long zzkre;
    private final int zzkrf;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzec(zzcd zzcdVar, Context context) {
        this(zzcdVar, context, "gtm_urls.db", CastStatusCodes.AUTHENTICATION_FAILED);
    }

    private zzec(zzcd zzcdVar, Context context, String str, int i) {
        this.mContext = context.getApplicationContext();
        this.zzkrd = str;
        this.zzkrc = zzcdVar;
        this.zzata = com.google.android.gms.common.util.zzi.zzanq();
        this.zzkra = new zzee(this, this.mContext, this.zzkrd);
        this.zzkrb = new zzfv(this.mContext, new zzed(this));
        this.zzkre = 0L;
        this.zzkrf = CastStatusCodes.AUTHENTICATION_FAILED;
    }

    private final int zzbhe() {
        Cursor rawQuery;
        SQLiteDatabase zzlq = zzlq("Error opening database for getNumStoredHits.");
        if (zzlq == null) {
            return 0;
        }
        Cursor cursor = null;
        try {
            try {
                rawQuery = zzlq.rawQuery("SELECT COUNT(*) from gtm_hits", null);
            } catch (SQLiteException unused) {
            }
        } catch (Throwable th) {
            th = th;
        }
        try {
            r1 = rawQuery.moveToFirst() ? (int) rawQuery.getLong(0) : 0;
            if (rawQuery != null) {
                rawQuery.close();
                return r1;
            }
        } catch (SQLiteException unused2) {
            cursor = rawQuery;
            zzdj.zzcz("Error getting numStoredHits");
            if (cursor != null) {
                cursor.close();
            }
            return r1;
        } catch (Throwable th2) {
            th = th2;
            cursor = rawQuery;
            if (cursor != null) {
                cursor.close();
            }
            throw th;
        }
        return r1;
    }

    private final int zzbhf() {
        Cursor query;
        SQLiteDatabase zzlq = zzlq("Error opening database for getNumStoredHits.");
        if (zzlq == null) {
            return 0;
        }
        Cursor cursor = null;
        try {
            try {
                query = zzlq.query("gtm_hits", new String[]{"hit_id", "hit_first_send_time"}, "hit_first_send_time=0", null, null, null, null);
            } catch (SQLiteException unused) {
            }
        } catch (Throwable th) {
            th = th;
        }
        try {
            int count = query.getCount();
            if (query != null) {
                query.close();
            }
            return count;
        } catch (SQLiteException unused2) {
            cursor = query;
            zzdj.zzcz("Error getting num untried hits");
            if (cursor != null) {
                cursor.close();
            }
            return 0;
        } catch (Throwable th2) {
            th = th2;
            cursor = query;
            if (cursor != null) {
                cursor.close();
            }
            throw th;
        }
    }

    private final void zze(String[] strArr) {
        SQLiteDatabase zzlq;
        if (strArr == null || strArr.length == 0 || (zzlq = zzlq("Error opening database for deleteHits.")) == null) {
            return;
        }
        boolean z = true;
        try {
            zzlq.delete("gtm_hits", String.format("HIT_ID in (%s)", TextUtils.join(",", Collections.nCopies(strArr.length, "?"))), strArr);
            zzcd zzcdVar = this.zzkrc;
            if (zzbhe() != 0) {
                z = false;
            }
            zzcdVar.zzbz(z);
        } catch (SQLiteException unused) {
            zzdj.zzcz("Error deleting hits");
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:15:0x003d, code lost:
    
        if (r15.moveToFirst() != false) goto L13;
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x003f, code lost:
    
        r0.add(java.lang.String.valueOf(r15.getLong(0)));
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x004e, code lost:
    
        if (r15.moveToNext() != false) goto L42;
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x0050, code lost:
    
        if (r15 == null) goto L32;
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x0052, code lost:
    
        r15.close();
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x0055, code lost:
    
        return r0;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final java.util.List<java.lang.String> zzfe(int r15) {
        /*
            r14 = this;
            java.util.ArrayList r0 = new java.util.ArrayList
            r0.<init>()
            if (r15 > 0) goto Ld
            java.lang.String r15 = "Invalid maxHits specified. Skipping"
            com.google.android.gms.tagmanager.zzdj.zzcz(r15)
            return r0
        Ld:
            java.lang.String r1 = "Error opening database for peekHitIds."
            android.database.sqlite.SQLiteDatabase r2 = r14.zzlq(r1)
            if (r2 != 0) goto L16
            return r0
        L16:
            r1 = 0
            java.lang.String r3 = "gtm_hits"
            java.lang.String r4 = "hit_id"
            java.lang.String[] r4 = new java.lang.String[]{r4}     // Catch: java.lang.Throwable -> L5e android.database.sqlite.SQLiteException -> L60
            r5 = 0
            r6 = 0
            r7 = 0
            r8 = 0
            java.lang.String r9 = "%s ASC"
            r10 = 1
            java.lang.Object[] r10 = new java.lang.Object[r10]     // Catch: java.lang.Throwable -> L5e android.database.sqlite.SQLiteException -> L60
            java.lang.String r11 = "hit_id"
            r12 = 0
            r10[r12] = r11     // Catch: java.lang.Throwable -> L5e android.database.sqlite.SQLiteException -> L60
            java.lang.String r9 = java.lang.String.format(r9, r10)     // Catch: java.lang.Throwable -> L5e android.database.sqlite.SQLiteException -> L60
            java.lang.String r10 = java.lang.Integer.toString(r15)     // Catch: java.lang.Throwable -> L5e android.database.sqlite.SQLiteException -> L60
            android.database.Cursor r15 = r2.query(r3, r4, r5, r6, r7, r8, r9, r10)     // Catch: java.lang.Throwable -> L5e android.database.sqlite.SQLiteException -> L60
            boolean r1 = r15.moveToFirst()     // Catch: java.lang.Throwable -> L56 android.database.sqlite.SQLiteException -> L59
            if (r1 == 0) goto L50
        L3f:
            long r1 = r15.getLong(r12)     // Catch: java.lang.Throwable -> L56 android.database.sqlite.SQLiteException -> L59
            java.lang.String r1 = java.lang.String.valueOf(r1)     // Catch: java.lang.Throwable -> L56 android.database.sqlite.SQLiteException -> L59
            r0.add(r1)     // Catch: java.lang.Throwable -> L56 android.database.sqlite.SQLiteException -> L59
            boolean r1 = r15.moveToNext()     // Catch: java.lang.Throwable -> L56 android.database.sqlite.SQLiteException -> L59
            if (r1 != 0) goto L3f
        L50:
            if (r15 == 0) goto L83
            r15.close()
            return r0
        L56:
            r0 = move-exception
            r1 = r15
            goto L84
        L59:
            r1 = move-exception
            r13 = r1
            r1 = r15
            r15 = r13
            goto L61
        L5e:
            r0 = move-exception
            goto L84
        L60:
            r15 = move-exception
        L61:
            java.lang.String r2 = "Error in peekHits fetching hitIds: "
            java.lang.String r15 = r15.getMessage()     // Catch: java.lang.Throwable -> L5e
            java.lang.String r15 = java.lang.String.valueOf(r15)     // Catch: java.lang.Throwable -> L5e
            int r3 = r15.length()     // Catch: java.lang.Throwable -> L5e
            if (r3 == 0) goto L76
            java.lang.String r15 = r2.concat(r15)     // Catch: java.lang.Throwable -> L5e
            goto L7b
        L76:
            java.lang.String r15 = new java.lang.String     // Catch: java.lang.Throwable -> L5e
            r15.<init>(r2)     // Catch: java.lang.Throwable -> L5e
        L7b:
            com.google.android.gms.tagmanager.zzdj.zzcz(r15)     // Catch: java.lang.Throwable -> L5e
            if (r1 == 0) goto L83
            r1.close()
        L83:
            return r0
        L84:
            if (r1 == 0) goto L89
            r1.close()
        L89:
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.tagmanager.zzec.zzfe(int):java.util.List");
    }

    /* JADX WARN: Code restructure failed: missing block: B:12:0x0045, code lost:
    
        if (r12.moveToFirst() != false) goto L99;
     */
    /* JADX WARN: Code restructure failed: missing block: B:13:0x006e, code lost:
    
        if (r12 == null) goto L89;
     */
    /* JADX WARN: Code restructure failed: missing block: B:14:0x0070, code lost:
    
        r12.close();
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x0091, code lost:
    
        r2 = r11;
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x0097, code lost:
    
        r12 = r2.query("gtm_hits", new java.lang.String[]{"hit_id", "hit_url"}, null, null, null, null, java.lang.String.format("%s ASC", "hit_id"), java.lang.Integer.toString(40));
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x009f, code lost:
    
        if (r12.moveToFirst() == false) goto L30;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x00a1, code lost:
    
        r1 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x00ad, code lost:
    
        if (((android.database.sqlite.SQLiteCursor) r12).getWindow().getNumRows() <= 0) goto L27;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x00af, code lost:
    
        ((com.google.android.gms.tagmanager.zzbx) r2.get(r1)).zzlv(r12.getString(1));
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x00d8, code lost:
    
        r1 = r1 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x00de, code lost:
    
        if (r12.moveToNext() != false) goto L106;
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x00bd, code lost:
    
        com.google.android.gms.tagmanager.zzdj.zzcz(java.lang.String.format("HitString for hitId %d too large.  Hit will be deleted.", java.lang.Long.valueOf(((com.google.android.gms.tagmanager.zzbx) r2.get(r1)).zzbgr())));
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x00e0, code lost:
    
        if (r12 == null) goto L32;
     */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x00e2, code lost:
    
        r12.close();
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x00e5, code lost:
    
        return r2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x00e6, code lost:
    
        r0 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x00fb, code lost:
    
        r1 = r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:38:0x00fc, code lost:
    
        r1 = java.lang.String.valueOf(r1.getMessage());
     */
    /* JADX WARN: Code restructure failed: missing block: B:39:0x010a, code lost:
    
        if (r1.length() == 0) goto L48;
     */
    /* JADX WARN: Code restructure failed: missing block: B:40:0x010c, code lost:
    
        r1 = "Error in peekHits fetching hit url: ".concat(r1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:41:0x0116, code lost:
    
        com.google.android.gms.tagmanager.zzdj.zzcz(r1);
        r1 = new java.util.ArrayList();
        r11 = r2;
        r2 = r11.size();
        r4 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:43:0x0128, code lost:
    
        r5 = r11.get(r15);
        r15 = r15 + 1;
        r5 = (com.google.android.gms.tagmanager.zzbx) r5;
     */
    /* JADX WARN: Code restructure failed: missing block: B:44:0x0138, code lost:
    
        if (android.text.TextUtils.isEmpty(r5.zzbgt()) == false) goto L110;
     */
    /* JADX WARN: Code restructure failed: missing block: B:45:0x013a, code lost:
    
        if (r4 == false) goto L54;
     */
    /* JADX WARN: Code restructure failed: missing block: B:46:0x013c, code lost:
    
        r4 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:48:0x013d, code lost:
    
        r1.add(r5);
     */
    /* JADX WARN: Code restructure failed: missing block: B:50:0x0141, code lost:
    
        if (r12 != null) goto L58;
     */
    /* JADX WARN: Code restructure failed: missing block: B:51:0x0143, code lost:
    
        r12.close();
     */
    /* JADX WARN: Code restructure failed: missing block: B:52:0x0146, code lost:
    
        return r1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:55:0x0111, code lost:
    
        r1 = new java.lang.String("Error in peekHits fetching hit url: ");
     */
    /* JADX WARN: Code restructure failed: missing block: B:57:0x00ed, code lost:
    
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:58:0x00ee, code lost:
    
        r1 = r0;
        r12 = r12;
     */
    /* JADX WARN: Code restructure failed: missing block: B:59:0x00e8, code lost:
    
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:60:0x00e9, code lost:
    
        r1 = r0;
        r12 = r12;
     */
    /* JADX WARN: Code restructure failed: missing block: B:61:0x0149, code lost:
    
        if (r12 != null) goto L63;
     */
    /* JADX WARN: Code restructure failed: missing block: B:62:0x014b, code lost:
    
        r12.close();
     */
    /* JADX WARN: Code restructure failed: missing block: B:63:0x014e, code lost:
    
        throw r1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:64:?, code lost:
    
        throw r1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:66:0x0147, code lost:
    
        r0 = th;
     */
    /* JADX WARN: Code restructure failed: missing block: B:67:0x00f5, code lost:
    
        r1 = r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:68:0x00f7, code lost:
    
        r0 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:69:0x00f8, code lost:
    
        r2 = r11;
     */
    /* JADX WARN: Code restructure failed: missing block: B:70:0x00f2, code lost:
    
        r0 = th;
     */
    /* JADX WARN: Code restructure failed: missing block: B:73:0x0047, code lost:
    
        r11.add(new com.google.android.gms.tagmanager.zzbx(r12.getLong(0), r12.getLong(1), r12.getLong(2)));
     */
    /* JADX WARN: Code restructure failed: missing block: B:74:0x0061, code lost:
    
        if (r12.moveToNext() != false) goto L112;
     */
    /* JADX WARN: Code restructure failed: missing block: B:78:0x0069, code lost:
    
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:79:0x006a, code lost:
    
        r1 = r0;
        r13 = r12;
     */
    /* JADX WARN: Code restructure failed: missing block: B:96:0x0064, code lost:
    
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:97:0x0065, code lost:
    
        r1 = r0;
        r13 = r12;
     */
    /* JADX WARN: Removed duplicated region for block: B:40:0x010c A[Catch: all -> 0x0147, TryCatch #3 {all -> 0x0147, blocks: (B:21:0x009b, B:24:0x00a2, B:26:0x00af, B:27:0x00d8, B:31:0x00bd, B:38:0x00fc, B:40:0x010c, B:41:0x0116, B:43:0x0128, B:48:0x013d, B:55:0x0111), top: B:15:0x0073 }] */
    /* JADX WARN: Removed duplicated region for block: B:43:0x0128 A[Catch: all -> 0x0147, TryCatch #3 {all -> 0x0147, blocks: (B:21:0x009b, B:24:0x00a2, B:26:0x00af, B:27:0x00d8, B:31:0x00bd, B:38:0x00fc, B:40:0x010c, B:41:0x0116, B:43:0x0128, B:48:0x013d, B:55:0x0111), top: B:15:0x0073 }] */
    /* JADX WARN: Removed duplicated region for block: B:51:0x0143  */
    /* JADX WARN: Removed duplicated region for block: B:55:0x0111 A[Catch: all -> 0x0147, TryCatch #3 {all -> 0x0147, blocks: (B:21:0x009b, B:24:0x00a2, B:26:0x00af, B:27:0x00d8, B:31:0x00bd, B:38:0x00fc, B:40:0x010c, B:41:0x0116, B:43:0x0128, B:48:0x013d, B:55:0x0111), top: B:15:0x0073 }] */
    /* JADX WARN: Removed duplicated region for block: B:62:0x014b  */
    /* JADX WARN: Removed duplicated region for block: B:64:? A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:83:0x017d A[Catch: all -> 0x0190, TryCatch #6 {all -> 0x0190, blocks: (B:81:0x016d, B:83:0x017d, B:84:0x0187, B:89:0x0182), top: B:80:0x016d }] */
    /* JADX WARN: Removed duplicated region for block: B:86:0x018c  */
    /* JADX WARN: Removed duplicated region for block: B:89:0x0182 A[Catch: all -> 0x0190, TryCatch #6 {all -> 0x0190, blocks: (B:81:0x016d, B:83:0x017d, B:84:0x0187, B:89:0x0182), top: B:80:0x016d }] */
    /* JADX WARN: Removed duplicated region for block: B:93:0x0194  */
    /* JADX WARN: Removed duplicated region for block: B:95:? A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final java.util.List<com.google.android.gms.tagmanager.zzbx> zzff(int r19) {
        /*
            Method dump skipped, instructions count: 408
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.tagmanager.zzec.zzff(int):java.util.List");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void zzh(long j, long j2) {
        SQLiteDatabase zzlq = zzlq("Error opening database for getNumStoredHits.");
        if (zzlq == null) {
            return;
        }
        ContentValues contentValues = new ContentValues();
        contentValues.put("hit_first_send_time", Long.valueOf(j2));
        try {
            zzlq.update("gtm_hits", contentValues, "hit_id=?", new String[]{String.valueOf(j)});
        } catch (SQLiteException unused) {
            StringBuilder sb = new StringBuilder(69);
            sb.append("Error setting HIT_FIRST_DISPATCH_TIME for hitId: ");
            sb.append(j);
            zzdj.zzcz(sb.toString());
            zzp(j);
        }
    }

    private final SQLiteDatabase zzlq(String str) {
        try {
            return this.zzkra.getWritableDatabase();
        } catch (SQLiteException unused) {
            zzdj.zzcz(str);
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void zzp(long j) {
        zze(new String[]{String.valueOf(j)});
    }

    @Override // com.google.android.gms.tagmanager.zzcc
    public final void dispatch() {
        zzdj.v("GTM Dispatch running...");
        if (this.zzkrb.zzbgj()) {
            List<zzbx> zzff = zzff(40);
            if (zzff.isEmpty()) {
                zzdj.v("...nothing to dispatch");
                this.zzkrc.zzbz(true);
            } else {
                this.zzkrb.zzam(zzff);
                if (zzbhf() > 0) {
                    zzfo.zzbhz().dispatch();
                }
            }
        }
    }

    @Override // com.google.android.gms.tagmanager.zzcc
    public final void zzb(long j, String str) {
        long currentTimeMillis = this.zzata.currentTimeMillis();
        if (currentTimeMillis > this.zzkre + 86400000) {
            this.zzkre = currentTimeMillis;
            SQLiteDatabase zzlq = zzlq("Error opening database for deleteStaleHits.");
            if (zzlq != null) {
                zzlq.delete("gtm_hits", "HIT_TIME < ?", new String[]{Long.toString(this.zzata.currentTimeMillis() - 2592000000L)});
                this.zzkrc.zzbz(zzbhe() == 0);
            }
        }
        int zzbhe = (zzbhe() - this.zzkrf) + 1;
        if (zzbhe > 0) {
            List<String> zzfe = zzfe(zzbhe);
            int size = zzfe.size();
            StringBuilder sb = new StringBuilder(51);
            sb.append("Store full, deleting ");
            sb.append(size);
            sb.append(" hits to make room.");
            zzdj.v(sb.toString());
            zze((String[]) zzfe.toArray(new String[0]));
        }
        SQLiteDatabase zzlq2 = zzlq("Error opening database for putHit");
        if (zzlq2 != null) {
            ContentValues contentValues = new ContentValues();
            contentValues.put("hit_time", Long.valueOf(j));
            contentValues.put("hit_url", str);
            contentValues.put("hit_first_send_time", (Integer) 0);
            try {
                zzlq2.insert("gtm_hits", null, contentValues);
                this.zzkrc.zzbz(false);
            } catch (SQLiteException unused) {
                zzdj.zzcz("Error storing hit");
            }
        }
    }
}
