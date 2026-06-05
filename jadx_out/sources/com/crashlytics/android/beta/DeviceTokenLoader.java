package com.crashlytics.android.beta;

import android.content.Context;
import android.content.pm.PackageManager;
import io.fabric.sdk.android.Fabric;
import io.fabric.sdk.android.Logger;
import io.fabric.sdk.android.services.cache.ValueLoader;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.util.zip.ZipEntry;
import java.util.zip.ZipInputStream;

/* loaded from: classes.dex */
public class DeviceTokenLoader implements ValueLoader<String> {
    private static final String BETA_APP_PACKAGE_NAME = "io.crash.air";
    private static final String DIRFACTOR_DEVICE_TOKEN_PREFIX = "assets/com.crashlytics.android.beta/dirfactor-device-token=";

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r3v0 */
    /* JADX WARN: Type inference failed for: r3v11 */
    /* JADX WARN: Type inference failed for: r3v2 */
    /* JADX WARN: Type inference failed for: r3v3, types: [java.util.zip.ZipInputStream] */
    /* JADX WARN: Type inference failed for: r3v7, types: [java.lang.String] */
    @Override // io.fabric.sdk.android.services.cache.ValueLoader
    public String load(Context context) throws Exception {
        ZipInputStream zipInputStreamOfApkFrom;
        long nanoTime = System.nanoTime();
        String str = "";
        ?? r3 = 0;
        ZipInputStream zipInputStream = null;
        ZipInputStream zipInputStream2 = null;
        ZipInputStream zipInputStream3 = null;
        try {
            try {
                try {
                    zipInputStreamOfApkFrom = getZipInputStreamOfApkFrom(context, "io.crash.air");
                } catch (Throwable th) {
                    th = th;
                }
            } catch (PackageManager.NameNotFoundException unused) {
            } catch (FileNotFoundException e) {
                e = e;
            } catch (IOException e2) {
                e = e2;
            }
        } catch (IOException e3) {
            Fabric.getLogger().e(Beta.TAG, "Failed to close the APK file", e3);
        }
        try {
            String determineDeviceToken = determineDeviceToken(zipInputStreamOfApkFrom);
            if (zipInputStreamOfApkFrom != null) {
                try {
                    zipInputStreamOfApkFrom.close();
                } catch (IOException e4) {
                    Fabric.getLogger().e(Beta.TAG, "Failed to close the APK file", e4);
                }
            }
            str = determineDeviceToken;
        } catch (PackageManager.NameNotFoundException unused2) {
            zipInputStream = zipInputStreamOfApkFrom;
            Fabric.getLogger().d(Beta.TAG, "Beta by Crashlytics app is not installed");
            if (zipInputStream != null) {
                zipInputStream.close();
            }
            Logger logger = Fabric.getLogger();
            r3 = Beta.TAG;
            logger.d(Beta.TAG, "Beta device token load took " + ((System.nanoTime() - nanoTime) / 1000000.0d) + "ms");
            return str;
        } catch (FileNotFoundException e5) {
            zipInputStream2 = zipInputStreamOfApkFrom;
            e = e5;
            Fabric.getLogger().e(Beta.TAG, "Failed to find the APK file", e);
            if (zipInputStream2 != null) {
                zipInputStream2.close();
            }
            Logger logger2 = Fabric.getLogger();
            r3 = Beta.TAG;
            logger2.d(Beta.TAG, "Beta device token load took " + ((System.nanoTime() - nanoTime) / 1000000.0d) + "ms");
            return str;
        } catch (IOException e6) {
            zipInputStream3 = zipInputStreamOfApkFrom;
            e = e6;
            Fabric.getLogger().e(Beta.TAG, "Failed to read the APK file", e);
            if (zipInputStream3 != null) {
                zipInputStream3.close();
            }
            Logger logger22 = Fabric.getLogger();
            r3 = Beta.TAG;
            logger22.d(Beta.TAG, "Beta device token load took " + ((System.nanoTime() - nanoTime) / 1000000.0d) + "ms");
            return str;
        } catch (Throwable th2) {
            th = th2;
            r3 = zipInputStreamOfApkFrom;
            if (r3 != 0) {
                try {
                    r3.close();
                } catch (IOException e7) {
                    Fabric.getLogger().e(Beta.TAG, "Failed to close the APK file", e7);
                }
            }
            throw th;
        }
        Logger logger222 = Fabric.getLogger();
        r3 = Beta.TAG;
        logger222.d(Beta.TAG, "Beta device token load took " + ((System.nanoTime() - nanoTime) / 1000000.0d) + "ms");
        return str;
    }

    ZipInputStream getZipInputStreamOfApkFrom(Context context, String str) throws PackageManager.NameNotFoundException, FileNotFoundException {
        return new ZipInputStream(new FileInputStream(context.getPackageManager().getApplicationInfo(str, 0).sourceDir));
    }

    String determineDeviceToken(ZipInputStream zipInputStream) throws IOException {
        ZipEntry nextEntry = zipInputStream.getNextEntry();
        if (nextEntry == null) {
            return "";
        }
        String name = nextEntry.getName();
        return name.startsWith(DIRFACTOR_DEVICE_TOKEN_PREFIX) ? name.substring(DIRFACTOR_DEVICE_TOKEN_PREFIX.length(), name.length() - 1) : "";
    }
}
