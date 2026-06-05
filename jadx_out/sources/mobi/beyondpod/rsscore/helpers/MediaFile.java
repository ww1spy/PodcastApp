package mobi.beyondpod.rsscore.helpers;

import android.webkit.URLUtil;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Locale;

/* loaded from: classes.dex */
public class MediaFile {
    public static final int FILE_TYPE_3GPP = 23;
    public static final int FILE_TYPE_3GPP2 = 24;
    public static final int FILE_TYPE_AMR = 4;
    public static final int FILE_TYPE_AWB = 5;
    public static final int FILE_TYPE_BMP = 34;
    public static final int FILE_TYPE_EXTERNAL_DATA = 100;
    public static final int FILE_TYPE_FLV = 26;
    public static final int FILE_TYPE_GIF = 32;
    public static final int FILE_TYPE_IMY = 13;
    public static final int FILE_TYPE_JPEG = 31;
    public static final int FILE_TYPE_M3U = 41;
    public static final int FILE_TYPE_M4A = 2;
    public static final int FILE_TYPE_M4V = 22;
    public static final int FILE_TYPE_MID = 11;
    public static final int FILE_TYPE_MP3 = 1;
    public static final int FILE_TYPE_MP4 = 21;
    public static final int FILE_TYPE_OGG = 7;
    public static final int FILE_TYPE_PLS = 42;
    public static final int FILE_TYPE_PNG = 33;
    public static final int FILE_TYPE_SMF = 12;
    public static final int FILE_TYPE_WAV = 3;
    public static final int FILE_TYPE_WBMP = 35;
    public static final int FILE_TYPE_WMA = 6;
    public static final int FILE_TYPE_WMV = 25;
    public static final int FILE_TYPE_WPL = 43;
    private static final int FIRST_AUDIO_FILE_TYPE = 1;
    private static final int FIRST_IMAGE_FILE_TYPE = 31;
    private static final int FIRST_MIDI_FILE_TYPE = 11;
    private static final int FIRST_PLAYLIST_FILE_TYPE = 41;
    private static final int FIRST_VIDEO_FILE_TYPE = 21;
    private static final int LAST_AUDIO_FILE_TYPE = 7;
    private static final int LAST_IMAGE_FILE_TYPE = 35;
    private static final int LAST_MIDI_FILE_TYPE = 13;
    private static final int LAST_PLAYLIST_FILE_TYPE = 43;
    private static final int LAST_VIDEO_FILE_TYPE = 26;
    public static final String UNKNOWN_STRING = "<unknown>";
    public static String sFileExtensions;
    private static HashMap<String, MediaFileType> sFileTypeMap = new HashMap<>();
    private static HashMap<String, Integer> sMimeTypeMap = new HashMap<>();
    private static HashMap<Integer, String> sExtensionTypeMap = new HashMap<>();

    public static boolean isAudioFileType(int i) {
        if (i < 1 || i > 7) {
            return i >= 11 && i <= 13;
        }
        return true;
    }

    public static boolean isImageFileType(int i) {
        return i == 100 || (i >= 31 && i <= 35);
    }

    public static boolean isPlayListFileType(int i) {
        return i >= 41 && i <= 43;
    }

    public static boolean isVideoFileType(int i) {
        return i >= 21 && i <= 26;
    }

    /* loaded from: classes.dex */
    public static class MediaFileType {
        public int fileType;
        public String mimeType;

        MediaFileType(int i, String str) {
            this.fileType = i;
            this.mimeType = str;
        }
    }

