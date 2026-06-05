package mobi.beyondpod.ui.core;

import android.content.ContentResolver;
import android.content.ContentUris;
import android.content.Context;
import android.database.Cursor;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.net.Uri;
import android.provider.MediaStore;
import io.fabric.sdk.android.services.events.EventsFilesManager;
import io.fabric.sdk.android.services.settings.SettingsJsonConstants;
import java.io.File;
import mobi.beyondpod.BeyondPodApplication;
import mobi.beyondpod.rsscore.Configuration;
import mobi.beyondpod.rsscore.Track;
import mobi.beyondpod.rsscore.helpers.CoreHelper;
import mobi.beyondpod.rsscore.helpers.MediaFile;
import mobi.beyondpod.rsscore.helpers.Path;
import mobi.beyondpod.rsscore.helpers.StringUtils;

/* loaded from: classes.dex */
public class MusicUtils {
    public static final int GET_ARTWORK_KIND_CHECK_ONLY = 2;
    public static final int GET_ARTWORK_KIND_EXACT = 0;
    public static final int GET_ARTWORK_KIND_INSIDE_BOUNDS = 1;
    private static final String TAG = "MusicUtils";
    private static final BitmapFactory.Options _BitmapOptionsCache = new BitmapFactory.Options();
    private static final BitmapFactory.Options _BitmapOptions = new BitmapFactory.Options();
    private static final Uri _ArtworkExternalUri = Uri.parse("content://media/external/audio/albumart");

    static {
        _BitmapOptions.inPreferredConfig = Bitmap.Config.RGB_565;
        _BitmapOptionsCache.inPreferredConfig = Bitmap.Config.RGB_565;
    }

    static boolean isTitleSameAsFileName(Track track, String str) {
        return !StringUtils.isNullOrEmpty(str) && str.equals(Path.getFileNameWithoutExtension(track.trackPath()));
    }

    public static boolean audioTrackImageMatchesDatabase(Track track, Cursor cursor) {
        if (track.isUsingParentImage()) {
            return true;
        }
        if (StringUtils.isNullOrEmpty(track.trackImagePath())) {
            return false;
        }
        if (track.trackImagePath().contains(cursor.getString(cursor.getColumnIndexOrThrow("album_id")))) {
            return true;
        }
        return track.trackImagePath().contains(cursor.getString(cursor.getColumnIndexOrThrow("_id")));
    }

    public static boolean videoTrackImageMatchesDatabase(Track track, Cursor cursor) {
        if (track.isUsingParentImage()) {
            return true;
        }
        if (StringUtils.isNullOrEmpty(track.trackImagePath())) {
            return false;
        }
        return track.trackImagePath().contains(cursor.getString(cursor.getColumnIndexOrThrow("_id")));
    }

    private static Bitmap loadAudioThumbnail(Context context, Track track, int i, int i2, int i3, Cursor cursor) {
        String str;
        Uri withAppendedId = ContentUris.withAppendedId(_ArtworkExternalUri, cursor.getInt(cursor.getColumnIndexOrThrow("album_id")));
        Bitmap artworkQuick = getArtworkQuick(context, withAppendedId, i, i2, i3);
        if (artworkQuick != null) {
            str = "album art";
            track.setTrackImagePath(withAppendedId.toString());
        } else {
            Uri parse = Uri.parse("content://media/external/audio/media/" + cursor.getInt(cursor.getColumnIndexOrThrow("_id")) + "/albumart");
            artworkQuick = getArtworkQuick(context, parse, i, i2, i3);
            if (artworkQuick != null) {
                track.setTrackImagePath(parse.toString());
                str = "track";
            } else {
                track.setUseParentImage();
                str = "parent feed";
            }
        }
        CoreHelper.writeTraceEntry(TAG, "** track " + track.getName() + " will be using [" + str + "] image");
        return artworkQuick;
    }

    private static Bitmap loadVideoThumbnail(Context context, Track track, Bitmap bitmap, int i, int i2, Cursor cursor) {
        int i3 = cursor.getInt(cursor.getColumnIndexOrThrow("_id"));
        Bitmap videoThumbnail = getVideoThumbnail(context, i3, true, bitmap, i, i2);
        if (videoThumbnail != null) {
            track.setTrackImagePath(Integer.toString(i3));
        } else {
            track.setUseParentImage();
        }
        return videoThumbnail;
    }

