package mobi.beyondpod.downloadengine;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Date;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes.dex */
public class DownloadStatisticsList {
    private final List<DownloadStatistics> _List = Collections.synchronizedList(new ArrayList());
    public Date downloadTime;
    public boolean isUnattended;

    public String toString() {
        StringBuilder sb = new StringBuilder();
        if (this._List.size() > 0) {
            synchronized (this._List) {
                Iterator<DownloadStatistics> it = this._List.iterator();
                while (it.hasNext()) {
                    sb.append(it.next().toString());
                }
            }
        } else {
            sb.append("No feeds were Updated");
        }
        return sb.toString();
    }

    public List<DownloadStatistics> getSuccessfulDownloads() {
        ArrayList arrayList = new ArrayList();
        synchronized (this._List) {
            for (DownloadStatistics downloadStatistics : this._List) {
                if (downloadStatistics != null && !downloadStatistics.hasErrors()) {
                    arrayList.add(downloadStatistics);
                }
            }
        }
        return arrayList;
    }

    /* JADX WARN: Code restructure failed: missing block: B:17:0x003e, code lost:
    
        if (r3.hasErrors() == false) goto L34;
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x0040, code lost:
    
        r0.add(r3);
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.util.List<mobi.beyondpod.downloadengine.DownloadStatistics> getFailedDownloads() {
        /*
            r6 = this;
            java.util.ArrayList r0 = new java.util.ArrayList
            r0.<init>()
            java.util.List<mobi.beyondpod.downloadengine.DownloadStatistics> r1 = r6._List
            monitor-enter(r1)
            r2 = 0
        L9:
            java.util.List<mobi.beyondpod.downloadengine.DownloadStatistics> r3 = r6._List     // Catch: java.lang.Throwable -> L46
            int r3 = r3.size()     // Catch: java.lang.Throwable -> L46
            if (r2 == r3) goto L44
            java.util.List<mobi.beyondpod.downloadengine.DownloadStatistics> r3 = r6._List     // Catch: java.lang.Throwable -> L46
            java.lang.Object r3 = r3.get(r2)     // Catch: java.lang.Throwable -> L46
            mobi.beyondpod.downloadengine.DownloadStatistics r3 = (mobi.beyondpod.downloadengine.DownloadStatistics) r3     // Catch: java.lang.Throwable -> L46
            int r2 = r2 + 1
            java.util.List<mobi.beyondpod.downloadengine.DownloadStatistics> r4 = r6._List     // Catch: java.lang.Throwable -> L46
            int r4 = r4.size()     // Catch: java.lang.Throwable -> L46
            if (r2 >= r4) goto L38
            java.util.List<mobi.beyondpod.downloadengine.DownloadStatistics> r4 = r6._List     // Catch: java.lang.Throwable -> L46
            java.lang.Object r4 = r4.get(r2)     // Catch: java.lang.Throwable -> L46
            mobi.beyondpod.downloadengine.DownloadStatistics r4 = (mobi.beyondpod.downloadengine.DownloadStatistics) r4     // Catch: java.lang.Throwable -> L46
            if (r4 == 0) goto L38
            java.lang.String r5 = r3.url     // Catch: java.lang.Throwable -> L46
            java.lang.String r4 = r4.url     // Catch: java.lang.Throwable -> L46
            boolean r4 = mobi.beyondpod.rsscore.helpers.StringUtils.equals(r5, r4)     // Catch: java.lang.Throwable -> L46
            if (r4 == 0) goto L38
            goto L9
        L38:
            if (r3 == 0) goto L9
            boolean r4 = r3.hasErrors()     // Catch: java.lang.Throwable -> L46
            if (r4 == 0) goto L9
            r0.add(r3)     // Catch: java.lang.Throwable -> L46
            goto L9
        L44:
            monitor-exit(r1)     // Catch: java.lang.Throwable -> L46
            return r0
        L46:
            r0 = move-exception
            monitor-exit(r1)     // Catch: java.lang.Throwable -> L46
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: mobi.beyondpod.downloadengine.DownloadStatisticsList.getFailedDownloads():java.util.List");
    }

    /* JADX WARN: Code restructure failed: missing block: B:17:0x003a, code lost:
    
        if (r3.indicatesReaderLoginFailure() == false) goto L35;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x003d, code lost:
    
        return true;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean hasAnyReaderLoginFailures() {
        /*
            r6 = this;
            java.util.List<mobi.beyondpod.downloadengine.DownloadStatistics> r0 = r6._List
            monitor-enter(r0)
            r1 = 0
            r2 = r1
        L5:
            java.util.List<mobi.beyondpod.downloadengine.DownloadStatistics> r3 = r6._List     // Catch: java.lang.Throwable -> L41
            int r3 = r3.size()     // Catch: java.lang.Throwable -> L41
            if (r2 == r3) goto L3f
            java.util.List<mobi.beyondpod.downloadengine.DownloadStatistics> r3 = r6._List     // Catch: java.lang.Throwable -> L41
            java.lang.Object r3 = r3.get(r2)     // Catch: java.lang.Throwable -> L41
            mobi.beyondpod.downloadengine.DownloadStatistics r3 = (mobi.beyondpod.downloadengine.DownloadStatistics) r3     // Catch: java.lang.Throwable -> L41
            int r2 = r2 + 1
            java.util.List<mobi.beyondpod.downloadengine.DownloadStatistics> r4 = r6._List     // Catch: java.lang.Throwable -> L41
            int r4 = r4.size()     // Catch: java.lang.Throwable -> L41
            if (r2 >= r4) goto L34
            java.util.List<mobi.beyondpod.downloadengine.DownloadStatistics> r4 = r6._List     // Catch: java.lang.Throwable -> L41
            java.lang.Object r4 = r4.get(r2)     // Catch: java.lang.Throwable -> L41
            mobi.beyondpod.downloadengine.DownloadStatistics r4 = (mobi.beyondpod.downloadengine.DownloadStatistics) r4     // Catch: java.lang.Throwable -> L41
            if (r4 == 0) goto L34
            java.lang.String r5 = r3.url     // Catch: java.lang.Throwable -> L41
            java.lang.String r4 = r4.url     // Catch: java.lang.Throwable -> L41
            boolean r4 = mobi.beyondpod.rsscore.helpers.StringUtils.equals(r5, r4)     // Catch: java.lang.Throwable -> L41
            if (r4 == 0) goto L34
            goto L5
        L34:
            if (r3 == 0) goto L5
            boolean r3 = r3.indicatesReaderLoginFailure()     // Catch: java.lang.Throwable -> L41
            if (r3 == 0) goto L5
            monitor-exit(r0)     // Catch: java.lang.Throwable -> L41
            r0 = 1
            return r0
        L3f:
            monitor-exit(r0)     // Catch: java.lang.Throwable -> L41
            return r1
        L41:
            r1 = move-exception
            monitor-exit(r0)     // Catch: java.lang.Throwable -> L41
            throw r1
        */
        throw new UnsupportedOperationException("Method not decompiled: mobi.beyondpod.downloadengine.DownloadStatisticsList.hasAnyReaderLoginFailures():boolean");
    }

    public boolean hasAnySDCardCorruptionFalures() {
        synchronized (this._List) {
            Iterator<DownloadStatistics> it = this._List.iterator();
            while (it.hasNext()) {
                if (it.next().indicatesSDCardCorruption()) {
                    return true;
                }
            }
            return false;
        }
    }

    public boolean hasAnyFailedDownloads() {
        return getFailedDownloads().size() > 0;
    }

    public void clearStatistics() {
        this._List.clear();
        this.downloadTime = null;
    }

    public void add(DownloadStatistics downloadStatistics) {
        this._List.add(downloadStatistics);
    }

    public void clear() {
        this._List.clear();
    }
}
