package mobi.beyondpod.ui.views.base.colorpicker;

import android.graphics.Color;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.LayerDrawable;

/* loaded from: classes.dex */
public class ColorStateDrawable extends LayerDrawable {
    private static final float PRESSED_STATE_MULTIPLIER = 0.7f;
    private int mColor;

    @Override // android.graphics.drawable.LayerDrawable, android.graphics.drawable.Drawable
    public boolean isStateful() {
        return true;
    }

    public ColorStateDrawable(Drawable[] drawableArr, int i) {
        super(drawableArr);
        this.mColor = i;
    }

    @Override // android.graphics.drawable.LayerDrawable, android.graphics.drawable.Drawable
    protected boolean onStateChange(int[] iArr) {
        boolean z = false;
        for (int i : iArr) {
            if (i == 16842919 || i == 16842908) {
                z = true;
                break;
            }
        }
        if (z) {
            super.setColorFilter(getPressedColor(this.mColor), PorterDuff.Mode.SRC_ATOP);
        } else {
            super.setColorFilter(this.mColor, PorterDuff.Mode.SRC_ATOP);
        }
        return super.onStateChange(iArr);
    }

    private int getPressedColor(int i) {
        Color.colorToHSV(i, r0);
        float[] fArr = {0.0f, 0.0f, fArr[2] * PRESSED_STATE_MULTIPLIER};
        return Color.HSVToColor(fArr);
    }
}
