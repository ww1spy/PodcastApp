package mobi.beyondpod.ui.core;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.support.v4.content.ContextCompat;
import java.io.File;
import java.io.FileOutputStream;
import mobi.beyondpod.BeyondPodApplication;
import mobi.beyondpod.R;
import mobi.beyondpod.rsscore.Configuration;
import mobi.beyondpod.rsscore.Feed;
import mobi.beyondpod.rsscore.helpers.CoreHelper;
import mobi.beyondpod.rsscore.helpers.FileUtils;
import mobi.beyondpod.rsscore.helpers.StringUtils;

/* loaded from: classes.dex */
public class FeedImageCache {
    public static int CacheSize = 40;
    public static int DefaultImageHeight = 46;
    public static int DefaultImageWidth = 46;
    public static int PREFETCH_QUEUE_SIZE = 30;
    private static final String TAG = "FeedImageCache";
    public static int _DownloadedImageSize_height = 300;
    public static int _DownloadedImageSize_width = 300;
    private static final BitmapFactory.Options _DefaultBitmapOptionsCache = new BitmapFactory.Options();
    private static final File _FeedImageCacheDir = new File(Configuration.rssImageCachePath());

    /* loaded from: classes.dex */
    public interface FeedCachePublisher {
        void FeedImageLoaded(Feed feed, Drawable drawable);
    }

    static {
        _DefaultBitmapOptionsCache.inPreferredConfig = Bitmap.Config.RGB_565;
        Drawable drawable = ContextCompat.getDrawable(BeyondPodApplication.getInstance(), R.drawable.default_feed_image);
        if (drawable != null) {
            DefaultImageWidth = drawable.getIntrinsicWidth();
            DefaultImageHeight = drawable.getIntrinsicHeight();
        }
        _DownloadedImageSize_width = BeyondPodApplication.getInstance().getResources().getInteger(R.integer.FeedDownloadImage_px_width);
        _DownloadedImageSize_height = BeyondPodApplication.getInstance().getResources().getInteger(R.integer.FeedDownloadImage_px_height);
    }

    public static Drawable getDefaultImage(Feed feed) {
        return ContextCompat.getDrawable(BeyondPodApplication.getInstance(), getDefaultImageResId(feed));
    }

    public static int getDefaultImageResId(Feed feed) {
        if (feed != null && feed.isGReaderFeed()) {
            return R.drawable.default_greader_feed_image;
        }
        return R.drawable.default_feed_image;
    }

    public static boolean hasImageToDownload(Feed feed) {
        return (StringUtils.isNullOrEmpty(feed.getFeedImageUrl()) || hasCachedImageFor(feed)) ? false : true;
    }

    public static void deleteImageCacheFor(Feed feed) {
        FileUtils.deleteFileIfExists(getFeedImagePath(feed));
    }

    public static int deleteImageCacheForAllFeeds() {
        int i = 0;
        for (File file : new File(Configuration.rssImageCachePath()).listFiles()) {
            try {
                file.delete();
            } catch (Exception e) {
                CoreHelper.writeLogEntry(TAG, "Unable to delete image for feed: " + file.getPath() + " reason: " + e);
                i++;
            }
        }
        return i;
    }

    public static boolean hasCachedImageFor(Feed feed) {
        return FileUtils.exists(getFeedImagePath(feed));
    }

    public static String getFeedImagePath(Feed feed) {
        if (feed == null) {
            return null;
        }
        if (StringUtils.isNullOrEmpty(feed.getFeedImageUrl()) || feed.getFeedUri() == null || FileUtils.exists(getCustomFeedImageFileName(feed))) {
            return getCustomFeedImageFileName(feed);
        }
        return getFeedImageFileName(feed.getFeedUri(), false);
    }

    public static String getExistingFeedImagePath(Feed feed) {
        if (feed == null) {
            return null;
        }
        String customFeedImageFileName = getCustomFeedImageFileName(feed);
        if (FileUtils.exists(customFeedImageFileName)) {
            return customFeedImageFileName;
        }
        if (!StringUtils.isNullOrEmpty(feed.getFeedImageUrl())) {
            customFeedImageFileName = getFeedImageFileName(feed.getFeedUri(), false);
        }
        if (FileUtils.exists(customFeedImageFileName)) {
            return customFeedImageFileName;
        }
        return null;
    }

    private static String getFeedImageFileName(Uri uri, boolean z) {
        Object[] objArr = new Object[4];
        objArr[0] = _FeedImageCacheDir;
        objArr[1] = uri.getHost() != null ? uri.getHost().replace('.', '_') : "unknownimagehost";
        objArr[2] = Integer.valueOf(uri.hashCode());
        objArr[3] = z ? "temp" : "";
        return String.format("%s/%s_%x%s.img", objArr);
    }

    private static String getCustomFeedImageFileName(Feed feed) {
        return String.format("%s/.feedimage", feed.getFeedPath());
    }

    public static File getTempFeedImagePath(Feed feed) {
        if (feed == null || StringUtils.isNullOrEmpty(feed.getFeedImageUrl()) || feed.getFeedUri() == null) {
            return null;
        }
        return new File(getFeedImageFileName(feed.getFeedUri(), true));
    }

