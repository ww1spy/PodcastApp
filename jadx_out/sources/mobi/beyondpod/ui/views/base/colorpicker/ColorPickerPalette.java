package mobi.beyondpod.ui.views.base.colorpicker;

import android.content.Context;
import android.content.res.Resources;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TableLayout;
import android.widget.TableRow;
import mobi.beyondpod.R;
import mobi.beyondpod.ui.views.base.colorpicker.ColorPickerSwatch;

/* loaded from: classes.dex */
public class ColorPickerPalette extends TableLayout {
    private int mMarginSize;
    private int mNumColumns;
    public ColorPickerSwatch.OnColorSelectedListener mOnColorSelectedListener;
    private int mSwatchLength;

    public ColorPickerPalette(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public ColorPickerPalette(Context context) {
        super(context);
    }

    public void init(int i, ColorPickerSwatch.OnColorSelectedListener onColorSelectedListener) {
        this.mNumColumns = i;
        Resources resources = getResources();
        this.mSwatchLength = resources.getDimensionPixelSize(R.dimen.color_picker_swatch_length);
        this.mMarginSize = resources.getDimensionPixelSize(R.dimen.color_picker_swatch_margin);
        this.mOnColorSelectedListener = onColorSelectedListener;
    }

    private TableRow createTableRow() {
        TableRow tableRow = new TableRow(getContext());
        tableRow.setLayoutParams(new ViewGroup.LayoutParams(-2, -2));
        return tableRow;
    }

    public void drawPalette(int[] iArr, int i) {
        if (iArr == null) {
            return;
        }
        removeAllViews();
        TableRow createTableRow = createTableRow();
        int i2 = 0;
        int i3 = 0;
        for (int i4 : iArr) {
            addSwatchToRow(createTableRow, createColorSwatch(i4, i), i2);
            i3++;
            if (i3 == this.mNumColumns) {
                addView(createTableRow);
                createTableRow = createTableRow();
                i2++;
                i3 = 0;
            }
        }
        if (i3 > 0) {
            while (i3 != this.mNumColumns) {
                addSwatchToRow(createTableRow, createBlankSpace(), i2);
                i3++;
            }
            addView(createTableRow);
        }
    }

    private void addSwatchToRow(TableRow tableRow, View view, int i) {
        if (i % 2 == 0) {
            tableRow.addView(view);
        } else {
            tableRow.addView(view, 0);
        }
    }

    private ImageView createBlankSpace() {
        ImageView imageView = new ImageView(getContext());
        TableRow.LayoutParams layoutParams = new TableRow.LayoutParams(this.mSwatchLength, this.mSwatchLength);
        layoutParams.setMargins(this.mMarginSize, this.mMarginSize, this.mMarginSize, this.mMarginSize);
        imageView.setLayoutParams(layoutParams);
        return imageView;
    }

    private ColorPickerSwatch createColorSwatch(int i, int i2) {
        ColorPickerSwatch colorPickerSwatch = new ColorPickerSwatch(getContext(), i, i == i2, this.mOnColorSelectedListener);
        TableRow.LayoutParams layoutParams = new TableRow.LayoutParams(this.mSwatchLength, this.mSwatchLength);
        layoutParams.setMargins(this.mMarginSize, this.mMarginSize, this.mMarginSize, this.mMarginSize);
        colorPickerSwatch.setLayoutParams(layoutParams);
        return colorPickerSwatch;
    }
}
