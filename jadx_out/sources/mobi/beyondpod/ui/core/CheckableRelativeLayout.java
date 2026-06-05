package mobi.beyondpod.ui.core;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Checkable;
import android.widget.RelativeLayout;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes.dex */
public class CheckableRelativeLayout extends RelativeLayout implements Checkable {
    private boolean _checkDisabled;
    private List<Checkable> _checkableChildren;
    private boolean _isChecked;

    public CheckableRelativeLayout(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        initialise(attributeSet);
    }

    public CheckableRelativeLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        initialise(attributeSet);
    }

    public CheckableRelativeLayout(Context context, int i) {
        super(context);
        initialise(null);
    }

    @Override // android.widget.Checkable
    public boolean isChecked() {
        return this._isChecked;
    }

    @Override // android.widget.Checkable
    public void setChecked(boolean z) {
        if (this._checkDisabled) {
            return;
        }
        this._isChecked = z;
        Iterator<Checkable> it = this._checkableChildren.iterator();
        while (it.hasNext()) {
            it.next().setChecked(z);
        }
    }

    @Override // android.widget.Checkable
    public void toggle() {
        if (this._checkDisabled) {
            return;
        }
        this._isChecked = !this._isChecked;
        Iterator<Checkable> it = this._checkableChildren.iterator();
        while (it.hasNext()) {
            it.next().toggle();
        }
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        super.onFinishInflate();
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            findCheckableChildren(getChildAt(i));
        }
    }

    private void initialise(AttributeSet attributeSet) {
        this._isChecked = false;
        this._checkableChildren = new ArrayList(5);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private void findCheckableChildren(View view) {
        if (view instanceof Checkable) {
            this._checkableChildren.add((Checkable) view);
        }
        if (view instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view;
            int childCount = viewGroup.getChildCount();
            for (int i = 0; i < childCount; i++) {
                findCheckableChildren(viewGroup.getChildAt(i));
            }
        }
    }

    public void setCheckDisabled(boolean z) {
        this._checkDisabled = z;
    }
}