    public static Drawable getFeedImageFor(Feed feed) {
        try {
            Bitmap sizedFeedImageFor = getSizedFeedImageFor(feed, DefaultImageWidth, DefaultImageHeight);
            if (sizedFeedImageFor != null) {
                return new BitmapDrawable(BeyondPodApplication.getInstance().getResources(), sizedFeedImageFor);
            }
        } catch (Exception e) {
            CoreHelper.writeLogEntry(TAG, "Unable to load image for: " + feed.getName() + "! reason:" + e);
        }
        return getDefaultImage(feed);
    }

    public static Bitmap getSizedFeedImageFor(Feed feed, int i, int i2) {
        try {
            String feedImagePath = getFeedImagePath(feed);
            if (feedImagePath == null) {
                return null;
            }
            return loadAsSize(feedImagePath, i, i2, true);
        } catch (Exception e) {
            CoreHelper.writeLogEntry(TAG, "Unable to load Sized image for: " + feed.getName() + "! reason:" + e);
            return null;
        }
    }

    private static Bitmap loadAsSize(String str, int i, int i2, boolean z) {
        Bitmap bitmap;
        Bitmap bitmap2 = null;
        if (!FileUtils.exists(str)) {
            return null;
        }
        BitmapFactory.Options options = new BitmapFactory.Options();
        options.inPreferredConfig = Bitmap.Config.RGB_565;
        try {
            if (i <= 0 || i2 <= 0) {
                return BitmapFactory.decodeFile(str, options);
            }
            options.inJustDecodeBounds = true;
            BitmapFactory.decodeFile(str, options);
            CoreHelper.writeTraceEntryInDebug(TAG, "Resizing image from: " + options.outWidth + "/" + options.outHeight + " => " + i + "/" + i2);
            if (options.outWidth <= i && options.outHeight <= i2 && !z) {
                CoreHelper.writeTraceEntryInDebug(TAG, "Resizing image is smaller then required and we are not allowed to scale up! Using the original image.");
                options.inJustDecodeBounds = false;
                return BitmapFactory.decodeFile(str, options);
            }
            int i3 = options.outWidth >> 1;
            int i4 = 1;
            for (int i5 = options.outHeight >> 1; i3 > i && i5 > i2; i5 >>= 1) {
                i4 <<= 1;
                i3 >>= 1;
            }
            options.inSampleSize = i4;
            options.inJustDecodeBounds = false;
            bitmap = BitmapFactory.decodeFile(str, options);
            if (bitmap == null) {
                return bitmap;
            }
            try {
                if (options.outWidth == i && options.outHeight == i2) {
                    return bitmap;
                }
                Bitmap createScaledBitmap = Bitmap.createScaledBitmap(bitmap, i, (int) (i / (options.outWidth / options.outHeight)), true);
                if (createScaledBitmap != bitmap) {
                    bitmap.recycle();
                }
                return createScaledBitmap;
            } catch (Exception e) {
                bitmap2 = bitmap;
                e = e;
                CoreHelper.logException(TAG, "Unable to load feed Image", e);
                return bitmap2;
            } catch (OutOfMemoryError unused) {
                CoreHelper.writeLogEntry(TAG, "Unable to load feed Image. OutOfMemory error!");
                return bitmap;
            }
        } catch (Exception e2) {
            e = e2;
        } catch (OutOfMemoryError unused2) {
            bitmap = null;
        }
    }

    public static void formatTempImageForFeed(Feed feed) {
        Bitmap loadAsSize;
        if (feed == null) {
            return;
        }
        File tempFeedImagePath = getTempFeedImagePath(feed);
        try {
            if (!tempFeedImagePath.exists() || (loadAsSize = loadAsSize(tempFeedImagePath.getAbsolutePath(), _DownloadedImageSize_width, _DownloadedImageSize_height, false)) == null) {
                return;
            }
            File file = new File(getFeedImagePath(feed));
            if (file.exists()) {
                file.delete();
            }
            try {
                try {
                    FileOutputStream fileOutputStream = new FileOutputStream(file);
                    loadAsSize.compress(Bitmap.CompressFormat.JPEG, 100, fileOutputStream);
                    fileOutputStream.flush();
                    fileOutputStream.close();
                    loadAsSize.recycle();
                } catch (Exception e) {
                    CoreHelper.logException(TAG, "Unable to save temp image for feed: " + feed.getName(), e);
                    loadAsSize.recycle();
                }
                tempFeedImagePath.delete();
            } catch (Throwable th) {
                loadAsSize.recycle();
                tempFeedImagePath.delete();
                throw th;
            }
        } catch (Exception e2) {
            CoreHelper.logException(TAG, "Unable to format temp image for feed: " + feed.getName(), e2);
        }
    }

    public static boolean hasCustomImageForFeed(Feed feed) {
        return FileUtils.exists(getCustomFeedImageFileName(feed));
    }

    public static void setCustomFeedImage(Feed feed, String str) {
        try {
            deleteCustomImageForFeed(feed);
            FileUtils.copyFile(str, getCustomFeedImageFileName(feed));
        } catch (Exception e) {
            CoreHelper.logException(TAG, "Unable to copy feed image", e);
        }
    }

    public static void deleteCustomImageForFeed(Feed feed) {
        FileUtils.deleteFileIfExists(getCustomFeedImageFileName(feed));
    }

    public static boolean hasOriginalImage(Feed feed) {
        String customFeedImageFileName = getCustomFeedImageFileName(feed);
        String feedImagePath = getFeedImagePath(feed);
        if (customFeedImageFileName.equals(feedImagePath)) {
            return false;
        }
        return FileUtils.exists(feedImagePath);
    }
}
