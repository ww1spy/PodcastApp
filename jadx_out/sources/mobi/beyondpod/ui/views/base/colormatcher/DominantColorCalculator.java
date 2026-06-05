package mobi.beyondpod.ui.views.base.colormatcher;

import android.graphics.Bitmap;
import android.graphics.Color;
import android.support.v7.graphics.Palette;
import mobi.beyondpod.rsscore.helpers.CoreHelper;

/* loaded from: classes.dex */
public class DominantColorCalculator {
    private static final String LOG_TAG = "DominantColorCalculator";
    private static final int NUM_COLORS = 6;
    private static ColorScheme _DefaultColors = new ColorScheme(Color.rgb(20, 80, 10), Color.rgb(20, 80, 10), Color.argb(115, 255, 255, 255), Color.argb(200, 255, 255, 255), Color.rgb(180, 180, 180), Color.rgb(90, 90, 90), Color.rgb(20, 80, 10), Color.rgb(20, 80, 10), Color.rgb(20, 80, 10));
    private ColorScheme mColorScheme;
    private Palette.Swatch primarySwatch = null;

    public static ColorScheme getColorScheme(Bitmap bitmap) {
        try {
            return new DominantColorCalculator(bitmap).getColorScheme();
        } catch (Exception e) {
            CoreHelper.writeTraceEntry(LOG_TAG, "failed to generate dominant color! reason:" + e.getMessage());
            return _DefaultColors;
        }
    }

    public static ColorScheme getDefaultColors() {
        return _DefaultColors;
    }

    private DominantColorCalculator(Bitmap bitmap) {
        Palette generate = new Palette.Builder(bitmap).maximumColorCount(6).generate();
        this.mColorScheme = new ColorScheme(generate.getVibrantColor(generate.getMutedColor(_DefaultColors.MutedColor)), generate.getMutedColor(_DefaultColors.MutedColor), generate.getLightVibrantColor(_DefaultColors.LightVibrantColor), generate.getDarkVibrantColor(_DefaultColors.DarkVibrantColor), generate.getLightMutedColor(_DefaultColors.LightMutedColor), generate.getDarkMutedColor(_DefaultColors.DarkMutedColor), getPrimaryColor(generate), getSecondaryColor(generate), getPrimaryVibrantColor(generate));
    }

    private ColorScheme getColorScheme() {
        return this.mColorScheme;
    }

    private int getPrimaryColor(Palette palette) {
        for (Palette.Swatch swatch : palette.getSwatches()) {
            if (this.primarySwatch == null || this.primarySwatch.getPopulation() < swatch.getPopulation()) {
                this.primarySwatch = swatch;
            }
        }
        if (this.primarySwatch != null) {
            return this.primarySwatch.getRgb();
        }
        return 0;
    }

    private int getSecondaryColor(Palette palette) {
        Palette.Swatch swatch = null;
        for (Palette.Swatch swatch2 : palette.getSwatches()) {
            if (swatch == null || (swatch.getPopulation() < swatch2.getPopulation() && this.primarySwatch.hashCode() != swatch2.hashCode())) {
                swatch = swatch2;
            }
        }
        if (swatch != null) {
            return swatch.getRgb();
        }
        return 0;
    }

    private int getPrimaryVibrantColor(Palette palette) {
        Palette.Swatch vibrantSwatch = palette.getVibrantSwatch();
        if (vibrantSwatch == null) {
            vibrantSwatch = palette.getMutedSwatch();
        }
        if (this.primarySwatch != null && vibrantSwatch != null) {
            if (vibrantSwatch.getPopulation() > this.primarySwatch.getPopulation() * 0.8d) {
                return vibrantSwatch.getRgb();
            }
            return this.primarySwatch.getRgb();
        }
        if (vibrantSwatch != null) {
            return vibrantSwatch.getRgb();
        }
        if (this.primarySwatch != null) {
            return this.primarySwatch.getRgb();
        }
        return 0;
    }
}
