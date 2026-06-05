package mobi.beyondpod.ui.views.base.colorpicker;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.support.v4.content.ContextCompat;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import mobi.beyondpod.R;

/* loaded from: classes.dex */
public class ColorPickerSwatch extends FrameLayout implements View.OnClickListener {
    private ImageView mCheckmarkImage;
    private int mColor;
    private OnColorSelectedListener mOnColorSelectedListener;
    private ImageView mSwatchImage;

    /* loaded from: classes.dex */
    public interface OnColorSelectedListener {
        void onColorSelected(int i);
    }

    public ColorPickerSwatch(Context context, int i, boolean z, OnColorSelectedListener onColorSelectedListener) {
        super(context);
        this.mColor = i;
        this.mOnColorSelectedListener = onColorSelectedListener;
        LayoutInflater.from(context).inflate(R.layout.category_color_picker_swatch, this);
        this.mSwatchImage = (ImageView) findViewById(R.id.color_picker_swatch);
        this.mCheckmarkImage = (ImageView) findViewById(R.id.color_picker_checkmark);
        setColor(i);
        setChecked(z);
        setOnClickListener(this);
    }

    protected void setColor(int i) {
        if (i == -1) {
            this.mSwatchImage.setImageResource(R.drawable.category_nocolor_swatch);
        } else {
            this.mSwatchImage.setImageDrawable(new ColorStateDrawable(new Drawable[]{ContextCompat.getDrawable(getContext(), R.drawable.category_color_picker_swatch)}, i));
        }
    }

    private void setChecked(boolean z) {
        if (z) {
            this.mCheckmarkImage.setImageResource(this.mColor == -1 ? R.drawable.ic_action_tick_dark : R.drawable.ic_action_tick);
            this.mCheckmarkImage.setVisibility(0);
        } else {
            this.mCheckmarkImage.setVisibility(8);
        }
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        if (this.mOnColorSelectedListener != null) {
            this.mOnColorSelectedListener.onColorSelected(this.mColor);
        }
    }
}
