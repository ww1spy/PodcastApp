package mobi.beyondpod.ui.views.onboarding.startup;

import android.content.res.Configuration;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.GridView;
import android.widget.ListAdapter;
import java.util.Iterator;
import mobi.beyondpod.BeyondPodApplication;
import mobi.beyondpod.R;
import mobi.beyondpod.services.auto.MediaIdHelper;
import mobi.beyondpod.ui.views.onboarding.startup.SampleContentAdapter;

/* loaded from: classes.dex */
public final class SampleFeedsFragment extends Fragment {
    private static final String KEY_CONTENT = "TestFragment:Content";
    public static String TAG = "SampleFeedsFragment";
    SampleContentAdapter _Adapter;
    GridView _CategoryGrid;

    public static SampleFeedsFragment newInstance(String str) {
        if (TAG.equals(str)) {
            return new SampleFeedsFragment();
        }
        return null;
    }

    @Override // android.support.v4.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (bundle == null || !bundle.containsKey(KEY_CONTENT)) {
            return;
        }
        bundle.getString(KEY_CONTENT);
    }

    @Override // android.support.v4.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        View inflate = layoutInflater.inflate(R.layout.first_run_sample_content_fragment, (ViewGroup) null);
        this._CategoryGrid = (GridView) inflate.findViewById(R.id.categoryGrid);
        this._Adapter = new SampleContentAdapter(getActivity());
        this._CategoryGrid.setAdapter((ListAdapter) this._Adapter);
        this._CategoryGrid.setStretchMode(2);
        this._CategoryGrid.setOnItemClickListener(new AdapterView.OnItemClickListener() { // from class: mobi.beyondpod.ui.views.onboarding.startup.SampleFeedsFragment.1
            @Override // android.widget.AdapterView.OnItemClickListener
            public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
                SampleFeedsFragment.this._Adapter.toggleItem(i);
                ((FirstRun) SampleFeedsFragment.this.getActivity()).categorySelectionChanged(SampleFeedsFragment.this.getSelectedCategories());
            }
        });
        return inflate;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String getSelectedCategories() {
        if (this._Adapter.getCheckedItemsCount() == 0) {
            return null;
        }
        String str = BeyondPodApplication.getInstance().getLocale().toString() + ":";
        Iterator<SampleContentAdapter.SampleContent> it = this._Adapter.getCheckedItems().iterator();
        while (it.hasNext()) {
            str = str + MediaIdHelper.AUTO_MEDIA_ID_SEPERATOR + it.next().categoryId;
        }
        return str;
    }

    @Override // android.support.v4.app.Fragment, android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        int dimensionPixelSize = getResources().getDimensionPixelSize(R.dimen.first_run_sample_content_grid_h_margin);
        this._CategoryGrid.setPadding(dimensionPixelSize, this._CategoryGrid.getPaddingTop(), dimensionPixelSize, this._CategoryGrid.getPaddingBottom());
    }

    @Override // android.support.v4.app.Fragment
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putString(KEY_CONTENT, null);
    }
}
