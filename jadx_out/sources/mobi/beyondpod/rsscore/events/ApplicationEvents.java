package mobi.beyondpod.rsscore.events;

import java.util.EventListener;
import java.util.EventObject;

/* loaded from: classes.dex */
public class ApplicationEvents {

    /* loaded from: classes.dex */
    public interface ApplicationErrorEventListener extends EventListener {
        void onApplicationErrorEvent(ApplicationErrorEvent applicationErrorEvent);
    }

    /* loaded from: classes.dex */
    public interface MainUIVisibilityChangedEventListener extends EventListener {
        void onMainUIVisibilityChangedEvent(MainUIVisibilityChangedEvent mainUIVisibilityChangedEvent);
    }

    /* loaded from: classes.dex */
    public static class ApplicationErrorEvent extends EventObject {
        public static final int EVENT_IntializationError = 2;
        public static final int EVENT_InvalidGoogleLogin = 1;
        public static final int EVENT_LocalTimeDrifted = 6;
        public static final int EVENT_PodcastDownloadSkipped_DeviceIsNotPluggedIn = 3;
        public static final int EVENT_PodcastDownloadSkipped_WiFiNotDetected = 4;
        public static final int EVENT_StorageCardCorrupted = 0;
        public static final int EVENT_UpdateAndDownload_Error = 5;
        public int type;

        public ApplicationErrorEvent(Exception exc, int i) {
            super(exc);
            this.type = i;
        }

        @Override // java.util.EventObject
        public String toString() {
            return String.format("ApplicationErrorEvent: %s", getEventName());
        }

        private String getEventName() {
            switch (this.type) {
                case 0:
                    return "Storage Card Corrupted";
                case 1:
                    return "Invalid Google Login";
                case 2:
                    return "Initialization Error";
                case 3:
                    return "Podcast Download Skipped Device Is Not Plugged In";
                case 4:
                    return "Podcast Download Skipped WiFi Not Detected";
                case 5:
                    return "Update And Download Error";
                case 6:
                    return "Local Time Drifted";
                default:
                    return "Unknown event!";
            }
        }
    }

    /* loaded from: classes.dex */
    public static class MainUIVisibilityChangedEvent extends EventObject {
        public boolean isVisible;

        public MainUIVisibilityChangedEvent(Object obj, boolean z) {
            super(obj);
            this.isVisible = false;
            this.isVisible = z;
        }
    }
}
