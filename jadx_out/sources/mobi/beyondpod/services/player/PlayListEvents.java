package mobi.beyondpod.services.player;

import java.util.EventListener;
import java.util.EventObject;

/* loaded from: classes.dex */
public class PlayListEvents {

    /* loaded from: classes.dex */
    public interface PlayListEventListener extends EventListener {
        void onPlayListEvent(PlayListEvent playListEvent);
    }

    /* loaded from: classes.dex */
    public static class PlayListEvent extends EventObject {
        public static final int EVENT_CurrentTrackChanged = 1;
        public static final int EVENT_EndOfPlayList = 3;
        public static final int EVENT_PlaylistChanged = 0;
        public static final int EVENT_PlaystateChanged = 2;
        public int Type;

        public PlayListEvent(PlayList playList, int i) {
            super(playList);
            this.Type = i;
        }

        @Override // java.util.EventObject
        public String toString() {
            return String.format("PlayListEvent: %s", getEventName());
        }

        private String getEventName() {
            switch (this.Type) {
                case 0:
                    return "Playlist Changed";
                case 1:
                    return "Current track Changed";
                case 2:
                    return "Playstate Changed";
                case 3:
                    return "EndOfPlayList";
                default:
                    return "Unknown event!";
            }
        }
    }
}
