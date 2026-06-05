package mobi.beyondpod.ui.views.base;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.os.Parcel;
import android.os.Parcelable;
import android.support.v4.content.ContextCompat;
import android.util.AttributeSet;
import android.view.View;
import mobi.beyondpod.R;
import mobi.beyondpod.ui.core.DontPressWithParentImageView;

/* loaded from: classes.dex */
public class DownloadProgressButton extends DontPressWithParentImageView {
    public static final int STATE_DOWNLOAD = 0;
    public static final int STATE_DOWNLOADED = 6;
    public static final int STATE_DOWNLOADING = 3;
    public static final int STATE_DOWNLOADING_UNKNOWN = 4;
    public static final int STATE_DOWNLOAD_ERROR = 5;
    public static final int STATE_DOWNLOAD_PENDING = 1;
    public static final int STATE_RE_DOWNLOAD = 2;
    private Drawable _DownloadPausedDrawable;
    private Drawable _DownloadedDrawable;
    private Drawable _DownloadingDrawable;
    private Drawable _NotDownloadedDrawable;
    private Paint _ProgressBackgroundPaint;
    private Paint _ProgressPaint;
    private Drawable _ReDownloadDrawable;
    private int mInnerSize;
    private int mMax;
    private int mProgress;
    private int mState;
    private RectF mTempRectF;
    private int mUnknownStart;

    public DownloadProgressButton(Context context) {
        super(context);
        this.mMax = 100;
        this.mTempRectF = new RectF();
        this.mState = 0;
        this.mUnknownStart = -90;
        init(context, null, 0);
    }

    public DownloadProgressButton(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mMax = 100;
        this.mTempRectF = new RectF();
        this.mState = 0;
        this.mUnknownStart = -90;
        init(context, attributeSet, 0);
    }

    public DownloadProgressButton(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.mMax = 100;
        this.mTempRectF = new RectF();
        this.mState = 0;
        this.mUnknownStart = -90;
        init(context, attributeSet, i);
    }

    private Drawable getDrawableInternal(Integer num) {
        return ContextCompat.getDrawable(getContext(), num.intValue());
    }

    private Integer getColorInternal(Integer num) {
        return Integer.valueOf(ContextCompat.getColor(getContext(), num.intValue()));
    }

    private void init(Context context, AttributeSet attributeSet, int i) {
        this.mMax = 100;
        this.mProgress = 45;
        Resources resources = getResources();
        int intValue = getColorInternal(Integer.valueOf(R.color.progressDownload_bg)).intValue();
        int intValue2 = getColorInternal(Integer.valueOf(R.color.progressDownload_progress)).intValue();
        this._DownloadedDrawable = getDrawableInternal(Integer.valueOf(R.drawable.ic_card_downloaded));
        this._DownloadedDrawable.setCallback(this);
        this._NotDownloadedDrawable = getDrawableInternal(Integer.valueOf(R.drawable.ic_card_download));
        this._NotDownloadedDrawable.setCallback(this);
        this._DownloadPausedDrawable = getDrawableInternal(Integer.valueOf(R.drawable.ic_card_download_paused));
        this._DownloadPausedDrawable.setCallback(this);
        this._ReDownloadDrawable = getDrawableInternal(Integer.valueOf(R.drawable.ic_card_download_again));
        this._ReDownloadDrawable.setCallback(this);
        this._DownloadingDrawable = getDrawableInternal(Integer.valueOf(R.drawable.ic_card_downloading));
        this._DownloadingDrawable.setCallback(this);
        this.mInnerSize = (int) (this._DownloadedDrawable.getIntrinsicWidth() * 1.1f);
        this._ProgressBackgroundPaint = new Paint();
        this._ProgressBackgroundPaint.setColor(intValue);
        this._ProgressBackgroundPaint.setStyle(Paint.Style.STROKE);
        this._ProgressBackgroundPaint.setStrokeWidth(resources.getDimension(R.dimen.card_download_btn_progress_track_width));
        this._ProgressBackgroundPaint.setAntiAlias(true);
        this._ProgressPaint = new Paint();
        this._ProgressPaint.setColor(intValue2);
        this._ProgressPaint.setStyle(Paint.Style.STROKE);
        this._ProgressPaint.setStrokeCap(Paint.Cap.ROUND);
        this._ProgressPaint.setStrokeWidth(resources.getDimension(R.dimen.card_download_btn_progress_width));
        this._ProgressPaint.setAntiAlias(true);
        setProgress(45);
    }

