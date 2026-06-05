package mobi.beyondpod.rsscore;

import android.content.Context;
import android.preference.Preference;
import android.util.AttributeSet;
import android.view.View;
import java.util.Date;
import mobi.beyondpod.R;
import mobi.beyondpod.rsscore.helpers.DateTime;
import mobi.beyondpod.sync.ChangeTracker;

/* loaded from: classes.dex */
public class CrossDeviceSyncPreference extends Preference {
    public static final CharSequence PREFERENCE_KEY = "CrossDeviceSync";

    public CrossDeviceSyncPreference(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        refreshLastSync();
    }

    public void refresh() {
        refreshLastSync();
    }

    private void refreshLastSync() {
        if (!ChangeTracker.isTrackingEnabled()) {
            setSummary(getContext().getString(R.string.settings_cds_summary));
        } else if (Configuration.lastSyncTimeStamp() > 0) {
            setSummary(getContext().getString(R.string.cds_last_sync, DateTime.formatDateTime(new Date(Configuration.lastSyncTimeStamp()))));
        } else {
            setSummary("");
        }
        setEnabled(ChangeTracker.isSyncLicenseValid());
    }

    @Override // android.preference.Preference
    protected void onBindView(View view) {
        refreshLastSync();
        super.onBindView(view);
    }
}
