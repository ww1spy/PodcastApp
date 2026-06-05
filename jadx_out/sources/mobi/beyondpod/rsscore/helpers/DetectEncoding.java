package mobi.beyondpod.rsscore.helpers;

import android.support.v7.widget.helper.ItemTouchHelper;
import io.fabric.sdk.android.services.network.HttpRequest;
import java.io.BufferedReader;
import java.io.ByteArrayInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.nio.charset.Charset;
import java.nio.charset.UnsupportedCharsetException;
import java.util.HashMap;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import mobi.beyondpod.downloadengine.IHttpClient;

/* loaded from: classes.dex */
public class DetectEncoding {
    private static final String TAG = "DetectEncoding";
    private static Map<String, String> encoding_map = getEncodingMap();
    private String defaultEncoding;
    final Magic[] magics = {new Magic("utf-32be", true, (byte) 0, (byte) 0, (byte) -2, (byte) -1), new Magic("utf-32le", true, (byte) -1, (byte) -2, (byte) 0, (byte) 0), new Magic("USC-4odd", true, (byte) 0, (byte) 0, (byte) -1, (byte) -2), new Magic("USC-4odder", true, (byte) -2, (byte) -1, (byte) 0, (byte) 0), new Magic("utf-16be", true, (byte) -2, (byte) -1), new Magic("utf-16le", true, (byte) -1, (byte) -2), new Magic("utf-8", true, (byte) -17, (byte) -69, (byte) -65), new Magic("utf-32be", false, (byte) 0, (byte) 0, (byte) 0, (byte) 60), new Magic("utf-32le", false, (byte) 60, (byte) 0, (byte) 0, (byte) 0), new Magic("USC-4 ASCII 2143", false, (byte) 0, (byte) 0, (byte) 60, (byte) 0), new Magic("USC-4 ASCII 3412", false, (byte) 0, (byte) 60, (byte) 0, (byte) 0), new Magic("utf-16be", false, (byte) 0, (byte) 60, (byte) 0, (byte) 63), new Magic("utf-16le", false, (byte) 60, (byte) 0, (byte) 63, (byte) 0), new Magic(HttpRequest.CHARSET_UTF8, false, (byte) 60, (byte) 63, (byte) 120, (byte) 109), new Magic("EBCDIC", false, (byte) 76, (byte) 111, (byte) -89, (byte) -108)};
    private boolean error = false;
    private int bomLength = 0;
    private boolean isJson = false;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static class Magic {
        boolean hasBOM;
        byte[] magic;
        String name;

        public Magic(String str, boolean z, byte b, byte b2, byte b3, byte b4) {
            this.magic = new byte[4];
            this.magic[0] = b;
            this.magic[1] = b2;
            this.magic[2] = b3;
            this.magic[3] = b4;
            this.hasBOM = z;
            this.name = str;
        }

        public Magic(String str, boolean z, byte b, byte b2, byte b3) {
            this.magic = new byte[3];
            this.magic[0] = b;
            this.magic[1] = b2;
            this.magic[2] = b3;
            this.hasBOM = z;
            this.name = str;
        }

        public Magic(String str, boolean z, byte b, byte b2) {
            this.magic = new byte[2];
            this.magic[0] = b;
            this.magic[1] = b2;
            this.hasBOM = z;
            this.name = str;
        }
    }

    public DetectEncoding(String str) {
        this.defaultEncoding = str;
    }

    public String detect(String str) {
        FileInputStream fileInputStream;
        byte[] bArr = new byte[100];
        FileInputStream fileInputStream2 = null;
        try {
            try {
                File file = new File(str);
                if (file.exists()) {
                    fileInputStream = new FileInputStream(file.getAbsolutePath());
                    try {
                        fileInputStream.read(bArr, 0, 100);
                        fileInputStream.close();
                    } catch (Exception e) {
                        e = e;
                        fileInputStream2 = fileInputStream;
                        CoreHelper.logException(TAG, "Unable to check XML feed encoding", e);
                        if (fileInputStream2 != null) {
                            fileInputStream2.close();
                        }
                        this.isJson = checkIfJson(bArr);
                        return detect(bArr);
                    } catch (Throwable th) {
                        th = th;
                        fileInputStream2 = fileInputStream;
                        if (fileInputStream2 != null) {
                            try {
                                fileInputStream2.close();
                            } catch (Exception unused) {
                            }
                        }
                        throw th;
                    }
                } else {
                    fileInputStream = null;
                }
            } catch (Exception e2) {
                e = e2;
            }
            if (fileInputStream != null) {
                fileInputStream.close();
            }
            this.isJson = checkIfJson(bArr);
            return detect(bArr);
        } catch (Throwable th2) {
            th = th2;
        }
    }

