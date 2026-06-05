package mobi.beyondpod.rsscore;

import android.content.ContentValues;
import android.database.Cursor;
import android.database.SQLException;
import android.database.sqlite.SQLiteDatabase;
import android.os.StatFs;
import io.fabric.sdk.android.services.events.EventsFilesManager;
import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import mobi.beyondpod.BeyondPodApplication;
import mobi.beyondpod.R;
import mobi.beyondpod.rsscore.helpers.CoreHelper;
import mobi.beyondpod.rsscore.helpers.FileUtils;
import mobi.beyondpod.rsscore.helpers.StringUtils;
import mobi.beyondpod.rsscore.repository.DatabaseHelper;
import mobi.beyondpod.rsscore.repository.FeedRepository;
import mobi.beyondpod.rsscore.repository.RepositoryPersistence;
import mobi.beyondpod.rsscore.repository.XMLRepositoryStorage;
import mobi.beyondpod.rsscore.rss.ItemStateHistory;
import mobi.beyondpod.rsscore.rss.LicenseManager;
import mobi.beyondpod.rsscore.rss.PolicyManager;

/* loaded from: classes.dex */
public class StartupContentBuilder {
    private static final String TAG = "StartupContentBuilder";
    private static boolean _RepositoryBackupInProgress = false;
    private static Runnable _RepositoryBackupRunnable = new Runnable() { // from class: mobi.beyondpod.rsscore.StartupContentBuilder.1
        @Override // java.lang.Runnable
        public void run() {
            StartupContentBuilder.backupRepositoriesInternal();
        }
    };
    private static boolean _RepositorySnapshotInProgress = false;
    private Content[] _PermanentContent = {new Content(R.raw.seed_trackstate, new File(Configuration.trackStateBackupPath())), new Content(R.raw.nomedia, new File(Configuration.rssImageCachePath(), ".nomedia"))};
    private Content[] _DemoContent = BeyondPodApplication.getInstance().getDemoContent();

    /* loaded from: classes.dex */
    public static class Content {
        public String assetName;
        public File destinationFile;
        public int sourceResourceID;

        public Content(int i, File file) {
            this.sourceResourceID = i;
            this.destinationFile = file;
            this.assetName = null;
        }

        public Content(String str, File file) {
            this.sourceResourceID = 0;
            this.assetName = str;
            this.destinationFile = file;
        }
    }

    public void checkAndCreateStartupContent(boolean z) {
        restoreRepositoriesIfNeeded(z);
        for (Content content : this._PermanentContent) {
            if (!content.destinationFile.exists()) {
                CoreHelper.copyResToFile(content.sourceResourceID, content.destinationFile);
            }
        }
        if (!Configuration.googleSyncInitialized()) {
            ItemStateHistory.purgeAllGoogleReaderItems();
            Configuration.setGoogleSyncInitialized(true);
        }
        if (!Configuration.areSettingsInitialized()) {
            CoreHelper.writeTraceEntry(TAG, "Initializing User Default Settings...");
            BeyondPodApplication.getInstance().configureDefaults();
        }
        if (Configuration.sharePodcasts()) {
            return;
        }
        addRemoveNoMediaFile(false);
    }

    public static Content[] loadSeedFeedImages() {
        List<Content> loadSeedFeedImagesForLocale = loadSeedFeedImagesForLocale(BeyondPodApplication.getInstance().getLocale());
        if (loadSeedFeedImagesForLocale.size() == 0) {
            loadSeedFeedImagesForLocale.addAll(loadSeedFeedImagesForLocale(Locale.US));
        }
        return (Content[]) loadSeedFeedImagesForLocale.toArray(new Content[loadSeedFeedImagesForLocale.size()]);
    }

