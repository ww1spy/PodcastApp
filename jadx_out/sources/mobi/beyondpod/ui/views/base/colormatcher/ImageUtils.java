package mobi.beyondpod.ui.views.base.colormatcher;

import android.graphics.Color;
import android.support.v7.graphics.Palette;

/* loaded from: classes.dex */
public class ImageUtils {

    /* loaded from: classes.dex */
    public static class FloatUtils {
        static final /* synthetic */ boolean $assertionsDisabled = false;

        public static float weightedAverage(float... fArr) {
            float f = 0.0f;
            float f2 = 0.0f;
            for (int i = 0; i < fArr.length; i += 2) {
                float f3 = fArr[i];
                float f4 = fArr[i + 1];
                f += f3 * f4;
                f2 += f4;
            }
            return f / f2;
        }
    }

    /* loaded from: classes.dex */
    public static class ColorUtils {
        public static int darken(int i, float f) {
            return blendColors(-16777216, i, f);
        }

        public static int lighten(int i, float f) {
            return blendColors(-1, i, f);
        }

        public static final int calculateYiqLuma(int i) {
            return Math.round((((299 * Color.red(i)) + (587 * Color.green(i))) + (114 * Color.green(i))) / 1000.0f);
        }

        public static int blendColors(int i, int i2, float f) {
            float f2 = 1.0f - f;
            return Color.rgb((int) ((Color.red(i) * f) + (Color.red(i2) * f2)), (int) ((Color.green(i) * f) + (Color.green(i2) * f2)), (int) ((Color.blue(i) * f) + (Color.blue(i2) * f2)));
        }

        public static final int changeBrightness(int i, float f) {
            return calculateYiqLuma(i) >= 128 ? darken(i, f) : lighten(i, f);
        }

        public static final int calculateContrast(Palette.Swatch swatch, Palette.Swatch swatch2) {
            return Math.abs(calculateYiqLuma(swatch.getRgb()) - calculateYiqLuma(swatch2.getRgb()));
        }

        public static final float calculateColorfulness(Palette.Swatch swatch) {
            float[] hsl = swatch.getHsl();
            return hsl[1] * hsl[2];
        }
    }
}
