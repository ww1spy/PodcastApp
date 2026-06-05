package mobi.beyondpod.rsscore.categories;

import mobi.beyondpod.R;
import mobi.beyondpod.rsscore.helpers.CoreHelper;

/* loaded from: classes.dex */
public class AllFeedsCategory extends FeedCategory {
    private static final String ALL_FEEDS = CoreHelper.loadResourceString(R.string.category_all_feeds);

    public AllFeedsCategory() {
        super(ALL_FEEDS);
        this._Value = "";
    }
}
