package mobi.beyondpod.ui.core;

import android.annotation.TargetApi;
import android.media.MediaMetadataRetriever;
import android.media.MediaScannerConnection;
import android.net.Uri;
import mobi.beyondpod.BeyondPodApplication;
import mobi.beyondpod.rsscore.Track;
import mobi.beyondpod.rsscore.helpers.CoreHelper;
import mobi.beyondpod.rsscore.helpers.MediaFile;
import mobi.beyondpod.rsscore.helpers.Path;
import mobi.beyondpod.rsscore.helpers.StringUtils;

/* loaded from: classes.dex */
public class TrackMetadataParser {
    private static final String TAG = "TrackMetadataParser";

    @TargetApi(10)
    public static boolean loadMetadataFor(Track track) {
        if (track == null) {
            CoreHelper.writeTraceEntry(TAG, "Unable to load track metadata! track is null! Ignoring...");
            return false;
        }
        CoreHelper.writeTraceEntry(TAG, "Loading metadata for: '" + track.trackPath());
        if (!track.exists()) {
            CoreHelper.writeTraceEntry(TAG, "File " + track.trackPath() + " does not exist! Ignoring...");
            return false;
        }
        MediaMetadataRetriever mediaMetadataRetriever = new MediaMetadataRetriever();
        try {
            mediaMetadataRetriever.setDataSource(track.trackPath());
            String extractMetadata = mediaMetadataRetriever.extractMetadata(12);
            String extractMetadata2 = mediaMetadataRetriever.extractMetadata(7);
            long safeParseLong = StringUtils.safeParseLong(mediaMetadataRetriever.extractMetadata(9), -1L);
            if (!StringUtils.isNullOrEmpty(extractMetadata2) && !isTitleSameAsFileName(track, extractMetadata2)) {
                track.setName(extractMetadata2);
            }
            if (safeParseLong > 0 && safeParseLong < 72000000) {
                track.setTotalTime(safeParseLong / 1000);
            }
            if (!StringUtils.isNullOrEmpty(extractMetadata)) {
                if (extractMetadata.startsWith("video")) {
                    MediaFile.MediaFileType fileType = MediaFile.getFileType(track.trackPath());
                    if (fileType.fileType == 2) {
                        CoreHelper.writeTraceEntry(TAG, "Seems like we detected mime incorrectly as: " + extractMetadata + "! Patching to: " + fileType.mimeType);
                        extractMetadata = fileType.mimeType;
                    }
                }
                track.setContentMimeType(extractMetadata);
            }
            String str = TAG;
            StringBuilder sb = new StringBuilder();
            sb.append("Loaded metadata: ");
            sb.append(extractMetadata2);
            sb.append(", (");
            sb.append(extractMetadata);
            sb.append("). Total duration: ");
            sb.append(safeParseLong);
            sb.append(" - ");
            sb.append(safeParseLong > 0 ? CoreHelper.formatTimeAsString(safeParseLong / 1000, true) : "N/A");
            CoreHelper.writeTraceEntry(str, sb.toString());
            return true;
        } catch (Exception e) {
            CoreHelper.writeTraceEntry(TAG, "failed to load metadata for " + track.getName() + ". reason: " + e.getMessage());
            return false;
        } finally {
            mediaMetadataRetriever.release();
        }
    }

    public static boolean isTitleSameAsFileName(Track track, String str) {
        return !StringUtils.isNullOrEmpty(str) && str.equals(Path.getFileNameWithoutExtension(track.trackPath()));
    }

    public static void addToAndroidMediaDatabase(final Track track) {
        try {
            MediaScannerConnection.scanFile(BeyondPodApplication.getInstance().getApplicationContext(), new String[]{track.trackPath()}, null, new MediaScannerConnection.OnScanCompletedListener() { // from class: mobi.beyondpod.ui.core.TrackMetadataParser.1
                @Override // android.media.MediaScannerConnection.OnScanCompletedListener
                public void onScanCompleted(String str, Uri uri) {
                    CoreHelper.writeTraceEntry(TrackMetadataParser.TAG, "Episode " + Track.this.displayName() + " was added to Android Media Database as " + uri);
                }
            });
        } catch (Throwable th) {
            CoreHelper.writeTraceEntry(TAG, "failed to add episode to Android Media Database! " + th.getMessage());
        }
    }
}
