package mobi.beyondpod.rsscore.helpers;

import android.annotation.SuppressLint;
import android.content.Context;
import android.os.Build;
import java.io.File;
import java.util.Locale;
import mobi.beyondpod.BeyondPodApplication;

/* loaded from: classes.dex */
public abstract class PermissionUtil {
    public static String[] PERMISSIONS_EXT_STORAGE = {"android.permission.READ_EXTERNAL_STORAGE", "android.permission.WRITE_EXTERNAL_STORAGE"};

    public static boolean verifyPermissions(int[] iArr) {
        for (int i : iArr) {
            if (i != 0) {
                return false;
            }
        }
        return true;
    }

    @SuppressLint({"NewApi"})
    public static boolean hasSelfPermission(Context context, String[] strArr) {
        if (!versionSupportsPermissions()) {
            return true;
        }
        for (String str : strArr) {
            if (context.checkSelfPermission(str) != 0) {
                return false;
            }
        }
        return true;
    }

    @SuppressLint({"NewApi"})
    public static boolean hasSelfPermission(Context context, String str) {
        return !versionSupportsPermissions() || context.checkSelfPermission(str) == 0;
    }

    public static boolean versionSupportsPermissions() {
        return Build.VERSION.SDK_INT >= 23;
    }

    public static boolean hasExternalStoragePermission() {
        return hasSelfPermission(BeyondPodApplication.getInstance().getApplicationContext(), PERMISSIONS_EXT_STORAGE);
    }

    public static boolean needsStoragePermissionForPath(String str) {
        File[] externalFilesDirs;
        if (!versionSupportsPermissions() || hasSelfPermission(BeyondPodApplication.getInstance().getApplicationContext(), PERMISSIONS_EXT_STORAGE) || (externalFilesDirs = BeyondPodApplication.getInstance().getExternalFilesDirs(null)) == null || StringUtils.isNullOrEmpty(str)) {
            return false;
        }
        for (File file : externalFilesDirs) {
            if (str.toLowerCase(Locale.ROOT).startsWith(file.getAbsolutePath().toLowerCase(Locale.ROOT))) {
                return false;
            }
        }
        return true;
    }
}