    public boolean isJson() {
        return this.isJson;
    }

    private static Map<String, String> getEncodingMap() {
        HashMap hashMap = new HashMap();
        hashMap.put("windows_1250", "windows-1250");
        hashMap.put("windows_1251", "windows-1251");
        hashMap.put("windows_1252", "windows-1252");
        hashMap.put("windows_1253", "windows-1253");
        hashMap.put("windows_1254", "windows-1254");
        hashMap.put("windows_1255", "windows-1255");
        hashMap.put("windows_1256", "windows-1256");
        hashMap.put("windows_1257", "windows-1257");
        hashMap.put("windows_1258", "windows-1258");
        hashMap.put("ms-ee", "windows-1250");
        hashMap.put("ms-cyrl", "windows-1251");
        hashMap.put("ms-ansi", "windows-1252");
        hashMap.put("ms-greek", "windows-1253");
        hashMap.put("ms-turk", "windows-1254");
        hashMap.put("ms-hebr", "windows-1255");
        hashMap.put("ms-arab", "windows-1256");
        hashMap.put("winbaltrim", "windows-1257");
        hashMap.put("maclatin2", "x-MacRoman");
        hashMap.put("macintosh", "x-MacRoman");
        hashMap.put("csmacintosh", "x-MacRoman");
        hashMap.put("mac", "x-MacRoman");
        hashMap.put("mac-cyrillic", "x-MacCyrillic");
        hashMap.put("us-ascii", "US-ASCII");
        hashMap.put("cspc775baltic", "IBM775");
        hashMap.put("iso-10646-ucs-2", "utf-16be");
        hashMap.put("ebcdic_cp_be", "CP500");
        hashMap.put("ebcdic_cp_us", "IBM037");
        hashMap.put("ebcdic_cp_ca", "IBM037");
        hashMap.put("ebcdic_cp_nl", "IBM037");
        hashMap.put("ebcdic_cp_wt", "IBM037");
        hashMap.put("ebcdic_cp_dk", "CP277");
        hashMap.put("ebcdic_cp_no", "CP277");
        hashMap.put("ebcdic_cp_fi", "CP278");
        hashMap.put("ebcdic_cp_se", "CP278");
        hashMap.put("ebcdic_cp_it", "CP280");
        hashMap.put("ebcdic_cp_es", "CP284");
        hashMap.put("ebcdic_cp_gb", "CP285");
        hashMap.put("ebcdic_cp_fr", "CP297");
        hashMap.put("ebcdic_cp_ch", "CP500");
        hashMap.put("ebcdic-cp-be", "CP500");
        hashMap.put("ebcdic-cp-us", "IBM037");
        hashMap.put("ebcdic-cp-ca", "IBM037");
        hashMap.put("ebcdic-cp-nl", "IBM037");
        hashMap.put("ebcdic-cp-wt", "IBM037");
        hashMap.put("ebcdic-cp-dk", "CP277");
        hashMap.put("ebcdic-cp-no", "CP277");
        hashMap.put("ebcdic-cp-fi", "CP278");
        hashMap.put("ebcdic-cp-se", "CP278");
        hashMap.put("ebcdic-cp-it", "CP280");
        hashMap.put("ebcdic-cp-es", "CP284");
        hashMap.put("ebcdic-cp-gb", "CP285");
        hashMap.put("ebcdic-cp-fr", "CP297");
        hashMap.put("ebcdic-cp-ch", "CP500");
        hashMap.put("ibm039", "IBM037");
        hashMap.put("ibm1140", "IBM037");
        hashMap.put("dbcs", "CP1252");
        hashMap.put("cp1125", "CP866");
        hashMap.put("cp_is", "cp861");
        hashMap.put("IBM277", "CP277");
        hashMap.put("CP277", "CP277");
        hashMap.put("CSIBM277", "CP277");
        hashMap.put("IBM278", "CP278");
        hashMap.put("CP278", "CP278");
        hashMap.put("CSIBM278", "CP278");
        hashMap.put("IBM280", "CP280");
        hashMap.put("CP280", "CP280");
        hashMap.put("CSIBM280", "CP280");
        hashMap.put("IBM284", "CP284");
        hashMap.put("CP284", "CP284");
        hashMap.put("CSIBM284", "CP284");
        hashMap.put("IBM285", "CP285");
        hashMap.put("CP285", "CP285");
        hashMap.put("CSIBM285", "CP285");
        hashMap.put("IBM297", "CP297");
        hashMap.put("CP297", "CP297");
        hashMap.put("CSIBM297", "CP297");
        hashMap.put("IBM420", "CP420");
        hashMap.put("CP420", "CP420");
        hashMap.put("CSIBM420", "CP420");
        hashMap.put("ebcdic-cp-ar1", "CP420");
        hashMap.put("ebcdic-cp-he", "CP424");
        hashMap.put("IBM424", "CP424");
        hashMap.put("CP424", "CP424");
        hashMap.put("CSIBM424", "CP424");
        hashMap.put("IBM500", "CP500");
        hashMap.put("CP500", "CP500");
        hashMap.put("CSIBM500", "CP500");
        hashMap.put("csibm855", "CP855");
        hashMap.put("IBM868", "CP868");
        hashMap.put("CP868", "CP868");
        hashMap.put("CSIBM868", "CP868");
        hashMap.put("CP-AR", "CP868");
        hashMap.put("IBM869", "CP869");
        hashMap.put("CP869", "CP869");
        hashMap.put("CSIBM869", "CP869");
        hashMap.put("CP-GR", "CP869");
        hashMap.put("IBM870", "CP870");
        hashMap.put("CP870", "CP870");
        hashMap.put("CSIBM870", "CP870");
        hashMap.put("IBM871", "CP871");
        hashMap.put("CP871", "CP871");
        hashMap.put("CSIBM871", "CP871");
        hashMap.put("ebcdic-cp-is", "CP871");
        hashMap.put("IBM918", "CP918");
        hashMap.put("CP918", "CP918");
        hashMap.put("CSIBM918", "CP918");
        hashMap.put("ebcdic-cp-ar2", "CP918");
        hashMap.put("EUC-JP", "EUCJIS");
        hashMap.put("CSEUCPkdFmtJapanese", "EUCJIS");
        hashMap.put("EUC-KR", "KSC5601");
        hashMap.put("GB2312", "GB2312");
        hashMap.put("CSGB2312", "GB2312");
        hashMap.put("ISO-2022-JP", "JIS");
        hashMap.put("CSISO2022JP", "JIS");
        hashMap.put("ISO-2022-KR", "ISO2022KR");
        hashMap.put("CSISO2022KR", "ISO2022KR");
        hashMap.put("ISO-2022-CN", "ISO2022CN");
        return hashMap;
    }

