package mobi.beyondpod.evo;

import java.util.EventListener;
import java.util.EventObject;
import mobi.beyondpod.rsscore.Feed;

/* loaded from: classes.dex */
public class ApplicationCmdEvents {

    /* loaded from: classes.dex */
    public interface CloseMasterViewEventListener extends EventListener {
        void onCloseMasterViewEvent(CloseMasterViewEvent closeMasterViewEvent);
    }

    /* loaded from: classes.dex */
    public interface LockMasterOrientationEventListener extends EventListener {
        void onCloseMasterViewEvent(LockMasterOrientationEvent lockMasterOrientationEvent);
    }

    /* loaded from: classes.dex */
    public interface SelectFeedCategoryAndOpenFeedEventListener extends EventListener {
        void onSelectFeedCategoryAndOpenFeedEvent(SelectFeedCategoryAndOpenFeedEvent selectFeedCategoryAndOpenFeedEvent);
    }

    /* loaded from: classes.dex */
    public static class SelectFeedCategoryAndOpenFeedEvent extends EventObject {
        public Feed Feed;

        public SelectFeedCategoryAndOpenFeedEvent(Object obj, Feed feed) {
            super(obj);
            this.Feed = feed;
        }
    }

    /* loaded from: classes.dex */
    public static class CloseMasterViewEvent extends EventObject {
        public CloseMasterViewEvent(Object obj) {
            super(obj);
        }
    }

    /* loaded from: classes.dex */
    public static class LockMasterOrientationEvent extends EventObject {
        public boolean Lock;

        public LockMasterOrientationEvent(Object obj, boolean z) {
            super(obj);
            this.Lock = false;
            this.Lock = z;
        }
    }
}
