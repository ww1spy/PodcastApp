package com.google.android.gms.internal;

import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteException;
import android.database.sqlite.SQLiteOpenHelper;
import java.io.File;
import java.util.HashSet;
import java.util.Set;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzaru extends SQLiteOpenHelper {
    private /* synthetic */ zzart zzeaa;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzaru(zzart zzartVar, Context context, String str) {
        super(context, str, (SQLiteDatabase.CursorFactory) null, 1);
        this.zzeaa = zzartVar;
    }

    private static void zza(SQLiteDatabase sQLiteDatabase) {
        Set<String> zzb = zzb(sQLiteDatabase, "properties");
        String[] strArr = {"app_uid", "cid", "tid", "params", "adid", "hits_count"};
        for (int i = 0; i < 6; i++) {
            String str = strArr[i];
            if (!zzb.remove(str)) {
                String valueOf = String.valueOf(str);
                throw new SQLiteException(valueOf.length() != 0 ? "Database properties is missing required column: ".concat(valueOf) : new String("Database properties is missing required column: "));
            }
        }
        if (!zzb.isEmpty()) {
            throw new SQLiteException("Database properties table has extra columns");
        }
    }

    private final boolean zza(SQLiteDatabase sQLiteDatabase, String str) {
        Cursor query;
        Cursor cursor = null;
        try {
            try {
                query = sQLiteDatabase.query("SQLITE_MASTER", new String[]{"name"}, "name=?", new String[]{str}, null, null, null);
            } catch (Throwable th) {
                th = th;
            }
        } catch (SQLiteException e) {
            e = e;
        }
        try {
            boolean moveToFirst = query.moveToFirst();
            if (query != null) {
                query.close();
            }
            return moveToFirst;
        } catch (SQLiteException e2) {
            cursor = query;
            e = e2;
            this.zzeaa.zzc("Error querying for table", str, e);
            if (cursor != null) {
                cursor.close();
            }
            return false;
        } catch (Throwable th2) {
            th = th2;
            cursor = query;
            if (cursor != null) {
                cursor.close();
            }
            throw th;
        }
    }

    private static Set<String> zzb(SQLiteDatabase sQLiteDatabase, String str) {
        HashSet hashSet = new HashSet();
        StringBuilder sb = new StringBuilder(22 + String.valueOf(str).length());
        sb.append("SELECT * FROM ");
        sb.append(str);
        sb.append(" LIMIT 0");
        Cursor rawQuery = sQLiteDatabase.rawQuery(sb.toString(), null);
        try {
            for (String str2 : rawQuery.getColumnNames()) {
                hashSet.add(str2);
            }
            return hashSet;
        } finally {
            rawQuery.close();
        }
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public final SQLiteDatabase getWritableDatabase() {
        zzatp zzatpVar;
        zzatp zzatpVar2;
        String zzzb;
        zzatp zzatpVar3;
        zzatpVar = this.zzeaa.zzdzz;
        if (!zzatpVar.zzu(3600000L)) {
            throw new SQLiteException("Database open failed");
        }
        try {
            return super.getWritableDatabase();
        } catch (SQLiteException unused) {
            zzatpVar2 = this.zzeaa.zzdzz;
            zzatpVar2.start();
            this.zzeaa.zzee("Opening the database failed, dropping the table and recreating it");
            zzart zzartVar = this.zzeaa;
            zzzb = zzart.zzzb();
            this.zzeaa.getContext().getDatabasePath(zzzb).delete();
            try {
                SQLiteDatabase writableDatabase = super.getWritableDatabase();
                zzatpVar3 = this.zzeaa.zzdzz;
                zzatpVar3.clear();
                return writableDatabase;
            } catch (SQLiteException e) {
                this.zzeaa.zze("Failed to open freshly created database", e);
                throw e;
            }
        }
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public final void onCreate(SQLiteDatabase sQLiteDatabase) {
        String path = sQLiteDatabase.getPath();
        if (zzass.version() >= 9) {
            File file = new File(path);
            file.setReadable(false, false);
            file.setWritable(false, false);
            file.setReadable(true, true);
            file.setWritable(true, true);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x008a  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0090  */
    @Override // android.database.sqlite.SQLiteOpenHelper
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void onOpen(android.database.sqlite.SQLiteDatabase r6) {
        /*
            r5 = this;
            int r0 = android.os.Build.VERSION.SDK_INT
            r1 = 15
            if (r0 >= r1) goto L19
            java.lang.String r0 = "PRAGMA journal_mode=memory"
            r1 = 0
            android.database.Cursor r0 = r6.rawQuery(r0, r1)
            r0.moveToFirst()     // Catch: java.lang.Throwable -> L14
            r0.close()
            goto L19
        L14:
            r6 = move-exception
            r0.close()
            throw r6
        L19:
            java.lang.String r0 = "hits2"
            boolean r0 = r5.zza(r6, r0)
            if (r0 != 0) goto L29
            java.lang.String r0 = com.google.android.gms.internal.zzart.zzzc()
        L25:
            r6.execSQL(r0)
            goto L82
        L29:
            java.lang.String r0 = "hits2"
            java.util.Set r0 = zzb(r6, r0)
            java.lang.String r1 = "hit_id"
            java.lang.String r2 = "hit_string"
            java.lang.String r3 = "hit_time"
            java.lang.String r4 = "hit_url"
            java.lang.String[] r1 = new java.lang.String[]{r1, r2, r3, r4}
            r2 = 0
        L3c:
            r3 = 4
            if (r2 >= r3) goto L67
            r3 = r1[r2]
            boolean r4 = r0.remove(r3)
            if (r4 != 0) goto L64
            android.database.sqlite.SQLiteException r6 = new android.database.sqlite.SQLiteException
            java.lang.String r0 = "Database hits2 is missing required column: "
            java.lang.String r1 = java.lang.String.valueOf(r3)
            int r2 = r1.length()
            if (r2 == 0) goto L5a
            java.lang.String r0 = r0.concat(r1)
            goto L60
        L5a:
            java.lang.String r1 = new java.lang.String
            r1.<init>(r0)
            r0 = r1
        L60:
            r6.<init>(r0)
            throw r6
        L64:
            int r2 = r2 + 1
            goto L3c
        L67:
            java.lang.String r1 = "hit_app_id"
            boolean r1 = r0.remove(r1)
            r1 = r1 ^ 1
            boolean r0 = r0.isEmpty()
            if (r0 != 0) goto L7d
            android.database.sqlite.SQLiteException r6 = new android.database.sqlite.SQLiteException
            java.lang.String r0 = "Database hits2 has extra columns"
            r6.<init>(r0)
            throw r6
        L7d:
            if (r1 == 0) goto L82
            java.lang.String r0 = "ALTER TABLE hits2 ADD COLUMN hit_app_id INTEGER"
            goto L25
        L82:
            java.lang.String r0 = "properties"
            boolean r0 = r5.zza(r6, r0)
            if (r0 != 0) goto L90
            java.lang.String r0 = "CREATE TABLE IF NOT EXISTS properties ( app_uid INTEGER NOT NULL, cid TEXT NOT NULL, tid TEXT NOT NULL, params TEXT NOT NULL, adid INTEGER NOT NULL, hits_count INTEGER NOT NULL, PRIMARY KEY (app_uid, cid, tid)) ;"
            r6.execSQL(r0)
            return
        L90:
            zza(r6)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.zzaru.onOpen(android.database.sqlite.SQLiteDatabase):void");
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public final void onUpgrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
    }
}
