package com.google.android.gms.internal;

import android.content.Context;
import com.google.android.gms.common.internal.Hide;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.UUID;
import java.util.concurrent.Future;
import mobi.beyondpod.ui.views.notifications.NotificationPreferences;

@Hide
/* loaded from: classes.dex */
public final class zzasc extends zzari {
    private volatile String zzdxk;
    private Future<String> zzeat;

    /* JADX INFO: Access modifiers changed from: protected */
    public zzasc(zzark zzarkVar) {
        super(zzarkVar);
    }

    /* JADX WARN: Removed duplicated region for block: B:61:0x008e A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final java.lang.String zzbm(android.content.Context r7) {
        /*
            r6 = this;
            java.lang.String r0 = "ClientId should be loaded from worker thread"
            com.google.android.gms.common.internal.zzbq.zzgw(r0)
            r0 = 0
            java.lang.String r1 = "gaClientId"
            java.io.FileInputStream r1 = r7.openFileInput(r1)     // Catch: java.lang.Throwable -> L6f java.io.IOException -> L72 java.io.FileNotFoundException -> L99
            r2 = 36
            byte[] r3 = new byte[r2]     // Catch: java.io.IOException -> L6d java.lang.Throwable -> L8b java.io.FileNotFoundException -> L9a
            r4 = 0
            int r2 = r1.read(r3, r4, r2)     // Catch: java.io.IOException -> L6d java.lang.Throwable -> L8b java.io.FileNotFoundException -> L9a
            int r5 = r1.available()     // Catch: java.io.IOException -> L6d java.lang.Throwable -> L8b java.io.FileNotFoundException -> L9a
            if (r5 <= 0) goto L35
            java.lang.String r2 = "clientId file seems corrupted, deleting it."
            r6.zzed(r2)     // Catch: java.io.IOException -> L6d java.lang.Throwable -> L8b java.io.FileNotFoundException -> L9a
            r1.close()     // Catch: java.io.IOException -> L6d java.lang.Throwable -> L8b java.io.FileNotFoundException -> L9a
            java.lang.String r2 = "gaClientId"
            r7.deleteFile(r2)     // Catch: java.io.IOException -> L6d java.lang.Throwable -> L8b java.io.FileNotFoundException -> L9a
            if (r1 == 0) goto L34
            r1.close()     // Catch: java.io.IOException -> L2e
            return r0
        L2e:
            r7 = move-exception
            java.lang.String r1 = "Failed to close client id reading stream"
            r6.zze(r1, r7)
        L34:
            return r0
        L35:
            r5 = 14
            if (r2 >= r5) goto L53
            java.lang.String r2 = "clientId file is empty, deleting it."
            r6.zzed(r2)     // Catch: java.io.IOException -> L6d java.lang.Throwable -> L8b java.io.FileNotFoundException -> L9a
            r1.close()     // Catch: java.io.IOException -> L6d java.lang.Throwable -> L8b java.io.FileNotFoundException -> L9a
            java.lang.String r2 = "gaClientId"
            r7.deleteFile(r2)     // Catch: java.io.IOException -> L6d java.lang.Throwable -> L8b java.io.FileNotFoundException -> L9a
            if (r1 == 0) goto L52
            r1.close()     // Catch: java.io.IOException -> L4c
            return r0
        L4c:
            r7 = move-exception
            java.lang.String r1 = "Failed to close client id reading stream"
            r6.zze(r1, r7)
        L52:
            return r0
        L53:
            r1.close()     // Catch: java.io.IOException -> L6d java.lang.Throwable -> L8b java.io.FileNotFoundException -> L9a
            java.lang.String r5 = new java.lang.String     // Catch: java.io.IOException -> L6d java.lang.Throwable -> L8b java.io.FileNotFoundException -> L9a
            r5.<init>(r3, r4, r2)     // Catch: java.io.IOException -> L6d java.lang.Throwable -> L8b java.io.FileNotFoundException -> L9a
            java.lang.String r2 = "Read client id from disk"
            r6.zza(r2, r5)     // Catch: java.io.IOException -> L6d java.lang.Throwable -> L8b java.io.FileNotFoundException -> L9a
            if (r1 == 0) goto L6c
            r1.close()     // Catch: java.io.IOException -> L66
            return r5
        L66:
            r7 = move-exception
            java.lang.String r0 = "Failed to close client id reading stream"
            r6.zze(r0, r7)
        L6c:
            return r5
        L6d:
            r2 = move-exception
            goto L74
        L6f:
            r7 = move-exception
            r1 = r0
            goto L8c
        L72:
            r2 = move-exception
            r1 = r0
        L74:
            java.lang.String r3 = "Error reading client id file, deleting it"
            r6.zze(r3, r2)     // Catch: java.lang.Throwable -> L8b
            java.lang.String r2 = "gaClientId"
            r7.deleteFile(r2)     // Catch: java.lang.Throwable -> L8b
            if (r1 == 0) goto L8a
            r1.close()     // Catch: java.io.IOException -> L84
            return r0
        L84:
            r7 = move-exception
            java.lang.String r1 = "Failed to close client id reading stream"
            r6.zze(r1, r7)
        L8a:
            return r0
        L8b:
            r7 = move-exception
        L8c:
            if (r1 == 0) goto L98
            r1.close()     // Catch: java.io.IOException -> L92
            goto L98
        L92:
            r0 = move-exception
            java.lang.String r1 = "Failed to close client id reading stream"
            r6.zze(r1, r0)
        L98:
            throw r7
        L99:
            r1 = r0
        L9a:
            if (r1 == 0) goto La6
            r1.close()     // Catch: java.io.IOException -> La0
            return r0
        La0:
            r7 = move-exception
            java.lang.String r1 = "Failed to close client id reading stream"
            r6.zze(r1, r7)
        La6:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.zzasc.zzbm(android.content.Context):java.lang.String");
    }

    private final boolean zzo(Context context, String str) {
        FileOutputStream openFileOutput;
        com.google.android.gms.common.internal.zzbq.zzgv(str);
        com.google.android.gms.common.internal.zzbq.zzgw("ClientId should be saved from worker thread");
        FileOutputStream fileOutputStream = null;
        try {
            try {
                zza("Storing clientId", str);
                openFileOutput = context.openFileOutput("gaClientId", 0);
            } catch (Throwable th) {
                th = th;
            }
        } catch (FileNotFoundException e) {
            e = e;
        } catch (IOException e2) {
            e = e2;
        }
        try {
            openFileOutput.write(str.getBytes());
            if (openFileOutput == null) {
                return true;
            }
            try {
                openFileOutput.close();
                return true;
            } catch (IOException e3) {
                zze("Failed to close clientId writing stream", e3);
                return true;
            }
        } catch (FileNotFoundException e4) {
            e = e4;
            fileOutputStream = openFileOutput;
            zze("Error creating clientId file", e);
            if (fileOutputStream != null) {
                try {
                    fileOutputStream.close();
                    return false;
                } catch (IOException e5) {
                    zze("Failed to close clientId writing stream", e5);
                    return false;
                }
            }
            return false;
        } catch (IOException e6) {
            e = e6;
            fileOutputStream = openFileOutput;
            zze("Error writing to clientId file", e);
            if (fileOutputStream != null) {
                try {
                    fileOutputStream.close();
                    return false;
                } catch (IOException e7) {
                    zze("Failed to close clientId writing stream", e7);
                    return false;
                }
            }
            return false;
        } catch (Throwable th2) {
            th = th2;
            fileOutputStream = openFileOutput;
            if (fileOutputStream != null) {
                try {
                    fileOutputStream.close();
                } catch (IOException e8) {
                    zze("Failed to close clientId writing stream", e8);
                }
            }
            throw th;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final String zzzs() {
        String lowerCase = UUID.randomUUID().toString().toLowerCase();
        try {
            return !zzo(zzya().getContext(), lowerCase) ? NotificationPreferences.NO : lowerCase;
        } catch (Exception e) {
            zze("Error saving clientId file", e);
            return NotificationPreferences.NO;
        }
    }

    @Override // com.google.android.gms.internal.zzari
    protected final void zzwk() {
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x003e A[Catch: all -> 0x0050, TryCatch #0 {, blocks: (B:4:0x0004, B:6:0x0008, B:7:0x0017, B:15:0x001b, B:16:0x003a, B:18:0x003e, B:19:0x0042, B:9:0x004c, B:10:0x004e, B:22:0x0027, B:23:0x002e, B:25:0x0032), top: B:3:0x0004, inners: #1, #2 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.String zzzp() {
        /*
            r2 = this;
            r2.zzyk()
            monitor-enter(r2)
            java.lang.String r0 = r2.zzdxk     // Catch: java.lang.Throwable -> L50
            if (r0 != 0) goto L17
            com.google.android.gms.analytics.zzk r0 = r2.zzya()     // Catch: java.lang.Throwable -> L50
            com.google.android.gms.internal.zzasd r1 = new com.google.android.gms.internal.zzasd     // Catch: java.lang.Throwable -> L50
            r1.<init>(r2)     // Catch: java.lang.Throwable -> L50
            java.util.concurrent.Future r0 = r0.zza(r1)     // Catch: java.lang.Throwable -> L50
            r2.zzeat = r0     // Catch: java.lang.Throwable -> L50
        L17:
            java.util.concurrent.Future<java.lang.String> r0 = r2.zzeat     // Catch: java.lang.Throwable -> L50
            if (r0 == 0) goto L4c
            java.util.concurrent.Future<java.lang.String> r0 = r2.zzeat     // Catch: java.util.concurrent.ExecutionException -> L26 java.lang.InterruptedException -> L31 java.lang.Throwable -> L50
            java.lang.Object r0 = r0.get()     // Catch: java.util.concurrent.ExecutionException -> L26 java.lang.InterruptedException -> L31 java.lang.Throwable -> L50
            java.lang.String r0 = (java.lang.String) r0     // Catch: java.util.concurrent.ExecutionException -> L26 java.lang.InterruptedException -> L31 java.lang.Throwable -> L50
            r2.zzdxk = r0     // Catch: java.util.concurrent.ExecutionException -> L26 java.lang.InterruptedException -> L31 java.lang.Throwable -> L50
            goto L3a
        L26:
            r0 = move-exception
            java.lang.String r1 = "Failed to load or generate client id"
            r2.zze(r1, r0)     // Catch: java.lang.Throwable -> L50
            java.lang.String r0 = "0"
        L2e:
            r2.zzdxk = r0     // Catch: java.lang.Throwable -> L50
            goto L3a
        L31:
            r0 = move-exception
            java.lang.String r1 = "ClientId loading or generation was interrupted"
            r2.zzd(r1, r0)     // Catch: java.lang.Throwable -> L50
            java.lang.String r0 = "0"
            goto L2e
        L3a:
            java.lang.String r0 = r2.zzdxk     // Catch: java.lang.Throwable -> L50
            if (r0 != 0) goto L42
            java.lang.String r0 = "0"
            r2.zzdxk = r0     // Catch: java.lang.Throwable -> L50
        L42:
            java.lang.String r0 = "Loaded clientId"
            java.lang.String r1 = r2.zzdxk     // Catch: java.lang.Throwable -> L50
            r2.zza(r0, r1)     // Catch: java.lang.Throwable -> L50
            r0 = 0
            r2.zzeat = r0     // Catch: java.lang.Throwable -> L50
        L4c:
            java.lang.String r0 = r2.zzdxk     // Catch: java.lang.Throwable -> L50
            monitor-exit(r2)     // Catch: java.lang.Throwable -> L50
            return r0
        L50:
            r0 = move-exception
            monitor-exit(r2)     // Catch: java.lang.Throwable -> L50
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.zzasc.zzzp():java.lang.String");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final String zzzq() {
        synchronized (this) {
            this.zzdxk = null;
            this.zzeat = zzya().zza(new zzase(this));
        }
        return zzzp();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final String zzzr() {
        String zzbm = zzbm(zzya().getContext());
        return zzbm == null ? zzzs() : zzbm;
    }
}