    private static List<Content> loadSeedFeedImagesForLocale(Locale locale) {
        String str = "seed_feed_images" + EventsFilesManager.ROLL_OVER_FILE_NAME_SEPARATOR + locale.toString();
        List<Content> loadSeedFeedImagesForFolder = loadSeedFeedImagesForFolder(str);
        if (loadSeedFeedImagesForFolder.size() == 0) {
            str = "seed_feed_images" + EventsFilesManager.ROLL_OVER_FILE_NAME_SEPARATOR + locale.getLanguage();
            loadSeedFeedImagesForFolder = loadSeedFeedImagesForFolder(str);
        }
        if (loadSeedFeedImagesForFolder.size() > 0) {
            CoreHelper.writeTraceEntry(TAG, "Loaded demo content from: " + str + " (Locale: " + locale + ")");
        } else {
            CoreHelper.writeTraceEntry(TAG, "Loaded demo content from: seed_feed_images");
            loadSeedFeedImagesForFolder = loadSeedFeedImagesForFolder("seed_feed_images");
        }
        if (loadSeedFeedImagesForFolder.size() == 0) {
            CoreHelper.writeTraceEntry(TAG, "No demo content for locale: " + locale);
        }
        return loadSeedFeedImagesForFolder;
    }

    private static List<Content> loadSeedFeedImagesForFolder(String str) {
        String[] strArr;
        try {
            strArr = BeyondPodApplication.getInstance().getApplicationContext().getResources().getAssets().list(str);
        } catch (IOException unused) {
            strArr = null;
        }
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        if (strArr != null) {
            for (String str2 : strArr) {
                if (str2.startsWith("include__")) {
                    arrayList2.add(str2.replace("include__", ""));
                } else {
                    arrayList.add(new Content(str + "/" + str2, new File(Configuration.rssImageCachePath(), str2.replace(".jpg", ".img"))));
                }
            }
            Iterator it = arrayList2.iterator();
            while (it.hasNext()) {
                arrayList.addAll(loadSeedFeedImagesForFolder((String) it.next()));
            }
        }
        return arrayList;
    }

    public static void backupRepositoriesAsync() {
        RepositoryPersistence.repositoryHandler().removeCallbacks(_RepositoryBackupRunnable);
        RepositoryPersistence.repositoryHandler().post(_RepositoryBackupRunnable);
    }

    public static void backupRepositoriesSync() {
        backupRepositoriesInternal();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:50:0x008e -> B:16:0x009d). Please report as a decompilation issue!!! */
    public static void backupRepositoriesInternal() {
        if (_RepositoryBackupInProgress) {
            return;
        }
        _RepositoryBackupInProgress = true;
        try {
            long currentTimeMillis = System.currentTimeMillis();
            new XMLRepositoryStorage().backupRepositoryToFile(Configuration.trackStateBackupPath());
            CoreHelper.writeTraceEntry(TAG, "Created long term XML feed Repository backup in: " + (System.currentTimeMillis() - currentTimeMillis) + "ms.");
        } catch (Exception e) {
            CoreHelper.logException(TAG, "Unable to create long term XML feed repository backup!", e);
        }
        int currentLicenseKind = LicenseManager.currentLicenseKind();
        if ((currentLicenseKind != 0 && currentLicenseKind != 5) || PolicyManager.isTagUnlocked()) {
            try {
                long currentTimeMillis2 = System.currentTimeMillis();
                if (FileUtils.copyFile(DatabaseHelper.databasePath(), Configuration.databaseBackupFilePath())) {
                    CoreHelper.writeTraceEntry(TAG, "Created long term feed Repository database backup in: " + (System.currentTimeMillis() - currentTimeMillis2) + "ms.");
                } else {
                    CoreHelper.writeLogEntry(TAG, "Unable to create long term feed repository database backup!");
                }
            } catch (Exception e2) {
                CoreHelper.logException(TAG, "failed to create long term feed repository database backup!", e2);
            }
        } else {
            CoreHelper.writeLogEntry(TAG, "DB backup is skipped in Lite versions!");
        }
        if (FileUtils.exists(Configuration.itemHistoryFilePath())) {
            try {
                long currentTimeMillis3 = System.currentTimeMillis();
                FileUtils.copyFile(Configuration.itemHistoryFilePath(), Configuration.itemHistoryBackupFilePath());
                CoreHelper.writeTraceEntry(TAG, "Created long term Item State History backup in: " + (System.currentTimeMillis() - currentTimeMillis3) + "ms.");
            } catch (Exception e3) {
                CoreHelper.logException(TAG, "Unable to create long term Item State History backup!", e3);
            }
        }
        if (FileUtils.exists(Configuration.enclosureDownloadHistoryFilePath())) {
            try {
                long currentTimeMillis4 = System.currentTimeMillis();
                FileUtils.copyFile(Configuration.enclosureDownloadHistoryFilePath(), Configuration.enclosureDownloadHistoryBackupFilePath());
                CoreHelper.writeTraceEntry(TAG, "Created long term Download History backup in: " + (System.currentTimeMillis() - currentTimeMillis4) + "ms.");
            } catch (Exception e4) {
                CoreHelper.logException(TAG, "Unable to create long term Download History backup!", e4);
            }
        }
        if (FileUtils.exists(Configuration.smartPlaylistFilePath())) {
            try {
                long currentTimeMillis5 = System.currentTimeMillis();
                FileUtils.copyFile(Configuration.smartPlaylistFilePath(), Configuration.smartPlaylistBackupFilePath());
                CoreHelper.writeTraceEntry(TAG, "Created long term Smart Playlist backup in: " + (System.currentTimeMillis() - currentTimeMillis5) + "ms.");
            } catch (Exception e5) {
                CoreHelper.logException(TAG, "Unable to create long term Smart Playlist backup!", e5);
            }
        }
        if (FileUtils.exists(Configuration.playlistFilePath())) {
            try {
                long currentTimeMillis6 = System.currentTimeMillis();
                FileUtils.copyFile(Configuration.playlistFilePath(), Configuration.playlistBackupFilePath());
                CoreHelper.writeTraceEntry(TAG, "Created long term Playlist backup in: " + (System.currentTimeMillis() - currentTimeMillis6) + "ms.");
            } catch (Exception e6) {
                CoreHelper.logException(TAG, "Unable to create long term Playlist backup!", e6);
            }
        }
        _RepositoryBackupInProgress = false;
    }

