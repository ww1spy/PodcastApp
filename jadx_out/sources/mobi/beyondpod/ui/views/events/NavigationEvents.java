package mobi.beyondpod.ui.views.events;

import java.util.EventListener;
import java.util.EventObject;

/* loaded from: classes.dex */
public class NavigationEvents {

    /* loaded from: classes.dex */
    public interface NavigationEventListener extends EventListener {
        void onNavigationEvent(NavigationEvent navigationEvent);
    }

    /* loaded from: classes.dex */
    public static class NavigationEvent extends EventObject {
        public static int NAVIGATE_BACK = 1;
        public static int NAVIGATE_FORWARD;
        public int direction;

        public NavigationEvent(Object obj, int i) {
            super(obj);
            this.direction = i;
        }
    }
}
