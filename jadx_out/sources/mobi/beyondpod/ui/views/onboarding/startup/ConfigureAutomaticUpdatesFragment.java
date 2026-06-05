package mobi.beyondpod.ui.views.onboarding.startup;

import android.content.res.Configuration;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CheckBox;
import android.widget.CompoundButton;
import android.widget.RadioButton;
import android.widget.RadioGroup;
import mobi.beyondpod.R;

/* loaded from: classes.dex */
public final class ConfigureAutomaticUpdatesFragment extends Fragment {
    private static final String KEY_CONTENT = "TestFragment:Content";
    public static String TAG = "ConfigureAutomaticUpdatesFragment";
    RadioButton _AutomaticUpdates;
    View _Content;
    CheckBox _DownloadOnWiFi;
    CheckBox _EnableAnalytics;
    RadioButton _ManualUpdates;
    RadioGroup _UpdateGroup;

    public static ConfigureAutomaticUpdatesFragment newInstance(String str) {
        if (TAG.equals(str)) {
            return new ConfigureAutomaticUpdatesFragment();
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
        this._Content = layoutInflater.inflate(R.layout.first_run_config_auto_updates_fragment, (ViewGroup) null);
        this._DownloadOnWiFi = (CheckBox) this._Content.findViewById(R.id.downloadOnWiFi);
        this._EnableAnalytics = (CheckBox) this._Content.findViewById(R.id.enableAnalytics);
        this._AutomaticUpdates = (RadioButton) this._Content.findViewById(R.id.automaticDownloads);
        this._ManualUpdates = (RadioButton) this._Content.findViewById(R.id.manualDownloads);
        this._UpdateGroup = (RadioGroup) this._Content.findViewById(R.id.autoUpdateGroup);
        this._DownloadOnWiFi.setChecked(true);
        this._EnableAnalytics.setChecked(true);
        this._AutomaticUpdates.setChecked(true);
        this._DownloadOnWiFi.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() { // from class: mobi.beyondpod.ui.views.onboarding.startup.ConfigureAutomaticUpdatesFragment.1
            @Override // android.widget.CompoundButton.OnCheckedChangeListener
            public void onCheckedChanged(CompoundButton compoundButton, boolean z) {
                ConfigureAutomaticUpdatesFragment.this.notifySelectionChanged();
            }
        });
        this._EnableAnalytics.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() { // from class: mobi.beyondpod.ui.views.onboarding.startup.ConfigureAutomaticUpdatesFragment.2
            @Override // android.widget.CompoundButton.OnCheckedChangeListener
            public void onCheckedChanged(CompoundButton compoundButton, boolean z) {
                ConfigureAutomaticUpdatesFragment.this.notifySelectionChanged();
            }
        });
        this._UpdateGroup.setOnCheckedChangeListener(new RadioGroup.OnCheckedChangeListener() { // from class: mobi.beyondpod.ui.views.onboarding.startup.ConfigureAutomaticUpdatesFragment.3
            @Override // android.widget.RadioGroup.OnCheckedChangeListener
            public void onCheckedChanged(RadioGroup radioGroup, int i) {
                ConfigureAutomaticUpdatesFragment.this.notifySelectionChanged();
            }
        });
        return this._Content;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void notifySelectionChanged() {
        ((FirstRun) getActivity()).downloadOptionsChanged(this._AutomaticUpdates.isChecked(), this._DownloadOnWiFi.isChecked(), this._EnableAnalytics.isChecked());
    }

    @Override // android.support.v4.app.Fragment, android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        int dimensionPixelSize = getResources().getDimensionPixelSize(R.dimen.first_run_sample_content_grid_h_margin);
        this._Content.setPadding(dimensionPixelSize, this._Content.getPaddingTop(), dimensionPixelSize, this._Content.getPaddingBottom());
    }

    @Override // android.support.v4.app.Fragment
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putString(KEY_CONTENT, null);
    }
}