    public static void restoreRepositoriesIfNeeded(boolean z) {
        if (FileUtils.exists(Configuration.itemHistoryBackupFilePath()) && !FileUtils.exists(Configuration.itemHistoryFilePath())) {
            try {
                FileUtils.copyFile(Configuration.itemHistoryBackupFilePath(), Configuration.itemHistoryFilePath());
                CoreHelper.writeTraceEntry(TAG, "Restored long term Item State History backup!");
            } catch (Exception e) {
                CoreHelper.logException(TAG, "Unable to restore long term Item State History backup!", e);
            }
        }
        if (FileUtils.exists(Configuration.enclosureDownloadHistoryBackupFilePath()) && !FileUtils.exists(Configuration.enclosureDownloadHistoryFilePath())) {
            try {
                FileUtils.copyFile(Configuration.enclosureDownloadHistoryBackupFilePath(), Configuration.enclosureDownloadHistoryFilePath());
                CoreHelper.writeTraceEntry(TAG, "Restored long term Download History backup!");
            } catch (Exception e2) {
                CoreHelper.logException(TAG, "Unable to restore long term Download History backup!", e2);
            }
        }
        if (FileUtils.exists(Configuration.smartPlaylistBackupFilePath()) && !FileUtils.exists(Configuration.smartPlaylistFilePath())) {
            try {
                FileUtils.copyFile(Configuration.smartPlaylistBackupFilePath(), Configuration.smartPlaylistFilePath());
                CoreHelper.writeTraceEntry(TAG, "Restored long term Smart Playlist backup!");
            } catch (Exception e3) {
                CoreHelper.logException(TAG, "Unable to restore long term Smart Playlist backup!", e3);
            }
        }
        if (z && FileUtils.exists(Configuration.playlistBackupFilePath()) && !FileUtils.exists(Configuration.playlistFilePath())) {
            try {
                FileUtils.copyFile(Configuration.playlistBackupFilePath(), Configuration.playlistFilePath());
                CoreHelper.writeTraceEntry(TAG, "Restored long term Playlist backup!");
            } catch (Exception e4) {
                CoreHelper.logException(TAG, "Unable to restore long term Playlist backup!", e4);
            }
        }
    }

