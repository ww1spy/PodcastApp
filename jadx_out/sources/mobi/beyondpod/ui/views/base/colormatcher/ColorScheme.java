package mobi.beyondpod.ui.views.base.colormatcher;

import android.graphics.Color;

/* loaded from: classes.dex */
public class ColorScheme {
    public final int DarkMutedColor;
    public final int DarkVibrantColor;
    public final int LightMutedColor;
    public final int LightVibrantColor;
    public final int MutedColor;
    public final int PrimaryColor;
    public final int PrimaryVibrantColor;
    public final int SecondaryColor;
    public final int VibrantColor;

    public ColorScheme(int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8, int i9) {
        this.VibrantColor = i;
        this.MutedColor = i2;
        this.LightVibrantColor = i3;
        this.DarkVibrantColor = i4;
        this.LightMutedColor = i5;
        this.DarkMutedColor = i6;
        this.PrimaryColor = i7;
        this.SecondaryColor = i8;
        this.PrimaryVibrantColor = i9;
    }

    public static int normalizeColor(int i, int i2, int i3) {
        int i4;
        int i5;
        int i6;
        int red = Color.red(i);
        int green = Color.green(i);
        int blue = Color.blue(i);
        int alpha = Color.alpha(i);
        if (red <= i3 || green <= i3 || blue <= i3) {
            i4 = red;
            i5 = green;
            i6 = blue;
        } else {
            int max = Math.max(Math.max(red, green), blue) - i3;
            i4 = red - max;
            i5 = green - max;
            i6 = blue - max;
        }
        if (red < i2 && green < i2 && blue < i2) {
            int min = Math.min(Math.min(red, green), blue);
            i5 = (green + i2) - min;
            i6 = (i2 + blue) - min;
            i4 = (red + i2) - min;
        }
        return Color.argb(alpha, i4, i5, i6);
    }
}
