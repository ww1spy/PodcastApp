package mobi.beyondpod.ui.views.base;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.ColorMatrix;
import android.graphics.ColorMatrixColorFilter;
import android.graphics.Paint;
import android.graphics.Rect;
import android.os.Parcel;
import android.os.Parcelable;
import android.support.v4.content.ContextCompat;
import android.util.AttributeSet;
import android.view.View;
import mobi.beyondpod.R;
import mobi.beyondpod.ui.core.volley.FadingNetworkImageViewTrack;

/* loaded from: classes.dex */
public class ProgressImageView extends FadingNetworkImageViewTrack {
    private int _BGSize;
    private ColorMatrixColorFilter _ColorFilter;
    private int _Max;
    private int _Progress;
    private Paint _ProgressBGPaint;
    private Paint _ProgressPaint;
    private int _ProgressSize;
    private Rect _TempRect;
    private Paint _TrackPaint;

    public ProgressImageView(Context context) {
        super(context);
        this._Max = 100;
        this._TempRect = new Rect();
        init(context, null, 0);
    }

    public ProgressImageView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this._Max = 100;
        this._TempRect = new Rect();
        init(context, attributeSet, 0);
    }

    public ProgressImageView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this._Max = 100;
        this._TempRect = new Rect();
        init(context, attributeSet, i);
    }

    private void init(Context context, AttributeSet attributeSet, int i) {
        this._Max = 100;
        this._Progress = 0;
        getResources();
        int color = ContextCompat.getColor(getContext(), R.color.progressImageView_bg);
        int color2 = ContextCompat.getColor(getContext(), R.color.progressImageView_progress);
        int color3 = ContextCompat.getColor(getContext(), R.color.progressImageView_track);
        if (attributeSet != null) {
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, mobi.beyondpod.evo.R.styleable.ProgressImageView, i, 0);
            this._BGSize = obtainStyledAttributes.getDimensionPixelSize(1, 12);
            this._ProgressSize = obtainStyledAttributes.getDimensionPixelSize(4, 4);
            color = obtainStyledAttributes.getColor(0, color);
            color2 = obtainStyledAttributes.getColor(3, color2);
            color3 = obtainStyledAttributes.getColor(5, color3);
            obtainStyledAttributes.recycle();
        }
        this._ProgressBGPaint = new Paint();
        this._ProgressBGPaint.setColor(color);
        this._ProgressBGPaint.setAntiAlias(true);
        this._ProgressPaint = new Paint();
        this._ProgressPaint.setColor(color2);
        this._ProgressPaint.setAntiAlias(true);
        this._TrackPaint = new Paint();
        this._TrackPaint.setColor(color3);
        this._TrackPaint.setAntiAlias(true);
        this._ColorFilter = new ColorMatrixColorFilter(new ColorMatrix(new float[]{0.33f, 0.33f, 0.34f, 0.0f, 80.0f, 0.33f, 0.33f, 0.34f, 0.0f, 80.0f, 0.33f, 0.33f, 0.34f, 0.0f, 80.0f, 0.0f, 0.0f, 0.0f, 0.4f, 0.0f}));
    }

    public int getMax() {
        return this._Max;
    }

    public void setMax(int i) {
        this._Max = i;
        invalidate();
    }

    public int getProgress() {
        return this._Progress;
    }

    public void setProgress(int i) {
        this._Progress = i;
        dimImageInternal(this._Progress == this._Max);
        invalidate();
    }

    public void dimImage(boolean z) {
        this._Progress = 0;
        dimImageInternal(z);
        invalidate();
    }

    private void dimImageInternal(boolean z) {
        setColorFilter(z ? this._ColorFilter : null);
    }

    @Override // android.view.View
    protected void dispatchDraw(Canvas canvas) {
        super.dispatchDraw(canvas);
        if (this._Progress == 0) {
            return;
        }
        this._TempRect.set(0, getHeight() - this._BGSize, getWidth(), getHeight());
        canvas.drawRect(this._TempRect, this._ProgressBGPaint);
        int i = this._TempRect.bottom - this._ProgressSize;
        this._TempRect.set(0, i, getWidth(), this._ProgressSize + i);
        if (this._Progress == this._Max) {
            canvas.drawRect(this._TempRect, this._ProgressPaint);
        } else {
            int max = (int) Math.max(5.0f, getWidth() * (this._Progress / this._Max));
            this._TempRect.set(0, i, max, this._ProgressSize + i);
            canvas.drawRect(this._TempRect, this._ProgressPaint);
            this._TempRect.set(max, i, getWidth(), this._ProgressSize + i);
            canvas.drawRect(this._TempRect, this._TrackPaint);
        }
        this._TempRect.set(0, i, getWidth(), this._ProgressSize + i);
    }

    @Override // android.view.View
    public Parcelable onSaveInstanceState() {
        Parcelable onSaveInstanceState = super.onSaveInstanceState();
        if (!isSaveEnabled()) {
            return onSaveInstanceState;
        }
        SavedState savedState = new SavedState(onSaveInstanceState);
        savedState.mMax = this._Max;
        savedState.mProgress = this._Progress;
        return savedState;
    }

    @Override // android.view.View
    public void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof SavedState)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.getSuperState());
        this._Max = savedState.mMax;
        this._Progress = savedState.mProgress;
    }

    /* loaded from: classes.dex */
    public static class SavedState extends View.BaseSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new Parcelable.Creator<SavedState>() { // from class: mobi.beyondpod.ui.views.base.ProgressImageView.SavedState.1
            @Override // android.os.Parcelable.Creator
            public SavedState createFromParcel(Parcel parcel) {
                return new SavedState(parcel);
            }

            @Override // android.os.Parcelable.Creator
            public SavedState[] newArray(int i) {
                return new SavedState[i];
            }
        };
        private int mMax;
        private int mProgress;
        private int mState;

        public SavedState(Parcelable parcelable) {
            super(parcelable);
        }

        private SavedState(Parcel parcel) {
            super(parcel);
            this.mProgress = parcel.readInt();
            this.mMax = parcel.readInt();
            this.mState = parcel.readInt();
        }

        @Override // android.view.View.BaseSavedState, android.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeInt(this.mProgress);
            parcel.writeInt(this.mMax);
            parcel.writeInt(this.mState);
        }
    }
}
