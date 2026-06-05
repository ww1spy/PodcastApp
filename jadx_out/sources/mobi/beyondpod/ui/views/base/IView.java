package mobi.beyondpod.ui.views.base;

import android.view.Menu;
import android.view.MenuItem;
import mobi.beyondpod.ui.views.base.TitleBar;

/* loaded from: classes.dex */
public interface IView {
    TitleBar.TitleInfo getViewTitle();

    boolean handleOptionsMenu(int i, MenuItem menuItem);

    void onAfterActivate();

    void onAfterDeactivate();

    void onBeforeActivate();

    boolean prepareOptionsMenu(Menu menu);
}
