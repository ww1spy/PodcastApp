package mobi.beyondpod.downloadengine;

import java.io.FileNotFoundException;
import java.net.URI;
import java.util.Date;
import java.util.Locale;
import mobi.beyondpod.aggregators.AggregatorLoginHelper;
import mobi.beyondpod.rsscore.Feed;
import mobi.beyondpod.rsscore.Track;
import mobi.beyondpod.rsscore.helpers.CoreHelper;
import mobi.beyondpod.rsscore.helpers.StringUtils;
import mobi.beyondpod.ui.core.FeedImageCache;

/* loaded from: classes.dex */
public class DownloadStatistics {
    public boolean completedNormally;
    public String contentDisposition;
    public String contentEncoding;
    public Date contentLastModifyDate;
    public boolean downloadSkipped;
    public long downloadTime;
    public Long downloadedSize;
    public Date eventDate;
    public URI finalDownloadUrl;
    public Exception lastException;
    public Feed ownerFeed;
    public Track ownerTrack;
    public String responseCookie;
    public Date skipDate;
    public Long skipSize;
    public long startPosition;
    public boolean terminated;
    public long timeToFirstByte;
    public Long totalSize;
    public String url;

    public String downloadSpeed() {
        if (!StringUtils.isNullOrEmpty(this.contentEncoding) || this.downloadTime <= 0 || this.downloadedSize.longValue() <= 0) {
            return "<N/A>";
        }
        return (Math.round(this.downloadedSize.longValue() / 1024.0d) / this.downloadTime) + "kb/s.";
    }

    public String toString() {
        String str;
        String str2;
        String displayName;
        String str3;
        StringBuilder sb = new StringBuilder();
        if (indicatesSDCardCorruption() || indicatesReaderLoginFailure()) {
            str = "failed";
            str2 = "Firebrick";
        } else if (this.completedNormally) {
            str = "Completed";
            str2 = "DarkGreen";
        } else if (this.terminated) {
            str = "Canceled";
            str2 = "Goldenrod";
        } else if (this.downloadSkipped) {
            str = "Unchanged";
            str2 = "DodgerBlue";
        } else {
            str = "failed";
            str2 = "Firebrick";
        }
        Object[] objArr = new Object[3];
        objArr[0] = str2;
        objArr[1] = str;
        if (this.ownerTrack == null) {
            displayName = this.ownerFeed == null ? "Unknown" : this.ownerFeed.getName();
        } else {
            displayName = this.ownerTrack.displayName();
        }
        objArr[2] = displayName;
        sb.append(String.format("<div style='color: %s'><b>%s</b> - %s", objArr));
        sb.append("<ul style='margin-top:5px; margin-bottom:5px'>");
        sb.append(String.format("<li>feed url: %s</li>", this.ownerFeed == null ? "Unknown" : this.ownerFeed.getFeedUrl()));
        if (this.ownerTrack == null && this.ownerFeed != null && this.ownerFeed.getType() == 5) {
            sb.append(String.format(CoreHelper.getCurrentLocale(), "<li>feed is synced with Feedly! (will get <b>%d</b> posts)</li>", Integer.valueOf(this.ownerFeed.getMaxNumGReaderItemsToGet())));
        }
        if (this.ownerTrack != null) {
            Object[] objArr2 = new Object[1];
            objArr2[0] = this.url == null ? "Unknown" : this.url;
            sb.append(String.format("<li>Episode url: %s</li>", objArr2));
        }
        if (!this.downloadSkipped) {
            Object[] objArr3 = new Object[4];
            objArr3[0] = Long.valueOf(this.downloadedSize == null ? 0L : this.downloadedSize.longValue());
            objArr3[1] = Long.valueOf(this.startPosition);
            objArr3[2] = CoreHelper.getTimeDurationAsString(this.downloadTime + this.timeToFirstByte);
            objArr3[3] = CoreHelper.getDownloadSpeedAsString(this.downloadedSize == null ? 0L : this.downloadedSize.longValue(), this.downloadTime + this.timeToFirstByte);
            sb.append(String.format("<li>downloaded: <b>%s</b>, starting at position: <b>%s</b> took: <b>%s</b> at <b>%s</b></li>", objArr3));
        }
        Object[] objArr4 = new Object[2];
        objArr4[0] = Long.valueOf(this.totalSize == null ? 0L : this.totalSize.longValue());
        objArr4[1] = this.skipSize == null ? "Not Set" : this.skipSize.toString();
        sb.append(String.format("<li>Content Size: <b>%s</b>. Cache Size: <b>%s</b></li>", objArr4));
        Object[] objArr5 = new Object[2];
        objArr5[0] = this.contentLastModifyDate != null ? this.contentLastModifyDate.toString() : "Unknown";
        objArr5[1] = this.skipDate != null ? this.skipDate.toString() : "Not Set";
        sb.append(String.format("<li>Content Date: <b>%s</b>. Cache Date: <b>%s</b></li>", objArr5));
        Object[] objArr6 = new Object[2];
        objArr6[0] = StringUtils.isNullOrEmpty(this.ownerFeed.getFeedImageUrl()) ? "No" : "Yes";
        objArr6[1] = FeedImageCache.hasCachedImageFor(this.ownerFeed) ? "Yes" : "No";
        sb.append(String.format("<li>feed has Image: <b>%s</b>, image downloaded: <b>%s</b></li>", objArr6));
        if (!this.downloadSkipped) {
            Object[] objArr7 = new Object[1];
            if (StringUtils.isNullOrEmpty(this.contentEncoding)) {
                str3 = "Not Compressed";
            } else {
                str3 = this.contentEncoding + " compressed";
            }
            objArr7[0] = str3;
            sb.append(String.format("<li>Content Compression: <b>%s</b></li>", objArr7));
            if (this.lastException != null) {
                sb.append(String.format("<li>reason to fail: <b>%s</b></li>", getErrorDescription()));
            }
        }
        if (indicatesSDCardCorruption() || indicatesReaderLoginFailure()) {
            sb.append("<li>");
            sb.append(getErrorDescription());
            sb.append("</li>");
        }
        sb.append("</ul></div>");
        sb.append(String.format("<hr style='color:%s; height: 0px;' />", "Gainsboro"));
        return sb.toString();
    }

