package com.google.android.gms.internal;

import android.content.ContentValues;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteException;
import android.net.Uri;
import android.text.TextUtils;
import com.google.android.gms.common.internal.Hide;
import io.fabric.sdk.android.services.network.HttpRequest;
import java.io.Closeable;
import java.net.URI;
import java.net.URISyntaxException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzart extends zzari implements Closeable {
    private static final String zzdzv = String.format("CREATE TABLE IF NOT EXISTS %s ( '%s' INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, '%s' INTEGER NOT NULL, '%s' TEXT NOT NULL, '%s' TEXT NOT NULL, '%s' INTEGER);", "hits2", "hit_id", "hit_time", "hit_url", "hit_string", "hit_app_id");
    private static final String zzdzw = String.format("SELECT MAX(%s) FROM %s WHERE 1;", "hit_time", "hits2");
    private final zzaru zzdzx;
    private final zzatp zzdzy;
    private final zzatp zzdzz;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzart(zzark zzarkVar) {
        super(zzarkVar);
        this.zzdzy = new zzatp(zzxx());
        this.zzdzz = new zzatp(zzxx());
        this.zzdzx = new zzaru(this, zzarkVar.getContext(), "google_analytics_v4.db");
    }

    private final long zza(String str, String[] strArr, long j) {
        Cursor rawQuery;
        Cursor cursor = null;
        try {
            try {
                rawQuery = getWritableDatabase().rawQuery(str, strArr);
            } catch (SQLiteException e) {
                e = e;
            }
        } catch (Throwable th) {
            th = th;
        }
        try {
            if (rawQuery.moveToFirst()) {
                long j2 = rawQuery.getLong(0);
                if (rawQuery != null) {
                    rawQuery.close();
                }
                return j2;
            }
            if (rawQuery == null) {
                return 0L;
            }
            rawQuery.close();
            return 0L;
        } catch (SQLiteException e2) {
            e = e2;
            cursor = rawQuery;
            zzd("Database error", str, e);
            throw e;
        } catch (Throwable th2) {
            th = th2;
            cursor = rawQuery;
            if (cursor != null) {
                cursor.close();
            }
            throw th;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0035  */
    /* JADX WARN: Type inference failed for: r3v0, types: [com.google.android.gms.internal.zzart, com.google.android.gms.internal.zzarh] */
    /* JADX WARN: Type inference failed for: r5v1, types: [android.database.sqlite.SQLiteDatabase] */
    /* JADX WARN: Type inference failed for: r5v2 */
    /* JADX WARN: Type inference failed for: r5v5, types: [android.database.Cursor] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final long zzc(java.lang.String r4, java.lang.String[] r5) {
        /*
            r3 = this;
            android.database.sqlite.SQLiteDatabase r5 = r3.getWritableDatabase()
            r0 = 0
            android.database.Cursor r5 = r5.rawQuery(r4, r0)     // Catch: java.lang.Throwable -> L26 android.database.sqlite.SQLiteException -> L29
            boolean r0 = r5.moveToFirst()     // Catch: java.lang.Throwable -> L22 android.database.sqlite.SQLiteException -> L24
            if (r0 == 0) goto L1a
            r0 = 0
            long r0 = r5.getLong(r0)     // Catch: java.lang.Throwable -> L22 android.database.sqlite.SQLiteException -> L24
            if (r5 == 0) goto L19
            r5.close()
        L19:
            return r0
        L1a:
            android.database.sqlite.SQLiteException r0 = new android.database.sqlite.SQLiteException     // Catch: java.lang.Throwable -> L22 android.database.sqlite.SQLiteException -> L24
            java.lang.String r1 = "Database returned empty set"
            r0.<init>(r1)     // Catch: java.lang.Throwable -> L22 android.database.sqlite.SQLiteException -> L24
            throw r0     // Catch: java.lang.Throwable -> L22 android.database.sqlite.SQLiteException -> L24
        L22:
            r4 = move-exception
            goto L33
        L24:
            r0 = move-exception
            goto L2d
        L26:
            r4 = move-exception
            r5 = r0
            goto L33
        L29:
            r5 = move-exception
            r2 = r0
            r0 = r5
            r5 = r2
        L2d:
            java.lang.String r1 = "Database error"
            r3.zzd(r1, r4, r0)     // Catch: java.lang.Throwable -> L22
            throw r0     // Catch: java.lang.Throwable -> L22
        L33:
            if (r5 == 0) goto L38
            r5.close()
        L38:
            throw r4
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.zzart.zzc(java.lang.String, java.lang.String[]):long");
    }

    private final Map<String, String> zzef(String str) {
        if (TextUtils.isEmpty(str)) {
            return new HashMap(0);
        }
        try {
            if (!str.startsWith("?")) {
                String valueOf = String.valueOf(str);
                str = valueOf.length() != 0 ? "?".concat(valueOf) : new String("?");
            }
            return com.google.android.gms.common.util.zzo.zza(new URI(str), HttpRequest.CHARSET_UTF8);
        } catch (URISyntaxException e) {
            zze("Error parsing hit parameters", e);
            return new HashMap(0);
        }
    }

    private final Map<String, String> zzeg(String str) {
        if (TextUtils.isEmpty(str)) {
            return new HashMap(0);
        }
        try {
            String valueOf = String.valueOf(str);
            return com.google.android.gms.common.util.zzo.zza(new URI(valueOf.length() != 0 ? "?".concat(valueOf) : new String("?")), HttpRequest.CHARSET_UTF8);
        } catch (URISyntaxException e) {
            zze("Error parsing property parameters", e);
            return new HashMap(0);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:12:0x0041, code lost:
    
        if (r14.moveToFirst() != false) goto L10;
     */
    /* JADX WARN: Code restructure failed: missing block: B:13:0x0043, code lost:
    
        r9.add(java.lang.Long.valueOf(r14.getLong(0)));
     */
    /* JADX WARN: Code restructure failed: missing block: B:14:0x0052, code lost:
    
        if (r14.moveToNext() != false) goto L36;
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x0054, code lost:
    
        if (r14 == null) goto L29;
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x0056, code lost:
    
        r14.close();
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x0059, code lost:
    
        return r9;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final java.util.List<java.lang.Long> zzn(long r14) {
        /*
            r13 = this;
            com.google.android.gms.analytics.zzk.zzwj()
            r13.zzyk()
            r0 = 0
            int r2 = (r14 > r0 ? 1 : (r14 == r0 ? 0 : -1))
            if (r2 > 0) goto L11
            java.util.List r14 = java.util.Collections.emptyList()
            return r14
        L11:
            android.database.sqlite.SQLiteDatabase r0 = r13.getWritableDatabase()
            java.util.ArrayList r9 = new java.util.ArrayList
            r9.<init>()
            r10 = 0
            java.lang.String r1 = "hits2"
            java.lang.String r2 = "hit_id"
            java.lang.String[] r2 = new java.lang.String[]{r2}     // Catch: java.lang.Throwable -> L60 android.database.sqlite.SQLiteException -> L62
            r3 = 0
            r4 = 0
            r5 = 0
            r6 = 0
            java.lang.String r7 = "%s ASC"
            r8 = 1
            java.lang.Object[] r8 = new java.lang.Object[r8]     // Catch: java.lang.Throwable -> L60 android.database.sqlite.SQLiteException -> L62
            java.lang.String r11 = "hit_id"
            r12 = 0
            r8[r12] = r11     // Catch: java.lang.Throwable -> L60 android.database.sqlite.SQLiteException -> L62
            java.lang.String r7 = java.lang.String.format(r7, r8)     // Catch: java.lang.Throwable -> L60 android.database.sqlite.SQLiteException -> L62
            java.lang.String r8 = java.lang.Long.toString(r14)     // Catch: java.lang.Throwable -> L60 android.database.sqlite.SQLiteException -> L62
            android.database.Cursor r14 = r0.query(r1, r2, r3, r4, r5, r6, r7, r8)     // Catch: java.lang.Throwable -> L60 android.database.sqlite.SQLiteException -> L62
            boolean r15 = r14.moveToFirst()     // Catch: java.lang.Throwable -> L5a android.database.sqlite.SQLiteException -> L5d
            if (r15 == 0) goto L54
        L43:
            long r0 = r14.getLong(r12)     // Catch: java.lang.Throwable -> L5a android.database.sqlite.SQLiteException -> L5d
            java.lang.Long r15 = java.lang.Long.valueOf(r0)     // Catch: java.lang.Throwable -> L5a android.database.sqlite.SQLiteException -> L5d
            r9.add(r15)     // Catch: java.lang.Throwable -> L5a android.database.sqlite.SQLiteException -> L5d
            boolean r15 = r14.moveToNext()     // Catch: java.lang.Throwable -> L5a android.database.sqlite.SQLiteException -> L5d
            if (r15 != 0) goto L43
        L54:
            if (r14 == 0) goto L6d
            r14.close()
            return r9
        L5a:
            r15 = move-exception
            r10 = r14
            goto L6e
        L5d:
            r15 = move-exception
            r10 = r14
            goto L63
        L60:
            r15 = move-exception
            goto L6e
        L62:
            r15 = move-exception
        L63:
            java.lang.String r14 = "Error selecting hit ids"
            r13.zzd(r14, r15)     // Catch: java.lang.Throwable -> L60
            if (r10 == 0) goto L6d
            r10.close()
        L6d:
            return r9
        L6e:
            if (r10 == 0) goto L73
            r10.close()
        L73:
            throw r15
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.zzart.zzn(long):java.util.List");
    }

    private final long zzyu() {
        com.google.android.gms.analytics.zzk.zzwj();
        zzyk();
        return zzc("SELECT COUNT(*) FROM hits2", (String[]) null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String zzzb() {
        return "google_analytics_v4.db";
    }

    public final void beginTransaction() {
        zzyk();
        getWritableDatabase().beginTransaction();
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        String str;
        try {
            this.zzdzx.close();
        } catch (SQLiteException e) {
            e = e;
            str = "Sql error closing database";
            zze(str, e);
        } catch (IllegalStateException e2) {
            e = e2;
            str = "Error closing database";
            zze(str, e);
        }
    }

    public final void endTransaction() {
        zzyk();
        getWritableDatabase().endTransaction();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final SQLiteDatabase getWritableDatabase() {
        try {
            return this.zzdzx.getWritableDatabase();
        } catch (SQLiteException e) {
            zzd("Error opening database", e);
            throw e;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Hide
    public final boolean isEmpty() {
        return zzyu() == 0;
    }

    public final void setTransactionSuccessful() {
        zzyk();
        getWritableDatabase().setTransactionSuccessful();
    }

    public final long zza(long j, String str, String str2) {
        com.google.android.gms.common.internal.zzbq.zzgv(str);
        com.google.android.gms.common.internal.zzbq.zzgv(str2);
        zzyk();
        com.google.android.gms.analytics.zzk.zzwj();
        return zza("SELECT hits_count FROM properties WHERE app_uid=? AND cid=? AND tid=?", new String[]{String.valueOf(j), str, str2}, 0L);
    }

    public final void zzc(zzasy zzasyVar) {
        com.google.android.gms.common.internal.zzbq.checkNotNull(zzasyVar);
        com.google.android.gms.analytics.zzk.zzwj();
        zzyk();
        com.google.android.gms.common.internal.zzbq.checkNotNull(zzasyVar);
        Uri.Builder builder = new Uri.Builder();
        for (Map.Entry<String, String> entry : zzasyVar.zzjq().entrySet()) {
            String key = entry.getKey();
            if (!"ht".equals(key) && !"qt".equals(key) && !"AppUID".equals(key)) {
                builder.appendQueryParameter(key, entry.getValue());
            }
        }
        String encodedQuery = builder.build().getEncodedQuery();
        if (encodedQuery == null) {
            encodedQuery = "";
        }
        if (encodedQuery.length() > 8192) {
            zzxy().zza(zzasyVar, "Hit length exceeds the maximum allowed size");
            return;
        }
        int intValue = zzast.zzebq.get().intValue();
        long zzyu = zzyu();
        if (zzyu > intValue - 1) {
            List<Long> zzn = zzn((zzyu - intValue) + 1);
            zzd("Store full, deleting hits to make room, count", Integer.valueOf(zzn.size()));
            zzs(zzn);
        }
        SQLiteDatabase writableDatabase = getWritableDatabase();
        ContentValues contentValues = new ContentValues();
        contentValues.put("hit_string", encodedQuery);
        contentValues.put("hit_time", Long.valueOf(zzasyVar.zzaan()));
        contentValues.put("hit_app_id", Integer.valueOf(zzasyVar.zzaal()));
        contentValues.put("hit_url", zzasyVar.zzaap() ? zzasl.zzaab() : zzasl.zzaac());
        try {
            long insert = writableDatabase.insert("hits2", null, contentValues);
            if (insert == -1) {
                zzee("Failed to insert a hit (got -1)");
            } else {
                zzb("Hit saved to database. db-id, hit", Long.valueOf(insert), zzasyVar);
            }
        } catch (SQLiteException e) {
            zze("Error storing a hit", e);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x004a, code lost:
    
        if (r14.moveToFirst() != false) goto L10;
     */
    /* JADX WARN: Code restructure failed: missing block: B:11:0x004c, code lost:
    
        r15.add(new com.google.android.gms.internal.zzasy(r13, zzef(r14.getString(2)), r14.getLong(1), com.google.android.gms.internal.zzatt.zzer(r14.getString(3)), r14.getLong(0), r14.getInt(4)));
     */
    /* JADX WARN: Code restructure failed: missing block: B:12:0x0079, code lost:
    
        if (r14.moveToNext() != false) goto L33;
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x007b, code lost:
    
        if (r14 == null) goto L14;
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x007d, code lost:
    
        r14.close();
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x0080, code lost:
    
        return r15;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.util.List<com.google.android.gms.internal.zzasy> zzo(long r14) {
        /*
            r13 = this;
            r0 = 0
            int r2 = (r14 > r0 ? 1 : (r14 == r0 ? 0 : -1))
            r0 = 0
            r1 = 1
            if (r2 < 0) goto La
            r2 = r1
            goto Lb
        La:
            r2 = r0
        Lb:
            com.google.android.gms.common.internal.zzbq.checkArgument(r2)
            com.google.android.gms.analytics.zzk.zzwj()
            r13.zzyk()
            android.database.sqlite.SQLiteDatabase r3 = r13.getWritableDatabase()
            r2 = 0
            java.lang.String r4 = "hits2"
            java.lang.String r5 = "hit_id"
            java.lang.String r6 = "hit_time"
            java.lang.String r7 = "hit_string"
            java.lang.String r8 = "hit_url"
            java.lang.String r9 = "hit_app_id"
            java.lang.String[] r5 = new java.lang.String[]{r5, r6, r7, r8, r9}     // Catch: java.lang.Throwable -> L87 android.database.sqlite.SQLiteException -> L89
            r6 = 0
            r7 = 0
            r8 = 0
            r9 = 0
            java.lang.String r10 = "%s ASC"
            java.lang.Object[] r11 = new java.lang.Object[r1]     // Catch: java.lang.Throwable -> L87 android.database.sqlite.SQLiteException -> L89
            java.lang.String r12 = "hit_id"
            r11[r0] = r12     // Catch: java.lang.Throwable -> L87 android.database.sqlite.SQLiteException -> L89
            java.lang.String r10 = java.lang.String.format(r10, r11)     // Catch: java.lang.Throwable -> L87 android.database.sqlite.SQLiteException -> L89
            java.lang.String r11 = java.lang.Long.toString(r14)     // Catch: java.lang.Throwable -> L87 android.database.sqlite.SQLiteException -> L89
            android.database.Cursor r14 = r3.query(r4, r5, r6, r7, r8, r9, r10, r11)     // Catch: java.lang.Throwable -> L87 android.database.sqlite.SQLiteException -> L89
            java.util.ArrayList r15 = new java.util.ArrayList     // Catch: java.lang.Throwable -> L81 android.database.sqlite.SQLiteException -> L84
            r15.<init>()     // Catch: java.lang.Throwable -> L81 android.database.sqlite.SQLiteException -> L84
            boolean r2 = r14.moveToFirst()     // Catch: java.lang.Throwable -> L81 android.database.sqlite.SQLiteException -> L84
            if (r2 == 0) goto L7b
        L4c:
            long r9 = r14.getLong(r0)     // Catch: java.lang.Throwable -> L81 android.database.sqlite.SQLiteException -> L84
            long r6 = r14.getLong(r1)     // Catch: java.lang.Throwable -> L81 android.database.sqlite.SQLiteException -> L84
            r2 = 2
            java.lang.String r2 = r14.getString(r2)     // Catch: java.lang.Throwable -> L81 android.database.sqlite.SQLiteException -> L84
            r3 = 3
            java.lang.String r3 = r14.getString(r3)     // Catch: java.lang.Throwable -> L81 android.database.sqlite.SQLiteException -> L84
            r4 = 4
            int r11 = r14.getInt(r4)     // Catch: java.lang.Throwable -> L81 android.database.sqlite.SQLiteException -> L84
            java.util.Map r5 = r13.zzef(r2)     // Catch: java.lang.Throwable -> L81 android.database.sqlite.SQLiteException -> L84
            boolean r8 = com.google.android.gms.internal.zzatt.zzer(r3)     // Catch: java.lang.Throwable -> L81 android.database.sqlite.SQLiteException -> L84
            com.google.android.gms.internal.zzasy r2 = new com.google.android.gms.internal.zzasy     // Catch: java.lang.Throwable -> L81 android.database.sqlite.SQLiteException -> L84
            r3 = r2
            r4 = r13
            r3.<init>(r4, r5, r6, r8, r9, r11)     // Catch: java.lang.Throwable -> L81 android.database.sqlite.SQLiteException -> L84
            r15.add(r2)     // Catch: java.lang.Throwable -> L81 android.database.sqlite.SQLiteException -> L84
            boolean r2 = r14.moveToNext()     // Catch: java.lang.Throwable -> L81 android.database.sqlite.SQLiteException -> L84
            if (r2 != 0) goto L4c
        L7b:
            if (r14 == 0) goto L80
            r14.close()
        L80:
            return r15
        L81:
            r15 = move-exception
            r2 = r14
            goto L90
        L84:
            r15 = move-exception
            r2 = r14
            goto L8a
        L87:
            r15 = move-exception
            goto L90
        L89:
            r15 = move-exception
        L8a:
            java.lang.String r14 = "Error loading hits from the database"
            r13.zze(r14, r15)     // Catch: java.lang.Throwable -> L87
            throw r15     // Catch: java.lang.Throwable -> L87
        L90:
            if (r2 == 0) goto L95
            r2.close()
        L95:
            throw r15
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.zzart.zzo(long):java.util.List");
    }

    public final void zzp(long j) {
        com.google.android.gms.analytics.zzk.zzwj();
        zzyk();
        ArrayList arrayList = new ArrayList(1);
        arrayList.add(Long.valueOf(j));
        zza("Deleting hit, id", Long.valueOf(j));
        zzs(arrayList);
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x0059, code lost:
    
        r8 = r0.getInt(3);
        r10 = zzeg(r0.getString(4));
     */
    /* JADX WARN: Code restructure failed: missing block: B:11:0x006c, code lost:
    
        if (android.text.TextUtils.isEmpty(r5) != false) goto L16;
     */
    /* JADX WARN: Code restructure failed: missing block: B:13:0x0072, code lost:
    
        if (android.text.TextUtils.isEmpty(r6) == false) goto L15;
     */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x0075, code lost:
    
        r12.add(new com.google.android.gms.internal.zzarn(0, r5, r6, r7, r8, r10));
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x008a, code lost:
    
        if (r0.moveToNext() != false) goto L42;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x0081, code lost:
    
        zzc("Read property with empty client id or tracker id", r5, r6);
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x0058, code lost:
    
        r7 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x0090, code lost:
    
        if (r12.size() < r13) goto L22;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x0092, code lost:
    
        zzed("Sending hits to too many properties. Campaign report might be incorrect");
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x0097, code lost:
    
        if (r0 == null) goto L24;
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x0099, code lost:
    
        r0.close();
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x009c, code lost:
    
        return r12;
     */
    /* JADX WARN: Code restructure failed: missing block: B:6:0x0043, code lost:
    
        if (r0.moveToFirst() != false) goto L6;
     */
    /* JADX WARN: Code restructure failed: missing block: B:7:0x0045, code lost:
    
        r5 = r0.getString(0);
        r6 = r0.getString(1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:8:0x0054, code lost:
    
        if (r0.getInt(2) == 0) goto L9;
     */
    /* JADX WARN: Code restructure failed: missing block: B:9:0x0056, code lost:
    
        r7 = true;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:36:0x00af  */
    /* JADX WARN: Type inference failed for: r0v0, types: [android.database.sqlite.SQLiteDatabase] */
    /* JADX WARN: Type inference failed for: r0v1 */
    /* JADX WARN: Type inference failed for: r0v3, types: [android.database.Cursor] */
    /* JADX WARN: Type inference failed for: r11v0, types: [com.google.android.gms.internal.zzart, com.google.android.gms.internal.zzari, com.google.android.gms.internal.zzarh] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.util.List<com.google.android.gms.internal.zzarn> zzq(long r12) {
        /*
            r11 = this;
            r11.zzyk()
            com.google.android.gms.analytics.zzk.zzwj()
            android.database.sqlite.SQLiteDatabase r0 = r11.getWritableDatabase()
            r12 = 0
            java.lang.String r13 = "cid"
            java.lang.String r1 = "tid"
            java.lang.String r2 = "adid"
            java.lang.String r3 = "hits_count"
            java.lang.String r4 = "params"
            java.lang.String[] r2 = new java.lang.String[]{r13, r1, r2, r3, r4}     // Catch: java.lang.Throwable -> L9f android.database.sqlite.SQLiteException -> La3
            com.google.android.gms.internal.zzasu<java.lang.Integer> r13 = com.google.android.gms.internal.zzast.zzebs     // Catch: java.lang.Throwable -> L9f android.database.sqlite.SQLiteException -> La3
            java.lang.Object r13 = r13.get()     // Catch: java.lang.Throwable -> L9f android.database.sqlite.SQLiteException -> La3
            java.lang.Integer r13 = (java.lang.Integer) r13     // Catch: java.lang.Throwable -> L9f android.database.sqlite.SQLiteException -> La3
            int r13 = r13.intValue()     // Catch: java.lang.Throwable -> L9f android.database.sqlite.SQLiteException -> La3
            java.lang.String r8 = java.lang.String.valueOf(r13)     // Catch: java.lang.Throwable -> L9f android.database.sqlite.SQLiteException -> La3
            java.lang.String r3 = "app_uid=?"
            java.lang.String r1 = "0"
            java.lang.String[] r4 = new java.lang.String[]{r1}     // Catch: java.lang.Throwable -> L9f android.database.sqlite.SQLiteException -> La3
            java.lang.String r1 = "properties"
            r5 = 0
            r6 = 0
            r7 = 0
            android.database.Cursor r0 = r0.query(r1, r2, r3, r4, r5, r6, r7, r8)     // Catch: java.lang.Throwable -> L9f android.database.sqlite.SQLiteException -> La3
            java.util.ArrayList r12 = new java.util.ArrayList     // Catch: android.database.sqlite.SQLiteException -> L9d java.lang.Throwable -> Lac
            r12.<init>()     // Catch: android.database.sqlite.SQLiteException -> L9d java.lang.Throwable -> Lac
            boolean r1 = r0.moveToFirst()     // Catch: android.database.sqlite.SQLiteException -> L9d java.lang.Throwable -> Lac
            if (r1 == 0) goto L8c
        L45:
            r1 = 0
            java.lang.String r5 = r0.getString(r1)     // Catch: android.database.sqlite.SQLiteException -> L9d java.lang.Throwable -> Lac
            r2 = 1
            java.lang.String r6 = r0.getString(r2)     // Catch: android.database.sqlite.SQLiteException -> L9d java.lang.Throwable -> Lac
            r3 = 2
            int r3 = r0.getInt(r3)     // Catch: android.database.sqlite.SQLiteException -> L9d java.lang.Throwable -> Lac
            if (r3 == 0) goto L58
            r7 = r2
            goto L59
        L58:
            r7 = r1
        L59:
            r1 = 3
            int r1 = r0.getInt(r1)     // Catch: android.database.sqlite.SQLiteException -> L9d java.lang.Throwable -> Lac
            long r8 = (long) r1     // Catch: android.database.sqlite.SQLiteException -> L9d java.lang.Throwable -> Lac
            r1 = 4
            java.lang.String r1 = r0.getString(r1)     // Catch: android.database.sqlite.SQLiteException -> L9d java.lang.Throwable -> Lac
            java.util.Map r10 = r11.zzeg(r1)     // Catch: android.database.sqlite.SQLiteException -> L9d java.lang.Throwable -> Lac
            boolean r1 = android.text.TextUtils.isEmpty(r5)     // Catch: android.database.sqlite.SQLiteException -> L9d java.lang.Throwable -> Lac
            if (r1 != 0) goto L81
            boolean r1 = android.text.TextUtils.isEmpty(r6)     // Catch: android.database.sqlite.SQLiteException -> L9d java.lang.Throwable -> Lac
            if (r1 == 0) goto L75
            goto L81
        L75:
            com.google.android.gms.internal.zzarn r1 = new com.google.android.gms.internal.zzarn     // Catch: android.database.sqlite.SQLiteException -> L9d java.lang.Throwable -> Lac
            r3 = 0
            r2 = r1
            r2.<init>(r3, r5, r6, r7, r8, r10)     // Catch: android.database.sqlite.SQLiteException -> L9d java.lang.Throwable -> Lac
            r12.add(r1)     // Catch: android.database.sqlite.SQLiteException -> L9d java.lang.Throwable -> Lac
            goto L86
        L81:
            java.lang.String r1 = "Read property with empty client id or tracker id"
            r11.zzc(r1, r5, r6)     // Catch: android.database.sqlite.SQLiteException -> L9d java.lang.Throwable -> Lac
        L86:
            boolean r1 = r0.moveToNext()     // Catch: android.database.sqlite.SQLiteException -> L9d java.lang.Throwable -> Lac
            if (r1 != 0) goto L45
        L8c:
            int r1 = r12.size()     // Catch: android.database.sqlite.SQLiteException -> L9d java.lang.Throwable -> Lac
            if (r1 < r13) goto L97
            java.lang.String r13 = "Sending hits to too many properties. Campaign report might be incorrect"
            r11.zzed(r13)     // Catch: android.database.sqlite.SQLiteException -> L9d java.lang.Throwable -> Lac
        L97:
            if (r0 == 0) goto L9c
            r0.close()
        L9c:
            return r12
        L9d:
            r12 = move-exception
            goto La6
        L9f:
            r13 = move-exception
            r0 = r12
            r12 = r13
            goto Lad
        La3:
            r13 = move-exception
            r0 = r12
            r12 = r13
        La6:
            java.lang.String r13 = "Error loading hits from the database"
            r11.zze(r13, r12)     // Catch: java.lang.Throwable -> Lac
            throw r12     // Catch: java.lang.Throwable -> Lac
        Lac:
            r12 = move-exception
        Lad:
            if (r0 == 0) goto Lb2
            r0.close()
        Lb2:
            throw r12
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.zzart.zzq(long):java.util.List");
    }

    public final void zzs(List<Long> list) {
        com.google.android.gms.common.internal.zzbq.checkNotNull(list);
        com.google.android.gms.analytics.zzk.zzwj();
        zzyk();
        if (list.isEmpty()) {
            return;
        }
        StringBuilder sb = new StringBuilder("hit_id");
        sb.append(" in (");
        for (int i = 0; i < list.size(); i++) {
            Long l = list.get(i);
            if (l == null || l.longValue() == 0) {
                throw new SQLiteException("Invalid hit id");
            }
            if (i > 0) {
                sb.append(",");
            }
            sb.append(l);
        }
        sb.append(")");
        String sb2 = sb.toString();
        try {
            SQLiteDatabase writableDatabase = getWritableDatabase();
            zza("Deleting dispatched hits. count", Integer.valueOf(list.size()));
            int delete = writableDatabase.delete("hits2", sb2, null);
            if (delete != list.size()) {
                zzb("Deleted fewer hits then expected", Integer.valueOf(list.size()), Integer.valueOf(delete), sb2);
            }
        } catch (SQLiteException e) {
            zze("Error deleting hits", e);
            throw e;
        }
    }

    @Override // com.google.android.gms.internal.zzari
    protected final void zzwk() {
    }

    public final int zzyz() {
        com.google.android.gms.analytics.zzk.zzwj();
        zzyk();
        if (!this.zzdzy.zzu(86400000L)) {
            return 0;
        }
        this.zzdzy.start();
        zzea("Deleting stale hits (if any)");
        int delete = getWritableDatabase().delete("hits2", "hit_time < ?", new String[]{Long.toString(zzxx().currentTimeMillis() - 2592000000L)});
        zza("Deleted stale hits, count", Integer.valueOf(delete));
        return delete;
    }

    public final long zzza() {
        com.google.android.gms.analytics.zzk.zzwj();
        zzyk();
        return zza(zzdzw, (String[]) null, 0L);
    }
}