    public int getMax() {
        return this.mMax;
    }

    public void setMax(int i) {
        this.mMax = i;
        invalidate();
    }

    public int getProgress() {
        return this.mProgress;
    }

    public void setProgress(int i) {
        if (i < 3) {
            i = 3;
        }
        this.mState = 3;
        this.mProgress = i;
        updateButtonFace();
        invalidate();
    }

    public void setDownloadError(int i) {
        this.mState = 5;
        this.mProgress = i;
        updateButtonFace();
        invalidate();
    }

    public void setUnknownProgress(long j) {
        this.mState = 4;
        this.mUnknownStart += 45;
        if (this.mUnknownStart >= 270) {
            this.mUnknownStart = -90;
        }
        updateButtonFace();
        invalidate();
    }

    public int getState() {
        return this.mState;
    }

    public void setState(int i) {
        this.mState = i;
        if (i == 6) {
            this.mProgress = 100;
        } else {
            this.mProgress = 0;
        }
        updateButtonFace();
        invalidate();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.support.v7.widget.AppCompatImageView, android.widget.ImageView, android.view.View
    public void drawableStateChanged() {
        super.drawableStateChanged();
        if (this._DownloadedDrawable.isStateful()) {
            this._DownloadedDrawable.setState(getDrawableState());
        }
        if (this._NotDownloadedDrawable.isStateful()) {
            this._NotDownloadedDrawable.setState(getDrawableState());
        }
    }

    @Override // android.view.View
    protected void dispatchDraw(Canvas canvas) {
        if (this.mState != 0) {
            this.mTempRectF.set(-0.5f, -0.5f, this.mInnerSize + 0.5f, this.mInnerSize + 0.5f);
            this.mTempRectF.offset((getWidth() - this.mInnerSize) / 2, (getHeight() - this.mInnerSize) / 2);
            canvas.drawArc(this.mTempRectF, 0.0f, 360.0f, true, this._ProgressBackgroundPaint);
            if (this.mProgress > 0) {
                if (this.mState == 4) {
                    canvas.drawArc(this.mTempRectF, this.mUnknownStart, 45.0f, false, this._ProgressPaint);
                } else {
                    canvas.drawArc(this.mTempRectF, -90.0f, (360 * this.mProgress) / this.mMax, false, this._ProgressPaint);
                }
            }
        }
        super.dispatchDraw(canvas);
    }

    private void updateButtonFace() {
        Drawable drawable;
        Drawable drawable2 = this._NotDownloadedDrawable;
        switch (this.mState) {
            case 0:
                drawable = this._NotDownloadedDrawable;
                break;
            case 1:
                drawable = this._DownloadingDrawable;
                break;
            case 2:
            case 4:
                drawable = this._ReDownloadDrawable;
                break;
            case 3:
                drawable = this._DownloadingDrawable;
                break;
            case 5:
                drawable = this._DownloadPausedDrawable;
                break;
            default:
                drawable = this._DownloadedDrawable;
                break;
        }
        setImageDrawable(drawable);
    }

    /* loaded from: classes.dex */
    public static class SavedState extends View.BaseSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new Parcelable.Creator<SavedState>() { // from class: mobi.beyondpod.ui.views.base.DownloadProgressButton.SavedState.1
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

    @Override // android.view.View
    public Parcelable onSaveInstanceState() {
        Parcelable onSaveInstanceState = super.onSaveInstanceState();
        if (!isSaveEnabled()) {
            return onSaveInstanceState;
        }
        SavedState savedState = new SavedState(onSaveInstanceState);
        savedState.mMax = this.mMax;
        savedState.mProgress = this.mProgress;
        savedState.mState = this.mState;
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
        this.mMax = savedState.mMax;
        this.mProgress = savedState.mProgress;
        this.mState = savedState.mState;
    }
}
