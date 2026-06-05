package mobi.beyondpod.ui.core;

import java.util.ArrayList;
import java.util.Iterator;
import mobi.beyondpod.BeyondPodApplication;
import mobi.beyondpod.rsscore.Configuration;
import mobi.beyondpod.rsscore.Feed;
import mobi.beyondpod.rsscore.Track;
import mobi.beyondpod.rsscore.helpers.MediaFile;
import mobi.beyondpod.rsscore.rss.entities.RssFeedItem;

/* loaded from: classes.dex */
public class FeedRssItemList extends ArrayList<RssFeedItem> {
    private static final long serialVersionUID = 4912655395776997747L;
    Feed _Feed;

    public FeedRssItemList(Feed feed) {
        this._Feed = feed;
    }

    public boolean hasItemsWithEnclosures() {
        Iterator<RssFeedItem> it = iterator();
        while (it.hasNext()) {
            if (it.next().enclosure() != null) {
                return true;
            }
        }
        return false;
    }

    public boolean hasItemsThatCanBeDeleted() {
        Iterator<RssFeedItem> it = iterator();
        while (it.hasNext()) {
            RssFeedItem next = it.next();
            if (next.enclosure() != null && this._Feed.tracks().getTrackByNameOrUrl(next.enclosure().fileName(), next.enclosure().Url) != null) {
                return true;
            }
        }
        return false;
    }

    public boolean hasItemsThatCanBeAddedToPlaylist() {
        MediaFile.MediaFileType fileType;
        Iterator<RssFeedItem> it = iterator();
        while (it.hasNext()) {
            RssFeedItem next = it.next();
            if (next.enclosure() != null) {
                Track trackByNameOrUrl = this._Feed.tracks().getTrackByNameOrUrl(next.enclosure().fileName(), next.enclosure().Url);
                if (trackByNameOrUrl == null) {
                    int fileTypeForMimeType = MediaFile.getFileTypeForMimeType(next.enclosure().Type);
                    if (fileTypeForMimeType == 0 && (fileType = MediaFile.getFileType(next.enclosure().fileName())) != null) {
                        fileTypeForMimeType = fileType.fileType;
                    }
                    return (Configuration.allowEpisodeStreaming() == 2 || MediaFile.isImageFileType(fileTypeForMimeType)) ? false : true;
                }
                if (BeyondPodApplication.getInstance().playList().canAddToPlaylist(trackByNameOrUrl)) {
                    return true;
                }
            }
        }
        return false;
    }

    public boolean hasItemsThatCanBeRemovedFromPlaylist() {
        Track trackByNameOrUrl;
        Iterator<RssFeedItem> it = iterator();
        while (it.hasNext()) {
            RssFeedItem next = it.next();
            if (next.enclosure() != null && (trackByNameOrUrl = this._Feed.tracks().getTrackByNameOrUrl(next.enclosure().fileName(), next.enclosure().Url)) != null && BeyondPodApplication.getInstance().playList().hasTrack(trackByNameOrUrl)) {
                return true;
            }
        }
        return false;
    }

    public boolean hasNotInMyEpisodes() {
        Iterator<RssFeedItem> it = iterator();
        while (it.hasNext()) {
            RssFeedItem next = it.next();
            if (next.enclosure() != null && this._Feed.tracks().getTrackByNameOrUrl(next.enclosure().fileName(), next.enclosure().Url) == null) {
                return true;
            }
        }
        return false;
    }

    public boolean hasNotFullyDownloaded() {
        Track trackByNameOrUrl;
        Iterator<RssFeedItem> it = iterator();
        while (it.hasNext()) {
            RssFeedItem next = it.next();
            if (next.enclosure() != null && ((trackByNameOrUrl = this._Feed.tracks().getTrackByNameOrUrl(next.enclosure().fileName(), next.enclosure().Url)) == null || !trackByNameOrUrl.isFullyDownloaded())) {
                return true;
            }
        }
        return false;
    }

    public boolean hasUnreadItems() {
        Iterator<RssFeedItem> it = iterator();
        while (it.hasNext()) {
            if (!it.next().getRead()) {
                return true;
            }
        }
        return false;
    }

    public boolean hasNonMockOrNonReaderLockedItems() {
        Iterator<RssFeedItem> it = iterator();
        while (it.hasNext()) {
            RssFeedItem next = it.next();
            if (!next.isMockItem().booleanValue() && (Configuration.ignoreGoogleReaderReadStatus() || !next.IsGoogleReadLocked)) {
                return true;
            }
        }
        return false;
    }
}
