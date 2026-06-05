package mobi.beyondpod.rsscore;

import android.content.Context;
import android.preference.Preference;
import android.util.AttributeSet;
import mobi.beyondpod.ui.commands.CommandManager;

/* loaded from: classes.dex */
public class AggregatorPreference extends Preference {
    public static final String KEY = "DisconnectAggregatorFeeds";

    public AggregatorPreference(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    @Override // android.preference.Preference
    protected void onClick() {
        CommandManager.cmdDisconnectAggregatorDialog();
    }
}