    private String detect(byte[] bArr) {
        String detectEBCDIC;
        if (bArr[0] == 60 && bArr[1] == 63) {
            detectEBCDIC = detectUsingXML(bArr);
        } else {
            String detectUsingMagic = detectUsingMagic(bArr);
            detectEBCDIC = "EBCDIC".equals(detectUsingMagic) ? detectEBCDIC(bArr) : detectUsingMagic;
        }
        String alias = alias(detectEBCDIC);
        if (alias == null) {
            alias = this.defaultEncoding;
        }
        try {
            Charset.forName(alias);
        } catch (UnsupportedCharsetException unused) {
            CoreHelper.writeTraceEntry(TAG, "Detected invalid encoding: " + alias + ". Using default");
            alias = this.defaultEncoding;
            this.error = true;
        }
        CoreHelper.writeTraceEntry(TAG, "Detected feed encoding: " + alias);
        return alias;
    }

    private String detectEBCDIC(byte[] bArr) {
        return detectUsingXML(asciiToEbcdic(bArr));
    }

    public String alias(String str) {
        try {
            return encoding_map.containsKey(str) ? encoding_map.get(str) : str;
        } catch (Throwable unused) {
            return this.defaultEncoding;
        }
    }

    private boolean checkIfJson(byte[] bArr) {
        try {
            String readLine = new BufferedReader(new InputStreamReader(new ByteArrayInputStream(bArr)), 20).readLine();
            if (StringUtils.isNullOrEmpty(readLine)) {
                return false;
            }
            String trim = readLine.trim();
            if (!trim.startsWith("{")) {
                if (!trim.startsWith("[")) {
                    return false;
                }
            }
            return true;
        } catch (Throwable unused) {
            return false;
        }
    }

