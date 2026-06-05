package mobi.beyondpod.rsscore.helpers;

import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.Date;

/* loaded from: classes.dex */
public class FileUtils {
    private static final int BUFSIZE = 4096;
    private static final String TAG = "FileUtils";

    public static Date getLastWriteTime(String str) {
        return new Date(new File(str).lastModified());
    }

    public static boolean renameTo(String str, String str2) {
        File file = new File(str);
        File file2 = new File(str2);
        if (file.exists()) {
            return file.renameTo(file2);
        }
        return false;
    }

    public static boolean exists(String str) {
        if (str == null) {
            return false;
        }
        return new File(str).exists();
    }

    public static boolean directoryExists(String str) {
        return exists(str);
    }

    public static boolean createDirectory(String str) {
        return new File(str).mkdirs();
    }

    public static boolean copyFile(File file, File file2) {
        try {
            return copyFile(file.getAbsolutePath(), file2.getAbsolutePath());
        } catch (IOException unused) {
            return false;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:34:0x0060  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x0065  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean copyFile(java.lang.String r10, java.lang.String r11) throws java.io.IOException {
        /*
            boolean r0 = mobi.beyondpod.rsscore.helpers.StringUtils.isNullOrEmpty(r10)
            r1 = 0
            if (r0 != 0) goto L69
            boolean r0 = mobi.beyondpod.rsscore.helpers.StringUtils.isNullOrEmpty(r11)
            if (r0 == 0) goto Lf
            goto L69
        Lf:
            r0 = 0
            java.io.FileInputStream r2 = new java.io.FileInputStream     // Catch: java.lang.Throwable -> L47 java.lang.Exception -> L4a
            r2.<init>(r10)     // Catch: java.lang.Throwable -> L47 java.lang.Exception -> L4a
            java.nio.channels.FileChannel r10 = r2.getChannel()     // Catch: java.lang.Throwable -> L47 java.lang.Exception -> L4a
            java.io.FileOutputStream r2 = new java.io.FileOutputStream     // Catch: java.lang.Throwable -> L3e java.lang.Exception -> L44
            r2.<init>(r11)     // Catch: java.lang.Throwable -> L3e java.lang.Exception -> L44
            java.nio.channels.FileChannel r11 = r2.getChannel()     // Catch: java.lang.Throwable -> L3e java.lang.Exception -> L44
            r5 = 0
            long r7 = r10.size()     // Catch: java.lang.Throwable -> L39 java.lang.Exception -> L45
            r3 = r11
            r4 = r10
            r3.transferFrom(r4, r5, r7)     // Catch: java.lang.Throwable -> L39 java.lang.Exception -> L45
            r0 = 1
            if (r10 == 0) goto L33
            r10.close()
        L33:
            if (r11 == 0) goto L38
            r11.close()
        L38:
            return r0
        L39:
            r0 = move-exception
            r9 = r0
            r0 = r10
            r10 = r9
            goto L5e
        L3e:
            r11 = move-exception
            r9 = r0
            r0 = r10
            r10 = r11
            r11 = r9
            goto L5e
        L44:
            r11 = r0
        L45:
            r0 = r10
            goto L4b
        L47:
            r10 = move-exception
            r11 = r0
            goto L5e
        L4a:
            r11 = r0
        L4b:
            java.lang.String r10 = mobi.beyondpod.rsscore.helpers.FileUtils.TAG     // Catch: java.lang.Throwable -> L5d
            java.lang.String r2 = "failed to copy file!"
            mobi.beyondpod.rsscore.helpers.CoreHelper.writeTraceEntry(r10, r2)     // Catch: java.lang.Throwable -> L5d
            if (r0 == 0) goto L57
            r0.close()
        L57:
            if (r11 == 0) goto L5c
            r11.close()
        L5c:
            return r1
        L5d:
            r10 = move-exception
        L5e:
            if (r0 == 0) goto L63
            r0.close()
        L63:
            if (r11 == 0) goto L68
            r11.close()
        L68:
            throw r10
        L69:
            java.lang.String r10 = mobi.beyondpod.rsscore.helpers.FileUtils.TAG
            java.lang.String r11 = "Unable to copy file! Either source or destinations are null"
            mobi.beyondpod.rsscore.helpers.CoreHelper.writeLogEntry(r10, r11)
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: mobi.beyondpod.rsscore.helpers.FileUtils.copyFile(java.lang.String, java.lang.String):boolean");
    }

    public static boolean deleteFileIfExists(String str) {
        if (StringUtils.isNullOrEmpty(str)) {
            return false;
        }
        try {
            File file = new File(str);
            if (file.exists()) {
                return file.delete();
            }
        } catch (Exception e) {
            CoreHelper.logException(TAG, "failed to delete file!", e);
        }
        return false;
    }

    public static void copyStreams(InputStream inputStream, FileOutputStream fileOutputStream) {
        BufferedOutputStream bufferedOutputStream;
        BufferedOutputStream bufferedOutputStream2 = null;
        try {
            try {
                try {
                    byte[] bArr = new byte[4096];
                    bufferedOutputStream = new BufferedOutputStream(fileOutputStream, 4096);
                    while (true) {
                        try {
                            int read = inputStream.read(bArr, 0, 4096);
                            if (read == -1) {
                                break;
                            } else {
                                bufferedOutputStream.write(bArr, 0, read);
                            }
                        } catch (IOException e) {
                            e = e;
                            bufferedOutputStream2 = bufferedOutputStream;
                            CoreHelper.logException(TAG, "Exception while copying: ", e);
                            if (bufferedOutputStream2 != null) {
                                bufferedOutputStream2.close();
                            }
                            return;
                        } catch (Throwable th) {
                            th = th;
                            bufferedOutputStream2 = bufferedOutputStream;
                            if (bufferedOutputStream2 != null) {
                                try {
                                    bufferedOutputStream2.close();
                                } catch (IOException e2) {
                                    CoreHelper.logException(TAG, "Exception while closing the stream: ", e2);
                                }
                            }
                            throw th;
                        }
                    }
                    bufferedOutputStream.flush();
                } catch (IOException e3) {
                    e = e3;
                }
                if (bufferedOutputStream != null) {
                    bufferedOutputStream.close();
                }
            } catch (Throwable th2) {
                th = th2;
            }
        } catch (IOException e4) {
            CoreHelper.logException(TAG, "Exception while closing the stream: ", e4);
        }
    }

    public static void deleteFile(File file) {
        File[] listFiles = file.listFiles();
        if (listFiles != null && listFiles.length > 0) {
            for (File file2 : listFiles) {
                deleteFile(file2);
            }
        }
        if (file.delete()) {
            return;
        }
        CoreHelper.writeLogEntry(TAG, file.getPath() + " could not get deleted");
    }
}
