package mobi.beyondpod.ui.views.events;

import java.util.EventListener;
import java.util.EventObject;
import mobi.beyondpod.rsscore.categories.FeedCategory;

/* loaded from: classes.dex */
public class CategoryEvents {

    /* loaded from: classes.dex */
    public interface CategoryEventListener extends EventListener {
        void onCategorySelectedEvent(CategorySelectedEvent categorySelectedEvent);
    }

    /* loaded from: classes.dex */
    public static class CategorySelectedEvent extends EventObject {
        public FeedCategory Category;

        public CategorySelectedEvent(Object obj, FeedCategory feedCategory) {
            super(obj);
            this.Category = feedCategory;
        }
    }
}
