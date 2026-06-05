package android.support.v4.graphics;

import android.content.Context;
import android.content.res.Resources;
import android.os.Process;
import android.support.annotation.Nullable;
import android.support.annotation.RequiresApi;
import android.support.annotation.RestrictTo;
import android.util.Log;
import java.io.Closeable;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;

@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes.dex */
public class TypefaceCompatUtil {
    private static final String CACHE_FILE_PREFIX = ".font";
    private static final String TAG = "TypefaceCompatUtil";

    private TypefaceCompatUtil() {
    }

    @Nullable
    public static File getTempFile(Context context) {
        String str = CACHE_FILE_PREFIX + Process.myPid() + "-" + Process.myTid() + "-";
        for (int i = 0; i < 100; i++) {
            File file = new File(context.getCacheDir(), str + i);
            if (file.createNewFile()) {
                return file;
            }
        }
        return null;
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x0027  */
    /* JADX WARN: Removed duplicated region for block: B:28:? A[Catch: IOException -> 0x0036, SYNTHETIC, TRY_LEAVE, TryCatch #3 {IOException -> 0x0036, blocks: (B:3:0x0001, B:7:0x0018, B:22:0x0029, B:19:0x0032, B:26:0x002e, B:20:0x0035), top: B:2:0x0001, inners: #1 }] */
    @android.support.annotation.RequiresApi(19)
    @android.support.annotation.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static java.nio.ByteBuffer mmap(java.io.File r9) {
        /*
            r0 = 0
            java.io.FileInputStream r1 = new java.io.FileInputStream     // Catch: java.io.IOException -> L36
            r1.<init>(r9)     // Catch: java.io.IOException -> L36
            java.nio.channels.FileChannel r2 = r1.getChannel()     // Catch: java.lang.Throwable -> L1c java.lang.Throwable -> L1f
            long r6 = r2.size()     // Catch: java.lang.Throwable -> L1c java.lang.Throwable -> L1f
            java.nio.channels.FileChannel$MapMode r3 = java.nio.channels.FileChannel.MapMode.READ_ONLY     // Catch: java.lang.Throwable -> L1c java.lang.Throwable -> L1f
            r4 = 0
            java.nio.MappedByteBuffer r9 = r2.map(r3, r4, r6)     // Catch: java.lang.Throwable -> L1c java.lang.Throwable -> L1f
            if (r1 == 0) goto L1b
            r1.close()     // Catch: java.io.IOException -> L36
        L1b:
            return r9
        L1c:
            r9 = move-exception
            r2 = r0
            goto L25
        L1f:
            r9 = move-exception
            throw r9     // Catch: java.lang.Throwable -> L21
        L21:
            r2 = move-exception
            r8 = r2
            r2 = r9
            r9 = r8
        L25:
            if (r1 == 0) goto L35
            if (r2 == 0) goto L32
            r1.close()     // Catch: java.lang.Throwable -> L2d java.io.IOException -> L36
            goto L35
        L2d:
            r1 = move-exception
            r2.addSuppressed(r1)     // Catch: java.io.IOException -> L36
            goto L35
        L32:
            r1.close()     // Catch: java.io.IOException -> L36
        L35:
            throw r9     // Catch: java.io.IOException -> L36
        L36:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: android.support.v4.graphics.TypefaceCompatUtil.mmap(java.io.File):java.nio.ByteBuffer");
    }

    /* JADX WARN: Removed duplicated region for block: B:22:0x003a  */
    /* JADX WARN: Removed duplicated region for block: B:32:? A[Catch: all -> 0x0049, Throwable -> 0x004c, SYNTHETIC, TRY_LEAVE, TryCatch #1 {Throwable -> 0x004c, blocks: (B:5:0x000b, B:9:0x0026, B:23:0x0045, B:30:0x0041, B:24:0x0048), top: B:4:0x000b }] */
    /* JADX WARN: Removed duplicated region for block: B:42:0x0054  */
    /* JADX WARN: Removed duplicated region for block: B:52:? A[Catch: IOException -> 0x0063, SYNTHETIC, TRY_LEAVE, TryCatch #3 {IOException -> 0x0063, blocks: (B:3:0x0005, B:11:0x002b, B:46:0x0056, B:43:0x005f, B:50:0x005b, B:44:0x0062), top: B:2:0x0005, inners: #0 }] */
    @android.support.annotation.RequiresApi(19)
    @android.support.annotation.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.nio.ByteBuffer mmap(android.content.Context r8, android.os.CancellationSignal r9, android.net.Uri r10) {
        /*
            android.content.ContentResolver r8 = r8.getContentResolver()
            r0 = 0
            java.lang.String r1 = "r"
            android.os.ParcelFileDescriptor r8 = r8.openFileDescriptor(r10, r1, r9)     // Catch: java.io.IOException -> L63
            java.io.FileInputStream r9 = new java.io.FileInputStream     // Catch: java.lang.Throwable -> L49 java.lang.Throwable -> L4c
            java.io.FileDescriptor r10 = r8.getFileDescriptor()     // Catch: java.lang.Throwable -> L49 java.lang.Throwable -> L4c
            r9.<init>(r10)     // Catch: java.lang.Throwable -> L49 java.lang.Throwable -> L4c
            java.nio.channels.FileChannel r1 = r9.getChannel()     // Catch: java.lang.Throwable -> L2f java.lang.Throwable -> L32
            long r5 = r1.size()     // Catch: java.lang.Throwable -> L2f java.lang.Throwable -> L32
            java.nio.channels.FileChannel$MapMode r2 = java.nio.channels.FileChannel.MapMode.READ_ONLY     // Catch: java.lang.Throwable -> L2f java.lang.Throwable -> L32
            r3 = 0
            java.nio.MappedByteBuffer r10 = r1.map(r2, r3, r5)     // Catch: java.lang.Throwable -> L2f java.lang.Throwable -> L32
            if (r9 == 0) goto L29
            r9.close()     // Catch: java.lang.Throwable -> L49 java.lang.Throwable -> L4c
        L29:
            if (r8 == 0) goto L2e
            r8.close()     // Catch: java.io.IOException -> L63
        L2e:
            return r10
        L2f:
            r10 = move-exception
            r1 = r0
            goto L38
        L32:
            r10 = move-exception
            throw r10     // Catch: java.lang.Throwable -> L34
        L34:
            r1 = move-exception
            r7 = r1
            r1 = r10
            r10 = r7
        L38:
            if (r9 == 0) goto L48
            if (r1 == 0) goto L45
            r9.close()     // Catch: java.lang.Throwable -> L40 java.lang.Throwable -> L49
            goto L48
        L40:
            r9 = move-exception
            r1.addSuppressed(r9)     // Catch: java.lang.Throwable -> L49 java.lang.Throwable -> L4c
            goto L48
        L45:
            r9.close()     // Catch: java.lang.Throwable -> L49 java.lang.Throwable -> L4c
        L48:
            throw r10     // Catch: java.lang.Throwable -> L49 java.lang.Throwable -> L4c
        L49:
            r9 = move-exception
            r10 = r0
            goto L52
        L4c:
            r9 = move-exception
            throw r9     // Catch: java.lang.Throwable -> L4e
        L4e:
            r10 = move-exception
            r7 = r10
            r10 = r9
            r9 = r7
        L52:
            if (r8 == 0) goto L62
            if (r10 == 0) goto L5f
            r8.close()     // Catch: java.lang.Throwable -> L5a java.io.IOException -> L63
            goto L62
        L5a:
            r8 = move-exception
            r10.addSuppressed(r8)     // Catch: java.io.IOException -> L63
            goto L62
        L5f:
            r8.close()     // Catch: java.io.IOException -> L63
        L62:
            throw r9     // Catch: java.io.IOException -> L63
        L63:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: android.support.v4.graphics.TypefaceCompatUtil.mmap(android.content.Context, android.os.CancellationSignal, android.net.Uri):java.nio.ByteBuffer");
    }

    @RequiresApi(19)
    @Nullable
    public static ByteBuffer copyToDirectBuffer(Context context, Resources resources, int i) {
        File tempFile = getTempFile(context);
        if (tempFile == null) {
            return null;
        }
        try {
            if (copyToFile(tempFile, resources, i)) {
                return mmap(tempFile);
            }
            return null;
        } finally {
            tempFile.delete();
        }
    }

    public static boolean copyToFile(File file, InputStream inputStream) {
        FileOutputStream fileOutputStream;
        FileOutputStream fileOutputStream2 = null;
        try {
            try {
                fileOutputStream = new FileOutputStream(file, false);
            } catch (Throwable th) {
                th = th;
            }
        } catch (IOException e) {
            e = e;
        }
        try {
            byte[] bArr = new byte[1024];
            while (true) {
                int read = inputStream.read(bArr);
                if (read != -1) {
                    fileOutputStream.write(bArr, 0, read);
                } else {
                    closeQuietly(fileOutputStream);
                    return true;
                }
            }
        } catch (IOException e2) {
            e = e2;
            fileOutputStream2 = fileOutputStream;
            Log.e(TAG, "Error copying resource contents to temp file: " + e.getMessage());
            closeQuietly(fileOutputStream2);
            return false;
        } catch (Throwable th2) {
            th = th2;
            fileOutputStream2 = fileOutputStream;
            closeQuietly(fileOutputStream2);
            throw th;
        }
    }

    public static boolean copyToFile(File file, Resources resources, int i) {
        InputStream inputStream;
        try {
            inputStream = resources.openRawResource(i);
            try {
                boolean copyToFile = copyToFile(file, inputStream);
                closeQuietly(inputStream);
                return copyToFile;
            } catch (Throwable th) {
                th = th;
                closeQuietly(inputStream);
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
            inputStream = null;
        }
    }

    public static void closeQuietly(Closeable closeable) {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (IOException unused) {
            }
        }
    }
}
