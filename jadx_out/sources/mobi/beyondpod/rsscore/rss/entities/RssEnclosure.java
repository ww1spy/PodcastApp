package mobi.beyondpod.rsscore.rss.entities;

import android.webkit.MimeTypeMap;
import com.google.android.gms.cast.HlsSegmentFormat;
import java.io.File;
import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import mobi.beyondpod.rsscore.Configuration;
import mobi.beyondpod.rsscore.Feed;
import mobi.beyondpod.rsscore.Track;
import mobi.beyondpod.rsscore.helpers.CoreHelper;
import mobi.beyondpod.rsscore.helpers.MediaFile;
import mobi.beyondpod.rsscore.helpers.StringUtils;
import mobi.beyondpod.rsscore.repository.FeedRepository;
import mobi.beyondpod.rsscore.rss.EnclosureDownloadHistory;

/* loaded from: classes.dex */
public class RssEnclosure {
    public final String DownloadPath;
    public long Duration;
    public RssFeedItem Parent;
    public String TempTitle;
    public String Type;
    public String Url;
    private int _EnclosureID;
    private Long _Length;
    private ArrayList<ExtendedEncoding> m_ExtendedEncodingInfo;
    private String m_FileName;
    private final boolean m_ForceUniqueEnclosureNames;
    String m_FullPath;
    private String m_ParentItemId;
    Date m_PubDate;

    /* loaded from: classes.dex */
    public static class ExtendedEncoding {
        public String bitRateMode;
        public int bitrate;
        public String bitrateString;
        public String codecID;
        public String displayAspectRatio;
        public long duration;
        public long fileSize;
        public String fileSizeString;
        public String format;
        public String frameRate;
        public String frameRateMode;
        public int height;
        public String mimeType;
        public String standard;
        public String type;
        public int width;
    }

    public RssEnclosure(String str, String str2, String str3, String str4, String str5, long j, Date date, String str6) {
        this._EnclosureID = 0;
        this.Url = str;
        this.Type = str4;
        this.m_FileName = str3;
        this.DownloadPath = str2;
        this.m_ParentItemId = str5;
        setEnclosureFileLength(Long.valueOf(j));
        this.m_PubDate = date;
        this.m_ForceUniqueEnclosureNames = false;
        this.TempTitle = str6;
    }