    public static boolean createRepositorySnapshot() {
        boolean z;
        boolean z2;
        boolean z3;
        if (_RepositorySnapshotInProgress) {
            return false;
        }
        _RepositorySnapshotInProgress = true;
        StatFs statFs = new StatFs(Configuration.backupManagerBackupPath());
        long blockSizeLong = statFs.getBlockSizeLong() * statFs.getBlockCountLong();
        File file = new File(Configuration.settingsFilePath());
        File file2 = new File(DatabaseHelper.databasePath());
        File file3 = new File(Configuration.itemHistoryFilePath());
        File file4 = new File(Configuration.enclosureDownloadHistoryFilePath());
        File file5 = new File(Configuration.smartPlaylistFilePath());
        File file6 = new File(Configuration.playlistFilePath());
        File[] fileArr = {file, file2, file3, file4, file5, file6};
        int length = fileArr.length;
        int i = 0;
        long j = 0;
        while (i < length) {
            long length2 = j + fileArr[i].length();
            i++;
            j = length2;
        }
        if (j > blockSizeLong) {
            CoreHelper.writeLogEntry(TAG, "Not enough free space for snapshot. Required: " + j + " bytes, Available: " + blockSizeLong + " bytes");
            _RepositorySnapshotInProgress = false;
            return false;
        }
        if (FileUtils.exists(file.getAbsolutePath())) {
            try {
                CoreHelper.writeTraceEntry(TAG, "DEBUG: Settings file path: " + Configuration.settingsFilePath());
                long currentTimeMillis = System.currentTimeMillis();
                FileUtils.copyFile(file.getAbsolutePath(), Configuration.settingsBackupManagerFilePath());
                CoreHelper.writeTraceEntry(TAG, "Created long term Settings snapshot in: " + (System.currentTimeMillis() - currentTimeMillis) + "ms.");
            } catch (Exception e) {
                CoreHelper.logException(TAG, "Unable to create long term Settings snapshot!", e);
                z = false;
            }
        } else {
            CoreHelper.writeTraceEntry(TAG, "Settings path: " + Configuration.settingsFilePath() + " does not exist!");
        }
        z = true;
        new DatabaseHelper(BeyondPodApplication.getInstance().getApplicationContext()).cleanup();
        try {
            long currentTimeMillis2 = System.currentTimeMillis();
            if (FileUtils.copyFile(file2.getAbsolutePath(), Configuration.databaseBackupManagerFilePath())) {
                CoreHelper.writeTraceEntry(TAG, "Created long term feed Repository database snapshot in: " + (System.currentTimeMillis() - currentTimeMillis2) + "ms.");
            } else {
                CoreHelper.writeLogEntry(TAG, "Unable to create long term feed repository database snapshot!");
            }
        } catch (Exception e2) {
            CoreHelper.logException(TAG, "failed to create long term feed repository database snapshot!", e2);
        }
        if (FileUtils.exists(file3.getAbsolutePath())) {
            try {
                long currentTimeMillis3 = System.currentTimeMillis();
                FileUtils.copyFile(file3.getAbsolutePath(), Configuration.itemHistoryBackupManagerFilePath());
                CoreHelper.writeTraceEntry(TAG, "Created long term Item State History snapshot in: " + (System.currentTimeMillis() - currentTimeMillis3) + "ms.");
            } catch (Exception e3) {
                CoreHelper.logException(TAG, "Unable to create long term Item State History snapshot!", e3);
                z = false;
            }
        }
        if (FileUtils.exists(file4.getAbsolutePath())) {
            try {
                long currentTimeMillis4 = System.currentTimeMillis();
                FileUtils.copyFile(file4.getAbsolutePath(), Configuration.enclosureDownloadHistoryBackupManagerFilePath());
                CoreHelper.writeTraceEntry(TAG, "Created long term Download History snapshot in: " + (System.currentTimeMillis() - currentTimeMillis4) + "ms.");
            } catch (Exception e4) {
                CoreHelper.logException(TAG, "Unable to create long term Download History snapshot!", e4);
                z = false;
            }
        }
        if (FileUtils.exists(file5.getAbsolutePath())) {
            try {
                long currentTimeMillis5 = System.currentTimeMillis();
                FileUtils.copyFile(file5.getAbsolutePath(), Configuration.smartPlaylistBackupManagerFilePath());
                CoreHelper.writeTraceEntry(TAG, "Created long term Smart Playlist snapshot in: " + (System.currentTimeMillis() - currentTimeMillis5) + "ms.");
            } catch (Exception e5) {
                CoreHelper.logException(TAG, "Unable to create long term Smart Playlist snapshot!", e5);
                z = false;
            }
        }
        if (FileUtils.exists(file6.getAbsolutePath())) {
            try {
                long currentTimeMillis6 = System.currentTimeMillis();
                FileUtils.copyFile(file6.getAbsolutePath(), Configuration.playlistBackupManagerFilePath());
                CoreHelper.writeTraceEntry(TAG, "Created long term Playlist snapshot in: " + (System.currentTimeMillis() - currentTimeMillis6) + "ms.");
            } catch (Exception e6) {
                CoreHelper.logException(TAG, "Unable to create long term Playlist snapshot!", e6);
                z2 = false;
                z3 = false;
            }
        }
        z3 = z;
        z2 = false;
        _RepositorySnapshotInProgress = z2;
        return z3;
    }

