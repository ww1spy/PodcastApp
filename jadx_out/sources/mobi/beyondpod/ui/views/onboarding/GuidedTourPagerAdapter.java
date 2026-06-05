package mobi.beyondpod.ui.views.onboarding;

import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentPagerAdapter;
import java.util.ArrayList;
import java.util.List;
import mobi.beyondpod.rsscore.rss.PolicyManager;
import mobi.beyondpod.ui.views.onboarding.core.AssetHelper;

/* loaded from: classes.dex */
public class GuidedTourPagerAdapter extends FragmentPagerAdapter {
    String _AssetFolder;
    List<String> _Pages;

    public GuidedTourPagerAdapter(FragmentManager fragmentManager, String str) {
        super(fragmentManager);
        this._Pages = new ArrayList();
        this._AssetFolder = str;
        this._Pages = new AssetHelper(this._AssetFolder).loadPages();
        if (this._Pages.size() <= 1 || !PolicyManager.isUnlocked()) {
            return;
        }
        this._Pages.remove(this._Pages.size() - 1);
    }

    @Override // android.support.v4.app.FragmentPagerAdapter
    public Fragment getItem(int i) {
        return GuideViewFragment.newInstance(this._Pages.get(i));
    }

    @Override // android.support.v4.view.PagerAdapter
    public int getCount() {
        return this._Pages.size();
    }
}