    private String detectUsingXML(byte[] bArr) {
        String group;
        try {
            String readLine = new BufferedReader(new InputStreamReader(new ByteArrayInputStream(bArr)), 100).readLine();
            Matcher matcher = Pattern.compile(".*encoding=\"([^\"]*)\".*").matcher(readLine);
            if (matcher.matches()) {
                group = matcher.group(1);
            } else {
                Matcher matcher2 = Pattern.compile(".*encoding='([^']*)'.*").matcher(readLine);
                if (!matcher2.matches()) {
                    return null;
                }
                group = matcher2.group(1);
            }
            return group;
        } catch (Throwable unused) {
            return null;
        }
    }

    private String detectUsingMagic(byte[] bArr) {
        for (Magic magic : this.magics) {
            if (checkArray(bArr, magic.magic)) {
                String str = magic.name;
                if (!magic.hasBOM) {
                    return str;
                }
                this.bomLength = magic.magic.length;
                return str;
            }
        }
        return null;
    }

    private boolean checkArray(byte[] bArr, byte[] bArr2) {
        for (int i = 0; i < bArr2.length; i++) {
            if (bArr[i] != bArr2[i]) {
                return false;
            }
        }
        return true;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private byte[] asciiToEbcdic(byte[] bArr) {
        int[] iArr = {0, 1, 2, 3, 156, 9, 134, 127, 151, 141, 142, 11, 12, 13, 14, 15, 16, 17, 18, 19, 157, 133, 8, 135, 24, 25, 146, 143, 28, 29, 30, 31, 128, NotificationHelper.UPDATEANDDOWNLOAD_COMPLETED, 130, 131, 132, 10, 23, 27, 136, 137, 138, 139, 140, 5, 6, 7, 144, 145, 22, 147, 148, 149, 150, 4, 152, 153, 154, 155, 20, 21, 158, 26, 32, 160, 161, 162, 163, 164, 165, 166, 167, 168, 91, 46, 60, 40, 43, 33, 38, 169, 170, 171, 172, 173, 174, 175, 176, 177, 93, 36, 42, 41, 59, 94, 45, 47, 178, 179, 180, 181, 182, 183, 184, 185, 124, 44, 37, 95, 62, 63, 186, 187, 188, 189, 190, 191, 192, 193, 194, 96, 58, 35, 64, 39, 61, 34, 195, 97, 98, 99, 100, 101, 102, 103, 104, 105, 196, 197, 198, 199, 200, IHttpClient.SC_CREATED, IHttpClient.SC_ACCEPTED, 106, 107, 108, 109, 110, 111, 112, 113, 114, IHttpClient.SC_NON_AUTHORITATIVE_INFORMATION, IHttpClient.SC_NO_CONTENT, IHttpClient.SC_RESET_CONTENT, IHttpClient.SC_PARTIAL_CONTENT, IHttpClient.SC_MULTI_STATUS, 208, 209, 126, 115, 116, 117, 118, 119, 120, 121, 122, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 123, 65, 66, 67, 68, 69, 70, 71, 72, 73, 232, 233, 234, 235, 236, 237, 125, 74, 75, 76, 77, 78, 79, 80, 81, 82, 238, 239, 240, 241, 242, 243, 92, 159, 83, 84, 85, 86, 87, 88, 89, 90, 244, 245, 246, 247, 248, 249, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, ItemTouchHelper.Callback.DEFAULT_SWIPE_ANIMATION_DURATION, 251, 252, 253, 254, 255};
        for (int i = 0; i < bArr.length; i++) {
            bArr[i] = (byte) iArr[bArr[i] > 0 ? bArr[i] : bArr[i] + 256];
        }
        return bArr;
    }

    public void stripBOM(InputStream inputStream) throws IOException {
        for (int i = 0; i < this.bomLength; i++) {
            inputStream.read();
        }
    }

    public boolean isError() {
        return this.error;
    }
}
