package mobi.beyondpod.ui.core.volley;

import android.R;
import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.drawable.ColorDrawable;
import android.support.v4.content.ContextCompat;
import android.support.v7.widget.AppCompatImageView;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.widget.ImageView;
import com.android.volley.VolleyError;
import com.android.volley.toolbox.ImageLoader;
import mobi.beyondpod.BeyondPodApplication;

/* loaded from: classes.dex */
public class FadingNetworkImageView extends AppCompatImageView {
    protected static final int ANIMATION_FADE_IN_TIME = 100;
    protected static final int HALF_FADE_IN_TIME = 50;
    protected int mDefaultImageId;
    protected int mErrorImageId;
    protected boolean mFadeInImage;
    protected ImageLoader.ImageContainer mImageContainer;
    protected ImageLoader.ImageListener mImageListener;
    protected ImageLoader mImageLoader;
    protected boolean mIsInLayoutPass;
    protected int mMaxImageHeight;
    protected int mMaxImageWidth;
    protected String mUrl;
    protected static final ColorDrawable transparentDrawable = new ColorDrawable(ContextCompat.getColor(BeyondPodApplication.getInstance().getApplicationContext(), R.color.transparent));
    protected static ImageLoader.ImageListener _prefetchImageListener = new ImageLoader.ImageListener() { // from class: mobi.beyondpod.ui.core.volley.FadingNetworkImageView.3
        @Override // com.android.volley.Response.ErrorListener
        public void onErrorResponse(VolleyError volleyError) {
        }

        @Override // com.android.volley.toolbox.ImageLoader.ImageListener
        public void onResponse(ImageLoader.ImageContainer imageContainer, boolean z) {
        }
    };

    public FadingNetworkImageView(Context context) {
        this(context, null);
    }

    public FadingNetworkImageView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public FadingNetworkImageView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.mFadeInImage = true;
        this.mMaxImageHeight = 0;
        this.mMaxImageWidth = 0;
        this.mImageListener = new ImageLoader.ImageListener() { // from class: mobi.beyondpod.ui.core.volley.FadingNetworkImageView.1
            @Override // com.android.volley.toolbox.ImageLoader.ImageListener
            public void onResponse(ImageLoader.ImageContainer imageContainer, boolean z) {
                FadingNetworkImageView.this.imageSuccess(imageContainer, z);
            }

            @Override // com.android.volley.Response.ErrorListener
            public void onErrorResponse(VolleyError volleyError) {
                FadingNetworkImageView.this.imageError(volleyError);
            }
        };
    }

    public void setImageUrl(String str, ImageLoader imageLoader) {
        this.mUrl = str;
        this.mImageLoader = imageLoader;
        loadImageIfNecessary(false);
    }

    public void setDefaultImageResId(int i) {
        this.mDefaultImageId = i;
    }

    public void setErrorImageResId(int i) {
        this.mErrorImageId = i;
    }

    public void setFadeInImage(boolean z) {
        this.mFadeInImage = z;
    }

    public void setMaxImageSize(int i, int i2) {
        this.mMaxImageWidth = i;
        this.mMaxImageHeight = i2;
    }

    protected void imageSuccess(final ImageLoader.ImageContainer imageContainer, boolean z) {
        if (z && this.mIsInLayoutPass) {
            post(new Runnable() { // from class: mobi.beyondpod.ui.core.volley.FadingNetworkImageView.2
                @Override // java.lang.Runnable
                public void run() {
                    FadingNetworkImageView.this.imageSuccess(imageContainer, false);
                }
            });
            return;
        }
        if (imageContainer.getBitmap() != null) {
            if (BitmapCache.getBitmapSize(imageContainer.getBitmap()) > 2048 || this.mErrorImageId == 0) {
                setImageBitmap(this, imageContainer.getBitmap(), getContext().getResources(), this.mFadeInImage && !z);
                return;
            } else {
                loadedImageIsBad();
                return;
            }
        }
        if (this.mDefaultImageId != 0) {
            setImageFromResource(this.mDefaultImageId);
        }
    }

    protected void loadedImageIsBad() {
        setImageFromResource(this.mErrorImageId);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void imageError(VolleyError volleyError) {
        if (this.mErrorImageId != 0) {
            setImageFromResource(this.mErrorImageId);
        }
    }

    protected void setImageFromResource(int i) {
        try {
            setImageResource(i);
        } catch (Throwable unused) {
        }
    }

    public static void prefetchImage(String str, ImageLoader imageLoader, int i, int i2) {
        imageLoader.get(str, _prefetchImageListener, i, i2);
    }

    protected void loadImageIfNecessary(boolean z) {
        int width = getWidth();
        int height = getHeight();
        boolean z2 = getLayoutParams() != null && getLayoutParams().height == -2 && getLayoutParams().width == -2;
        if (width == 0 && height == 0 && !z2) {
            return;
        }
        if (TextUtils.isEmpty(this.mUrl) || this.mUrl == null) {
            if (this.mImageContainer != null) {
                this.mImageContainer.cancelRequest();
                this.mImageContainer = null;
            }
            if (this.mErrorImageId != 0) {
                setImageFromResource(this.mErrorImageId);
                return;
            } else {
                setImageBitmap(null);
                return;
            }
        }
        if (this.mImageContainer != null && this.mImageContainer.getRequestUrl() != null) {
            if (this.mImageContainer.getRequestUrl().equals(this.mUrl)) {
                return;
            }
            this.mImageContainer.cancelRequest();
            setImageBitmap(null);
        }
        this.mIsInLayoutPass = z;
        this.mImageContainer = getImageContainer();
    }

    protected ImageLoader.ImageContainer getImageContainer() {
        return this.mImageLoader.get(this.mUrl, this.mImageListener, this.mMaxImageWidth, this.mMaxImageHeight);
    }

    @Override // android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        loadImageIfNecessary(true);
    }

    @Override // android.widget.ImageView, android.view.View
    protected void onDetachedFromWindow() {
        if (this.mImageContainer != null) {
            this.mImageContainer.cancelRequest();
            setImageBitmap(null);
            this.mImageContainer = null;
        }
        super.onDetachedFromWindow();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.support.v7.widget.AppCompatImageView, android.widget.ImageView, android.view.View
    public void drawableStateChanged() {
        super.drawableStateChanged();
        invalidate();
    }

    protected void setImageBitmap(final ImageView imageView, final Bitmap bitmap, Resources resources, boolean z) {
        if (z) {
            imageView.animate().alpha(0.5f).setDuration(imageView.getDrawable() == null ? 0L : 50L).setListener(new AnimatorListenerAdapter() { // from class: mobi.beyondpod.ui.core.volley.FadingNetworkImageView.4
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator) {
                    imageView.setImageBitmap(bitmap);
                    imageView.animate().alpha(1.0f).setDuration(50L).setListener(null).start();
                }
            }).start();
        } else {
            imageView.setImageBitmap(bitmap);
        }
    }
}
