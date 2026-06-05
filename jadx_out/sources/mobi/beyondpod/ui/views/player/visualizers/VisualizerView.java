package mobi.beyondpod.ui.views.player.visualizers;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Typeface;
import android.text.TextPaint;
import android.util.AttributeSet;
import android.util.Log;
import android.view.View;
import mobi.beyondpod.ui.views.player.visualizers.VisualizerOptions;

/* loaded from: classes.dex */
public class VisualizerView extends View {
    private static final int DIRECTION_DOWN = 1;
    private static final int DIRECTION_LEFT = 0;
    private static final int DIRECTION_RIGHT = 1;
    private static final int DIRECTION_UP = 0;
    public static final float DISTANCE_STEP = 0.003f;
    private static final int DISTANCE_THRESHOLD = 100;
    public static final float SIZE_STEP = 0.003f;
    private static final int SIZE_THRESHOLD = 30;
    private int mDirection;
    private int[] mLineDirections;
    private float mLineHeight;
    private float[] mLineOffsets;
    private int mNumLines;
    private VisualizerOptions mOptions;
    private TextPaint mPaint;
    private boolean mPaused;
    private float[] mPositionsX;
    private char[] mText;
    private float mTextSize;
    private float[] mWidths;

    public VisualizerView(Context context) {
        super(context);
        this.mDirection = 0;
        this.mPaused = true;
        initialize();
    }

    public VisualizerView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mDirection = 0;
        this.mPaused = true;
        initialize();
    }

    public VisualizerView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.mDirection = 0;
        this.mPaused = true;
        initialize();
    }

    public void setText(String str, VisualizerOptions visualizerOptions) {
        this.mOptions = visualizerOptions;
        this.mText = str.toCharArray();
        this.mPositionsX = new float[this.mText.length];
        updatePaint();
        invalidate();
    }

    private void initialize() {
        setText("This is some very long text that we need to display", new VisualizerOptions.Builder().setColor(-7829368).setTextSize(50).setTypeface(Typeface.SANS_SERIF).build());
    }

    private void updatePaint() {
        this.mPaint = new TextPaint();
        this.mPaint.setColor(this.mOptions.getColor());
        this.mPaint.setAntiAlias(true);
        this.mPaint.setTypeface(this.mOptions.getTypeface());
        this.mPaint.setTextSize(this.mOptions.getTextSize());
        this.mWidths = new float[this.mText.length];
        this.mPaint.getTextWidths(String.valueOf(this.mText), this.mWidths);
    }

    private float determineLineHeight() {
        boolean z = false;
        float f = 0.0f;
        while (!z) {
            int i = 10;
            while (true) {
                if (i <= 500) {
                    this.mPaint.setTextSize(i);
                    this.mPaint.getTextWidths(String.valueOf(this.mText), this.mWidths);
                    Paint.FontMetrics fontMetrics = this.mPaint.getFontMetrics();
                    f = 0.65f * (((Math.abs(fontMetrics.ascent) + fontMetrics.descent) - fontMetrics.leading) - fontMetrics.bottom);
                    float f2 = 100.0f;
                    int i2 = 0;
                    while (i2 < this.mText.length) {
                        this.mPositionsX[i2] = (i2 > 0 ? this.mPositionsX[i2 - 1] : 0.0f) + this.mWidths[i2];
                        if (this.mPositionsX[i2] >= getWidth()) {
                            this.mPositionsX[i2] = this.mWidths[i2];
                            f2 += f;
                        }
                        i2++;
                    }
                    Log.d("Sample", "Position Y: " + f2 + " and Bottom: " + getBottom());
                    if (f2 >= getBottom()) {
                        this.mTextSize = this.mPaint.getTextSize();
                        z = true;
                        break;
                    }
                    i++;
                }
            }
        }
        return f;
    }

    @Override // android.view.View
    protected void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        this.mLineHeight = determineLineHeight();
        this.mNumLines = (int) (getHeight() / this.mLineHeight);
        this.mLineOffsets = new float[this.mNumLines];
        this.mLineDirections = new int[this.mNumLines];
        for (int i5 = 0; i5 < this.mNumLines; i5++) {
            if (i5 == 0) {
                this.mLineDirections[i5] = 0;
            } else {
                this.mLineDirections[i5] = this.mLineDirections[i5 + (-1)] == 0 ? 1 : 0;
            }
            this.mLineOffsets[i5] = 0.0f;
        }
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        if (this.mOptions == null) {
            return;
        }
        int i = 0;
        float f = 150.0f;
        int i2 = 0;
        while (i < this.mText.length) {
            float f2 = 0.0f;
            float f3 = i > 0 ? this.mPositionsX[i - 1] : 0.0f;
            this.mPositionsX[i] = this.mWidths[i] + f3;
            if (this.mPositionsX[i] >= getWidth()) {
                if (i2 < this.mNumLines - 1) {
                    i2++;
                }
                this.mPositionsX[i] = this.mWidths[i];
                f += this.mLineHeight;
            } else {
                f2 = f3;
            }
            this.mPaint.setTextSize(this.mTextSize);
            canvas.drawText(String.valueOf(this.mText[i]), f2 + this.mLineOffsets[i2], f, this.mPaint);
            i++;
        }
    }

    public void pauseAnimation() {
        this.mPaused = true;
    }

    public void resumeAnimation() {
        this.mPaused = false;
        invalidate();
    }
}
