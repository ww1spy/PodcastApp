package mobi.beyondpod.ui.views.onboarding.core;

import android.content.res.Resources;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;
import java.util.Locale;
import mobi.beyondpod.BeyondPodApplication;
import mobi.beyondpod.R;

/* loaded from: classes.dex */
public class AssetHelper {
    private String _AssetFolder;
    private Locale _Locale;
    private String _ScreenSizeCorrection;

    public AssetHelper(String str) {
        this._AssetFolder = str;
        Resources resources = BeyondPodApplication.getInstance().getResources();
        this._Locale = BeyondPodApplication.getInstance().getLocale();
        this._ScreenSizeCorrection = "hdpi";
        if (BeyondPodApplication.getInstance().getResources().getInteger(R.integer.screen_size) > 300) {
            this._ScreenSizeCorrection = "large";
        } else if (resources.getDisplayMetrics().density <= 1.0f) {
            this._ScreenSizeCorrection = "mdpi";
        }
    }

    public List<String> loadPages() {
        String[] strArr;
        ArrayList arrayList = new ArrayList();
        try {
            strArr = BeyondPodApplication.getInstance().getApplicationContext().getResources().getAssets().list(this._AssetFolder);
        } catch (IOException unused) {
            strArr = null;
        }
        if (strArr != null) {
            for (String str : strArr) {
                if (str.startsWith("page") && str.endsWith("html")) {
                    arrayList.add(String.format("file:///android_asset/%s/%s?screen=%s&hl=%s", this._AssetFolder, str, this._ScreenSizeCorrection, this._Locale.toString()));
                }
            }
        }
        Collections.sort(arrayList, new Comparator<String>() { // from class: mobi.beyondpod.ui.views.onboarding.core.AssetHelper.1
            @Override // java.util.Comparator
            public int compare(String str2, String str3) {
                if (str2 == null && str3 == null) {
                    return 0;
                }
                if (str2 != null && str3 == null) {
                    return 1;
                }
                if (str2 != null || str3 == null) {
                    return str2.compareToIgnoreCase(str3);
                }
                return -1;
            }
        });
        return arrayList;
    }
}
