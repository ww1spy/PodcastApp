package mobi.beyondpod.ui.views.base;

import android.content.Context;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.widget.AdapterView;
import android.widget.ListView;
import android.widget.Toast;

/* loaded from: classes.dex */
public class ListViewEx extends ListView implements AdapterView.OnItemClickListener {
    public volatile boolean ViewIsScrolling;

    public boolean canScrollLeft() {
        return false;
    }

    public boolean canScrollRight() {
        return false;
    }

    public void setEmptyText(String str) {
    }

    public ListViewEx(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.ViewIsScrolling = false;
        initializeView();
    }

    public ListViewEx(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.ViewIsScrolling = false;
        initializeView();
    }

    public ListViewEx(Context context) {
        super(context);
        this.ViewIsScrolling = false;
        initializeView();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void initializeView() {
        setOnItemClickListener(this);
    }

    @Override // android.widget.AbsListView, android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        return super.onTouchEvent(motionEvent);
    }

    @Override // android.widget.AdapterView.OnItemClickListener
    public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
        OnItemSelected(i);
    }

    protected void OnItemSelected(int i) {
        Toast.makeText(getContext(), "Selected", 0).show();
    }
}