    /* JADX WARN: Type inference failed for: r1v1, types: [mobi.beyondpod.ui.core.MusicUtils$1] */
    private static Bitmap getVideoThumbnail(final Context context, final long j, final boolean z, Bitmap bitmap, int i, int i2) {
        Bitmap thumbnail;
        if (j < 0) {
            return null;
        }
        try {
            Thread.sleep(1L);
            new Thread() { // from class: mobi.beyondpod.ui.core.MusicUtils.1
                @Override // java.lang.Thread, java.lang.Runnable
                public void run() {
                    try {
                        Thread.sleep(5000L);
                    } catch (InterruptedException unused) {
                    }
                    try {
                        if (z) {
                            MediaStore.Video.Thumbnails.cancelThumbnailRequest(context.getContentResolver(), j);
                        } else {
                            MediaStore.Images.Thumbnails.cancelThumbnailRequest(context.getContentResolver(), j);
                        }
                    } catch (Exception unused2) {
                    }
                }
            }.start();
            if (z) {
                thumbnail = MediaStore.Video.Thumbnails.getThumbnail(context.getContentResolver(), j, 1, null);
            } else {
                thumbnail = MediaStore.Images.Thumbnails.getThumbnail(context.getContentResolver(), j, 1, null);
            }
            if (thumbnail != null) {
                return (bitmap != null || (i2 > 0 && i > 0)) ? sizeAndFrame(thumbnail, bitmap, i, i2) : thumbnail;
            }
            CoreHelper.writeTraceEntry(TAG, "Unable to find video thumbnail for: " + j);
            return null;
        } catch (Exception unused) {
            return null;
        } catch (OutOfMemoryError unused2) {
            CoreHelper.writeTraceEntry(TAG, "Unable to load video thumbnail! OutOfMemoryError");
            return null;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:27:0x0077  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static android.graphics.Bitmap getAudioArtwork(android.content.Context r8, mobi.beyondpod.rsscore.Track r9, int r10, int r11, int r12) {
        /*
            r0 = 0
            if (r9 == 0) goto L7b
            boolean r1 = r9.hasImage()     // Catch: java.lang.Throwable -> L43 java.lang.Exception -> L46
            if (r1 != 0) goto L23
            java.lang.String r1 = r9.trackPath()     // Catch: java.lang.Throwable -> L43 java.lang.Exception -> L46
            android.database.Cursor r1 = getAudioCursor(r8, r1, r0)     // Catch: java.lang.Throwable -> L43 java.lang.Exception -> L46
            if (r1 == 0) goto L20
            r2 = r8
            r3 = r9
            r4 = r10
            r5 = r11
            r6 = r12
            r7 = r1
            android.graphics.Bitmap r8 = loadAudioThumbnail(r2, r3, r4, r5, r6, r7)     // Catch: java.lang.Exception -> L1e java.lang.Throwable -> L74
            goto L21
        L1e:
            r8 = move-exception
            goto L48
        L20:
            r8 = r0
        L21:
            r0 = r1
            goto L3d
        L23:
            java.lang.String r1 = r9.trackImagePath()     // Catch: java.lang.Throwable -> L43 java.lang.Exception -> L46
            java.lang.String r2 = "content"
            boolean r1 = r1.startsWith(r2)     // Catch: java.lang.Throwable -> L43 java.lang.Exception -> L46
            if (r1 == 0) goto L3c
            java.lang.String r1 = r9.trackImagePath()     // Catch: java.lang.Throwable -> L43 java.lang.Exception -> L46
            android.net.Uri r1 = android.net.Uri.parse(r1)     // Catch: java.lang.Throwable -> L43 java.lang.Exception -> L46
            android.graphics.Bitmap r8 = getArtworkQuick(r8, r1, r10, r11, r12)     // Catch: java.lang.Throwable -> L43 java.lang.Exception -> L46
            goto L3d
        L3c:
            r8 = r0
        L3d:
            if (r0 == 0) goto L7c
            r0.close()
            goto L7c
        L43:
            r8 = move-exception
            r1 = r0
            goto L75
        L46:
            r8 = move-exception
            r1 = r0
        L48:
            java.lang.String r10 = "MusicUtils"
            java.lang.StringBuilder r11 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L74
            r11.<init>()     // Catch: java.lang.Throwable -> L74
            java.lang.String r12 = "failed to get album artwork for"
            r11.append(r12)     // Catch: java.lang.Throwable -> L74
            java.lang.String r9 = r9.getName()     // Catch: java.lang.Throwable -> L74
            r11.append(r9)     // Catch: java.lang.Throwable -> L74
            java.lang.String r9 = "! reason: "
            r11.append(r9)     // Catch: java.lang.Throwable -> L74
            java.lang.String r8 = r8.getMessage()     // Catch: java.lang.Throwable -> L74
            r11.append(r8)     // Catch: java.lang.Throwable -> L74
            java.lang.String r8 = r11.toString()     // Catch: java.lang.Throwable -> L74
            mobi.beyondpod.rsscore.helpers.CoreHelper.writeLogEntry(r10, r8)     // Catch: java.lang.Throwable -> L74
            if (r1 == 0) goto L7b
            r1.close()
            goto L7b
        L74:
            r8 = move-exception
        L75:
            if (r1 == 0) goto L7a
            r1.close()
        L7a:
            throw r8
        L7b:
            r8 = r0
        L7c:
            return r8
        */
        throw new UnsupportedOperationException("Method not decompiled: mobi.beyondpod.ui.core.MusicUtils.getAudioArtwork(android.content.Context, mobi.beyondpod.rsscore.Track, int, int, int):android.graphics.Bitmap");
    }

    /* JADX WARN: Code restructure failed: missing block: B:17:0x006f, code lost:
    
        if (r1 == null) goto L28;
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x0040, code lost:
    
        r1.close();
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x003e, code lost:
    
        if (r1 == null) goto L28;
     */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0075  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static android.graphics.Bitmap getVideoArtwork(android.content.Context r9, mobi.beyondpod.rsscore.Track r10, android.graphics.Bitmap r11, int r12, int r13) {
        /*
            r0 = 0
            if (r10 == 0) goto L79
            boolean r1 = r10.hasImage()     // Catch: java.lang.Throwable -> L44 java.lang.Exception -> L47
            if (r1 != 0) goto L21
            java.lang.String r1 = r10.trackPath()     // Catch: java.lang.Throwable -> L44 java.lang.Exception -> L47
            android.database.Cursor r1 = getVideoCursor(r9, r1, r0)     // Catch: java.lang.Throwable -> L44 java.lang.Exception -> L47
            if (r1 == 0) goto L3e
            r2 = r9
            r3 = r10
            r4 = r11
            r5 = r12
            r6 = r13
            r7 = r1
            android.graphics.Bitmap r9 = loadVideoThumbnail(r2, r3, r4, r5, r6, r7)     // Catch: java.lang.Exception -> L1f java.lang.Throwable -> L72
        L1d:
            r0 = r9
            goto L3e
        L1f:
            r9 = move-exception
            goto L49
        L21:
            java.lang.String r1 = r10.trackImagePath()     // Catch: java.lang.Throwable -> L44 java.lang.Exception -> L47
            r2 = -1
            java.lang.Integer r2 = java.lang.Integer.valueOf(r2)     // Catch: java.lang.Throwable -> L44 java.lang.Exception -> L47
            java.lang.Integer r1 = mobi.beyondpod.rsscore.helpers.StringUtils.tryParseIntFromString(r1, r2)     // Catch: java.lang.Throwable -> L44 java.lang.Exception -> L47
            int r1 = r1.intValue()     // Catch: java.lang.Throwable -> L44 java.lang.Exception -> L47
            long r3 = (long) r1     // Catch: java.lang.Throwable -> L44 java.lang.Exception -> L47
            r5 = 1
            r2 = r9
            r6 = r11
            r7 = r12
            r8 = r13
            android.graphics.Bitmap r9 = getVideoThumbnail(r2, r3, r5, r6, r7, r8)     // Catch: java.lang.Throwable -> L44 java.lang.Exception -> L47
            r1 = r0
            goto L1d
        L3e:
            if (r1 == 0) goto L79
        L40:
            r1.close()
            goto L79
        L44:
            r9 = move-exception
            r1 = r0
            goto L73
        L47:
            r9 = move-exception
            r1 = r0
        L49:
            java.lang.String r11 = "MusicUtils"
            java.lang.StringBuilder r12 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L72
            r12.<init>()     // Catch: java.lang.Throwable -> L72
            java.lang.String r13 = "failed to get album artwork for"
            r12.append(r13)     // Catch: java.lang.Throwable -> L72
            java.lang.String r10 = r10.getName()     // Catch: java.lang.Throwable -> L72
            r12.append(r10)     // Catch: java.lang.Throwable -> L72
            java.lang.String r10 = "! reason: "
            r12.append(r10)     // Catch: java.lang.Throwable -> L72
            java.lang.String r9 = r9.getMessage()     // Catch: java.lang.Throwable -> L72
            r12.append(r9)     // Catch: java.lang.Throwable -> L72
            java.lang.String r9 = r12.toString()     // Catch: java.lang.Throwable -> L72
            mobi.beyondpod.rsscore.helpers.CoreHelper.writeLogEntry(r11, r9)     // Catch: java.lang.Throwable -> L72
            if (r1 == 0) goto L79
            goto L40
        L72:
            r9 = move-exception
        L73:
            if (r1 == 0) goto L78
            r1.close()
        L78:
            throw r9
        L79:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: mobi.beyondpod.ui.core.MusicUtils.getVideoArtwork(android.content.Context, mobi.beyondpod.rsscore.Track, android.graphics.Bitmap, int, int):android.graphics.Bitmap");
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x00a7 A[Catch: OutOfMemoryError -> 0x00af, TryCatch #0 {OutOfMemoryError -> 0x00af, blocks: (B:15:0x005b, B:17:0x0096, B:19:0x00a2, B:21:0x00a7, B:22:0x00ab, B:25:0x009c), top: B:14:0x005b }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static android.graphics.Bitmap sizeAndFrame(android.graphics.Bitmap r7, android.graphics.Bitmap r8, int r9, int r10) {
        /*
            if (r7 != 0) goto L3
            return r8
        L3:
            int r0 = r7.getWidth()
            int r1 = r7.getHeight()
            if (r8 != 0) goto Le
            goto L12
        Le:
            int r9 = r8.getWidth()
        L12:
            if (r8 != 0) goto L15
            goto L19
        L15:
            int r10 = r8.getHeight()
        L19:
            android.graphics.Rect r2 = new android.graphics.Rect
            r3 = 0
            r2.<init>(r3, r3, r9, r10)
            r4 = 0
            if (r0 > r9) goto L3d
            if (r1 > r10) goto L3d
            int r3 = r9 / 2
            int r5 = r0 / 2
            int r3 = r3 - r5
            r2.left = r3
            int r3 = r10 / 2
            int r5 = r1 / 2
            int r3 = r3 - r5
            r2.top = r3
            int r3 = r2.left
            int r3 = r3 + r0
            r2.right = r3
            int r0 = r2.top
            int r0 = r0 + r1
            r2.bottom = r0
            goto L42
        L3d:
            if (r0 > r9) goto L44
            if (r1 <= r10) goto L42
            goto L44
        L42:
            r5 = r4
            goto L5b
        L44:
            if (r0 < r1) goto L51
            int r0 = r0 - r1
            int r0 = r0 / 2
            android.graphics.Rect r5 = new android.graphics.Rect
            int r6 = r0 + r1
            r5.<init>(r0, r3, r6, r1)
            goto L5b
        L51:
            int r1 = r1 - r0
            int r1 = r1 / 2
            android.graphics.Rect r5 = new android.graphics.Rect
            int r6 = r1 + r0
            r5.<init>(r3, r1, r0, r6)
        L5b:
            java.lang.String r0 = "MusicUtils"
            java.lang.StringBuilder r1 = new java.lang.StringBuilder     // Catch: java.lang.OutOfMemoryError -> Laf
            r1.<init>()     // Catch: java.lang.OutOfMemoryError -> Laf
            java.lang.String r3 = "Resizing image: "
            r1.append(r3)     // Catch: java.lang.OutOfMemoryError -> Laf
            r1.append(r5)     // Catch: java.lang.OutOfMemoryError -> Laf
            java.lang.String r3 = " => "
            r1.append(r3)     // Catch: java.lang.OutOfMemoryError -> Laf
            r1.append(r2)     // Catch: java.lang.OutOfMemoryError -> Laf
            java.lang.String r1 = r1.toString()     // Catch: java.lang.OutOfMemoryError -> Laf
            mobi.beyondpod.rsscore.helpers.CoreHelper.writeTraceEntryInDebug(r0, r1)     // Catch: java.lang.OutOfMemoryError -> Laf
            android.graphics.Bitmap$Config r0 = android.graphics.Bitmap.Config.RGB_565     // Catch: java.lang.OutOfMemoryError -> Laf
            android.graphics.Bitmap r0 = android.graphics.Bitmap.createBitmap(r9, r10, r0)     // Catch: java.lang.OutOfMemoryError -> Laf
            android.graphics.Canvas r1 = new android.graphics.Canvas     // Catch: java.lang.OutOfMemoryError -> Laf
            r1.<init>(r0)     // Catch: java.lang.OutOfMemoryError -> Laf
            android.graphics.Paint r3 = new android.graphics.Paint     // Catch: java.lang.OutOfMemoryError -> Laf
            r3.<init>()     // Catch: java.lang.OutOfMemoryError -> Laf
            r6 = 1
            r3.setDither(r6)     // Catch: java.lang.OutOfMemoryError -> Laf
            r3.setFilterBitmap(r6)     // Catch: java.lang.OutOfMemoryError -> Laf
            int r6 = r2.width()     // Catch: java.lang.OutOfMemoryError -> Laf
            if (r6 < r9) goto L9c
            int r9 = r2.height()     // Catch: java.lang.OutOfMemoryError -> Laf
            if (r9 >= r10) goto La2
        L9c:
            r9 = -12303292(0xffffffffff444444, float:-2.6088314E38)
            r1.drawColor(r9)     // Catch: java.lang.OutOfMemoryError -> Laf
        La2:
            r1.drawBitmap(r7, r5, r2, r3)     // Catch: java.lang.OutOfMemoryError -> Laf
            if (r8 == 0) goto Lab
            r9 = 0
            r1.drawBitmap(r8, r9, r9, r3)     // Catch: java.lang.OutOfMemoryError -> Laf
        Lab:
            r7.recycle()     // Catch: java.lang.OutOfMemoryError -> Laf
            return r0
        Laf:
            java.lang.String r7 = "MusicUtils"
            java.lang.String r8 = "Unable to execute sizeAndFrame! OutOfMemoryError"
            mobi.beyondpod.rsscore.helpers.CoreHelper.writeTraceEntry(r7, r8)
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: mobi.beyondpod.ui.core.MusicUtils.sizeAndFrame(android.graphics.Bitmap, android.graphics.Bitmap, int, int):android.graphics.Bitmap");
    }

    /* JADX WARN: Code restructure failed: missing block: B:53:0x00ff, code lost:
    
        if (r5 == null) goto L59;
     */
    /* JADX WARN: Code restructure failed: missing block: B:55:0x00e4, code lost:
    
        r5.close();
     */
    /* JADX WARN: Code restructure failed: missing block: B:60:0x00e2, code lost:
    
        if (r5 == null) goto L59;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r5v1, types: [android.content.ContentResolver] */
    /* JADX WARN: Type inference failed for: r5v3 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static android.graphics.Bitmap getArtworkQuick(android.content.Context r5, android.net.Uri r6, int r7, int r8, int r9) {
        /*
            Method dump skipped, instructions count: 266
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: mobi.beyondpod.ui.core.MusicUtils.getArtworkQuick(android.content.Context, android.net.Uri, int, int, int):android.graphics.Bitmap");
    }

    public static void LoadID3InfoForTrack(Track track, boolean z, Uri uri, Cursor cursor, boolean z2) {
        boolean z3;
        if (track != null) {
            if (uri == null) {
                if (cursor != null) {
                    if (cursor.getColumnIndex("album_id") != -1) {
                        LoadAudioID3InfoFor(track, z, null, cursor, z2);
                    } else {
                        LoadVideoID3InfoFor(track, z, null, cursor, z2);
                    }
                    z3 = true;
                }
                z3 = false;
            } else if (uri.getPath().contains("audio")) {
                z3 = LoadAudioID3InfoFor(track, z, uri, null, z2);
            } else if (uri.getPath().contains("video")) {
                z3 = LoadVideoID3InfoFor(track, z, uri, null, z2);
            } else {
                if (uri.getPath().contains("image")) {
                    z3 = LoadImageInfoFor(track, false, uri, null, z2);
                }
                z3 = false;
            }
            if (!z3 && !LoadAudioID3InfoFor(track, z, null, null, z2) && !LoadVideoID3InfoFor(track, z, null, null, z2)) {
                LoadImageInfoFor(track, false, null, null, z2);
            }
            if (StringUtils.isNullOrEmpty(track.contentMimeType()) && track.exists()) {
                track.setContentMimeType(MediaFile.getMimeType(track.trackPath()));
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r8v0, types: [android.net.Uri] */
    /* JADX WARN: Type inference failed for: r8v1, types: [android.database.Cursor] */
    /* JADX WARN: Type inference failed for: r8v2 */
    private static boolean LoadAudioID3InfoFor(Track track, boolean z, Uri uri, Cursor cursor, boolean z2) {
        Cursor cursor2;
        Bitmap loadAudioThumbnail;
        try {
            if (cursor == null) {
                try {
                    cursor2 = getAudioCursor(BeyondPodApplication.getInstance(), track.trackPath(), uri);
                } catch (Exception e) {
                    e = e;
                    cursor2 = cursor;
                    CoreHelper.writeLogEntry(TAG, "failed to load audio ID3 tags for track " + track.getName() + "! reason: " + e.getMessage());
                    return cursor == null ? false : false;
                } catch (Throwable th) {
                    th = th;
                    uri = cursor;
                    if (cursor == null && uri != 0) {
                        uri.close();
                    }
                    throw th;
                }
            } else {
                cursor2 = cursor;
            }
            try {
            } catch (Exception e2) {
                e = e2;
                CoreHelper.writeLogEntry(TAG, "failed to load audio ID3 tags for track " + track.getName() + "! reason: " + e.getMessage());
                if (cursor == null || cursor2 == null) {
                }
                cursor2.close();
                return false;
            }
            if (cursor2 != null) {
                String string = cursor2.getString(cursor2.getColumnIndexOrThrow(SettingsJsonConstants.PROMPT_TITLE_KEY));
                if (!StringUtils.isNullOrEmpty(string) && !isTitleSameAsFileName(track, string)) {
                    track.setName(string);
                }
                long j = cursor2.getLong(cursor2.getColumnIndexOrThrow("duration")) / 1000;
                if (j != 0) {
                    track.setTotalTime(j);
                }
                String string2 = cursor2.getString(cursor2.getColumnIndexOrThrow("mime_type"));
                if (!StringUtils.isNullOrEmpty(string2)) {
                    track.setContentMimeType(string2);
                }
                if ((!track.hasImage() || track.isUsingParentImage()) && (loadAudioThumbnail = loadAudioThumbnail(BeyondPodApplication.getInstance(), track, 0, 0, 2, cursor2)) != null) {
                    loadAudioThumbnail.recycle();
                }
                if (z) {
                    deleteRecord(BeyondPodApplication.getInstance(), MediaStore.Audio.Media.EXTERNAL_CONTENT_URI, track.trackPath());
                }
                if (cursor == null && cursor2 != null) {
                    cursor2.close();
                }
                return true;
            }
            CoreHelper.writeTraceEntry(TAG, "No audio media scanner record exists for: " + track.trackPath());
            if (z2) {
                track.setUseParentImage();
            }
            if (cursor != null || cursor2 == null) {
                return false;
            }
            cursor2.close();
            return false;
        } catch (Throwable th2) {
            th = th2;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r9v0, types: [android.net.Uri] */
    /* JADX WARN: Type inference failed for: r9v1, types: [android.database.Cursor] */
    /* JADX WARN: Type inference failed for: r9v2 */
    private static boolean LoadVideoID3InfoFor(Track track, boolean z, Uri uri, Cursor cursor, boolean z2) {
        Cursor cursor2;
        Bitmap loadVideoThumbnail;
        try {
            if (cursor == null) {
                try {
                    cursor2 = getVideoCursor(BeyondPodApplication.getInstance(), track.trackPath(), uri);
                } catch (Exception e) {
                    e = e;
                    cursor2 = cursor;
                    CoreHelper.writeLogEntry(TAG, "failed to load video ID3 tags for track " + track.getName() + "! reason: " + e.getMessage());
                    return cursor == null ? false : false;
                } catch (Throwable th) {
                    th = th;
                    uri = cursor;
                    if (cursor == null && uri != 0) {
                        uri.close();
                    }
                    throw th;
                }
            } else {
                cursor2 = cursor;
            }
            try {
            } catch (Exception e2) {
                e = e2;
                CoreHelper.writeLogEntry(TAG, "failed to load video ID3 tags for track " + track.getName() + "! reason: " + e.getMessage());
                if (cursor == null || cursor2 == null) {
                }
                cursor2.close();
                return false;
            }
            if (cursor2 != null) {
                String string = cursor2.getString(cursor2.getColumnIndexOrThrow(SettingsJsonConstants.PROMPT_TITLE_KEY));
                if (!StringUtils.isNullOrEmpty(string) && !isTitleSameAsFileName(track, string)) {
                    track.setName(string);
                }
                long j = cursor2.getLong(cursor2.getColumnIndexOrThrow("duration")) / 1000;
                if (j != 0) {
                    track.setTotalTime(j);
                }
                String string2 = cursor2.getString(cursor2.getColumnIndexOrThrow("mime_type"));
                if (!StringUtils.isNullOrEmpty(string2)) {
                    track.setContentMimeType(string2);
                }
                CoreHelper.writeTraceEntry(TAG, "Found media scanner video record! id:" + cursor2.getInt(cursor2.getColumnIndexOrThrow("_id")) + ", name:" + string + ", Dur:" + j + ", mime:" + string2);
                if ((!track.hasImage() || track.isUsingParentImage()) && (loadVideoThumbnail = loadVideoThumbnail(BeyondPodApplication.getInstance(), track, null, -1, -1, cursor2)) != null) {
                    loadVideoThumbnail.recycle();
                }
                if (z && Configuration.patchVideoFilesForMediaScanner()) {
                    CoreHelper.writeTraceEntry(TAG, "Sharing is disabled! Trying to hide downloaded file when deleting the media scanner record...");
                    File file = new File(track.trackPath());
                    File file2 = new File(file.getParent(), EventsFilesManager.ROLL_OVER_FILE_NAME_SEPARATOR + file.getName());
                    if (file.renameTo(file2)) {
                        deleteRecord(BeyondPodApplication.getInstance(), MediaStore.Video.Media.EXTERNAL_CONTENT_URI, file.getAbsolutePath());
                        if (!file2.renameTo(file.getAbsoluteFile())) {
                            CoreHelper.writeLogEntry(TAG, "Unable to rename back the video file " + file2.getAbsolutePath() + " after deleting the media scanner record!");
                        }
                    } else {
                        CoreHelper.writeLogEntry(TAG, "Unable to hide video file " + track.trackPath() + " for deleting the media scanner record");
                    }
                }
                if (cursor == null && cursor2 != null) {
                    cursor2.close();
                }
                return true;
            }
            CoreHelper.writeTraceEntry(TAG, "No video media scanner record exists for: " + track.trackPath());
            if (z2) {
                track.setUseParentImage();
            }
            if (cursor != null || cursor2 == null) {
                return false;
            }
            cursor2.close();
            return false;
        } catch (Throwable th2) {
            th = th2;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r4v0, types: [android.net.Uri] */
    /* JADX WARN: Type inference failed for: r4v1, types: [android.database.Cursor] */
    /* JADX WARN: Type inference failed for: r4v2 */
    private static boolean LoadImageInfoFor(Track track, boolean z, Uri uri, Cursor cursor, boolean z2) {
        Cursor cursor2;
        try {
            if (cursor == null) {
                try {
                    cursor2 = getImageCursor(BeyondPodApplication.getInstance(), track.trackPath(), uri);
                } catch (Exception e) {
                    e = e;
                    cursor2 = cursor;
                    CoreHelper.writeLogEntry(TAG, "failed to load image ID3 tags for track " + track.getName() + "! reason: " + e.getMessage());
                    return cursor == null ? false : false;
                } catch (Throwable th) {
                    th = th;
                    uri = cursor;
                    if (cursor == null && uri != 0) {
                        uri.close();
                    }
                    throw th;
                }
            } else {
                cursor2 = cursor;
            }
            try {
            } catch (Exception e2) {
                e = e2;
                CoreHelper.writeLogEntry(TAG, "failed to load image ID3 tags for track " + track.getName() + "! reason: " + e.getMessage());
                if (cursor == null || cursor2 == null) {
                }
                cursor2.close();
                return false;
            }
            if (cursor2 != null) {
                String string = cursor2.getString(cursor2.getColumnIndexOrThrow(SettingsJsonConstants.PROMPT_TITLE_KEY));
                if (!StringUtils.isNullOrEmpty(string) && !isTitleSameAsFileName(track, string)) {
                    track.setName(string);
                }
                String string2 = cursor2.getString(cursor2.getColumnIndexOrThrow("mime_type"));
                if (!StringUtils.isNullOrEmpty(string2)) {
                    track.setContentMimeType(string2);
                }
                if (z) {
                    deleteRecord(BeyondPodApplication.getInstance(), MediaStore.Images.Media.EXTERNAL_CONTENT_URI, track.trackPath());
                }
                track.setUseParentImage();
                if (cursor == null && cursor2 != null) {
                    cursor2.close();
                }
                return true;
            }
            CoreHelper.writeTraceEntry(TAG, "No image media scanner record exists for: " + track.trackPath());
            if (z2) {
                track.setUseParentImage();
            }
            if (cursor != null || cursor2 == null) {
                return false;
            }
            cursor2.close();
            return false;
        } catch (Throwable th2) {
            th = th2;
        }
    }

    public static Cursor getAudioCursor(Context context, String str, Uri uri) {
        Cursor query;
        String[] strArr = {"_id", "_data", SettingsJsonConstants.PROMPT_TITLE_KEY, "duration", "album_id", "mime_type"};
        if (uri != null) {
            query = query(context, uri, strArr, null, null, null);
        } else if (str != null) {
            query = query(context, MediaStore.Audio.Media.EXTERNAL_CONTENT_URI, strArr, "_data=?", new String[]{str}, "title_key");
        } else {
            query = query(context, MediaStore.Audio.Media.EXTERNAL_CONTENT_URI, strArr, null, null, "title_key");
        }
        if (query == null) {
            return null;
        }
        query.moveToFirst();
        if (!query.isAfterLast()) {
            return query;
        }
        query.close();
        return null;
    }

    public static Cursor getVideoCursor(Context context, String str, Uri uri) {
        Cursor query;
        String[] strArr = {"_data", SettingsJsonConstants.PROMPT_TITLE_KEY, "duration", "_id", "mime_type"};
        if (uri != null) {
            query = query(context, uri, strArr, null, null, null);
        } else if (str != null) {
            query = query(context, MediaStore.Video.Media.EXTERNAL_CONTENT_URI, strArr, "_data=?", new String[]{str}, SettingsJsonConstants.PROMPT_TITLE_KEY);
        } else {
            query = query(context, MediaStore.Video.Media.EXTERNAL_CONTENT_URI, strArr, null, null, SettingsJsonConstants.PROMPT_TITLE_KEY);
        }
        if (query == null) {
            return null;
        }
        query.moveToFirst();
        if (query.isAfterLast()) {
            return null;
        }
        return query;
    }

    private static Cursor getImageCursor(Context context, String str, Uri uri) {
        Cursor query;
        Object obj;
        String[] strArr = {"_data", SettingsJsonConstants.PROMPT_TITLE_KEY, "_id", "mime_type"};
        if (uri != null) {
            query = query(context, uri, strArr, null, null, null);
        } else {
            query = query(context, MediaStore.Images.Media.EXTERNAL_CONTENT_URI, strArr, "_data=?", new String[]{str}, "bucket_display_name");
        }
        if (query == null) {
            return null;
        }
        query.moveToFirst();
        if (query.isAfterLast()) {
            return null;
        }
        StringBuilder sb = new StringBuilder();
        sb.append("Found image record for:");
        sb.append(str);
        if (uri != null) {
            obj = ", Location: " + uri;
        } else {
            obj = MediaStore.Images.Media.EXTERNAL_CONTENT_URI;
        }
        sb.append(obj);
        CoreHelper.writeTraceEntry(TAG, sb.toString());
        return query;
    }

    public static void dumpVideoDB(Context context) {
        Cursor query = query(context, MediaStore.Video.Media.EXTERNAL_CONTENT_URI, new String[]{"_data", SettingsJsonConstants.PROMPT_TITLE_KEY, "duration", "_id", "mime_type"}, null, null, null);
        if (query == null || !query.moveToFirst()) {
            return;
        }
        do {
            CoreHelper.writeTraceEntry(TAG, "##### VIDEO RECORD => name:" + query.getString(query.getColumnIndexOrThrow(SettingsJsonConstants.PROMPT_TITLE_KEY)) + ", dur:" + (query.getLong(query.getColumnIndexOrThrow("duration")) / 1000) + ", mime:" + query.getString(query.getColumnIndexOrThrow("mime_type")) + ", path:" + query.getString(query.getColumnIndexOrThrow("_data")));
        } while (query.moveToNext());
    }

    public static void dumpAudioDB(Context context) {
        Cursor allRecordsAudioCursor = getAllRecordsAudioCursor(context);
        if (allRecordsAudioCursor == null || !allRecordsAudioCursor.moveToFirst()) {
            return;
        }
        do {
            CoreHelper.writeTraceEntry(TAG, "##### AUDIO RECORD => id:" + allRecordsAudioCursor.getLong(allRecordsAudioCursor.getColumnIndexOrThrow("_id")) + ", name:" + allRecordsAudioCursor.getString(allRecordsAudioCursor.getColumnIndexOrThrow(SettingsJsonConstants.PROMPT_TITLE_KEY)) + ", dur:" + (allRecordsAudioCursor.getLong(allRecordsAudioCursor.getColumnIndexOrThrow("duration")) / 1000) + ", mime:" + allRecordsAudioCursor.getString(allRecordsAudioCursor.getColumnIndexOrThrow("mime_type")) + ", path:" + allRecordsAudioCursor.getString(allRecordsAudioCursor.getColumnIndexOrThrow("_data")));
        } while (allRecordsAudioCursor.moveToNext());
        allRecordsAudioCursor.close();
    }

    public static int dumpAudioDBRecordCount(Context context) {
        Cursor allRecordsAudioCursor = getAllRecordsAudioCursor(context);
        if (allRecordsAudioCursor == null || !allRecordsAudioCursor.moveToFirst()) {
            return -1;
        }
        int count = allRecordsAudioCursor.getCount();
        allRecordsAudioCursor.close();
        return count;
    }

    public static Cursor getAllRecordsAudioCursor(Context context) {
        return query(context, MediaStore.Audio.Media.EXTERNAL_CONTENT_URI, new String[]{"_data", SettingsJsonConstants.PROMPT_TITLE_KEY, "duration", "_id", "mime_type"}, null, null, "_id");
    }

    public static Cursor query(Context context, Uri uri, String[] strArr, String str, String[] strArr2, String str2) {
        try {
            ContentResolver contentResolver = context.getContentResolver();
            if (contentResolver == null) {
                return null;
            }
            return contentResolver.query(uri, strArr, str, strArr2, str2);
        } catch (UnsupportedOperationException unused) {
            return null;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:27:0x00c2  */
    /* JADX WARN: Removed duplicated region for block: B:29:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean deleteRecord(android.content.Context r7, android.net.Uri r8, java.lang.String r9) {
        /*
            r0 = 0
            android.content.ContentResolver r7 = r7.getContentResolver()     // Catch: java.lang.Exception -> Lc5
            if (r7 != 0) goto L8
            return r0
        L8:
            r1 = 0
            android.net.Uri r2 = android.provider.MediaStore.Audio.Media.EXTERNAL_CONTENT_URI     // Catch: java.lang.Exception -> Lc5
            if (r8 != r2) goto L10
            java.lang.String r1 = "_data"
            goto L1d
        L10:
            android.net.Uri r2 = android.provider.MediaStore.Video.Media.EXTERNAL_CONTENT_URI     // Catch: java.lang.Exception -> Lc5
            if (r8 != r2) goto L17
            java.lang.String r1 = "_data"
            goto L1d
        L17:
            android.net.Uri r2 = android.provider.MediaStore.Images.Media.EXTERNAL_CONTENT_URI     // Catch: java.lang.Exception -> Lc5
            if (r8 != r2) goto L1d
            java.lang.String r1 = "_data"
        L1d:
            if (r1 == 0) goto Lc4
            java.lang.StringBuilder r2 = new java.lang.StringBuilder     // Catch: java.lang.Exception -> Lc5
            r2.<init>()     // Catch: java.lang.Exception -> Lc5
            r2.append(r1)     // Catch: java.lang.Exception -> Lc5
            java.lang.String r3 = "=?"
            r2.append(r3)     // Catch: java.lang.Exception -> Lc5
            java.lang.String r2 = r2.toString()     // Catch: java.lang.Exception -> Lc5
            r3 = 1
            java.lang.String[] r4 = new java.lang.String[r3]     // Catch: java.lang.Exception -> Lc5
            r4[r0] = r9     // Catch: java.lang.Exception -> Lc5
            int r2 = r7.delete(r8, r2, r4)     // Catch: java.lang.Exception -> Lc5
            if (r2 != 0) goto L9d
            java.lang.String r4 = "MusicUtils"
            java.lang.StringBuilder r5 = new java.lang.StringBuilder     // Catch: java.lang.Exception -> Lc5
            r5.<init>()     // Catch: java.lang.Exception -> Lc5
            java.lang.String r6 = "Unable to delete record using provided path: "
            r5.append(r6)     // Catch: java.lang.Exception -> Lc5
            r5.append(r9)     // Catch: java.lang.Exception -> Lc5
            java.lang.String r6 = "! Trying canonical path..."
            r5.append(r6)     // Catch: java.lang.Exception -> Lc5
            java.lang.String r5 = r5.toString()     // Catch: java.lang.Exception -> Lc5
            mobi.beyondpod.rsscore.helpers.CoreHelper.writeTraceEntry(r4, r5)     // Catch: java.lang.Exception -> Lc5
            java.io.File r4 = new java.io.File     // Catch: java.lang.Exception -> L82
            r4.<init>(r9)     // Catch: java.lang.Exception -> L82
            java.io.File r4 = r4.getCanonicalFile()     // Catch: java.lang.Exception -> L82
            java.lang.String r4 = r4.getAbsolutePath()     // Catch: java.lang.Exception -> L82
            java.lang.StringBuilder r9 = new java.lang.StringBuilder     // Catch: java.lang.Exception -> L7f
            r9.<init>()     // Catch: java.lang.Exception -> L7f
            r9.append(r1)     // Catch: java.lang.Exception -> L7f
            java.lang.String r1 = "=?"
            r9.append(r1)     // Catch: java.lang.Exception -> L7f
            java.lang.String r9 = r9.toString()     // Catch: java.lang.Exception -> L7f
            java.lang.String[] r1 = new java.lang.String[r3]     // Catch: java.lang.Exception -> L7f
            r1[r0] = r4     // Catch: java.lang.Exception -> L7f
            int r7 = r7.delete(r8, r9, r1)     // Catch: java.lang.Exception -> L7f
            r2 = r7
            r9 = r4
            goto L9d
        L7f:
            r7 = move-exception
            r9 = r4
            goto L83
        L82:
            r7 = move-exception
        L83:
            java.lang.String r8 = "MusicUtils"
            java.lang.StringBuilder r1 = new java.lang.StringBuilder     // Catch: java.lang.Exception -> Lc5
            r1.<init>()     // Catch: java.lang.Exception -> Lc5
            java.lang.String r4 = "Unable to delete using canonical path! reason: "
            r1.append(r4)     // Catch: java.lang.Exception -> Lc5
            java.lang.String r7 = r7.getMessage()     // Catch: java.lang.Exception -> Lc5
            r1.append(r7)     // Catch: java.lang.Exception -> Lc5
            java.lang.String r7 = r1.toString()     // Catch: java.lang.Exception -> Lc5
            mobi.beyondpod.rsscore.helpers.CoreHelper.writeTraceEntry(r8, r7)     // Catch: java.lang.Exception -> Lc5
        L9d:
            java.lang.String r7 = "MusicUtils"
            java.lang.StringBuilder r8 = new java.lang.StringBuilder     // Catch: java.lang.Exception -> Lc5
            r8.<init>()     // Catch: java.lang.Exception -> Lc5
            java.lang.String r1 = "Deleted "
            r8.append(r1)     // Catch: java.lang.Exception -> Lc5
            r8.append(r2)     // Catch: java.lang.Exception -> Lc5
            java.lang.String r1 = " records for "
            r8.append(r1)     // Catch: java.lang.Exception -> Lc5
            r8.append(r9)     // Catch: java.lang.Exception -> Lc5
            java.lang.String r9 = " from the Media Database"
            r8.append(r9)     // Catch: java.lang.Exception -> Lc5
            java.lang.String r8 = r8.toString()     // Catch: java.lang.Exception -> Lc5
            mobi.beyondpod.rsscore.helpers.CoreHelper.writeTraceEntry(r7, r8)     // Catch: java.lang.Exception -> Lc5
            if (r2 != r3) goto Lc3
            r0 = r3
        Lc3:
            return r0
        Lc4:
            return r0
        Lc5:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: mobi.beyondpod.ui.core.MusicUtils.deleteRecord(android.content.Context, android.net.Uri, java.lang.String):boolean");
    }
}
