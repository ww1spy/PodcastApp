package mobi.beyondpod.ui.core;

import java.util.EventListener;
import java.util.EventObject;

/* loaded from: classes.dex */
public class ImageCacheEvents {

    /* loaded from: classes.dex */
    public interface ImageCacheEventListener extends EventListener {
        void onImageCacheEvent(ImageCacheEvent imageCacheEvent);
    }

    /* loaded from: classes.dex */
    public static class ImageCacheEvent extends EventObject {
        public static final int EVENT_FeedImageCacheCleared = 1;
        public static final int EVENT_TrackImageCacheCleared = 0;
        public int Type;

        public ImageCacheEvent(int i) {
            super(ImageCacheEvent.class);
            this.Type = i;
        }

        @Override // java.util.EventObject
        public String toString() {
            return String.format("ImageCacheEvent: %s", getEventName());
        }

        private String getEventName() {
            return this.Type != 0 ? "Unknown event!" : "track Image Cache Cleared";
        }
    }
}
