package mobi.beyondpod.ui.views.onboarding.startup;

import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentPagerAdapter;
import java.util.ArrayList;
import java.util.List;
import mobi.beyondpod.ui.views.onboarding.core.AssetHelper;

/* loaded from: classes.dex */
public class FirstRunPagerAdapter extends FragmentPagerAdapter {
    String _AssetFolder;
    List<String> _Pages;

    public FirstRunPagerAdapter(FragmentManager fragmentManager, String str) {
        super(fragmentManager);
        this._Pages = new ArrayList();
        this._AssetFolder = str;
        this._Pages = new AssetHelper(this._AssetFolder).loadPages();
        this._Pages.add(SampleFeedsFragment.TAG);
        this._Pages.add(ConfigureAutomaticUpdatesFragment.TAG);
    }

    @Override // android.support.v4.app.FragmentPagerAdapter
    public Fragment getItem(int i) {
        String str = this._Pages.get(i);
        WebViewFragment newInstance = WebViewFragment.newInstance(str);
        if (newInstance != null) {
            return newInstance;
        }
        SampleFeedsFragment newInstance2 = SampleFeedsFragment.newInstance(str);
        if (newInstance2 != null) {
            return newInstance2;
        }
        ConfigureAutomaticUpdatesFragment newInstance3 = ConfigureAutomaticUpdatesFragment.newInstance(str);
        if (newInstance3 != null) {
            return newInstance3;
        }
        return null;
    }

    @Override // android.support.v4.view.PagerAdapter
    public int getCount() {
        return this._Pages.size();
    }
}
