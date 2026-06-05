package mobi.beyondpod.downloadengine;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import mobi.beyondpod.rsscore.Feed;
import mobi.beyondpod.rsscore.rss.EnclosureDownloadHistory;
import mobi.beyondpod.rsscore.rss.PolicyManager;

/* loaded from: classes.dex */
public class ProcessStatistics {
    public Exception lastException;
    public List<String> newEnclosures = new ArrayList();
    public List<String> ignoredEnclosures = new ArrayList();
    public List<String> streamableEnclosures = new ArrayList();
    public Feed processedFeed = null;
    public boolean remoteEpisodes = false;
    public boolean podcastDownloadSkippedDeviceIsNotPluggedIn = false;
    public boolean podcastDownloadSkippedWiFiNotDetected = false;
    public boolean podcastDownloadForced = false;

    public String toString() {
        StringBuilder sb = new StringBuilder();
        if (this.remoteEpisodes) {
            if (this.newEnclosures.size() > 0 && this.newEnclosures.size() != this.ignoredEnclosures.size()) {
                sb.append("<div style='color:DarkGreen'>Processing Remote Episodes</div>");
                if (this.newEnclosures.size() > 0 && this.newEnclosures.size() != this.ignoredEnclosures.size()) {
                    sb.append("<ul style='margin-top:5px; margin-bottom:5px'>");
                    for (String str : this.newEnclosures) {
                        String str2 = "queued for download";
                        if (this.ignoredEnclosures.contains(str)) {
                            str2 = "marked as 'Already downloaded'";
                        }
                        sb.append(String.format("<li>%s (%s)</li>", str, str2));
                    }
                    sb.append("</ul>");
                }
            } else {
                sb.append("<div style='color:DodgerBlue'>No new remote episodes</div>");
            }
            sb.append("<hr style='color:Gainsboro; height: 0px;' />");
            return sb.toString();
        }
        if (this.processedFeed == null) {
            return "<div style='red'>Processed feed is Empty!</div>";
        }
        if (this.lastException != null) {
            sb.append(String.format("<div style='red'>failed to process feed:%s. reason: %s</div>", this.processedFeed.getName(), this.lastException.getMessage()));
        }
        sb.append(String.format(Locale.ROOT, "<div style='color:%s'><b>• %s</b><br>&nbsp;&nbsp;%s, New episodes: <b>%d</b>, Download Max: <b>%d</b>, Keep Max: <b>%d</b>, delete if more than: <b>%d</b> days old. ", this.newEnclosures.size() > 0 ? "DarkGreen" : "DodgerBlue", this.processedFeed.getName(), getPodcastDownloadActionAsText(this.processedFeed.getPodcastDownloadAction()), Integer.valueOf(this.newEnclosures.size()), Integer.valueOf(this.processedFeed.getMaxNumberPodcastToDownload()), Integer.valueOf(this.processedFeed.getKeepAtMostPodcasts()), Integer.valueOf((int) this.processedFeed.getMaximumPodcastAge().getTotalDays())));
        if (this.newEnclosures.size() > 0) {
            sb.append("<ul style='margin-top:5px; margin-bottom:5px'>");
            for (String str3 : this.newEnclosures) {
                String str4 = this.ignoredEnclosures.contains(str3) ? "marked as 'Already downloaded'" : "queued for download";
                if (this.streamableEnclosures.contains(str3)) {
                    str4 = "added as a 'Streamable' track";
                }
                sb.append(String.format(Locale.ROOT, "<li>%s (%s)</li>", str3, str4));
            }
            sb.append("</ul>");
        }
        sb.append("</div>");
        sb.append("<hr style='color:Gainsboro; height: 0px;' />");
        return sb.toString();
    }

    private String getPodcastDownloadActionAsText(int i) {
        switch (i) {
            case 0:
                return "Download Manually";
            case 1:
                StringBuilder sb = new StringBuilder();
                sb.append("Download Latest");
                sb.append(PolicyManager.ifMultipleDownloadRestricted() ? " (Trial Expired! - will Stream instead)" : "");
                return sb.toString();
            case 2:
                return "Stream Latest";
            case 3:
                return "Ignore All Episodes";
            case 4:
                StringBuilder sb2 = new StringBuilder();
                sb2.append("Download In Order");
                sb2.append(PolicyManager.ifMultipleDownloadRestricted() ? " (Trial Expired! - will Stream instead)" : "");
                return sb2.toString();
            case 5:
                return "Stream In Order";
            default:
                return "N/A";
        }
    }

    /* loaded from: classes.dex */
    public static class ProcessedFeedList {
        private final List<ProcessStatistics> _List = Collections.synchronizedList(new ArrayList());
        public Exception lastException;
        public Date processTime;

        public String toString() {
            StringBuilder sb = new StringBuilder();
            if (this._List.size() > 0) {
                synchronized (this._List) {
                    Iterator<ProcessStatistics> it = this._List.iterator();
                    while (it.hasNext()) {
                        sb.append(it.next().toString());
                    }
                }
            } else {
                sb.append("There were no feeds to check for new podcasts");
            }
            sb.append("<div>");
            sb.append(EnclosureDownloadHistory.dumpHistoryData());
            sb.append("</div>");
            return sb.toString();
        }

        public void clearStatistics() {
            this._List.clear();
            this.processTime = null;
            this.lastException = null;
        }

        public List<ProcessStatistics> getFeedsWithNewContent() {
            ArrayList arrayList = new ArrayList();
            synchronized (this._List) {
                for (ProcessStatistics processStatistics : this._List) {
                    if (processStatistics.newEnclosures.size() > 0) {
                        arrayList.add(processStatistics);
                    }
                }
            }
            return arrayList;
        }

        public List<String> getUrlsOfNewEpisodes() {
            ArrayList arrayList = new ArrayList();
            synchronized (this._List) {
                for (ProcessStatistics processStatistics : this._List) {
                    if (processStatistics.newEnclosures.size() > 0) {
                        arrayList.addAll(processStatistics.newEnclosures);
                    }
                }
            }
            return arrayList;
        }

        public void add(ProcessStatistics processStatistics) {
            this._List.add(processStatistics);
        }

        public ProcessStatistics getPodcastDownloadSkippedDeviceIsNotPluggedIn() {
            synchronized (this._List) {
                for (ProcessStatistics processStatistics : this._List) {
                    if (processStatistics.podcastDownloadSkippedDeviceIsNotPluggedIn) {
                        return processStatistics;
                    }
                }
                return null;
            }
        }

        public ProcessStatistics getPodcastDownloadSkippedWiFiNotDetected() {
            synchronized (this._List) {
                for (ProcessStatistics processStatistics : this._List) {
                    if (processStatistics.podcastDownloadSkippedWiFiNotDetected) {
                        return processStatistics;
                    }
                }
                return null;
            }
        }

        public void clear() {
            this._List.clear();
        }
    }
}
