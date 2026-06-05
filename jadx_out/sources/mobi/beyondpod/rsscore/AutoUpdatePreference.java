package mobi.beyondpod.rsscore;

import android.content.Context;
import android.preference.Preference;
import android.util.AttributeSet;
import android.view.View;
import java.util.Iterator;
import mobi.beyondpod.R;
import mobi.beyondpod.rsscore.categories.CategoryManager;
import mobi.beyondpod.rsscore.categories.FeedCategory;
import mobi.beyondpod.rsscore.helpers.CoreHelper;
import mobi.beyondpod.rsscore.helpers.StringUtils;
import mobi.beyondpod.schedulercore.OperationBase;
import mobi.beyondpod.schedulercore.OperationUpdateCategory;
import mobi.beyondpod.schedulercore.ScheduledTask;
import mobi.beyondpod.schedulercore.ScheduledTasksManager;

/* loaded from: classes.dex */
public class AutoUpdatePreference extends Preference {
    private static final String UPDATES_ARE_SCHEDULED_FOR_CATEGORIES = CoreHelper.loadResourceString(R.string.updates_are_scheduled_for_categories);
    private static final String THERE_ARE_NO_SCHEDULED_UPDATES = CoreHelper.loadResourceString(R.string.there_are_no_scheduled_updates);

    @Override // android.preference.Preference
    protected void onClick() {
    }

    public AutoUpdatePreference(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        refreshWhatIsScheduled();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void refreshWhatIsScheduled() {
        String str = "";
        Iterator<ScheduledTask> it = ScheduledTasksManager.activeTasks().iterator();
        while (it.hasNext()) {
            OperationBase operation = it.next().operation();
            if (operation != null && (operation instanceof OperationUpdateCategory)) {
                if (str.length() > 0) {
                    str = str + ", ";
                }
                FeedCategory categoryByValue = CategoryManager.getCategoryByValue(((OperationUpdateCategory) operation).getCategoryToUpdate());
                if (categoryByValue != null) {
                    str = str + categoryByValue.name();
                }
            }
        }
        if (StringUtils.isNullOrEmpty(str)) {
            setSummary(THERE_ARE_NO_SCHEDULED_UPDATES);
            return;
        }
        setSummary(UPDATES_ARE_SCHEDULED_FOR_CATEGORIES + ": " + str.trim());
    }

    @Override // android.preference.Preference
    protected void onBindView(View view) {
        refreshWhatIsScheduled();
        super.onBindView(view);
    }
}
