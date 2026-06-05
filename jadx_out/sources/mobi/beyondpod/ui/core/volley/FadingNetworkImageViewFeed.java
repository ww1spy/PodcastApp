package mobi.beyondpod.ui.core.volley;

import android.content.Context;
import android.util.AttributeSet;
import com.android.volley.VolleyError;
import com.android.volley.toolbox.ImageLoader;
import mobi.beyondpod.rsscore.Feed;
import mobi.beyondpod.ui.core.FeedImageCache;

/* loaded from: classes.dex */
public class FadingNetworkImageViewFeed extends FadingNetworkImageView {
    protected Feed mFeed;

    public void setFeed(Feed feed, ImageLoader imageLoader) {
        this.mFeed = feed;
        setImageUrl(generateFeedImageUrl(this.mFeed), imageLoader);
    }

    public static String generateFeedImageUrl(Feed feed) {
        String existingFeedImagePath = FeedImageCache.getExistingFeedImagePath(feed);
        if (existingFeedImagePath == null) {
            return null;
        }
        return String.format("file://%s", existingFeedImagePath);
    }

    public FadingNetworkImageViewFeed(Context context) {
        this(context, null);
    }

    public FadingNetworkImageViewFeed(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public FadingNetworkImageViewFeed(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.mFeed = null;
    }

    @Override // mobi.beyondpod.ui.core.volley.FadingNetworkImageView
    protected ImageLoader.ImageContainer getImageContainer() {
        return ((ImageLoaderFeed) this.mImageLoader).get(this.mUrl, this.mFeed, this.mImageListener, this.mMaxImageWidth, this.mMaxImageHeight);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // mobi.beyondpod.ui.core.volley.FadingNetworkImageView
    public void imageError(VolleyError volleyError) {
        super.imageError(volleyError);
    }
}
