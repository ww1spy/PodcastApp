package mobi.beyondpod.rsscore.rss;

import java.io.DataInputStream;
import java.io.EOFException;
import java.io.File;
import java.io.FileInputStream;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.Locale;
import mobi.beyondpod.rsscore.Configuration;
import mobi.beyondpod.rsscore.helpers.CoreHelper;
import mobi.beyondpod.rsscore.repository.RepositoryPersistence;
import mobi.beyondpod.rsscore.rss.entities.RssEnclosure;

/* loaded from: classes.dex */
public class EnclosureDownloadHistory {
    private static final String TAG = "EnclosureDownloadHistory";
    static Runnable _SaveHistoryRunnable = new Runnable() { // from class: mobi.beyondpod.rsscore.rss.EnclosureDownloadHistory.1
        @Override // java.lang.Runnable
        public void run() {
            EnclosureDownloadHistory.saveHistoryInternal();
        }
    };
    private static boolean _SavingHistory;
    private static int _lastSize;
    private static HashMap<Integer, Long> m_history;

    private static HashMap<Integer, Long> history() {
        if (m_history == null) {
            loadHistory();
        }
        return m_history;
    }

    public static boolean hasEntryFor(RssEnclosure rssEnclosure) {
        boolean z;
        synchronized (EnclosureDownloadHistory.class) {
            z = history().containsKey(Integer.valueOf(rssEnclosure.enclosureID())) || history().containsKey(Integer.valueOf(rssEnclosure.enclosureAlternativeID())) || history().containsKey(Integer.valueOf(rssEnclosure.enclosureOldMountID())) || history().containsKey(Integer.valueOf(rssEnclosure.enclosureRelativePathID()));
        }
        return z;
    }

    public static void addEnclosure(RssEnclosure rssEnclosure, boolean z) {
        addEnclosureInternal(rssEnclosure, z);
        saveHistoryAsync();
    }

    private static void addEnclosureInternal(RssEnclosure rssEnclosure, boolean z) {
        synchronized (EnclosureDownloadHistory.class) {
            CoreHelper.writeLogEntryInProduction(TAG, String.format(CoreHelper.getCurrentLocale(), "Inserted download history for: %s (hash:%s) %d %s...", rssEnclosure.relativeLocalFileName(), Integer.valueOf(rssEnclosure.enclosureID()), Integer.valueOf(history().size()), history().put(Integer.valueOf(rssEnclosure.enclosureID()), Long.valueOf(new Date().getTime()))));
        }
    }

    public static void removeEnclosure(RssEnclosure rssEnclosure, boolean z) {
        removeEnclosureInternal(rssEnclosure, z);
        saveHistoryAsync();
    }

    private static void removeEnclosureInternal(RssEnclosure rssEnclosure, boolean z) {
        if (hasEntryFor(rssEnclosure)) {
            CoreHelper.writeLogEntryInProduction(TAG, String.format("Deleted download history for: %s (hash:%s)", rssEnclosure.relativeLocalFileName(), Integer.valueOf(rssEnclosure.enclosureID())));
            synchronized (EnclosureDownloadHistory.class) {
                history().remove(Integer.valueOf(rssEnclosure.enclosureID()));
            }
        }
    }

