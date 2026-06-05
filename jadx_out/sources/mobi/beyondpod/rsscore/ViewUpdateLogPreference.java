package mobi.beyondpod.rsscore;

import android.content.Context;
import android.preference.Preference;
import android.text.format.DateUtils;
import android.util.AttributeSet;
import android.view.View;
import java.io.File;
import java.util.ArrayList;
import mobi.beyondpod.R;
import mobi.beyondpod.rsscore.helpers.CoreHelper;
import mobi.beyondpod.ui.commands.CommandManager;

/* loaded from: classes.dex */
public class ViewUpdateLogPreference extends Preference {
    public ViewUpdateLogPreference(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        refreshLatestLogDate();
    }

    public void refresh() {
        refreshLatestLogDate();
    }

    private void refreshLatestLogDate() {
        ArrayList<File> updateLogs = CoreHelper.getUpdateLogs();
        if (updateLogs.size() == 0) {
            setSummary("");
        } else if (updateLogs.size() > 0) {
            setSummary(getContext().getString(R.string.settings_view_update_log_message, DateUtils.formatDateTime(getContext(), updateLogs.get(0).lastModified(), 526865)));
        }
    }

    @Override // android.preference.Preference
    protected void onBindView(View view) {
        refreshLatestLogDate();
        super.onBindView(view);
    }

    @Override // android.preference.Preference
    protected void onClick() {
        CommandManager.cmdShowUpdateLog(getContext());
    }
}
