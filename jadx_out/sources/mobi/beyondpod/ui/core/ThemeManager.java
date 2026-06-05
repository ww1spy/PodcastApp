package mobi.beyondpod.ui.core;

import mobi.beyondpod.rsscore.Configuration;

/* loaded from: classes.dex */
public class ThemeManager {
    public static int activeThemeId() {
        return Configuration.activeTheme() == 1 ? 2131820938 : 2131820937;
    }

    public static boolean isDarkTheme() {
        return Configuration.activeTheme() > 1;
    }
}