    public RssEnclosure(String str, boolean z) {
        this._EnclosureID = 0;
        this.Url = "";
        this.Type = "";
        this.DownloadPath = str == null ? "" : str;
        this.m_ForceUniqueEnclosureNames = z;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof RssEnclosure)) {
            obj = null;
        }
        RssEnclosure rssEnclosure = (RssEnclosure) obj;
        if (rssEnclosure == null) {
            return false;
        }
        return this.Url != null && this.Url.equals(rssEnclosure.Url) && this.DownloadPath != null && this.DownloadPath.equals(rssEnclosure.DownloadPath);
    }

    public int hashCode() {
        return (this.Url != null ? this.Url.hashCode() : 0) + (29 * (this.DownloadPath != null ? this.DownloadPath.hashCode() : 0));
    }

    public boolean isIgnorable() {
        return StringUtils.isNullOrEmpty(this.Url) || this.Url.contains("gravatar.com");
    }

    public boolean downloaded() {
        Track localEnclosureTrack = getLocalEnclosureTrack();
        return localEnclosureTrack != null && localEnclosureTrack.isFullyDownloaded();
    }

    public int playableState() {
        return playableState(getLocalEnclosureTrack());
    }

    public int playableState(Track track) {
        if (track == null) {
            return isEnclosureInHistory() ? 3 : 4;
        }
        if (track.getDownloadStatus() == 2 || track.getDownloadStatus() == 1 || track.getDownloadStatus() == 6) {
            return 5;
        }
        if (!track.hasDownloadStarted()) {
            return track.getCurrentPlayState() == 1 ? 7 : 2;
        }
        if (track.isFullyDownloaded()) {
            return track.getCurrentPlayState() == 1 ? 6 : 0;
        }
        return 1;
    }

    public Track getLocalEnclosureTrack() {
        return FeedRepository.getTrackByPathOrUrl(localFileName(), this.Url);
    }

    public boolean isEnclosureInHistory() {
        return EnclosureDownloadHistory.hasEntryFor(this);
    }

    public String localFileName() {
        if (this.m_FullPath == null) {
            this.m_FullPath = new File(this.DownloadPath, fileName()).getPath();
        }
        return this.m_FullPath;
    }

    public String relativeLocalFileName() {
        return FeedRepository.convertToRelativePath(localFileName());
    }

    public String fileName() {
        if (this.m_FileName == null) {
            Feed feedById = FeedRepository.getFeedById(this.Parent.originatingFeedID());
            this.m_FileName = CoreHelper.createFileNameFromUrl(this.Url, this.m_ForceUniqueEnclosureNames, feedById != null ? feedById.getName() : "", this.Parent.itemID(), this.Type);
        }
        return this.m_FileName;
    }

    public String enclosureSizeAsString() {
        return CoreHelper.getFileLengthAsString(enclosureFileLength());
    }

    public Date pubDate() {
        if (this.m_PubDate == null && this.Parent != null) {
            this.m_PubDate = this.Parent.pubDate();
        }
        return this.m_PubDate;
    }

    public String parentItemID() {
        if (this.m_ParentItemId == null) {
            if (this.Parent != null) {
                this.m_ParentItemId = this.Parent.itemID();
            } else {
                this.m_ParentItemId = "";
            }
        }
        return this.m_ParentItemId;
    }

    public int enclosureID() {
        if (this._EnclosureID == 0 && !StringUtils.isNullOrEmpty(parentItemID())) {
            if (RssFeedItem.isGreaderId(parentItemID())) {
                this._EnclosureID = parentItemID().hashCode();
            } else {
                this._EnclosureID = StringUtils.safeParseInt(parentItemID(), 0);
            }
        }
        if (this._EnclosureID == 0) {
            this._EnclosureID = enclosureRelativePathID();
        }
        return this._EnclosureID;
    }

    public int enclosureRelativePathID() {
        return relativeLocalFileName().hashCode();
    }

    public int enclosureAlternativeID() {
        return localFileName().hashCode();
    }

    public int enclosureOldMountID() {
        if (localFileName().startsWith("/mnt")) {
            return localFileName().substring(4).hashCode();
        }
        return enclosureAlternativeID();
    }

    public StringBuilder dumpEnclosure() {
        StringBuilder sb = new StringBuilder();
        sb.append("Episode Details");
        Track localEnclosureTrack = getLocalEnclosureTrack();
        if (localEnclosureTrack == null) {
            sb.append(String.format("\n  • type: %s\n  • Size: %s\n  • duration: %s\n  • url: %s\n  • Download Path: %s\n\n", this.Type, enclosureFileLength() != null ? enclosureSizeAsString() : "N/A", this.Duration > 0 ? CoreHelper.formatTimeAsString(this.Duration, true) : "N/A", this.Url, localFileName()));
        } else {
            String formatTimeAsString = localEnclosureTrack.getTotalTime() > 0 ? CoreHelper.formatTimeAsString(localEnclosureTrack.getTotalTime(), true) : "N/A";
            Object[] objArr = new Object[8];
            objArr[0] = this.Type;
            objArr[1] = Long.valueOf(localEnclosureTrack.getSizeOnDisk());
            objArr[2] = Long.valueOf(localEnclosureTrack.getDownloadedPortion());
            objArr[3] = Long.valueOf(localEnclosureTrack.getDownloadSize());
            objArr[4] = formatTimeAsString;
            objArr[5] = localEnclosureTrack.isRemoteEpisode() ? "Remote" : "Local";
            objArr[6] = this.Url;
            objArr[7] = localFileName();
            sb.append(String.format("\n  • type: %s\n  • File Size: %s\n  • downloaded: %s of %s\n  • duration: %s\n  • Added by: %s device\n  • url: %s\n  • Download Path: %s\n\n", objArr));
        }
        if (!Configuration.enableLoggingInProduction()) {
            return sb;
        }
        if (this.m_ExtendedEncodingInfo != null && this.m_ExtendedEncodingInfo.size() > 0) {
            Iterator<ExtendedEncoding> it = this.m_ExtendedEncodingInfo.iterator();
            while (it.hasNext()) {
                ExtendedEncoding next = it.next();
                sb.append(String.format("\n---- %s Info ---\n", next.type));
                sb.append(String.format(" * Mime type: %s\n", next.mimeType));
                sb.append(String.format(" * Codec: %s (%s)\n", next.format, next.codecID));
                if ("Video".equals(next.type)) {
                    sb.append(String.format(" * width: %s\n", Integer.valueOf(next.width)));
                    sb.append(String.format(" * height: %s\n", Integer.valueOf(next.height)));
                    sb.append(String.format(" * Display Aspect Ratio: %s\n", next.displayAspectRatio));
                    sb.append(String.format(" * Frame Rate: %s (%s)\n", next.frameRate, next.frameRateMode));
                    sb.append(String.format(" * standard: %s\n", next.standard));
                }
                sb.append(String.format(" * bitrate: %s (%s)\n", next.bitrateString, next.bitRateMode));
                sb.append(String.format(" * duration: %s (%s)\n", Long.valueOf(next.duration), CoreHelper.formatTimeAsString(next.duration)));
                sb.append(String.format(" * File Size: %s (%s)\n", Long.valueOf(next.fileSize), CoreHelper.getFileLengthAsString(Long.valueOf(next.fileSize))));
                sb.append(String.format(" * File Size String: %s\n", next.fileSizeString));
            }
        }
        sb.append("-------------------\n");
        sb.append(description());
        return sb;
    }

    public void addExtendedEncoding(ExtendedEncoding extendedEncoding) {
        if (this.m_ExtendedEncodingInfo == null) {
            this.m_ExtendedEncodingInfo = new ArrayList<>();
        }
        this.m_ExtendedEncodingInfo.add(extendedEncoding);
    }

    public void setEnclosureFileLength(Long l) {
        this._Length = l;
    }

    public Long enclosureFileLength() {
        return this._Length;
    }

    public String description() {
        return (this.Parent == null || this.Parent.Description == null) ? "" : this.Parent.shortTaglessDescription();
    }

    public String showNotes() {
        return this.Parent != null ? this.Parent.getShowNotes() : "";
    }

    public boolean isAllowed() {
        if (Configuration.getHideUnsupportedFileTypes()) {
            return Track.isSupportedExtension(tryGuessEnclosureExtension());
        }
        return true;
    }

    private String tryGuessEnclosureExtension() {
        String fileExtensionFromUrl = MimeTypeMap.getFileExtensionFromUrl(this.Url);
        if (StringUtils.isNullOrEmpty(fileExtensionFromUrl) && !StringUtils.isNullOrEmpty(this.Type)) {
            fileExtensionFromUrl = MimeTypeMap.getSingleton().getExtensionFromMimeType(this.Type);
            if (StringUtils.isNullOrEmpty(fileExtensionFromUrl)) {
                fileExtensionFromUrl = MediaFile.getFileExtensionForType(MediaFile.getFileTypeForMimeType(this.Type));
            }
        }
        return (StringUtils.isNullOrEmpty(fileExtensionFromUrl) || "mpga".equals(fileExtensionFromUrl)) ? HlsSegmentFormat.MP3 : fileExtensionFromUrl;
    }

    public void resetParentItemId() {
        this.m_ParentItemId = null;
        this._EnclosureID = 0;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void verifyAndFixEnclosure() {
        MediaFile.MediaFileType fileType;
        if (StringUtils.isNullOrEmpty(this.Type) || StringUtils.isNullOrEmpty(this.Url) || !MediaFile.isImageFileType(MediaFile.getFileTypeForMimeType(this.Type)) || (fileType = MediaFile.getFileType(this.Url)) == null) {
            return;
        }
        if (MediaFile.isAudioFileType(fileType.fileType)) {
            this.Type = "audio/mpeg";
        } else if (MediaFile.isVideoFileType(fileType.fileType)) {
            this.Type = "video/mp4";
        }
    }
}
