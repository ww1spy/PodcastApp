package mobi.beyondpod.rsscore;

import java.util.Comparator;
import java.util.Date;

/* loaded from: classes.dex */
public class TrackSorter implements Comparator<Track> {
    public int SortOrder;

    public TrackSorter(int i) {
        this.SortOrder = 0;
        this.SortOrder = i;
    }

    public TrackSorter() {
        this.SortOrder = 0;
    }

    @Override // java.util.Comparator
    public int compare(Track track, Track track2) {
        if (track.equals(track2)) {
            return 0;
        }
        Date lastModifiedDate = track.getLastModifiedDate();
        Date lastModifiedDate2 = track2.getLastModifiedDate();
        String displayName = track.displayName();
        String displayName2 = track2.displayName();
        String trackPath = track.trackPath();
        String trackPath2 = track2.trackPath();
        Long valueOf = Long.valueOf(track.getSizeOnDisk());
        Long valueOf2 = Long.valueOf(track2.getSizeOnDisk());
        switch (this.SortOrder) {
            case 0:
                if (displayName == null && displayName2 == null) {
                    return 0;
                }
                if (displayName != null && displayName2 == null) {
                    return 1;
                }
                if (displayName != null || displayName2 == null) {
                    return displayName.compareToIgnoreCase(displayName2);
                }
                return -1;
            case 1:
                if (displayName == null && displayName2 == null) {
                    return 0;
                }
                if (displayName2 != null && displayName == null) {
                    return 1;
                }
                if (displayName2 != null || displayName == null) {
                    return displayName2.compareToIgnoreCase(displayName);
                }
                return -1;
            case 2:
                if (lastModifiedDate == null && lastModifiedDate2 == null) {
                    return 0;
                }
                if (lastModifiedDate != null && lastModifiedDate2 == null) {
                    return 1;
                }
                if (lastModifiedDate != null || lastModifiedDate2 == null) {
                    return lastModifiedDate.compareTo(lastModifiedDate2);
                }
                return -1;
            case 3:
                if (lastModifiedDate == null && lastModifiedDate2 == null) {
                    return 0;
                }
                if (lastModifiedDate2 != null && lastModifiedDate == null) {
                    return 1;
                }
                if (lastModifiedDate2 != null || lastModifiedDate == null) {
                    return lastModifiedDate2.compareTo(lastModifiedDate);
                }
                return -1;
            case 4:
                long totalTime = track.getTotalTime() > 0 ? track.getTotalTime() : 2147483647L;
                long totalTime2 = track2.getTotalTime() > 0 ? track2.getTotalTime() : 2147483647L;
                if (totalTime2 == totalTime) {
                    return 0;
                }
                return totalTime > totalTime2 ? 1 : -1;
            case 5:
                long totalTime3 = track.getTotalTime() > 0 ? track.getTotalTime() : -2147483648L;
                long totalTime4 = track2.getTotalTime() > 0 ? track2.getTotalTime() : -2147483648L;
                if (totalTime4 == totalTime3) {
                    return 0;
                }
                return totalTime4 > totalTime3 ? 1 : -1;
            case 6:
                float playedAsFraction = track.playedAsFraction();
                float playedAsFraction2 = track2.playedAsFraction();
                if (playedAsFraction == 0.0f) {
                    playedAsFraction = 1.01f;
                } else if (playedAsFraction == 1.0f) {
                    playedAsFraction = 1.1f;
                }
                if (playedAsFraction2 == 0.0f) {
                    playedAsFraction2 = 1.01f;
                } else if (playedAsFraction2 == 1.0f) {
                    playedAsFraction2 = 1.1f;
                }
                if (track.getTotalTime() <= 0) {
                    playedAsFraction = track.isPlayed() ? Float.MAX_VALUE : 1.02f;
                }
                if (track2.getTotalTime() <= 0) {
                    playedAsFraction2 = track2.isPlayed() ? Float.MAX_VALUE : 1.02f;
                }
                return Float.compare(playedAsFraction, playedAsFraction2);
            case 7:
                int contentType = track.contentType();
                int contentType2 = track2.contentType();
                if (contentType == 0 || contentType == -1) {
                    contentType = Integer.MAX_VALUE;
                }
                if (contentType2 == 0 || contentType2 == -1) {
                    contentType2 = Integer.MAX_VALUE;
                }
                if (contentType2 == contentType) {
                    return 0;
                }
                return contentType > contentType2 ? 1 : -1;
            case 8:
                if (trackPath == null && trackPath2 == null) {
                    return 0;
                }
                if (trackPath != null && trackPath2 == null) {
                    return 1;
                }
                if (trackPath != null || trackPath2 == null) {
                    return trackPath.compareToIgnoreCase(trackPath2);
                }
                return -1;
            case 9:
                if (trackPath == null && trackPath2 == null) {
                    return 0;
                }
                if (trackPath2 != null && trackPath == null) {
                    return 1;
                }
                if (trackPath2 != null || trackPath == null) {
                    return trackPath2.compareToIgnoreCase(trackPath);
                }
                return -1;
            case 10:
                if (valueOf == null && valueOf2 == null) {
                    return 0;
                }
                if (valueOf2 != null && valueOf == null) {
                    return 1;
                }
                if (valueOf2 != null || valueOf == null) {
                    return valueOf2.compareTo(valueOf);
                }
                return -1;
            default:
                return -1;
        }
    }
}
