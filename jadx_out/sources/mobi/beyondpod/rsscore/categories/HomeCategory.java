package mobi.beyondpod.rsscore.categories;

import mobi.beyondpod.R;
import mobi.beyondpod.rsscore.helpers.CoreHelper;

/* loaded from: classes.dex */
public class HomeCategory extends FeedCategory {
    private static final String HOME = CoreHelper.loadResourceString(R.string.category_home_page);
    private static final String HOME_VALUE = "#Home#";

    public HomeCategory() {
        super(HOME);
        this._Value = HOME_VALUE;
    }
}
