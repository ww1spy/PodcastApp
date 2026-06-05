package mobi.beyondpod.ui.views.base;

import android.content.Context;
import android.util.AttributeSet;
import android.view.ViewConfiguration;
import android.widget.SeekBar;

/* loaded from: classes.dex */
public class SeekBarEx extends SeekBar {
    boolean _WasDragged;
    private int mScaledTouchSlop;
    float mTouchDownX;

    public SeekBarEx(Context context) {
        super(context);
        this._WasDragged = false;
        initialize();
    }

    public SeekBarEx(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this._WasDragged = false;
        initialize();
    }

    public SeekBarEx(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this._WasDragged = false;
        initialize();
    }

    private void initialize() {
        this.mScaledTouchSlop = ViewConfiguration.get(getContext()).getScaledTouchSlop();
    }

    public boolean wasDragged() {
        return this._WasDragged;
    }
}