    private static void loadHistory() {
        FileInputStream fileInputStream;
        String str;
        String str2;
        m_history = new HashMap<>();
        synchronized (EnclosureDownloadHistory.class) {
            File file = new File(Configuration.enclosureDownloadHistoryFilePath());
            if (file.exists()) {
                FileInputStream fileInputStream2 = null;
                try {
                    try {
                        fileInputStream = new FileInputStream(file);
                    } catch (Throwable th) {
                        th = th;
                        fileInputStream = null;
                    }
                } catch (Exception e) {
                    e = e;
                }
                try {
                    DataInputStream dataInputStream = new DataInputStream(fileInputStream);
                    while (true) {
                        try {
                            m_history.put(Integer.valueOf(dataInputStream.readInt()), Long.valueOf(dataInputStream.readLong()));
                        } catch (EOFException unused) {
                            fileInputStream.close();
                            if (fileInputStream != null) {
                                try {
                                    fileInputStream.close();
                                } catch (Exception e2) {
                                    e = e2;
                                    str = TAG;
                                    str2 = "Unable to load download history. reason: ";
                                    CoreHelper.logException(str, str2, e);
                                    _lastSize = m_history.size();
                                    CoreHelper.writeTraceEntry(TAG, "Modified set to:" + _lastSize);
                                }
                            }
                        }
                    }
                } catch (Exception e3) {
                    e = e3;
                    fileInputStream2 = fileInputStream;
                    CoreHelper.logException(TAG, "Unable to load download history. reason: ", e);
                    if (fileInputStream2 != null) {
                        try {
                            fileInputStream2.close();
                        } catch (Exception e4) {
                            e = e4;
                            str = TAG;
                            str2 = "Unable to load download history. reason: ";
                            CoreHelper.logException(str, str2, e);
                            _lastSize = m_history.size();
                            CoreHelper.writeTraceEntry(TAG, "Modified set to:" + _lastSize);
                        }
                    }
                    _lastSize = m_history.size();
                    CoreHelper.writeTraceEntry(TAG, "Modified set to:" + _lastSize);
                } catch (Throwable th2) {
                    th = th2;
                    if (fileInputStream != null) {
                        try {
                            fileInputStream.close();
                        } catch (Exception e5) {
                            CoreHelper.logException(TAG, "Unable to load download history. reason: ", e5);
                        }
                    }
                    throw th;
                }
            }
            _lastSize = m_history.size();
            CoreHelper.writeTraceEntry(TAG, "Modified set to:" + _lastSize);
        }
    }

    public static void saveHistorySync() {
        saveHistoryInternal();
    }

    public static void saveHistoryAsync() {
        RepositoryPersistence.repositoryHandler().removeCallbacks(_SaveHistoryRunnable);
        RepositoryPersistence.repositoryHandler().postDelayed(_SaveHistoryRunnable, 1000L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:26:0x00d1 A[Catch: all -> 0x00eb, TryCatch #4 {, blocks: (B:8:0x0013, B:10:0x0017, B:13:0x0019, B:37:0x0080, B:32:0x00ae, B:27:0x00d8, B:28:0x00da, B:26:0x00d1, B:35:0x00c9, B:40:0x0085, B:56:0x00de, B:54:0x00ea, B:59:0x00e3, B:48:0x009f, B:51:0x00a4), top: B:7:0x0013, inners: #2, #5, #6, #8 }] */
    /* JADX WARN: Removed duplicated region for block: B:31:0x00ae A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r3v15, types: [java.lang.Object[], java.lang.Integer[]] */
    /* JADX WARN: Type inference failed for: r3v16, types: [java.lang.Throwable, java.lang.Exception] */
    /* JADX WARN: Type inference failed for: r3v7, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r9v0, types: [java.lang.Object, java.lang.Integer] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void saveHistoryInternal() {
        /*
            Method dump skipped, instructions count: 246
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: mobi.beyondpod.rsscore.rss.EnclosureDownloadHistory.saveHistoryInternal():void");
    }

    public static int historySize() {
        return history().size();
    }

    public static String dumpHistoryData() {
        long j = Long.MAX_VALUE;
        long j2 = Long.MIN_VALUE;
        for (Long l : history().values()) {
            if (l != null) {
                if (l.longValue() < j) {
                    j = l.longValue();
                }
                if (l.longValue() > j2) {
                    j2 = l.longValue();
                }
            }
        }
        if (history().size() == 0) {
            return "Download history is empty";
        }
        Locale currentLocale = CoreHelper.getCurrentLocale();
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd", currentLocale);
        return String.format(currentLocale, "history size: %d. history range: %s to %s.", Integer.valueOf(history().size()), simpleDateFormat.format(Long.valueOf(j)), simpleDateFormat.format(Long.valueOf(j2)));
    }
}