    public static boolean restoreFromRepositorySnapshot() {
        if (FileUtils.exists(Configuration.databaseBackupManagerFilePath())) {
            try {
                CoreHelper.writeTraceEntry(TAG, "Copying '" + Configuration.databaseBackupManagerFilePath() + "' to '" + Configuration.databaseBackupFilePath() + "'");
                FileUtils.copyFile(Configuration.databaseBackupManagerFilePath(), Configuration.databaseBackupFilePath());
                CoreHelper.writeTraceEntry(TAG, "Restored Database from snapshot!");
                if (FileUtils.exists(Configuration.settingsBackupManagerFilePath())) {
                    try {
                        CoreHelper.writeTraceEntry(TAG, "Copying '" + Configuration.settingsBackupManagerFilePath() + "' to '" + Configuration.settingsFilePath() + "'");
                        FileUtils.copyFile(Configuration.settingsBackupManagerFilePath(), Configuration.settingsFilePath());
                        CoreHelper.writeTraceEntry(TAG, "Restored Settings from snapshot!");
                    } catch (Exception e) {
                        CoreHelper.logException(TAG, "Unable to restore Settings from snapshot!", e);
                    }
                } else {
                    CoreHelper.writeTraceEntry(TAG, "Unable to restore Settings from snapshot! Snapshot file does not exist!");
                }
                if (FileUtils.exists(Configuration.itemHistoryBackupManagerFilePath())) {
                    try {
                        FileUtils.copyFile(Configuration.itemHistoryBackupManagerFilePath(), Configuration.itemHistoryFilePath());
                        CoreHelper.writeTraceEntry(TAG, "Restored Item State History from snapshot!");
                    } catch (Exception e2) {
                        CoreHelper.logException(TAG, "Unable to restore Item State History from snapshot!", e2);
                    }
                } else {
                    CoreHelper.writeTraceEntry(TAG, "Unable to restore Item State History from snapshot! Snapshot file does not exist!");
                }
                if (FileUtils.exists(Configuration.enclosureDownloadHistoryBackupManagerFilePath())) {
                    try {
                        FileUtils.copyFile(Configuration.enclosureDownloadHistoryBackupManagerFilePath(), Configuration.enclosureDownloadHistoryFilePath());
                        CoreHelper.writeTraceEntry(TAG, "Restored Download History from snapshot!");
                    } catch (Exception e3) {
                        CoreHelper.logException(TAG, "Unable to restore Download History from snapshot!", e3);
                    }
                } else {
                    CoreHelper.writeTraceEntry(TAG, "Unable to restore Download History from snapshot! Snapshot file does not exist!");
                }
                if (FileUtils.exists(Configuration.smartPlaylistBackupManagerFilePath())) {
                    try {
                        FileUtils.copyFile(Configuration.smartPlaylistBackupManagerFilePath(), Configuration.smartPlaylistFilePath());
                        CoreHelper.writeTraceEntry(TAG, "Restored Smart Playlist from snapshot!");
                    } catch (Exception e4) {
                        CoreHelper.logException(TAG, "Unable to restore Smart Playlist from snapshot!", e4);
                    }
                } else {
                    CoreHelper.writeTraceEntry(TAG, "Unable to restore Smart Playlist from snapshot! Snapshot file does not exist!");
                }
                if (FileUtils.exists(Configuration.playlistBackupManagerFilePath())) {
                    try {
                        FileUtils.copyFile(Configuration.playlistBackupManagerFilePath(), Configuration.playlistFilePath());
                        CoreHelper.writeTraceEntry(TAG, "Restored Playlist from snapshot!");
                        return true;
                    } catch (Exception e5) {
                        CoreHelper.logException(TAG, "Unable to restore Playlist from snapshot!", e5);
                        return true;
                    }
                }
                CoreHelper.writeTraceEntry(TAG, "Unable to restore Playlist from snapshot! Snapshot file does not exist!");
                return true;
            } catch (Exception e6) {
                CoreHelper.logException(TAG, "Unable to restore Database from snapshot!", e6);
                return false;
            }
        }
        CoreHelper.writeTraceEntry(TAG, "Unable to restore Database from snapshot! Snapshot file does not exist!");
        return false;
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x0031  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void patchDatabaseAfterRestore() {
        /*
            r0 = 0
            java.lang.String r1 = mobi.beyondpod.rsscore.Configuration.databaseBackupFilePath()     // Catch: java.lang.Throwable -> L18 java.lang.Exception -> L1d
            r2 = 0
            android.database.sqlite.SQLiteDatabase r1 = android.database.sqlite.SQLiteDatabase.openDatabase(r1, r0, r2)     // Catch: java.lang.Throwable -> L18 java.lang.Exception -> L1d
            patchFeedPaths(r1)     // Catch: java.lang.Exception -> L16 java.lang.Throwable -> L2e
            patchTrackPaths(r1)     // Catch: java.lang.Exception -> L16 java.lang.Throwable -> L2e
            deleteAllSyncRecords(r1)     // Catch: java.lang.Exception -> L16 java.lang.Throwable -> L2e
            if (r1 == 0) goto L2d
            goto L2a
        L16:
            r0 = move-exception
            goto L21
        L18:
            r1 = move-exception
            r4 = r1
            r1 = r0
            r0 = r4
            goto L2f
        L1d:
            r1 = move-exception
            r4 = r1
            r1 = r0
            r0 = r4
        L21:
            java.lang.String r2 = mobi.beyondpod.rsscore.StartupContentBuilder.TAG     // Catch: java.lang.Throwable -> L2e
            java.lang.String r3 = "Unable to patch restored database!"
            mobi.beyondpod.rsscore.helpers.CoreHelper.logException(r2, r3, r0)     // Catch: java.lang.Throwable -> L2e
            if (r1 == 0) goto L2d
        L2a:
            r1.close()
        L2d:
            return
        L2e:
            r0 = move-exception
        L2f:
            if (r1 == 0) goto L34
            r1.close()
        L34:
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: mobi.beyondpod.rsscore.StartupContentBuilder.patchDatabaseAfterRestore():void");
    }

    private static void deleteAllSyncRecords(SQLiteDatabase sQLiteDatabase) {
        try {
            int delete = sQLiteDatabase.delete(DatabaseHelper.DB_TABLE_CHANGE_HISTORY, null, null);
            CoreHelper.writeTraceEntry(TAG, "Deleted " + delete + " sync records.");
        } catch (Exception unused) {
            CoreHelper.writeLogEntry(TAG, "Unable to delete sync records in restored database! Probably restoring an old database");
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r15v0, types: [android.database.sqlite.SQLiteDatabase] */
    /* JADX WARN: Type inference failed for: r15v1 */
    /* JADX WARN: Type inference failed for: r15v10 */
    /* JADX WARN: Type inference failed for: r15v11 */
    /* JADX WARN: Type inference failed for: r15v5, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r1v3, types: [java.lang.StringBuilder] */
    /* JADX WARN: Type inference failed for: r2v10, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r5v0 */
    /* JADX WARN: Type inference failed for: r5v1 */
    /* JADX WARN: Type inference failed for: r5v2, types: [int] */
    /* JADX WARN: Type inference failed for: r5v9 */
    private static void patchTrackPaths(SQLiteDatabase sQLiteDatabase) {
        ?? r5;
        Cursor cursor;
        Throwable th;
        Cursor cursor2;
        SQLException e;
        SQLiteDatabase sQLiteDatabase2;
        Cursor cursor3;
        StringBuilder sb;
        String[] strArr = {"_id", "path"};
        String str = null;
        r1 = 0;
        int i = 0;
        try {
            try {
                sQLiteDatabase.beginTransaction();
                ContentValues contentValues = new ContentValues();
                cursor2 = sQLiteDatabase.query(DatabaseHelper.DB_TABLE_TRACKS, strArr, null, null, null, null, null);
                try {
                    int count = cursor2.getCount();
                    cursor2.moveToFirst();
                    int i2 = 0;
                    int i3 = 0;
                    while (i2 < count) {
                        try {
                            long j = cursor2.getLong(0);
                            String tryParseStringFromString = StringUtils.tryParseStringFromString(cursor2.getString(1), "");
                            String patchRootPath = FeedRepository.patchRootPath(tryParseStringFromString);
                            if (!StringUtils.equals(tryParseStringFromString, patchRootPath)) {
                                contentValues.put("path", patchRootPath);
                                if (sQLiteDatabase.update(DatabaseHelper.DB_TABLE_TRACKS, contentValues, "_id=" + j, null) != 1) {
                                    CoreHelper.writeTraceEntry(TAG, "Unable to patch track record: " + tryParseStringFromString);
                                } else {
                                    i3++;
                                }
                            }
                            cursor2.moveToNext();
                            i2++;
                            i3 = i3;
                        } catch (SQLException e2) {
                            e = e2;
                            i = i3;
                            CoreHelper.logException(TAG, "Unable to patch restored database track records", e);
                            sQLiteDatabase.endTransaction();
                            if (cursor2 != null && !cursor2.isClosed()) {
                                cursor2.close();
                            }
                            String str2 = TAG;
                            StringBuilder sb2 = new StringBuilder();
                            sb2.append("Patched ");
                            sb2.append(i);
                            sb = sb2;
                            cursor3 = "Patched ";
                            sQLiteDatabase = str2;
                            str = " track records.";
                            sb.append(" track records.");
                            CoreHelper.writeTraceEntry(sQLiteDatabase, sb.toString());
                        } catch (Throwable th2) {
                            th = th2;
                            cursor = cursor2;
                            r5 = i3;
                            sQLiteDatabase2 = sQLiteDatabase;
                            sQLiteDatabase2.endTransaction();
                            if (cursor != null && !cursor.isClosed()) {
                                cursor.close();
                            }
                            CoreHelper.writeTraceEntry(TAG, "Patched " + r5 + " track records.");
                            throw th;
                        }
                    }
                    sQLiteDatabase.setTransactionSuccessful();
                    sQLiteDatabase.endTransaction();
                    if (cursor2 != null && !cursor2.isClosed()) {
                        cursor2.close();
                    }
                    String str3 = TAG;
                    StringBuilder sb3 = new StringBuilder();
                    sb3.append("Patched ");
                    sb3.append(i3);
                    sb = sb3;
                    cursor3 = cursor2;
                    sQLiteDatabase = str3;
                } catch (SQLException e3) {
                    e = e3;
                }
            } catch (Throwable th3) {
                th = th3;
                r5 = str;
                cursor = cursor3;
                sQLiteDatabase2 = sQLiteDatabase;
            }
        } catch (SQLException e4) {
            cursor2 = null;
            e = e4;
        } catch (Throwable th4) {
            r5 = 0;
            cursor = null;
            th = th4;
            sQLiteDatabase2 = sQLiteDatabase;
        }
        str = " track records.";
        sb.append(" track records.");
        CoreHelper.writeTraceEntry(sQLiteDatabase, sb.toString());
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r13v0, types: [android.database.sqlite.SQLiteDatabase] */
    /* JADX WARN: Type inference failed for: r13v1 */
    /* JADX WARN: Type inference failed for: r13v10 */
    /* JADX WARN: Type inference failed for: r13v11 */
    /* JADX WARN: Type inference failed for: r13v5, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r1v3, types: [java.lang.StringBuilder] */
    /* JADX WARN: Type inference failed for: r6v0 */
    /* JADX WARN: Type inference failed for: r6v1 */
    /* JADX WARN: Type inference failed for: r6v2, types: [int] */
    /* JADX WARN: Type inference failed for: r6v9 */
    private static void patchFeedPaths(SQLiteDatabase sQLiteDatabase) {
        Cursor cursor;
        ?? r6;
        Throwable th;
        SQLException e;
        SQLiteDatabase sQLiteDatabase2;
        StringBuilder sb;
        String[] strArr = {"_id", "feedId", "path"};
        String str = null;
        r1 = 0;
        int i = 0;
        try {
            try {
                sQLiteDatabase.beginTransaction();
                ContentValues contentValues = new ContentValues();
                cursor = sQLiteDatabase.query(DatabaseHelper.DB_TABLE_FEEDS, strArr, null, null, null, null, null);
                try {
                    int count = cursor.getCount();
                    cursor.moveToFirst();
                    int i2 = 0;
                    int i3 = 0;
                    while (i2 < count) {
                        try {
                            long j = cursor.getLong(0);
                            String tryParseStringFromString = StringUtils.tryParseStringFromString(cursor.getString(2), "");
                            String patchRootPath = FeedRepository.patchRootPath(tryParseStringFromString);
                            if (!StringUtils.equals(tryParseStringFromString, patchRootPath)) {
                                contentValues.put("path", patchRootPath);
                                if (sQLiteDatabase.update(DatabaseHelper.DB_TABLE_FEEDS, contentValues, "_id=" + j, null) != 1) {
                                    CoreHelper.writeTraceEntry(TAG, "Unable to patch feed record: " + tryParseStringFromString);
                                } else {
                                    i3++;
                                }
                            }
                            cursor.moveToNext();
                            i2++;
                            i3 = i3;
                        } catch (SQLException e2) {
                            e = e2;
                            i = i3;
                            CoreHelper.logException(TAG, "Unable to patch restored database feed records", e);
                            sQLiteDatabase.endTransaction();
                            if (cursor != null && !cursor.isClosed()) {
                                cursor.close();
                            }
                            String str2 = TAG;
                            StringBuilder sb2 = new StringBuilder();
                            sb2.append("Patched ");
                            sb2.append(i);
                            sb = sb2;
                            sQLiteDatabase = str2;
                            str = " feed records.";
                            sb.append(" feed records.");
                            CoreHelper.writeTraceEntry(sQLiteDatabase, sb.toString());
                        } catch (Throwable th2) {
                            th = th2;
                            r6 = i3;
                            sQLiteDatabase2 = sQLiteDatabase;
                            sQLiteDatabase2.endTransaction();
                            if (cursor != null && !cursor.isClosed()) {
                                cursor.close();
                            }
                            CoreHelper.writeTraceEntry(TAG, "Patched " + r6 + " feed records.");
                            throw th;
                        }
                    }
                    sQLiteDatabase.setTransactionSuccessful();
                    sQLiteDatabase.endTransaction();
                    if (cursor != null && !cursor.isClosed()) {
                        cursor.close();
                    }
                    String str3 = TAG;
                    StringBuilder sb3 = new StringBuilder();
                    sb3.append("Patched ");
                    sb3.append(i3);
                    sb = sb3;
                    sQLiteDatabase = str3;
                } catch (SQLException e3) {
                    e = e3;
                }
            } catch (Throwable th3) {
                th = th3;
                r6 = str;
                sQLiteDatabase2 = sQLiteDatabase;
            }
        } catch (SQLException e4) {
            cursor = null;
            e = e4;
        } catch (Throwable th4) {
            cursor = null;
            r6 = 0;
            th = th4;
            sQLiteDatabase2 = sQLiteDatabase;
        }
        str = " feed records.";
        sb.append(" feed records.");
        CoreHelper.writeTraceEntry(sQLiteDatabase, sb.toString());
    }

    public static boolean deleteDatabase() {
        new DatabaseHelper(BeyondPodApplication.getInstance().getApplicationContext()).cleanup();
        boolean delete = new File(DatabaseHelper.databasePath()).delete();
        if (delete) {
            CoreHelper.writeTraceEntry(TAG, "BeyondPod database file was sucessfully deleted!");
        } else {
            CoreHelper.writeTraceEntry(TAG, "Unable to delete BeyondPod database!");
        }
        return delete;
    }

    public static void addRemoveNoMediaFile(boolean z) {
        File file = new File(Configuration.enclosureDownloadRoot(), ".nomedia");
        if (z) {
            if (file.exists()) {
                file.delete();
            }
        } else {
            if (file.exists()) {
                return;
            }
            CoreHelper.copyResToFile(R.raw.nomedia, file);
        }
    }
}
