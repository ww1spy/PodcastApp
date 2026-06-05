package mobi.beyondpod.rsscore;

import java.util.ArrayList;
import java.util.Iterator;
import mobi.beyondpod.BeyondPodApplication;
import mobi.beyondpod.rsscore.helpers.CoreHelper;
import mobi.beyondpod.rsscore.helpers.StringUtils;

/* loaded from: classes.dex */
public class TrackList extends ArrayList<Track> {
    private static final long serialVersionUID = 5658483572878679944L;

    public int getUnplayedTrackCount() {
        Iterator<Track> it = iterator();
        int i = 0;
        while (it.hasNext()) {
            if (it.next().isNew()) {
                i++;
            }
        }
        return i;
    }

    public Track getFirstUnplayedOrPartiallyPlayedTrack() {
        if (size() <= 0) {
            return null;
        }
        Iterator<Track> it = iterator();
        while (it.hasNext()) {
            Track next = it.next();
            if (next.isNew() || next.isPartialyPlayed()) {
                return next;
            }
        }
        return null;
    }

    public int getLocalTrackCount() {
        int i = 0;
        if (size() > 0) {
            Iterator<Track> it = iterator();
            while (it.hasNext()) {
                if (it.next().exists()) {
                    i++;
                }
            }
        }
        return i;
    }

    public Track getTrackByPath(String str) {
        if (size() <= 0) {
            return null;
        }
        Iterator<Track> it = iterator();
        while (it.hasNext()) {
            Track next = it.next();
            if (StringUtils.equalsIgnoreCase(next.trackPath(), str)) {
                return next;
            }
        }
        return null;
    }

    public Track getTrackByNameOrUrl(String str, String str2) {
        if (size() <= 0) {
            return null;
        }
        try {
            Iterator<Track> it = iterator();
            while (it.hasNext()) {
                Track next = it.next();
                if (next.trackPath().endsWith(str)) {
                    return next;
                }
                if (!StringUtils.isNullOrEmpty(str2) && StringUtils.equalsIgnoreCase(next.getUrl(), str2)) {
                    return next;
                }
            }
            return null;
        } catch (Exception e) {
            CoreHelper.logException("TrackList", "failed to locate track by url!", e);
            return null;
        }
    }

    public boolean hasUnPlayed() {
        Iterator<Track> it = iterator();
        while (it.hasNext()) {
            if (!it.next().isPlayed()) {
                return true;
            }
        }
        return false;
    }

    public boolean hasUnLocked() {
        Iterator<Track> it = iterator();
        while (it.hasNext()) {
            if (it.next().allowAutoDelete()) {
                return true;
            }
        }
        return false;
    }

    public boolean hasNotDownloaded() {
        Iterator<Track> it = iterator();
        while (it.hasNext()) {
            if (!it.next().isFullyDownloaded()) {
                return true;
            }
        }
        return false;
    }

    public boolean hasNotInPlaylist() {
        Iterator<Track> it = iterator();
        while (it.hasNext()) {
            if (!BeyondPodApplication.getInstance().playList().hasTrack(it.next())) {
                return true;
            }
        }
        return false;
    }
}
