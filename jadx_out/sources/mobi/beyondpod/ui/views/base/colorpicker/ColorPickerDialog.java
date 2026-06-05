package mobi.beyondpod.ui.views.base.colorpicker;

import android.app.Activity;
import android.app.AlertDialog;
import android.app.Dialog;
import android.app.DialogFragment;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ProgressBar;
import mobi.beyondpod.R;
import mobi.beyondpod.ui.views.base.colorpicker.ColorPickerSwatch;

/* loaded from: classes.dex */
public class ColorPickerDialog extends DialogFragment implements ColorPickerSwatch.OnColorSelectedListener {
    protected static final String KEY_COLORS = "colors";
    protected static final String KEY_COLUMNS = "columns";
    protected static final String KEY_SELECTED_COLOR = "selected_color";
    protected static final String KEY_TITLE_ID = "title_id";
    protected AlertDialog mAlertDialog;
    protected int mColumns;
    protected ColorPickerSwatch.OnColorSelectedListener mListener;
    private ColorPickerPalette mPalette;
    private ProgressBar mProgress;
    protected int mSelectedColor;
    protected int mTitleResId = R.string.color_picker_pick_a_category_color;
    protected int[] mColors = null;

    public void setArguments(int i, int[] iArr, int i2, int i3) {
        Bundle bundle = new Bundle();
        bundle.putInt(KEY_TITLE_ID, i);
        bundle.putInt(KEY_COLUMNS, i3);
        bundle.putIntArray(KEY_COLORS, iArr);
        bundle.putInt(KEY_SELECTED_COLOR, i2);
        setArguments(bundle);
    }

    public void setOnColorSelectedListener(ColorPickerSwatch.OnColorSelectedListener onColorSelectedListener) {
        this.mListener = onColorSelectedListener;
    }

    @Override // android.app.DialogFragment, android.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (getArguments() != null) {
            this.mTitleResId = getArguments().getInt(KEY_TITLE_ID);
            this.mColumns = getArguments().getInt(KEY_COLUMNS);
            this.mColors = getArguments().getIntArray(KEY_COLORS);
            this.mSelectedColor = getArguments().getInt(KEY_SELECTED_COLOR);
        }
        if (bundle != null) {
            this.mColors = bundle.getIntArray(KEY_COLORS);
            this.mSelectedColor = ((Integer) bundle.getSerializable(KEY_SELECTED_COLOR)).intValue();
        }
    }

    @Override // android.app.DialogFragment
    public Dialog onCreateDialog(Bundle bundle) {
        Activity activity = getActivity();
        View inflate = LayoutInflater.from(getActivity()).inflate(R.layout.category_color_picker_dialog, (ViewGroup) null);
        this.mProgress = (ProgressBar) inflate.findViewById(android.R.id.progress);
        this.mPalette = (ColorPickerPalette) inflate.findViewById(R.id.color_picker);
        this.mPalette.init(this.mColumns, this);
        if (this.mColors != null) {
            showPaletteView();
        }
        this.mAlertDialog = new AlertDialog.Builder(activity).setTitle(this.mTitleResId).setView(inflate).create();
        return this.mAlertDialog;
    }

    @Override // mobi.beyondpod.ui.views.base.colorpicker.ColorPickerSwatch.OnColorSelectedListener
    public void onColorSelected(int i) {
        if (this.mListener != null) {
            this.mListener.onColorSelected(i);
        }
        if (getTargetFragment() instanceof ColorPickerSwatch.OnColorSelectedListener) {
            ((ColorPickerSwatch.OnColorSelectedListener) getTargetFragment()).onColorSelected(i);
        }
        if (i != this.mSelectedColor) {
            this.mSelectedColor = i;
            this.mPalette.drawPalette(this.mColors, this.mSelectedColor);
        }
        dismiss();
    }

    public void showPaletteView() {
        if (this.mProgress == null || this.mPalette == null) {
            return;
        }
        this.mProgress.setVisibility(8);
        refreshPalette();
        this.mPalette.setVisibility(0);
    }

    public void showProgressBarView() {
        if (this.mProgress == null || this.mPalette == null) {
            return;
        }
        this.mProgress.setVisibility(0);
        this.mPalette.setVisibility(8);
    }

    public void setColors(int[] iArr, int i) {
        if (this.mColors == iArr && this.mSelectedColor == i) {
            return;
        }
        this.mColors = iArr;
        this.mSelectedColor = i;
        refreshPalette();
    }

    public void setColors(int[] iArr) {
        if (this.mColors != iArr) {
            this.mColors = iArr;
            refreshPalette();
        }
    }

    public void setSelectedColor(int i) {
        if (this.mSelectedColor != i) {
            this.mSelectedColor = i;
            refreshPalette();
        }
    }

    private void refreshPalette() {
        if (this.mPalette == null || this.mColors == null) {
            return;
        }
        this.mPalette.drawPalette(this.mColors, this.mSelectedColor);
    }

    public int[] getColors() {
        return this.mColors;
    }

    public int getSelectedColor() {
        return this.mSelectedColor;
    }

    @Override // android.app.DialogFragment, android.app.Fragment
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putIntArray(KEY_COLORS, this.mColors);
        bundle.putSerializable(KEY_SELECTED_COLOR, Integer.valueOf(this.mSelectedColor));
    }
}