    static {
        addFileType("MP3", 1, "audio/mpeg");
        addFileType("M4A", 2, "audio/mp4");
        addFileType("WAV", 3, "audio/x-wav");
        addFileType("AMR", 4, "audio/amr");
        addFileType("AWB", 5, "audio/amr-wb");
        addFileType("WMA", 6, "audio/x-ms-wma");
        addFileType("OGA", 7, "application/ogg");
        addFileType("OGG", 7, "application/ogg");
        addFileType("MID", 11, "audio/midi");
        addFileType("MIDI", 11, "audio/midi");
        addFileType("XMF", 11, "audio/midi");
        addFileType("RTTTL", 11, "audio/midi");
        addFileType("SMF", 12, "audio/sp-midi");
        addFileType("IMY", 13, "audio/imelody");
        addFileType("RTX", 11, "audio/midi");
        addFileType("OTA", 11, "audio/midi");
        addFileType("MP4", 21, "video/mp4");
        addFileType("M4V", 22, "video/mp4");
        addFileType("M4V", 22, "video/quicktime");
        addFileType("3GP", 23, "video/3gpp");
        addFileType("3GPP", 23, "video/3gpp");
        addFileType("3G2", 24, "video/3gpp2");
        addFileType("3GPP2", 24, "video/3gpp2");
        addFileType("WMV", 25, "video/x-ms-wmv");
        addFileType("FLV", 26, "application/x-shockwave-flash");
        addFileType("SWF", 26, "application/x-shockwave-flash");
        addFileType("JPG", 31, "image/jpeg");
        addFileType("JPEG", 31, "image/jpeg");
        addFileType("GIF", 32, "image/gif");
        addFileType("PNG", 33, "image/png");
        addFileType("BMP", 34, "image/x-ms-bmp");
        addFileType("WBMP", 35, "image/vnd.wap.wbmp");
        addFileType("M3U", 41, "audio/x-mpegurl");
        addFileType("PLS", 42, "audio/x-scpls");
        addFileType("WPL", 43, "application/vnd.ms-wpl");
        addFileType("PDF", 100, "application/pdf");
        addFileType("DOC", 100, "application/msword");
        addFileType("XLS", 100, "application/vnd.ms-excel");
        addFileType("PPT", 100, "application/vnd.ms-powerpoint");
        StringBuilder sb = new StringBuilder();
        Iterator<String> it = sFileTypeMap.keySet().iterator();
        while (it.hasNext()) {
            if (sb.length() > 0) {
                sb.append(',');
            }
            sb.append(it.next());
        }
        sFileExtensions = sb.toString();
    }

    static void addFileType(String str, int i, String str2) {
        sFileTypeMap.put(str, new MediaFileType(i, str2));
        sMimeTypeMap.put(str2, Integer.valueOf(i));
        sExtensionTypeMap.put(Integer.valueOf(i), str);
    }

    public static MediaFileType getFileType(String str) {
        int lastIndexOf = str.lastIndexOf(".");
        if (lastIndexOf < 0) {
            return null;
        }
        return sFileTypeMap.get(str.substring(lastIndexOf + 1).toUpperCase(Locale.ROOT));
    }

    public static String getMimeType(String str) {
        MediaFileType fileType = getFileType(str);
        if (fileType == null) {
            fileType = sFileTypeMap.get("MP3");
        }
        return fileType.mimeType;
    }

    public static int getFileTypeForMimeType(String str) {
        if (str == null) {
            return 0;
        }
        Integer num = sMimeTypeMap.get(str);
        if (num == null) {
            if (str.startsWith("video")) {
                return 21;
            }
            if (str.startsWith("audio")) {
                return 1;
            }
        }
        if (num == null) {
            return 0;
        }
        return num.intValue();
    }

    public static String getFileExtensionForType(int i) {
        return sExtensionTypeMap.get(Integer.valueOf(i));
    }

    public static String mapMediaRssMediumToMime(String str) {
        return "image".equals(str) ? "image/jpeg" : "audio".equals(str) ? "audio/mpeg" : "video".equals(str) ? "video/mp4" : "image/jpeg";
    }

    public static String guessMimeTypeOfUrl(String str) {
        try {
            String guessFileName = URLUtil.guessFileName(str, null, null);
            if (!StringUtils.isNullOrEmpty(guessFileName)) {
                return getMimeType(guessFileName);
            }
        } catch (Exception unused) {
        }
        return null;
    }

    public static boolean isStreamableMimeType(String str) {
        if (StringUtils.isNullOrEmpty(str)) {
            return false;
        }
        return str.startsWith("audio") || str.startsWith("video") || "application/x-shockwave-flash".equals(str);
    }

    public static String convertToStreamableMimeType(String str, String str2, String str3) {
        if (isStreamableMimeType(str)) {
            return str;
        }
        String str4 = null;
        if (!StringUtils.isNullOrEmpty(str2)) {
            str4 = guessMimeTypeOfUrl(str2);
        } else if (!StringUtils.isNullOrEmpty(str3)) {
            str4 = guessMimeTypeOfUrl(str2);
        }
        return StringUtils.isNullOrEmpty(str4) ? "audio/*" : str4;
    }

    public static int mapMimeToContentType(String str) {
        if (StringUtils.isNullOrEmpty(str)) {
            return -1;
        }
        if (str.startsWith("audio") || str.equals("application/ogg") || str.equals("application/x-ogg")) {
            return 1;
        }
        if (str.startsWith("video")) {
            return 2;
        }
        return str.startsWith("image") ? 3 : 0;
    }
}
