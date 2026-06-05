package mobi.beyondpod.rsscore;

import android.content.Context;
import android.util.AttributeSet;
import mobi.beyondpod.ui.commands.CommandManager;

/* loaded from: classes.dex */
public class ScheduledUpdatesPreference extends AutoUpdatePreference {
    public static final String PREFERENCE_KEY = "ScheduledUpdatesPreference";

    public ScheduledUpdatesPreference(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    @Override // mobi.beyondpod.rsscore.AutoUpdatePreference, android.preference.Preference
    protected void onClick() {
        CommandManager.cmdSetUpdateSchedule(null, getContext(), true);
    }

    public void refresh() {
        refreshWhatIsScheduled();
    }
}
