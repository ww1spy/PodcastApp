package mobi.beyondpod.rsscore.categories;

import mobi.beyondpod.R;
import mobi.beyondpod.rsscore.helpers.CoreHelper;

/* loaded from: classes.dex */
public class CategoryNone extends FeedCategory {
    private static final String UNCATEGORIZED_NAME = CoreHelper.loadResourceString(R.string.category_uncategorized);
    private static final String UNCATEGORIZED_VALUE = "Uncategorized";

    public CategoryNone() {
        super(UNCATEGORIZED_NAME);
        this._Value = UNCATEGORIZED_VALUE;
    }
}
