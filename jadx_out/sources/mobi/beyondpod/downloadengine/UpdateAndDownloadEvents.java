package mobi.beyondpod.downloadengine;

import java.util.EventListener;
import java.util.EventObject;
import mobi.beyondpod.rsscore.Track;

/* loaded from: classes.dex */
public class UpdateAndDownloadEvents {

    /* loaded from: classes.dex */
    public interface UpdateAndDownloadEventListener extends EventListener {
        void onUpdateAndDownloadEvent(UpdateAndDownloadEvent updateAndDownloadEvent);
    }

    /* loaded from: classes.dex */
    public static class UpdateAndDownloadEvent extends EventObject {
        public static int ENCLOSURE_DOWNLOAD_COMPLETED = 2;
        public static int ENCLOSURE_DOWNLOAD_QUEUE_CHANGED = 4;
        public static int ENCLOSURE_DOWNLOAD_STARTED = 3;
        public static int UPDATE_AND_DOWNLOAD_COMPLETED = 1;
        public static int UPDATE_AND_DOWNLOAD_STARTED;
        public Track Track;
        public int Type;

        public UpdateAndDownloadEvent(Object obj, int i) {
            super(obj);
            this.Type = i;
        }

        public UpdateAndDownloadEvent(Object obj, int i, Track track) {
            this(obj, i);
            this.Track = track;
        }
    }
}
