package mobi.beyondpod.ui.views.myepisodesview;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import com.google.android.gms.ads.AdListener;
import com.google.android.gms.ads.AdRequest;
import com.google.android.gms.ads.AdView;
import java.util.UUID;
import mobi.beyondpod.R;
import mobi.beyondpod.rsscore.helpers.CoreHelper;
import mobi.beyondpod.ui.core.AdManager;
import mobi.beyondpod.ui.views.base.columnlistview.SectionedListViewAdapter;

/* loaded from: classes.dex */
public class SectionAdAdapter implements SectionedListViewAdapter.ISectionedAdapter {
    public static final UUID AdapterID = UUID.fromString("AABBCCDD-0000-0000-0000-000000000007");
    private static final String TAG = "SectionAdAdapter";
    private boolean _AdLoaded = false;
    private AdView _AdView;
    private Context _Context;

    @Override // mobi.beyondpod.ui.views.base.columnlistview.SectionedListViewAdapter.ISectionedAdapter
    public Object getFirstItemAtRow(int i) {
        return null;
    }

    @Override // mobi.beyondpod.ui.views.base.columnlistview.SectionedListViewAdapter.ISectionedAdapter
    public Object getItemAtPosition(int i) {
        return null;
    }

    @Override // mobi.beyondpod.ui.views.base.columnlistview.SectionedListViewAdapter.ISectionedAdapter
    public int getItemCount() {
        return 0;
    }

    @Override // mobi.beyondpod.ui.views.base.columnlistview.SectionedListViewAdapter.ISectionedAdapter
    public int getItemRow(Object obj) {
        return 0;
    }

    @Override // mobi.beyondpod.ui.views.base.columnlistview.SectionedListViewAdapter.ISectionedAdapter
    public int getRowCount() {
        return 1;
    }

    public void onPause() {
    }

    public void onResume() {
    }

    public SectionAdAdapter(Context context) {
        this._Context = context;
    }

    @Override // mobi.beyondpod.ui.views.base.columnlistview.SectionedListViewAdapter.ISectionedAdapter
    public View getView(int i, View view, ViewGroup viewGroup) {
        if (view == null) {
            View inflate = View.inflate(this._Context, R.layout.section_divider_ad, null);
            this._AdView = new AdView(inflate.getContext());
            this._AdView.setAdUnitId(AdManager.Ad_Unit_ID_MyEpisodes);
            this._AdView.setAdSize(AdManager.getAdSizeForCurrentDevice());
            this._AdView.setAdListener(new BPAddListener());
            this._AdView.setVisibility(8);
            FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-2, -1);
            layoutParams.gravity = 17;
            ((ViewGroup) inflate).addView(this._AdView, 0, layoutParams);
            inflate.setTag(this._AdView);
            reloadAd();
            return inflate;
        }
        if (this._AdView != null) {
            return view;
        }
        this._AdView = (AdView) view.getTag();
        return view;
    }

    private void reloadAd() {
        if (this._AdView == null) {
            return;
        }
        AdRequest build = new AdRequest.Builder().build();
        this._AdLoaded = true;
        this._AdView.loadAd(build);
    }

    /* loaded from: classes.dex */
    class BPAddListener extends AdListener {
        @Override // com.google.android.gms.ads.AdListener
        public void onAdClosed() {
        }

        @Override // com.google.android.gms.ads.AdListener
        public void onAdLeftApplication() {
        }

        @Override // com.google.android.gms.ads.AdListener
        public void onAdOpened() {
        }

        BPAddListener() {
        }

        @Override // com.google.android.gms.ads.AdListener
        public void onAdLoaded() {
            SectionAdAdapter.this._AdView.setVisibility(0);
        }

        @Override // com.google.android.gms.ads.AdListener
        public void onAdFailedToLoad(int i) {
            String str = "";
            switch (i) {
                case 0:
                    str = "Internal error";
                    break;
                case 1:
                    str = "Invalid request";
                    break;
                case 2:
                    str = "Network Error";
                    break;
                case 3:
                    str = "No fill";
                    break;
            }
            CoreHelper.writeTraceEntry(SectionAdAdapter.TAG, "___________Ad Lister Error: " + str);
        }
    }

    @Override // mobi.beyondpod.ui.views.base.columnlistview.SectionedListViewAdapter.ISectionedAdapter
    public UUID getAdapterId() {
        return AdapterID;
    }

    public void onDestroy() {
        if (this._AdView != null) {
            CoreHelper.writeTraceEntry(TAG, "SectionAdAdapter - destroying");
            this._AdView.destroy();
        }
    }
}
