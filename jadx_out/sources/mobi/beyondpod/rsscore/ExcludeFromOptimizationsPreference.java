package mobi.beyondpod.rsscore;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.preference.Preference;
import android.util.AttributeSet;
import android.view.View;
import android.widget.Toast;
import mobi.beyondpod.R;
import mobi.beyondpod.rsscore.helpers.CoreHelper;

/* loaded from: classes.dex */
public class ExcludeFromOptimizationsPreference extends Preference {
    public static String KEY = "ExcludeBatteryOptimizations";

    public ExcludeFromOptimizationsPreference(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        refreshSummary();
    }

    public void refresh() {
        refreshSummary();
    }

    private void refreshSummary() {
        setSummary(getContext().getString(CoreHelper.isWhiteListed() ? R.string.settings_update_optimizations_already_excluded_summary : R.string.settings_update_optimizations_exclude_summary));
    }

    @Override // android.preference.Preference
    protected void onBindView(View view) {
        refreshSummary();
        super.onBindView(view);
    }

    @Override // android.preference.Preference
    protected void onClick() {
        try {
            Intent intent = new Intent();
            if (CoreHelper.isWhiteListed()) {
                intent.setAction("android.settings.IGNORE_BATTERY_OPTIMIZATION_SETTINGS");
            } else {
                intent.setAction("android.settings.REQUEST_IGNORE_BATTERY_OPTIMIZATIONS");
                intent.setData(Uri.parse("package:" + getContext().getPackageName()));
            }
            getContext().startActivity(intent);
        } catch (Exception e) {
            Toast.makeText(getContext(), e.getMessage(), 1).show();
        }
    }
}