    public String getErrorDescription() {
        if (this.lastException == null) {
            return indicatesSDCardCorruption() ? "Unable to write to the Storage Card! (Try removing and reinserting the storage card)" : indicatesReaderLoginFailure() ? "Google Reader Login failed or expired! (Try to clear your login and log in again)" : "Unknown Error";
        }
        if (this.lastException instanceof CoreHelper.InsuficientStorageSpaceException) {
            return this.lastException.getMessage();
        }
        return CoreHelper.extractExceptionMessages(this.lastException);
    }

    public boolean hasErrors() {
        return this.lastException != null || indicatesSDCardCorruption() || indicatesReaderLoginFailure();
    }

    public boolean indicatesSDCardCorruption() {
        return this.lastException != null && (this.lastException instanceof FileNotFoundException);
    }

    public boolean indicatesReaderLoginFailure() {
        if (this.lastException != null && this.finalDownloadUrl != null && (this.lastException instanceof AggregatorLoginHelper.AuthenticationException) && this.finalDownloadUrl.getHost().toLowerCase(Locale.ROOT).contains("feedly.com")) {
            return true;
        }
        if (this.responseCookie == null || !this.responseCookie.startsWith("GoogleAccounts")) {
            return (this.finalDownloadUrl == null || this.finalDownloadUrl.getPath() == null || this.finalDownloadUrl.getHost() == null || !this.finalDownloadUrl.getHost().toLowerCase(Locale.ROOT).contains("google.com") || (!this.finalDownloadUrl.getPath().toLowerCase(Locale.ROOT).endsWith("servicelogin") && !this.finalDownloadUrl.getPath().toLowerCase(Locale.ROOT).endsWith("clientlogin"))) ? false : true;
        }
        return true;
    }
}
