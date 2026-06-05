package mobi.beyondpod.downloadengine;

import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.EOFException;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.net.InetAddress;
import java.net.URI;
import java.util.ArrayList;
import java.util.Iterator;
import mobi.beyondpod.rsscore.Configuration;
import mobi.beyondpod.rsscore.helpers.CoreHelper;
import mobi.beyondpod.rsscore.helpers.StringUtils;

/* loaded from: classes.dex */
public class DNSCache {
    public static final String TAG = "DNSCache";
    private static ArrayList<DNSEntry> _DNSList;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static class DNSEntry {
        public String hostAddress;
        public String hostName;

        DNSEntry(String str, String str2) {
            this.hostName = str;
            this.hostAddress = str2;
        }
    }

    private static ArrayList<DNSEntry> DNSList() {
        if (_DNSList == null) {
            loadFromFile();
        }
        return _DNSList;
    }

    public static boolean hasEntry(String str) {
        return getEntry(str) != null;
    }

    public static DNSEntry getEntry(String str) {
        Iterator<DNSEntry> it = DNSList().iterator();
        while (it.hasNext()) {
            DNSEntry next = it.next();
            if (next.hostName.equals(str)) {
                return next;
            }
        }
        return null;
    }

    public static URI patchHostAddress(URI uri) {
        DNSEntry entry = getEntry(uri.getHost());
        return entry != null ? URI.create(uri.toString().replaceFirst(entry.hostName, entry.hostAddress)) : uri;
    }

    public static void updateEntry(InetAddress inetAddress) {
        if (inetAddress == null || StringUtils.isNullOrEmpty(inetAddress.getHostName()) || StringUtils.isNullOrEmpty(inetAddress.getHostAddress())) {
            return;
        }
        DNSEntry entry = getEntry(inetAddress.getHostName());
        if (entry != null) {
            if (entry.hostAddress.equals(inetAddress.getHostAddress())) {
                return;
            }
            entry.hostAddress = inetAddress.getHostAddress();
        } else {
            DNSList().add(new DNSEntry(inetAddress.getHostName(), inetAddress.getHostAddress()));
            saveToFile();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v0 */
    /* JADX WARN: Type inference failed for: r1v16 */
    /* JADX WARN: Type inference failed for: r1v17 */
    /* JADX WARN: Type inference failed for: r1v18 */
    /* JADX WARN: Type inference failed for: r1v19 */
    /* JADX WARN: Type inference failed for: r1v2 */
    /* JADX WARN: Type inference failed for: r1v20 */
    /* JADX WARN: Type inference failed for: r1v3, types: [java.io.DataOutputStream] */
    /* JADX WARN: Type inference failed for: r1v5 */
    /* JADX WARN: Type inference failed for: r1v7 */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:38:0x0074 -> B:13:0x007b). Please report as a decompilation issue!!! */
    public static void saveToFile() {
        int size;
        String dnsFilePath = Configuration.dnsFilePath();
        ?? r1 = 0;
        DataOutputStream dataOutputStream = null;
        try {
            try {
                try {
                    CoreHelper.writeTraceEntry(TAG, "Saving " + DNSList().size() + " DNS entries...");
                    DataOutputStream dataOutputStream2 = new DataOutputStream(new FileOutputStream(dnsFilePath));
                    int i = 0;
                    while (true) {
                        try {
                            size = DNSList().size();
                            if (i == size) {
                                break;
                            }
                            DNSEntry dNSEntry = DNSList().get(i);
                            dataOutputStream2.writeUTF(dNSEntry.hostName);
                            dataOutputStream2.writeUTF(dNSEntry.hostAddress);
                            i++;
                        } catch (Exception e) {
                            e = e;
                            dataOutputStream = dataOutputStream2;
                            CoreHelper.logException(TAG, "Unable to save DNS file", e);
                            r1 = dataOutputStream;
                            if (dataOutputStream != null) {
                                dataOutputStream.close();
                                r1 = dataOutputStream;
                            }
                        } catch (Throwable th) {
                            th = th;
                            r1 = dataOutputStream2;
                            if (r1 != 0) {
                                try {
                                    r1.close();
                                } catch (Exception e2) {
                                    CoreHelper.logException(TAG, "Unable to save DNS file", e2);
                                }
                            }
                            throw th;
                        }
                    }
                    dataOutputStream2.close();
                    r1 = size;
                    if (dataOutputStream2 != null) {
                        dataOutputStream2.close();
                        r1 = size;
                    }
                } catch (Throwable th2) {
                    th = th2;
                }
            } catch (Exception e3) {
                e = e3;
            }
        } catch (Exception e4) {
            String str = TAG;
            CoreHelper.logException(str, "Unable to save DNS file", e4);
            r1 = str;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v10 */
    /* JADX WARN: Type inference failed for: r1v11 */
    /* JADX WARN: Type inference failed for: r1v9, types: [java.io.FileInputStream] */
    /* JADX WARN: Type inference failed for: r2v5 */
    /* JADX WARN: Type inference failed for: r2v6, types: [java.io.FileInputStream] */
    /* JADX WARN: Type inference failed for: r2v9, types: [java.io.FileInputStream, java.io.InputStream] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:42:0x0058 -> B:17:0x006f). Please report as a decompilation issue!!! */
    public static void loadFromFile() {
        ?? r2;
        DNSEntry dNSEntry;
        _DNSList = new ArrayList<>();
        File file = new File(Configuration.dnsFilePath());
        if (file.exists()) {
            String str = null;
            str = null;
            str = null;
            ?? r1 = 0;
            try {
                try {
                    try {
                        r2 = new FileInputStream(file);
                    } catch (Throwable th) {
                        th = th;
                        r2 = str;
                    }
                } catch (Exception e) {
                    e = e;
                }
            } catch (Exception e2) {
                String str2 = TAG;
                CoreHelper.logException(str2, "Unable to load DNS file. reason: ", e2);
                str = str2;
            }
            try {
                try {
                    DataInputStream dataInputStream = new DataInputStream(r2);
                    while (true) {
                        try {
                            dNSEntry = new DNSEntry(dataInputStream.readUTF(), dataInputStream.readUTF());
                        } catch (EOFException unused) {
                            r2.close();
                            if (r2 != null) {
                                r2.close();
                            }
                            CoreHelper.writeTraceEntry(TAG, "Loaded " + _DNSList.size() + " DNS entries from the DNS file...");
                        } catch (Exception unused2) {
                            dNSEntry = null;
                        }
                        if (dNSEntry != null) {
                            _DNSList.add(dNSEntry);
                        }
                    }
                } catch (Throwable th2) {
                    th = th2;
                    if (r2 != null) {
                        try {
                            r2.close();
                        } catch (Exception e3) {
                            CoreHelper.logException(TAG, "Unable to load DNS file. reason: ", e3);
                        }
                    }
                    throw th;
                }
            } catch (Exception e4) {
                e = e4;
                r1 = r2;
                CoreHelper.logException(TAG, "Unable to load DNS file. reason: ", e);
                str = r1;
                if (r1 != 0) {
                    r1.close();
                    str = r1;
                }
                CoreHelper.writeTraceEntry(TAG, "Loaded " + _DNSList.size() + " DNS entries from the DNS file...");
            }
        }
        CoreHelper.writeTraceEntry(TAG, "Loaded " + _DNSList.size() + " DNS entries from the DNS file...");
    }
}
