package mobi.beyondpod.ui.views.player.visualizers;

import android.graphics.Typeface;

/* loaded from: classes.dex */
public class VisualizerOptions {
    private int mColor;
    private int mTextSize;
    private Typeface mTypeface;

    protected VisualizerOptions() {
    }

    protected void setTypeface(Typeface typeface) {
        this.mTypeface = typeface;
    }

    public Typeface getTypeface() {
        return this.mTypeface;
    }

    protected void setTextSize(int i) {
        this.mTextSize = i;
    }

    public int getTextSize() {
        return this.mTextSize;
    }

    protected void setColor(int i) {
        this.mColor = i;
    }

    public int getColor() {
        return this.mColor;
    }

    /* loaded from: classes.dex */
    public static class Builder {
        private VisualizerOptions mOptions = new VisualizerOptions();

        public Builder setTypeface(Typeface typeface) {
            this.mOptions.setTypeface(typeface);
            return this;
        }

        public Builder setTextSize(int i) {
            this.mOptions.setTextSize(i);
            return this;
        }

        public Builder setColor(int i) {
            this.mOptions.setColor(i);
            return this;
        }

        public VisualizerOptions build() {
            return this.mOptions;
        }
    }
}
