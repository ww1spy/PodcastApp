package mobi.beyondpod.ui.views.base;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.LinearGradient;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.Shader;
import android.support.v4.view.ViewCompat;
import android.util.AttributeSet;
import android.widget.RelativeLayout;
import mobi.beyondpod.R;
import mobi.beyondpod.rsscore.helpers.CoreHelper;

/* loaded from: classes.dex */
public class AlbumView extends RelativeLayout {
    private Bitmap mBit;
    private Paint mCoverPaint;

    public AlbumView(Context context) {
        super(context);
        setWillNotDraw(false);
    }

    public AlbumView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        setWillNotDraw(false);
    }

    public void setArtwork(Bitmap bitmap) {
        try {
            if (this.mBit != null) {
                this.mBit.recycle();
            }
            if (bitmap == null) {
                BitmapFactory.Options options = new BitmapFactory.Options();
                options.inPreferredConfig = Bitmap.Config.ARGB_8888;
                bitmap = BitmapFactory.decodeResource(getResources(), R.drawable.albumart_mp_unknown_list, options);
            }
            if (bitmap != null) {
                this.mBit = addReflection(bitmap);
                this.mCoverPaint = new Paint();
                this.mCoverPaint.setAntiAlias(true);
                this.mCoverPaint.setFilterBitmap(true);
                this.mCoverPaint.setDither(true);
            }
        } catch (Exception e) {
            CoreHelper.logException("AlbumView", "failed to set Artwork Image", e);
        } catch (OutOfMemoryError unused) {
            CoreHelper.writeLogEntry("AlbumView", "failed to set Artwork Image. OutOfMemoryError!");
        }
    }

    private Bitmap addReflection(Bitmap bitmap) {
        int width = bitmap.getWidth();
        int height = bitmap.getHeight();
        if (Math.max(width, height) / Math.min(width, height) > 1.2d) {
            return bitmap;
        }
        float f = height;
        int height2 = (int) ((getHeight() - getWidth()) / (((getHeight() - getPaddingTop()) - getPaddingBottom()) / f));
        if (height2 < 10) {
            return bitmap;
        }
        int height3 = bitmap.getHeight() - height2;
        Matrix matrix = new Matrix();
        matrix.preScale(1.0f, -1.0f);
        try {
            Bitmap createBitmap = Bitmap.createBitmap(bitmap, 0, height3, width, height2, matrix, false);
            Bitmap createBitmap2 = Bitmap.createBitmap(width, height2 + height, Bitmap.Config.ARGB_8888);
            Canvas canvas = new Canvas(createBitmap2);
            canvas.drawBitmap(bitmap, 0.0f, 0.0f, (Paint) null);
            Paint paint = new Paint();
            paint.setColor(0);
            float f2 = width;
            float f3 = height + 4;
            canvas.drawRect(0.0f, f, f2, f3, paint);
            canvas.drawBitmap(createBitmap, 0.0f, f3, (Paint) null);
            Paint paint2 = new Paint();
            paint2.setShader(new LinearGradient(0.0f, bitmap.getHeight(), 0.0f, createBitmap2.getHeight() + 4, 1895825407, ViewCompat.MEASURED_SIZE_MASK, Shader.TileMode.CLAMP));
            paint2.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.DST_IN));
            canvas.drawRect(0.0f, f, f2, createBitmap2.getHeight() + 4, paint2);
            createBitmap.recycle();
            return createBitmap2;
        } catch (OutOfMemoryError unused) {
            CoreHelper.writeTraceEntry("AlbumView", "Unable to draw image reflection! OutOfMemoryError");
            return bitmap;
        }
    }

    private void drawArtwork(Canvas canvas) {
        if (this.mBit == null) {
            return;
        }
        canvas.save();
        int width = getWidth();
        int height = getHeight();
        float width2 = this.mBit.getWidth();
        float paddingTop = ((height - getPaddingTop()) - getPaddingBottom()) / this.mBit.getHeight();
        canvas.translate(getPaddingLeft(), getPaddingTop());
        canvas.scale(((width - getPaddingLeft()) - getPaddingRight()) / width2, paddingTop);
        this.mCoverPaint.setAlpha(255);
        canvas.drawBitmap(this.mBit, 0.0f, 0.0f, this.mCoverPaint);
        canvas.restore();
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        drawArtwork(canvas);
    }
}
