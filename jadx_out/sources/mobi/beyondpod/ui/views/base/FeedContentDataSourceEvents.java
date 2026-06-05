package mobi.beyondpod.ui.views.base;

import java.util.EventListener;
import java.util.EventObject;

/* loaded from: classes.dex */
public class FeedContentDataSourceEvents {

    /* loaded from: classes.dex */
    public interface FeedContentListViewDataSourceEventListener extends EventListener {
        void onFeedContentListViewDataSourceEvent(FeedContentListViewDataSourceEvent feedContentListViewDataSourceEvent);
    }

    /* loaded from: classes.dex */
    public static class FeedContentListViewDataSourceEvent extends EventObject {
        public static int LOAD_COMPLETED = 1;
        public static int LOAD_STARTED;
        public int type;

        public FeedContentListViewDataSourceEvent(Object obj, int i) {
            super(obj);
            this.type = i;
        }
    }
}
