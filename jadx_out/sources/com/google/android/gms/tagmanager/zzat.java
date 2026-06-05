package com.google.android.gms.tagmanager;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteException;
import android.text.TextUtils;
import com.google.android.gms.cast.CastStatusCodes;
import com.google.android.gms.tagmanager.DataLayer;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import java.util.concurrent.Executor;
import java.util.concurrent.Executors;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzat implements DataLayer.zzc {
    private static final String zzkot = String.format("CREATE TABLE IF NOT EXISTS %s ( '%s' INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, '%s' STRING NOT NULL, '%s' BLOB NOT NULL, '%s' INTEGER NOT NULL);", "datalayer", "ID", "key", "value", "expires");
    private final Context mContext;
    private com.google.android.gms.common.util.zze zzata;
    private final Executor zzkou;
    private zzax zzkov;
    private int zzkow;

    public zzat(Context context) {
        this(context, com.google.android.gms.common.util.zzi.zzanq(), "google_tagmanager.db", CastStatusCodes.AUTHENTICATION_FAILED, Executors.newSingleThreadExecutor());
    }

    private zzat(Context context, com.google.android.gms.common.util.zze zzeVar, String str, int i, Executor executor) {
        this.mContext = context;
        this.zzata = zzeVar;
        this.zzkow = CastStatusCodes.AUTHENTICATION_FAILED;
        this.zzkou = executor;
        this.zzkov = new zzax(this, this.mContext, str);
    }

    private static byte[] zzaj(Object obj) {
        ObjectOutputStream objectOutputStream;
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        ObjectOutputStream objectOutputStream2 = null;
        try {
            objectOutputStream = new ObjectOutputStream(byteArrayOutputStream);
            try {
                objectOutputStream.writeObject(obj);
                byte[] byteArray = byteArrayOutputStream.toByteArray();
                try {
                    objectOutputStream.close();
                    byteArrayOutputStream.close();
                } catch (IOException unused) {
                }
                return byteArray;
            } catch (IOException unused2) {
                if (objectOutputStream != null) {
                    try {
                        objectOutputStream.close();
                    } catch (IOException unused3) {
                        return null;
                    }
                }
                byteArrayOutputStream.close();
                return null;
            } catch (Throwable th) {
                th = th;
                objectOutputStream2 = objectOutputStream;
                if (objectOutputStream2 != null) {
                    try {
                        objectOutputStream2.close();
                    } catch (IOException unused4) {
                        throw th;
                    }
                }
                byteArrayOutputStream.close();
                throw th;
            }
        } catch (IOException unused5) {
            objectOutputStream = null;
        } catch (Throwable th2) {
            th = th2;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final synchronized void zzb(List<zzay> list, long j) {
        SQLiteDatabase zzlq;
        try {
            long currentTimeMillis = this.zzata.currentTimeMillis();
            zzbh(currentTimeMillis);
            int zzbgg = (zzbgg() - this.zzkow) + list.size();
            if (zzbgg > 0) {
                List<String> zzez = zzez(zzbgg);
                int size = zzez.size();
                StringBuilder sb = new StringBuilder(64);
                sb.append("DataLayer store full, deleting ");
                sb.append(size);
                sb.append(" entries to make room.");
                zzdj.zzcy(sb.toString());
                String[] strArr = (String[]) zzez.toArray(new String[0]);
                if (strArr != null && strArr.length != 0 && (zzlq = zzlq("Error opening database for deleteEntries.")) != null) {
                    try {
                        zzlq.delete("datalayer", String.format("%s in (%s)", "ID", TextUtils.join(",", Collections.nCopies(strArr.length, "?"))), strArr);
                    } catch (SQLiteException unused) {
                        String valueOf = String.valueOf(Arrays.toString(strArr));
                        zzdj.zzcz(valueOf.length() != 0 ? "Error deleting entries ".concat(valueOf) : new String("Error deleting entries "));
                    }
                }
            }
            zzc(list, currentTimeMillis + j);
        } finally {
            zzbgh();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final List<DataLayer.zza> zzbge() {
        try {
            zzbh(this.zzata.currentTimeMillis());
            List<zzay> zzbgf = zzbgf();
            ArrayList arrayList = new ArrayList();
            for (zzay zzayVar : zzbgf) {
                arrayList.add(new DataLayer.zza(zzayVar.zzbkr, zzy(zzayVar.zzkpc)));
            }
            return arrayList;
        } finally {
            zzbgh();
        }
    }

    private final List<zzay> zzbgf() {
        SQLiteDatabase zzlq = zzlq("Error opening database for loadSerialized.");
        ArrayList arrayList = new ArrayList();
        if (zzlq == null) {
            return arrayList;
        }
        Cursor query = zzlq.query("datalayer", new String[]{"key", "value"}, null, null, null, null, "ID", null);
        while (query.moveToNext()) {
            try {
                arrayList.add(new zzay(query.getString(0), query.getBlob(1)));
            } finally {
                query.close();
            }
        }
        return arrayList;
    }

    private final int zzbgg() {
        Cursor rawQuery;
        SQLiteDatabase zzlq = zzlq("Error opening database for getNumStoredEntries.");
        if (zzlq == null) {
            return 0;
        }
        Cursor cursor = null;
        try {
            try {
                rawQuery = zzlq.rawQuery("SELECT COUNT(*) from datalayer", null);
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
            zzdj.zzcz("Error getting numStoredEntries");
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

    private final void zzbgh() {
        try {
            this.zzkov.close();
        } catch (SQLiteException unused) {
        }
    }

    private final void zzbh(long j) {
        SQLiteDatabase zzlq = zzlq("Error opening database for deleteOlderThan.");
        if (zzlq == null) {
            return;
        }
        try {
            int delete = zzlq.delete("datalayer", "expires <= ?", new String[]{Long.toString(j)});
            StringBuilder sb = new StringBuilder(33);
            sb.append("Deleted ");
            sb.append(delete);
            sb.append(" expired items");
            zzdj.v(sb.toString());
        } catch (SQLiteException unused) {
            zzdj.zzcz("Error deleting old entries.");
        }
    }

    private final void zzc(List<zzay> list, long j) {
        SQLiteDatabase zzlq = zzlq("Error opening database for writeEntryToDatabase.");
        if (zzlq == null) {
            return;
        }
        for (zzay zzayVar : list) {
            ContentValues contentValues = new ContentValues();
            contentValues.put("expires", Long.valueOf(j));
            contentValues.put("key", zzayVar.zzbkr);
            contentValues.put("value", zzayVar.zzkpc);
            zzlq.insert("datalayer", null, contentValues);
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
    private final java.util.List<java.lang.String> zzez(int r15) {
        /*
            r14 = this;
            java.util.ArrayList r0 = new java.util.ArrayList
            r0.<init>()
            if (r15 > 0) goto Ld
            java.lang.String r15 = "Invalid maxEntries specified. Skipping."
            com.google.android.gms.tagmanager.zzdj.zzcz(r15)
            return r0
        Ld:
            java.lang.String r1 = "Error opening database for peekEntryIds."
            android.database.sqlite.SQLiteDatabase r2 = r14.zzlq(r1)
            if (r2 != 0) goto L16
            return r0
        L16:
            r1 = 0
            java.lang.String r3 = "datalayer"
            java.lang.String r4 = "ID"
            java.lang.String[] r4 = new java.lang.String[]{r4}     // Catch: java.lang.Throwable -> L5e android.database.sqlite.SQLiteException -> L60
            r5 = 0
            r6 = 0
            r7 = 0
            r8 = 0
            java.lang.String r9 = "%s ASC"
            r10 = 1
            java.lang.Object[] r10 = new java.lang.Object[r10]     // Catch: java.lang.Throwable -> L5e android.database.sqlite.SQLiteException -> L60
            java.lang.String r11 = "ID"
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
            java.lang.String r2 = "Error in peekEntries fetching entryIds: "
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
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.tagmanager.zzat.zzez(int):java.util.List");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void zzlp(String str) {
        SQLiteDatabase zzlq = zzlq("Error opening database for clearKeysWithPrefix.");
        try {
            if (zzlq == null) {
                return;
            }
            int delete = zzlq.delete("datalayer", "key = ? OR key LIKE ?", new String[]{str, String.valueOf(str).concat(".%")});
            StringBuilder sb = new StringBuilder(25);
            sb.append("Cleared ");
            sb.append(delete);
            sb.append(" items");
            zzdj.v(sb.toString());
        } catch (SQLiteException e) {
            String valueOf = String.valueOf(e);
            StringBuilder sb2 = new StringBuilder(44 + String.valueOf(str).length() + String.valueOf(valueOf).length());
            sb2.append("Error deleting entries with key prefix: ");
            sb2.append(str);
            sb2.append(" (");
            sb2.append(valueOf);
            sb2.append(").");
            zzdj.zzcz(sb2.toString());
        } finally {
            zzbgh();
        }
    }

    private final SQLiteDatabase zzlq(String str) {
        try {
            return this.zzkov.getWritableDatabase();
        } catch (SQLiteException unused) {
            zzdj.zzcz(str);
            return null;
        }
    }

    private static Object zzy(byte[] bArr) {
        ObjectInputStream objectInputStream;
        ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(bArr);
        ObjectInputStream objectInputStream2 = null;
        try {
            objectInputStream = new ObjectInputStream(byteArrayInputStream);
            try {
                Object readObject = objectInputStream.readObject();
                try {
                    objectInputStream.close();
                    byteArrayInputStream.close();
                } catch (IOException unused) {
                }
                return readObject;
            } catch (IOException unused2) {
                if (objectInputStream != null) {
                    try {
                        objectInputStream.close();
                    } catch (IOException unused3) {
                        return null;
                    }
                }
                byteArrayInputStream.close();
                return null;
            } catch (ClassNotFoundException unused4) {
                if (objectInputStream != null) {
                    try {
                        objectInputStream.close();
                    } catch (IOException unused5) {
                        return null;
                    }
                }
                byteArrayInputStream.close();
                return null;
            } catch (Throwable th) {
                th = th;
                objectInputStream2 = objectInputStream;
                if (objectInputStream2 != null) {
                    try {
                        objectInputStream2.close();
                    } catch (IOException unused6) {
                        throw th;
                    }
                }
                byteArrayInputStream.close();
                throw th;
            }
        } catch (IOException unused7) {
            objectInputStream = null;
        } catch (ClassNotFoundException unused8) {
            objectInputStream = null;
        } catch (Throwable th2) {
            th = th2;
        }
    }

    @Override // com.google.android.gms.tagmanager.DataLayer.zzc
    public final void zza(zzaq zzaqVar) {
        this.zzkou.execute(new zzav(this, zzaqVar));
    }

    @Override // com.google.android.gms.tagmanager.DataLayer.zzc
    public final void zza(List<DataLayer.zza> list, long j) {
        ArrayList arrayList = new ArrayList();
        for (DataLayer.zza zzaVar : list) {
            arrayList.add(new zzay(zzaVar.zzbkr, zzaj(zzaVar.mValue)));
        }
        this.zzkou.execute(new zzau(this, arrayList, j));
    }

    @Override // com.google.android.gms.tagmanager.DataLayer.zzc
    public final void zzlo(String str) {
        this.zzkou.execute(new zzaw(this, str));
    }
}
