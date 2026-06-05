package mobi.beyondpod.ui.core.mediarouter;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.support.v4.content.ContextCompat;
import android.util.TypedValue;
import android.view.ContextThemeWrapper;
import mobi.beyondpod.R;

/* loaded from: classes.dex */
final class MediaRouterThemeHelper {
    private MediaRouterThemeHelper() {
    }

    public static Context createThemedContext(Context context, boolean z) {
        boolean isLightTheme = isLightTheme(context);
        if (isLightTheme && z) {
            isLightTheme = false;
            context = new ContextThemeWrapper(context, R.style.Theme_AppCompat);
        }
        return new ContextThemeWrapper(context, isLightTheme ? R.style.Theme_MediaRouter_Light : R.style.Theme_MediaRouter);
    }

    public static int getThemeResource(Context context, int i) {
        TypedValue typedValue = new TypedValue();
        if (context.getTheme().resolveAttribute(i, typedValue, true)) {
            return typedValue.resourceId;
        }
        return 0;
    }

    public static Drawable getThemeDrawable(Context context, int i) {
        int themeResource = getThemeResource(context, i);
        Drawable drawable = ContextCompat.getDrawable(context, themeResource);
        if (themeResource != 0) {
            return drawable;
        }
        return null;
    }

    private static boolean isLightTheme(Context context) {
        TypedValue typedValue = new TypedValue();
        return context.getTheme().resolveAttribute(R.attr.isLightTheme, typedValue, true) && typedValue.data != 0;
    }
}
