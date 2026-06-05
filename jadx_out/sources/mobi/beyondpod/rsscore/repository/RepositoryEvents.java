package mobi.beyondpod.rsscore.repository;

import java.util.EventListener;
import java.util.EventObject;
import mobi.beyondpod.rsscore.Feed;
import mobi.beyondpod.rsscore.Track;

/* loaded from: classes.dex */
public class RepositoryEvents {

    /* loaded from: classes.dex */
    public interface RepositoryEventListener extends EventListener {
        void onRepositoryEvent(RepositoryEvent repositoryEvent);
    }

    /* loaded from: classes.dex */
    public static class RepositoryEvent extends EventObject {
        public static final int EVENT_CategoryAdded = 12;
        public static final int EVENT_CategoryChanged = 14;
        public static final int EVENT_CategoryDeleted = 13;
        public static final int EVENT_FeedAdded = 6;
        public static final int EVENT_FeedChanged = 5;
        public static final int EVENT_FeedDeleted = 7;
        public static final int EVENT_ItemStatusChanged = 15;
        public static final int EVENT_LoadComplete = 2;
        public static final int EVENT_LoadingFeeds = 0;
        public static final int EVENT_RepositoryErrorOccurred = -1;
        public static final int EVENT_SaveComplete = 4;
        public static final int EVENT_SaveStarted = 3;
        public static final int EVENT_ScanningForChanges = 1;
        public static final int EVENT_TrackAdded = 8;
        public static final int EVENT_TrackBeforeDelete = 9;
        public static final int EVENT_TrackChanged = 11;
        public static final int EVENT_TrackDeleted = 10;
        public static final int EVENT_VirtualFeedUpdated = 16;
        public Feed Feed;
        public Exception LastException;
        public Track Track;
        public int Type;

        public RepositoryEvent(int i) {
            super(FeedRepository.class);
            this.Type = i;
        }

        public RepositoryEvent(int i, Track track) {
            this(i);
            this.Track = track;
        }

        public RepositoryEvent(int i, Feed feed) {
            this(i);
            this.Feed = feed;
        }

        public static RepositoryEvent fromException(Exception exc) {
            RepositoryEvent repositoryEvent = new RepositoryEvent(-1);
            repositoryEvent.LastException = exc;
            return repositoryEvent;
        }

        @Override // java.util.EventObject
        public String toString() {
            Object[] objArr = new Object[4];
            objArr[0] = getEventName();
            objArr[1] = this.Feed != null ? this.Feed.getName() : "";
            objArr[2] = this.Track != null ? this.Track.getName() : "";
            objArr[3] = this.LastException != null ? this.LastException.getMessage() : "";
            return String.format("RepositoryEvent: %s - %s%s%s", objArr);
        }

        private String getEventName() {
            switch (this.Type) {
                case -1:
                    return "RepositoryErrorOccurred";
                case 0:
                    return "LoadingFeeds";
                case 1:
                    return "ScanningForChanges";
                case 2:
                    return "LoadComplete";
                case 3:
                    return "SaveStarted";
                case 4:
                    return "SaveComplete";
                case 5:
                    return "FeedChanged";
                case 6:
                    return "FeedAdded";
                case 7:
                    return "FeedDeleted";
                case 8:
                    return "TrackAdded";
                case 9:
                    return "TrackBeforeDelete";
                case 10:
                    return "TrackDeleted";
                case 11:
                    return "TrackChanged";
                default:
                    return "Unknown event!";
            }
        }
    }
}
