package mobi.beyondpod.rsscore.helpers;

import java.io.File;

/* loaded from: classes.dex */
public class Path {
    public static String combine(String str, String str2) {
        return str + File.separator + str2;
    }

    public static String getExtension(String str) {
        int i;
        int lastIndexOf = str.lastIndexOf(46);
        return (lastIndexOf < 0 || (i = lastIndexOf + 1) == str.length()) ? "" : str.substring(i);
    }

    public static String getFileNameWithoutExtension(String str) {
        String fileName = getFileName(str);
        int lastIndexOf = fileName.lastIndexOf(46);
        if (lastIndexOf < 0) {
            lastIndexOf = fileName.length();
        }
        return fileName.substring(0, lastIndexOf);
    }

    public static String getFileName(String str) {
        int lastIndexOf = str.lastIndexOf(47);
        if (lastIndexOf == -1) {
            return str;
        }
        int i = lastIndexOf + 1;
        return i < str.length() ? str.substring(i, str.length()) : "";
    }
}
