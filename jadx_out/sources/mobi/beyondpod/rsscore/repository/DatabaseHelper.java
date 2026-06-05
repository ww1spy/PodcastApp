package mobi.beyondpod.rsscore.repository;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.SQLException;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteException;
import android.database.sqlite.SQLiteOpenHelper;
import com.google.android.gms.analytics.ecommerce.Promotion;
import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.UUID;
import mobi.beyondpod.BeyondPodApplication;
import mobi.beyondpod.rsscore.Configuration;
import mobi.beyondpod.rsscore.Feed;
import mobi.beyondpod.rsscore.Track;
import mobi.beyondpod.rsscore.TrackDictionary;
import mobi.beyondpod.rsscore.categories.CategoryManager;
import mobi.beyondpod.rsscore.categories.FeedCategories;
import mobi.beyondpod.rsscore.helpers.CoreHelper;
import mobi.beyondpod.rsscore.helpers.FileUtils;
import mobi.beyondpod.rsscore.helpers.StringUtils;
import mobi.beyondpod.rsscore.helpers.TimeSpan;
import mobi.beyondpod.rsscore.history.EpisodeHistoryManager;
import mobi.beyondpod.schedulercore.ScheduledTask;
import mobi.beyondpod.schedulercore.ScheduledTasksManager;
import mobi.beyondpod.services.player.smartplay.SmartPlaylist;
import mobi.beyondpod.sync.ChangeTracker;
import mobi.beyondpod.sync.TrackedChangeBase;

/* loaded from: classes.dex */
public class DatabaseHelper {
    private static final int CATEGORY_COL_categories = 1;
    private static final int CATEGORY_COL_rowId = 0;
    private static final int CHANGE_HISTORY_COL_blob = 4;
    private static final int CHANGE_HISTORY_COL_changeType = 2;
    private static final int CHANGE_HISTORY_COL_rowId = 0;
    private static final int CHANGE_HISTORY_COL_syncStatus = 3;
    private static final int CHANGE_HISTORY_COL_timestamp = 1;
    public static final String DB_NAME = "beyondpod.db";
    public static final String DB_TABLE_CHANGE_HISTORY = "change_history";
    public static final String DB_TABLE_EPISODE_HISTORY = "episode_history";
    public static final String DB_TABLE_FEEDS = "feeds";
    private static final String DB_TABLE_SCHEDULER = "scheduled_tasks";
    public static final String DB_TABLE_SMART_PLAYLIST = "smartplaylist";
    public static final String DB_TABLE_TRACKS = "tracks";
    private static final int DB_VERSION = 10;
    private static final int EPISODES_HISTORY_COL_entryType = 4;
    private static final int EPISODES_HISTORY_COL_episodeUrl = 1;
    private static final int EPISODES_HISTORY_COL_feedUrl = 2;
    private static final int EPISODES_HISTORY_COL_rowId = 0;
    private static final int EPISODES_HISTORY_COL_timestamp = 3;
    private static final int FEED_COL_audio_settings = 27;
    private static final int FEED_COL_autodelete = 4;
    private static final int FEED_COL_category = 12;
    private static final int FEED_COL_custDownload = 13;
    private static final int FEED_COL_feedId = 1;
    private static final int FEED_COL_feedPlayer = 19;
    private static final int FEED_COL_fingerprintType = 26;
    private static final int FEED_COL_forceItemSort = 16;
    private static final int FEED_COL_forceUniqueNames = 14;
    private static final int FEED_COL_hasUnread = 9;
    private static final int FEED_COL_imageUrl = 8;
    private static final int FEED_COL_lastItemId = 17;
    private static final int FEED_COL_leftTruncateLongTrackNames = 15;
    private static final int FEED_COL_maxDownload = 21;
    private static final int FEED_COL_maxGReaderItems = 22;
    private static final int FEED_COL_maxTrackAge = 24;
    private static final int FEED_COL_maxTracks = 23;
    private static final int FEED_COL_name = 3;
    public static final int FEED_COL_path = 2;
    private static final int FEED_COL_pubDate = 10;
    public static final int FEED_COL_rowID = 0;
    private static final int FEED_COL_savePlayedPosition = 25;
    private static final int FEED_COL_srvPubDate = 11;
    private static final int FEED_COL_trackSort = 18;
    private static final int FEED_COL_type = 6;
    private static final int FEED_COL_url = 7;
    private static final int FEED_COL_username = 20;
    private static final int FEED_COL_view = 5;
    private static final int SCHEDULER_COL_active = 2;
    private static final int SCHEDULER_COL_minBattLevel = 3;
    private static final int SCHEDULER_COL_operationId = 7;
    private static final int SCHEDULER_COL_recInterval = 6;
    private static final int SCHEDULER_COL_recPeriod = 5;
    private static final int SCHEDULER_COL_rowId = 0;
    private static final int SCHEDULER_COL_startTime = 4;
    private static final int SCHEDULER_COL_state = 8;
    private static final int SCHEDULER_COL_taskId = 1;
    private static final int SMART_PLAYLIST_COL_categoryId = 5;
    private static final int SMART_PLAYLIST_COL_config = 9;
    private static final int SMART_PLAYLIST_COL_episodeFilter = 7;
    private static final int SMART_PLAYLIST_COL_feedId = 3;
    private static final int SMART_PLAYLIST_COL_numEpisodes = 6;
    private static final int SMART_PLAYLIST_COL_playbackType = 8;
    private static final int SMART_PLAYLIST_COL_playlistId = 1;
    private static final int SMART_PLAYLIST_COL_playlistName = 2;
    private static final int SMART_PLAYLIST_COL_rowId = 0;
    private static final int SMART_PLAYLIST_COL_sortOrder = 4;
    private static final String TAG = "DatabaseHelper";
    private static final int TRACK_COL_contentType = 5;
    private static final int TRACK_COL_description = 16;
    private static final int TRACK_COL_downloadPortion = 10;
    private static final int TRACK_COL_downloadSize = 9;
    private static final int TRACK_COL_imagePath = 15;
    private static final int TRACK_COL_locked = 19;
    private static final int TRACK_COL_name = 4;
    private static final int TRACK_COL_orgRssItemID = 13;
    private static final int TRACK_COL_parentFeedID = 14;
    public static final int TRACK_COL_path = 1;
    private static final int TRACK_COL_played = 6;
    private static final int TRACK_COL_playedTime = 3;
    private static final int TRACK_COL_postTitle = 17;
    private static final int TRACK_COL_postUrl = 18;
    private static final int TRACK_COL_protocol = 7;
    private static final int TRACK_COL_pubDate = 11;
    public static final int TRACK_COL_rowId = 0;
    private static final int TRACK_COL_showNotesSize = 20;
    private static final int TRACK_COL_totalTime = 2;
    private static final int TRACK_COL_url = 8;
    private SQLiteDatabase db;
    private final DBOpenHelper dbOpenHelper;
    public static final String[] COLS_FEEDS = {"_id", "feedId", "path", "name", "autodelete", Promotion.ACTION_VIEW, "type", "url", "imageUrl", "hasUnread", "pubDate", "srvPubDate", "category", "custDownload", "forceUniqueNames", "leftTruncateLongTrackNames", "forceItemSort", "lastItemId", "trackSort", "feedPlayer", "username", "maxDownload", "maxGReaderItems", "maxTracks", "maxTrackAge", "savePlayedPosition", "fingerprintType", "audioSettings"};
    public static final String[] COLS_TRACKS = {"_id", "path", "totalTime", "playedTime", "name", "contentType", "played", "protocol", "url", "downloadSize", "downloadPortion", "pubDate", "orgFeedItemID", "orgRssItemID", "parentFeedID", "imagePath", "description", "postTitle", "postUrl", "locked", "length(showNotes)"};
    public static final String[] COLS_TRACK_SHOW_NOTES = {"showNotes"};
    private static final String[] COLS_SCHEDULER = {"_id", "taskId", "active", "minBattLevel", "startTime", "recPeriod", "recInterval", "operationId", "state"};
    private static final String DB_TABLE_CATEGORIES = "categories";
    private static final String[] COLS_CATEGORIES = {"_id", DB_TABLE_CATEGORIES};
    private static final String[] COLS_CHANGE_HISTORY = {"_id", "timestamp", "changeType", "syncStatus", "blob"};
    private static final String[] COLS_EPISODES_HISTORY = {"_id", "episodeUrl", "feedUrl", "timestamp", "entryType"};
    private static final String[] COLS_SMART_PLAYLIST = {"_id", "playlistId", "playlistName", "feedId", "sortOrder", "categoryId", "numEpisodes", "episodeFilter", "playbackType", "config"};

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static class DBOpenHelper extends SQLiteOpenHelper {
        private static final String DB_CREATE_CATEGORIES = "CREATE TABLE categories (_id INTEGER PRIMARY KEY, categories TEXT );";
        private static final String DB_CREATE_CHANGE_HISTORY = "CREATE TABLE change_history ( _id INTEGER PRIMARY KEY, timestamp INTEGER, changeType INTEGER, syncStatus INTEGER, blob TEXT);";
        private static final String DB_CREATE_EPISODE_HISTORY = "CREATE TABLE episode_history ( _id INTEGER PRIMARY KEY, episodeUrl TEXT, feedUrl TEXT, timestamp INTEGER, entryType INTEGER);";
        private static final String DB_CREATE_FEEDS = "CREATE TABLE feeds (_id INTEGER PRIMARY KEY, feedId TEXT , path TEXT, name TEXT, autodelete INTEGER, view INTEGER,type INTEGER, url TEXT, imageUrl TEXT, hasUnread INTEGER, pubDate INTEGER,srvPubDate INTEGER, category TEXT, custDownload INTEGER, forceUniqueNames INTEGER,leftTruncateLongTrackNames INTEGER, forceItemSort INTEGER, lastItemId TEXT,trackSort INTEGER, feedPlayer INTEGER, username TEXT, maxDownload INTEGER,maxGReaderItems INTEGER, maxTracks INTEGER, maxTrackAge INTEGER, savePlayedPosition INTEGER, fingerprintType INTEGER, audioSettings TEXT);";
        private static final String DB_CREATE_SCHEDULER = "CREATE TABLE scheduled_tasks ( _id INTEGER PRIMARY KEY, taskId TEXT, active INTEGER, minBattLevel INTEGER, startTime INTEGER,recPeriod INTEGER, recInterval INTEGER, operationId TEXT, state TEXT );";
        private static final String DB_CREATE_SMART_PLAYLIST = "CREATE TABLE smartplaylist (_id INTEGER PRIMARY KEY, playlistId INTEGER, playlistName TEXT, feedId TEXT, sortOrder INTEGER, categoryId TEXT, numEpisodes INTEGER, episodeFilter INTEGER, playbackType INTEGER, config STRING);";
        private static final String DB_CREATE_TRACKS = "CREATE TABLE tracks (_id INTEGER PRIMARY KEY, path TEXT, totalTime INTEGER, playedTime INTEGER, name TEXT, contentType TEXT, played INTEGER,protocol TEXT, url TEXT, downloadSize INTEGER, downloadPortion INTEGER, pubDate INTEGER,orgFeedItemID TEXT, orgRssItemID TEXT, parentFeedID TEXT, imagePath TEXT, description TEXT, postTitle TEXT, postUrl TEXT, locked INTEGER, showNotes TEXT );";
        private static final String UPGRADE_ADD_FEED_AUDIO_SETTINGS_COLUMN = "ALTER TABLE feeds ADD COLUMN audioSettings TEXT";
        private static final String UPGRADE_ADD_FEED_FINGERPRINT_COLUMN = "ALTER TABLE feeds ADD COLUMN fingerprintType INTEGER";
        private static final String UPGRADE_ADD_ORG_RSS_ITEM_ID_COLUMN = "ALTER TABLE tracks ADD COLUMN orgRssItemID TEXT";
        private static final String UPGRADE_ADD_PARENT_FEED_ID_COLUMN = "ALTER TABLE tracks ADD COLUMN parentFeedID TEXT";
        private static final String UPGRADE_ADD_SAVE_PLAYED_POSITION_COLUMN = "ALTER TABLE feeds ADD COLUMN savePlayedPosition INTEGER";
        private static final String UPGRADE_ADD_TRACK_DESCRIPTION_COLUMN = "ALTER TABLE tracks ADD COLUMN description TEXT";
        private static final String UPGRADE_ADD_TRACK_IMAGE_PATH_COLUMN = "ALTER TABLE tracks ADD COLUMN imagePath TEXT";
        private static final String UPGRADE_ADD_TRACK_LOCKED_COLUMN = "ALTER TABLE tracks ADD COLUMN locked INTEGER";
        private static final String UPGRADE_ADD_TRACK_POSTTITLE_COLUMN = "ALTER TABLE tracks ADD COLUMN postTitle TEXT";
        private static final String UPGRADE_ADD_TRACK_POSTURL_COLUMN = "ALTER TABLE tracks ADD COLUMN postUrl TEXT";
        private static final String UPGRADE_ADD_TRACK_SHOW_NOTES_COLUMN = "ALTER TABLE tracks ADD COLUMN showNotes TEXT";
        private boolean _ForceSchemaCheck;

        public DBOpenHelper(Context context) {
            super(context, DatabaseHelper.DB_NAME, (SQLiteDatabase.CursorFactory) null, 10);
            this._ForceSchemaCheck = false;
        }

        @Override // android.database.sqlite.SQLiteOpenHelper
        public void onCreate(SQLiteDatabase sQLiteDatabase) {
            try {
                sQLiteDatabase.execSQL(DB_CREATE_FEEDS);
                sQLiteDatabase.execSQL(DB_CREATE_TRACKS);
                sQLiteDatabase.execSQL(DB_CREATE_CATEGORIES);
                sQLiteDatabase.execSQL(DB_CREATE_SCHEDULER);
                sQLiteDatabase.execSQL(DB_CREATE_CHANGE_HISTORY);
                sQLiteDatabase.execSQL(DB_CREATE_EPISODE_HISTORY);
                sQLiteDatabase.execSQL(DB_CREATE_SMART_PLAYLIST);
            } catch (SQLException e) {
                CoreHelper.logException(DatabaseHelper.TAG, "Unable to create BeyondPod Database", e);
            }
        }

        @Override // android.database.sqlite.SQLiteOpenHelper
        public void onOpen(SQLiteDatabase sQLiteDatabase) {
            super.onOpen(sQLiteDatabase);
            if (this._ForceSchemaCheck) {
                forceSchemaCheck(sQLiteDatabase);
            }
        }

        private void forceSchemaCheck(SQLiteDatabase sQLiteDatabase) {
            try {
                CoreHelper.writeLogEntry(DatabaseHelper.TAG, "Executing Schema Check...");
                if (!hasField(sQLiteDatabase, DatabaseHelper.DB_TABLE_TRACKS, "orgRssItemID")) {
                    sQLiteDatabase.execSQL(UPGRADE_ADD_ORG_RSS_ITEM_ID_COLUMN);
                    CoreHelper.writeLogEntry(DatabaseHelper.TAG, "Inserted orgRssItemID column");
                }
                if (!hasField(sQLiteDatabase, DatabaseHelper.DB_TABLE_TRACKS, "parentFeedID")) {
                    sQLiteDatabase.execSQL(UPGRADE_ADD_PARENT_FEED_ID_COLUMN);
                    CoreHelper.writeLogEntry(DatabaseHelper.TAG, "Inserted parentFeedID column");
                }
                if (!hasField(sQLiteDatabase, DatabaseHelper.DB_TABLE_FEEDS, "savePlayedPosition")) {
                    sQLiteDatabase.execSQL(UPGRADE_ADD_SAVE_PLAYED_POSITION_COLUMN);
                    CoreHelper.writeLogEntry(DatabaseHelper.TAG, "Inserted savePlayedPosition column");
                }
                if (!hasField(sQLiteDatabase, DatabaseHelper.DB_TABLE_TRACKS, "imagePath")) {
                    sQLiteDatabase.execSQL(UPGRADE_ADD_TRACK_IMAGE_PATH_COLUMN);
                    CoreHelper.writeLogEntry(DatabaseHelper.TAG, "Inserted imagePath column");
                }
                if (!hasField(sQLiteDatabase, DatabaseHelper.DB_TABLE_TRACKS, "description")) {
                    sQLiteDatabase.execSQL(UPGRADE_ADD_TRACK_DESCRIPTION_COLUMN);
                    CoreHelper.writeLogEntry(DatabaseHelper.TAG, "Inserted description column");
                }
                if (!hasField(sQLiteDatabase, DatabaseHelper.DB_TABLE_TRACKS, "postTitle")) {
                    sQLiteDatabase.execSQL(UPGRADE_ADD_TRACK_POSTTITLE_COLUMN);
                    CoreHelper.writeLogEntry(DatabaseHelper.TAG, "Inserted postTitle column");
                }
                if (!hasField(sQLiteDatabase, DatabaseHelper.DB_TABLE_TRACKS, "postUrl")) {
                    sQLiteDatabase.execSQL(UPGRADE_ADD_TRACK_POSTURL_COLUMN);
                    CoreHelper.writeLogEntry(DatabaseHelper.TAG, "Inserted postUrl column");
                }
                if (!hasField(sQLiteDatabase, DatabaseHelper.DB_TABLE_TRACKS, "locked")) {
                    sQLiteDatabase.execSQL(UPGRADE_ADD_TRACK_LOCKED_COLUMN);
                    CoreHelper.writeLogEntry(DatabaseHelper.TAG, "Inserted locked column");
                }
                if (!hasField(sQLiteDatabase, DatabaseHelper.DB_TABLE_FEEDS, "fingerprintType")) {
                    sQLiteDatabase.execSQL(UPGRADE_ADD_FEED_FINGERPRINT_COLUMN);
                    CoreHelper.writeLogEntry(DatabaseHelper.TAG, "Inserted fingerprintType column");
                }
                if (!hasField(sQLiteDatabase, DatabaseHelper.DB_TABLE_FEEDS, "audioSettings")) {
                    sQLiteDatabase.execSQL(UPGRADE_ADD_FEED_AUDIO_SETTINGS_COLUMN);
                    CoreHelper.writeLogEntry(DatabaseHelper.TAG, "Inserted audioSettings column");
                }
                if (!hasField(sQLiteDatabase, DatabaseHelper.DB_TABLE_TRACKS, "showNotes")) {
                    sQLiteDatabase.execSQL(UPGRADE_ADD_TRACK_SHOW_NOTES_COLUMN);
                    CoreHelper.writeLogEntry(DatabaseHelper.TAG, "Inserted showNotes column");
                }
                if (!hasField(sQLiteDatabase, DatabaseHelper.DB_TABLE_CHANGE_HISTORY, DatabaseHelper.COLS_CHANGE_HISTORY[0])) {
                    sQLiteDatabase.execSQL(DB_CREATE_CHANGE_HISTORY);
                    CoreHelper.writeLogEntry(DatabaseHelper.TAG, "Created CHANGE_HISTORY table");
                }
                if (!hasField(sQLiteDatabase, DatabaseHelper.DB_TABLE_EPISODE_HISTORY, DatabaseHelper.COLS_EPISODES_HISTORY[0])) {
                    sQLiteDatabase.execSQL(DB_CREATE_EPISODE_HISTORY);
                    CoreHelper.writeLogEntry(DatabaseHelper.TAG, "Created EPISODE_HISTORY table");
                }
                if (!hasField(sQLiteDatabase, DatabaseHelper.DB_TABLE_SMART_PLAYLIST, DatabaseHelper.COLS_SMART_PLAYLIST[0])) {
                    sQLiteDatabase.execSQL(DB_CREATE_SMART_PLAYLIST);
                    CoreHelper.writeLogEntry(DatabaseHelper.TAG, "Created SMARTPLAYLIST table");
                }
                CoreHelper.writeLogEntry(DatabaseHelper.TAG, "Schema Check Completed!");
            } catch (Exception e) {
                CoreHelper.logException(DatabaseHelper.TAG, "Unable to Force Shchema Check!", e);
            }
        }

        @Override // android.database.sqlite.SQLiteOpenHelper
        public void onUpgrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
            int i3 = i + 1;
            while (true) {
                onUpgradeInternal(sQLiteDatabase, i, i3);
                int i4 = i3 + 1;
                if (i4 > i2) {
                    return;
                }
                int i5 = i3;
                i3 = i4;
                i = i5;
            }
        }

        @Override // android.database.sqlite.SQLiteOpenHelper
        public void onDowngrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
            CoreHelper.writeLogEntry(DatabaseHelper.TAG, "Downgrading database from v" + i + " to v" + i2);
        }

        private void onUpgradeInternal(SQLiteDatabase sQLiteDatabase, int i, int i2) {
            CoreHelper.writeLogEntry(DatabaseHelper.TAG, "Upgrading database from v" + i + " to v" + i2);
            if (i == 1 && i2 == 2) {
                try {
                    sQLiteDatabase.execSQL(UPGRADE_ADD_ORG_RSS_ITEM_ID_COLUMN);
                } catch (Exception e) {
                    CoreHelper.logException(DatabaseHelper.TAG, "Unable to upgrade from v 1 -> v2", e);
                }
            }
            if (i == 2 && i2 == 3) {
                try {
                    sQLiteDatabase.execSQL(UPGRADE_ADD_PARENT_FEED_ID_COLUMN);
                    sQLiteDatabase.execSQL(UPGRADE_ADD_SAVE_PLAYED_POSITION_COLUMN);
                } catch (Exception e2) {
                    CoreHelper.logException(DatabaseHelper.TAG, "Unable to upgrade database from v1 -> v2! Forcing Schema Check...", e2);
                    forceSchemaCheck(sQLiteDatabase);
                }
            }
            if (i == 3 && i2 == 4) {
                try {
                    sQLiteDatabase.execSQL(UPGRADE_ADD_TRACK_IMAGE_PATH_COLUMN);
                    sQLiteDatabase.execSQL(UPGRADE_ADD_TRACK_DESCRIPTION_COLUMN);
                    sQLiteDatabase.execSQL(UPGRADE_ADD_TRACK_POSTTITLE_COLUMN);
                    sQLiteDatabase.execSQL(UPGRADE_ADD_TRACK_POSTURL_COLUMN);
                } catch (Exception e3) {
                    CoreHelper.logException(DatabaseHelper.TAG, "Unable to upgrade database from v3 -> v4! Forcing Schema Check...", e3);
                    forceSchemaCheck(sQLiteDatabase);
                }
            }
            if (i == 4 && i2 == 5) {
                try {
                    sQLiteDatabase.execSQL(UPGRADE_ADD_TRACK_LOCKED_COLUMN);
                } catch (Exception e4) {
                    CoreHelper.logException(DatabaseHelper.TAG, "Unable to upgrade database from v4 -> v5! Forcing Schema Check...", e4);
                    forceSchemaCheck(sQLiteDatabase);
                }
            }
            if (i == 5 && i2 == 6) {
                try {
                    sQLiteDatabase.execSQL(UPGRADE_ADD_FEED_FINGERPRINT_COLUMN);
                } catch (Exception e5) {
                    CoreHelper.logException(DatabaseHelper.TAG, "Unable to upgrade database from v5 -> v6! Forcing Schema Check...", e5);
                    forceSchemaCheck(sQLiteDatabase);
                }
            }
            if (i == 6 && i2 == 7) {
                try {
                    sQLiteDatabase.execSQL(DB_CREATE_CHANGE_HISTORY);
                } catch (Exception e6) {
                    CoreHelper.logException(DatabaseHelper.TAG, "Unable to upgrade database from v6 -> v7! Forcing Schema Check...", e6);
                    forceSchemaCheck(sQLiteDatabase);
                }
            }
            if (i == 7 && i2 == 8) {
                try {
                    sQLiteDatabase.execSQL(DB_CREATE_EPISODE_HISTORY);
                } catch (Exception e7) {
                    CoreHelper.logException(DatabaseHelper.TAG, "Unable to upgrade database from v7 -> v8! Forcing Schema Check...", e7);
                    forceSchemaCheck(sQLiteDatabase);
                }
            }
            if (i == 8 && i2 == 9) {
                try {
                    sQLiteDatabase.execSQL(DB_CREATE_SMART_PLAYLIST);
                } catch (Exception e8) {
                    CoreHelper.logException(DatabaseHelper.TAG, "Unable to upgrade database from v8 -> v9! Forcing Schema Check...", e8);
                    forceSchemaCheck(sQLiteDatabase);
                }
            }
            if (i == 9 && i2 == 10) {
                try {
                    sQLiteDatabase.execSQL(UPGRADE_ADD_FEED_AUDIO_SETTINGS_COLUMN);
                    sQLiteDatabase.execSQL(UPGRADE_ADD_TRACK_SHOW_NOTES_COLUMN);
                } catch (Exception e9) {
                    CoreHelper.logException(DatabaseHelper.TAG, "Unable to upgrade database from v9 -> v10! Forcing Schema Check...", e9);
                    forceSchemaCheck(sQLiteDatabase);
                }
            }
        }

        private boolean hasField(SQLiteDatabase sQLiteDatabase, String str, String str2) {
            Cursor rawQuery = sQLiteDatabase.rawQuery("PRAGMA table_info(" + str + ");", null);
            boolean z = false;
            if (rawQuery == null) {
                return false;
            }
            while (true) {
                if (!rawQuery.moveToNext()) {
                    break;
                }
                if (rawQuery.getString(1).equals(str2)) {
                    z = true;
                    break;
                }
            }
            rawQuery.close();
            return z;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:12:0x0036, code lost:
    
        if (r0 != null) goto L10;
     */
    /* JADX WARN: Code restructure failed: missing block: B:13:0x0038, code lost:
    
        r0.close();
        r2 = r2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x0050, code lost:
    
        if (r0 == null) goto L26;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v0, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r0v4 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean dataBaseExists() {
        /*
            java.lang.String r0 = databasePath()
            java.lang.String r1 = mobi.beyondpod.rsscore.repository.DatabaseHelper.TAG
            java.lang.StringBuilder r2 = new java.lang.StringBuilder
            r2.<init>()
            java.lang.String r3 = "Looking for BeyondPod database file at: "
            r2.append(r3)
            r2.append(r0)
            java.lang.String r2 = r2.toString()
            mobi.beyondpod.rsscore.helpers.CoreHelper.writeTraceEntry(r1, r2)
            boolean r1 = mobi.beyondpod.rsscore.helpers.FileUtils.exists(r0)
            if (r1 != 0) goto L29
            java.lang.String r0 = mobi.beyondpod.rsscore.repository.DatabaseHelper.TAG
            java.lang.String r1 = "BeyondPod database file DOES NOT EXIST!"
            mobi.beyondpod.rsscore.helpers.CoreHelper.writeLogEntry(r0, r1)
            r0 = 0
            return r0
        L29:
            r1 = 1
            r2 = 0
            android.database.sqlite.SQLiteDatabase r0 = android.database.sqlite.SQLiteDatabase.openDatabase(r0, r2, r1)     // Catch: java.lang.Throwable -> L42 android.database.sqlite.SQLiteException -> L45 android.database.sqlite.SQLiteReadOnlyDatabaseException -> L53
            java.lang.String r2 = mobi.beyondpod.rsscore.repository.DatabaseHelper.TAG     // Catch: java.lang.Throwable -> L3c android.database.sqlite.SQLiteException -> L3e android.database.sqlite.SQLiteReadOnlyDatabaseException -> L40
            java.lang.String r3 = "Found BeyondPod database file"
            mobi.beyondpod.rsscore.helpers.CoreHelper.writeTraceEntry(r2, r3)     // Catch: java.lang.Throwable -> L3c android.database.sqlite.SQLiteException -> L3e android.database.sqlite.SQLiteReadOnlyDatabaseException -> L40
            if (r0 == 0) goto L5f
        L38:
            r0.close()
            goto L5f
        L3c:
            r1 = move-exception
            goto L60
        L3e:
            r2 = move-exception
            goto L49
        L40:
            r2 = r0
            goto L53
        L42:
            r1 = move-exception
            r0 = r2
            goto L60
        L45:
            r0 = move-exception
            r5 = r2
            r2 = r0
            r0 = r5
        L49:
            java.lang.String r3 = mobi.beyondpod.rsscore.repository.DatabaseHelper.TAG     // Catch: java.lang.Throwable -> L3c
            java.lang.String r4 = "BeyondPod SQL database file exists but opening the database failed!"
            mobi.beyondpod.rsscore.helpers.CoreHelper.logException(r3, r4, r2)     // Catch: java.lang.Throwable -> L3c
            if (r0 == 0) goto L5f
            goto L38
        L53:
            java.lang.String r0 = mobi.beyondpod.rsscore.repository.DatabaseHelper.TAG     // Catch: java.lang.Throwable -> L42
            java.lang.String r3 = "Found BeyondPod database file"
            mobi.beyondpod.rsscore.helpers.CoreHelper.writeTraceEntry(r0, r3)     // Catch: java.lang.Throwable -> L42
            if (r2 == 0) goto L5f
            r2.close()
        L5f:
            return r1
        L60:
            if (r0 == 0) goto L65
            r0.close()
        L65:
            throw r1
        */
        throw new UnsupportedOperationException("Method not decompiled: mobi.beyondpod.rsscore.repository.DatabaseHelper.dataBaseExists():boolean");
    }

    public static boolean createTempDB() {
        DatabaseHelper databaseHelper;
        String databasePath = databasePath();
        if (FileUtils.exists(databasePath)) {
            CoreHelper.writeLogEntry(TAG, "BeyondPod database file already EXIST!");
            return true;
        }
        CoreHelper.writeTraceEntry(TAG, "Creating a temporary database file at: " + databasePath + "...");
        DatabaseHelper databaseHelper2 = null;
        try {
            try {
                databaseHelper = new DatabaseHelper(BeyondPodApplication.getInstance());
            } catch (SQLiteException e) {
                e = e;
            }
        } catch (Throwable th) {
            th = th;
        }
        try {
            boolean exists = FileUtils.exists(databasePath);
            if (databaseHelper != null) {
                databaseHelper.cleanup();
            }
            return exists;
        } catch (SQLiteException e2) {
            e = e2;
            databaseHelper2 = databaseHelper;
            CoreHelper.logException(TAG, "Unable to create a temporary database!", e);
            if (databaseHelper2 == null) {
                return false;
            }
            databaseHelper2.cleanup();
            return false;
        } catch (Throwable th2) {
            th = th2;
            databaseHelper2 = databaseHelper;
            if (databaseHelper2 != null) {
                databaseHelper2.cleanup();
            }
            throw th;
        }
    }

    public static String databasePath() {
        return BeyondPodApplication.getInstance().getDatabasePath(DB_NAME).getAbsolutePath();
    }

    public DatabaseHelper(Context context) {
        this.dbOpenHelper = new DBOpenHelper(context);
        establishDb();
    }

    private void establishDb() {
        if (this.db == null) {
            this.db = this.dbOpenHelper.getWritableDatabase();
        }
    }

    public void cleanup() {
        if (this.db != null) {
            this.db.close();
            this.db = null;
        }
    }

    public void saveFeed(Feed feed) {
        ContentValues contentValues = new ContentValues();
        contentValues.put("feedId", feed.id().toString());
        contentValues.put("path", feed.getRawFeedPath());
        contentValues.put("name", feed.getName());
        contentValues.put("autodelete", Integer.valueOf(feed.getAllowAutoTrackDeletions()));
        contentValues.put(Promotion.ACTION_VIEW, Integer.valueOf(feed.getPreferredEnclosureIndex()));
        contentValues.put("type", Integer.valueOf(feed.getType()));
        contentValues.put("url", feed.getFeedUrl());
        contentValues.put("imageUrl", feed.getFeedImageUrl());
        contentValues.put("hasUnread", Integer.valueOf(feed.numUnreadItems()));
        contentValues.put("pubDate", feed.getLastModifiedDate() != null ? Long.valueOf(feed.getLastModifiedDate().getTime()) : null);
        contentValues.put("srvPubDate", feed.getLastServerModifiedDate() != null ? Long.valueOf(feed.getLastServerModifiedDate().getTime()) : null);
        contentValues.put("category", feed.getCategories().serialize());
        contentValues.put("custDownload", Integer.valueOf(feed.getPodcastDownloadAction()));
        contentValues.put("forceUniqueNames", Boolean.valueOf(feed.getForceUniqueTrackNames()));
        contentValues.put("savePlayedPosition", Boolean.valueOf(feed.getShouldRememberPlayedPosition()));
        contentValues.put("fingerprintType", Integer.valueOf(feed.getItemFingerprintAlgorithm()));
        contentValues.put("leftTruncateLongTrackNames", Boolean.valueOf(feed.getLeftTruncateLongTrackNames()));
        contentValues.put("forceItemSort", Integer.valueOf(feed.getForceFeedItemSort()));
        contentValues.put("lastItemId", feed.getLastItemID());
        contentValues.put("trackSort", feed.getTrackSortOrder() != Configuration.getPodcastsSortOrder() ? Integer.valueOf(feed.getTrackSortOrder()) : null);
        contentValues.put("feedPlayer", Integer.valueOf(feed.getFeedPlayer()));
        contentValues.put("username", feed.getUserName());
        contentValues.put("maxDownload", Integer.valueOf(feed.getMaxNumberPodcastToDownload()));
        contentValues.put("maxGReaderItems", Integer.valueOf(feed.getMaxNumGReaderItemsToGet()));
        contentValues.put("maxTracks", feed.getKeepAtMostPodcasts() != Configuration.getGlobalDefaultKeepAtMostPodcasts() ? Integer.valueOf(feed.getKeepAtMostPodcasts()) : null);
        contentValues.put("maxTrackAge", feed.getMaximumPodcastAge() != Configuration.getGlobalDefaultMaximumPodcastAge() ? Double.valueOf(feed.getMaximumPodcastAge().getTotalDays()) : null);
        contentValues.put("audioSettings", feed.getAudioSettings().serialize());
        CoreHelper.writeTraceEntry(TAG, "Saving feed record for: " + feed.getName());
        if (feed.rowID() == null) {
            long insert = this.db.insert(DB_TABLE_FEEDS, null, contentValues);
            if (insert != -1) {
                feed.initRowID(Long.valueOf(insert));
                ChangeTracker.addLocalFeedChange(1, feed, 60);
            } else {
                CoreHelper.writeTraceEntry(TAG, "!!! failed to insert feed record for: " + feed.getName());
            }
        } else {
            if (this.db.update(DB_TABLE_FEEDS, contentValues, "_id=" + feed.rowID(), null) != 1) {
                CoreHelper.writeTraceEntry(TAG, "!!! failed to update feed record for: " + feed.getName());
            }
        }
        feed.setIsModified(false);
    }

    public void deleteFeed(Feed feed) {
        if (feed == null || feed.rowID() == null) {
            return;
        }
        CoreHelper.writeTraceEntry(TAG, "Deleting feed record for: " + feed.getName());
        if (this.db.delete(DB_TABLE_FEEDS, "_id=" + feed.rowID(), null) != 1) {
            CoreHelper.writeTraceEntry(TAG, "!!! failed to delete feed record for: " + feed.getName());
            return;
        }
        ChangeTracker.addLocalFeedChange(2, feed, 60);
    }

    public void loadFeeds(Feed feed) {
        Cursor query;
        feed.subFeeds().clear();
        Cursor cursor = null;
        try {
            try {
                query = this.db.query(DB_TABLE_FEEDS, COLS_FEEDS, null, null, null, null, null);
            } catch (SQLException e) {
                e = e;
            }
        } catch (Throwable th) {
            th = th;
        }
        try {
            int count = query.getCount();
            query.moveToFirst();
            for (int i = 0; i < count; i++) {
                loadFeed(query, feed);
                query.moveToNext();
            }
            if (query == null || query.isClosed()) {
                return;
            }
            query.close();
        } catch (SQLException e2) {
            e = e2;
            cursor = query;
            CoreHelper.logException(TAG, "Unable to load feed database records", e);
            if (cursor == null || cursor.isClosed()) {
                return;
            }
            cursor.close();
        } catch (Throwable th2) {
            th = th2;
            cursor = query;
            if (cursor != null && !cursor.isClosed()) {
                cursor.close();
            }
            throw th;
        }
    }

    private void loadFeed(Cursor cursor, Feed feed) {
        try {
            long j = cursor.getLong(0);
            UUID tryParseUUIDFromString = StringUtils.tryParseUUIDFromString(cursor.getString(1), UUID.randomUUID());
            String tryParseStringFromString = StringUtils.tryParseStringFromString(cursor.getString(3), "");
            String tryParseStringFromString2 = StringUtils.tryParseStringFromString(cursor.getString(2), "");
            String tryParseStringFromString3 = StringUtils.tryParseStringFromString(cursor.getString(7), "");
            String tryParseStringFromString4 = StringUtils.tryParseStringFromString(cursor.getString(8), "");
            String tryParseStringFromString5 = StringUtils.tryParseStringFromString(cursor.getString(12), "");
            String tryParseStringFromString6 = StringUtils.tryParseStringFromString(cursor.getString(20), "");
            int safeGetInt = safeGetInt(cursor, 4, 0);
            int safeGetInt2 = safeGetInt(cursor, 5, 0);
            int safeGetInt3 = safeGetInt(cursor, 6, 0);
            int safeGetInt4 = safeGetInt(cursor, 23, Configuration.getGlobalDefaultKeepAtMostPodcasts());
            int safeGetInt5 = safeGetInt(cursor, 24, Configuration.DEFAULT_MAXIMUM_PODCAST_AGE_IN_DAYS);
            int safeGetInt6 = safeGetInt(cursor, 21, Configuration.getGlobalDefaultNumberPodcastsToDownload());
            int safeGetInt7 = safeGetInt(cursor, 22, 0);
            int safeGetInt8 = safeGetInt(cursor, 9, 0);
            int safeGetInt9 = safeGetInt(cursor, 13, 0);
            boolean safeGetBoolean = safeGetBoolean(cursor, 14, false);
            boolean safeGetBoolean2 = safeGetBoolean(cursor, 25, true);
            int safeGetInt10 = safeGetInt(cursor, 26, 1);
            boolean safeGetBoolean3 = safeGetBoolean(cursor, 15, false);
            int safeGetInt11 = safeGetInt(cursor, 16, -1);
            int safeGetInt12 = safeGetInt(cursor, 18, -1);
            int safeGetInt13 = safeGetInt(cursor, 19, -1);
            Date safeGetDate = safeGetDate(cursor, 10);
            Date safeGetDate2 = safeGetDate(cursor, 11);
            String tryParseStringFromString7 = StringUtils.tryParseStringFromString(cursor.getString(17), null);
            String tryParseStringFromString8 = StringUtils.tryParseStringFromString(cursor.getString(27), null);
            Feed feed2 = new Feed(tryParseUUIDFromString, feed);
            try {
                feed2.initRowID(Long.valueOf(j));
                feed2.setName(tryParseStringFromString);
                feed2.setFeedUrl(tryParseStringFromString3);
                feed2.setFeedImageUrl(tryParseStringFromString4);
                feed2.setAllowAutoTrackDeletions(safeGetInt);
                feed2.setPreferredEnclosureIndex(safeGetInt2);
                feed2.setType(safeGetInt3);
                feed2.setFeedPath(tryParseStringFromString2);
                feed2.setNumUnreadItems(safeGetInt8);
                feed2.setLastModifiedDate(safeGetDate);
                feed2.setLastServerModifiedDate(safeGetDate2);
                feed2.setCategories(FeedCategories.deserialize(tryParseStringFromString5));
                feed2.setForceFeedItemSort(safeGetInt11);
                feed2.setForceUniqueTrackNames(safeGetBoolean);
                feed2.setShouldRememberPlayedPosition(safeGetBoolean2);
                feed2.setItemFingerprintAlgorithm(safeGetInt10);
                feed2.setLeftTruncateLongTrackNames(safeGetBoolean3);
                feed2.setLastItemID(tryParseStringFromString7);
                feed2.setFeedPlayer(safeGetInt13);
                feed2.setUserName(tryParseStringFromString6);
                feed2.setTrackSortOrder(safeGetInt12);
                if (safeGetInt7 > 0) {
                    feed2.setMaxNumGReaderItemsToGet(safeGetInt7);
                }
                feed2.setPodcastDownloadAction(safeGetInt9);
                feed2.setMaxNumberPodcastsToDownload(safeGetInt6);
                feed2.setKeepAtMostPodcasts(safeGetInt4);
                feed2.setMaximumPodcastAge(new TimeSpan(safeGetInt5, 0L, 0L, 0L));
                feed2.setAudioSettings(Feed.FeedAudioSettings.deserialize(tryParseStringFromString8));
                feed2.setIsModified(false);
            } catch (Throwable th) {
                CoreHelper.writeLogEntry(TAG, "Unable to read feed! " + th.getMessage());
            }
            feed.subFeeds().add(feed2);
        } catch (Throwable th2) {
            CoreHelper.writeLogEntry(TAG, "Unable to read feed! " + th2.getMessage());
        }
    }

    public void saveTask(ScheduledTask scheduledTask) {
        ContentValues contentValues = new ContentValues();
        contentValues.put("taskId", scheduledTask.taskID());
        contentValues.put("active", Integer.valueOf(scheduledTask.active ? 1 : 0));
        contentValues.put("minBattLevel", Integer.valueOf(scheduledTask.minBatteryLevelRequired));
        contentValues.put("startTime", Long.valueOf(scheduledTask.event.getUnadjustedStartTime().getTime()));
        contentValues.put("recPeriod", Long.valueOf(scheduledTask.event.getRecurrencePeriod().getTotalMilliseconds()));
        contentValues.put("recInterval", Integer.valueOf(scheduledTask.event.getRecurrenceInterval()));
        contentValues.put("operationId", scheduledTask.operation().id().toString());
        contentValues.put("state", scheduledTask.operation().serializedData());
        CoreHelper.writeTraceEntry(TAG, "Saving task record for: " + scheduledTask);
        if (scheduledTask.rowID() == null) {
            long insert = this.db.insert(DB_TABLE_SCHEDULER, null, contentValues);
            if (insert != -1) {
                scheduledTask.initRowID(Long.valueOf(insert));
            } else {
                CoreHelper.writeTraceEntry(TAG, "!!! failed to insert task record for: " + scheduledTask);
            }
        } else {
            if (this.db.update(DB_TABLE_SCHEDULER, contentValues, "_id=" + scheduledTask.rowID(), null) != 1) {
                CoreHelper.writeTraceEntry(TAG, "!!! failed to update task record for: " + scheduledTask);
            }
        }
        scheduledTask.setIsModified(false);
        scheduledTask.event.setIsModified(false);
        scheduledTask.operation().setIsModified(false);
    }

    public void deleteTask(ScheduledTask scheduledTask) {
        if (scheduledTask == null || scheduledTask.rowID() == null) {
            return;
        }
        CoreHelper.writeTraceEntry(TAG, "Deleting task record for: " + scheduledTask);
        if (this.db.delete(DB_TABLE_SCHEDULER, "_id=" + scheduledTask.rowID(), null) != 1) {
            CoreHelper.writeTraceEntry(TAG, "!!! failed to delete scheduled task record for: " + scheduledTask);
        }
    }

    public void loadTasks() {
        Cursor query;
        Cursor cursor = null;
        try {
            try {
                ScheduledTasksManager.clearAllTasks();
                query = this.db.query(DB_TABLE_SCHEDULER, COLS_SCHEDULER, null, null, null, null, null);
            } catch (SQLException e) {
                e = e;
            }
        } catch (Throwable th) {
            th = th;
        }
        try {
            int count = query.getCount();
            query.moveToFirst();
            for (int i = 0; i < count; i++) {
                loadTask(query);
                query.moveToNext();
            }
            if (query == null || query.isClosed()) {
                return;
            }
            query.close();
        } catch (SQLException e2) {
            e = e2;
            cursor = query;
            CoreHelper.logException(TAG, "Unable to load track database records", e);
            if (cursor == null || cursor.isClosed()) {
                return;
            }
            cursor.close();
        } catch (Throwable th2) {
            th = th2;
            cursor = query;
            if (cursor != null && !cursor.isClosed()) {
                cursor.close();
            }
            throw th;
        }
    }

    private void loadTask(Cursor cursor) {
        try {
            long j = cursor.getLong(0);
            String string = cursor.getString(1);
            boolean safeGetBoolean = safeGetBoolean(cursor, 2, false);
            int safeGetInt = safeGetInt(cursor, 3, 6);
            Date safeGetDate = safeGetDate(cursor, 4);
            if (safeGetDate == null) {
                safeGetDate = new Date();
            }
            ScheduledTask loadTask = ScheduledTasksManager.loadTask(j, string, safeGetBoolean, safeGetInt, safeGetDate, safeGetInt(cursor, 6, 1), safeGetLong(cursor, 5, 1L), StringUtils.tryParseUUIDFromString(cursor.getString(7), null), cursor.getString(8));
            loadTask.setIsModified(false);
            loadTask.event.setIsModified(false);
            loadTask.operation().setIsModified(false);
        } catch (Throwable th) {
            CoreHelper.writeLogEntry(TAG, "Unable to read scheduled task from database! " + th.getMessage());
        }
    }

    public void saveTrack(Track track) {
        ContentValues contentValues = new ContentValues();
        contentValues.put("path", track.trackPath());
        contentValues.put("totalTime", Long.valueOf(track.getTotalTime()));
        contentValues.put("playedTime", Long.valueOf(track.getPlayedTime()));
        contentValues.put("name", track.getName());
        contentValues.put("contentType", track.contentMimeType());
        contentValues.put("played", Integer.valueOf(track.isPlayed() ? 1 : 0));
        contentValues.put("protocol", track.getProtocol());
        contentValues.put("url", track.getUrl());
        contentValues.put("downloadSize", Long.valueOf(track.getDownloadSize()));
        contentValues.put("downloadPortion", Long.valueOf(track.getDownloadedPortion()));
        contentValues.put("pubDate", track.getLastModifiedDate() != null ? Long.valueOf(track.getLastModifiedDate().getTime()) : null);
        contentValues.put("orgRssItemID", track.rssItemID());
        contentValues.put("parentFeedID", track.getParentFeed().id().toString());
        contentValues.put("imagePath", track.trackImagePath());
        contentValues.put("description", track.trackDescription());
        contentValues.put("postTitle", track.trackPostTitle());
        contentValues.put("postUrl", track.trackPostUrl());
        contentValues.put("locked", Integer.valueOf(track.locked() ? 1 : 0));
        if (!StringUtils.isNullOrEmpty(track.getShowNotes())) {
            contentValues.put("showNotes", track.getShowNotes());
        }
        CoreHelper.writeTraceEntry(TAG, "Saving track record for: " + track.getName());
        if (track.rowID() == null) {
            long insert = this.db.insert(DB_TABLE_TRACKS, null, contentValues);
            if (insert != -1) {
                track.initRowID(Long.valueOf(insert));
                track.changeTrackingEnabled = true;
            } else {
                CoreHelper.writeTraceEntry(TAG, "!!! failed to insert track record for: " + track.getName());
            }
        } else {
            if (this.db.update(DB_TABLE_TRACKS, contentValues, "_id=" + track.rowID(), null) != 1) {
                CoreHelper.writeTraceEntry(TAG, "!!! failed to update track record for: " + track.getName());
            }
        }
        track.setIsModified(false);
    }

    public void deleteTrack(Track track) {
        if (track == null || track.rowID() == null) {
            return;
        }
        CoreHelper.writeTraceEntry(TAG, "Deleting track record for: " + track.getName());
        if (this.db.delete(DB_TABLE_TRACKS, "_id=" + track.rowID(), null) != 1) {
            CoreHelper.writeTraceEntry(TAG, "!!! failed to delete track record for: " + track.getName());
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:13:0x0049, code lost:
    
        if (r2.isClosed() == false) goto L22;
     */
    /* JADX WARN: Code restructure failed: missing block: B:14:0x0064, code lost:
    
        r2.close();
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x0062, code lost:
    
        if (r2.isClosed() == false) goto L22;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public mobi.beyondpod.rsscore.TrackDictionary loadTracks() {
        /*
            r11 = this;
            mobi.beyondpod.rsscore.TrackDictionary r0 = new mobi.beyondpod.rsscore.TrackDictionary
            r0.<init>()
            r1 = 0
            android.database.sqlite.SQLiteDatabase r2 = r11.db     // Catch: java.lang.Throwable -> L4e android.database.SQLException -> L51
            java.lang.String r3 = "tracks"
            java.lang.String[] r4 = mobi.beyondpod.rsscore.repository.DatabaseHelper.COLS_TRACKS     // Catch: java.lang.Throwable -> L4e android.database.SQLException -> L51
            r5 = 0
            r6 = 0
            r7 = 0
            r8 = 0
            r9 = 0
            android.database.Cursor r2 = r2.query(r3, r4, r5, r6, r7, r8, r9)     // Catch: java.lang.Throwable -> L4e android.database.SQLException -> L51
            int r1 = r2.getCount()     // Catch: android.database.SQLException -> L4c java.lang.Throwable -> L68
            java.lang.String r3 = mobi.beyondpod.rsscore.repository.DatabaseHelper.TAG     // Catch: android.database.SQLException -> L4c java.lang.Throwable -> L68
            java.lang.StringBuilder r4 = new java.lang.StringBuilder     // Catch: android.database.SQLException -> L4c java.lang.Throwable -> L68
            r4.<init>()     // Catch: android.database.SQLException -> L4c java.lang.Throwable -> L68
            java.lang.String r5 = "Database has "
            r4.append(r5)     // Catch: android.database.SQLException -> L4c java.lang.Throwable -> L68
            r4.append(r1)     // Catch: android.database.SQLException -> L4c java.lang.Throwable -> L68
            java.lang.String r5 = " track records."
            r4.append(r5)     // Catch: android.database.SQLException -> L4c java.lang.Throwable -> L68
            java.lang.String r4 = r4.toString()     // Catch: android.database.SQLException -> L4c java.lang.Throwable -> L68
            mobi.beyondpod.rsscore.helpers.CoreHelper.writeTraceEntry(r3, r4)     // Catch: android.database.SQLException -> L4c java.lang.Throwable -> L68
            r2.moveToFirst()     // Catch: android.database.SQLException -> L4c java.lang.Throwable -> L68
            r3 = 0
        L38:
            if (r3 >= r1) goto L43
            r11.loadTrack(r2, r0)     // Catch: android.database.SQLException -> L4c java.lang.Throwable -> L68
            r2.moveToNext()     // Catch: android.database.SQLException -> L4c java.lang.Throwable -> L68
            int r3 = r3 + 1
            goto L38
        L43:
            if (r2 == 0) goto L67
            boolean r1 = r2.isClosed()
            if (r1 != 0) goto L67
            goto L64
        L4c:
            r1 = move-exception
            goto L55
        L4e:
            r0 = move-exception
            r2 = r1
            goto L69
        L51:
            r2 = move-exception
            r10 = r2
            r2 = r1
            r1 = r10
        L55:
            java.lang.String r3 = mobi.beyondpod.rsscore.repository.DatabaseHelper.TAG     // Catch: java.lang.Throwable -> L68
            java.lang.String r4 = "Unable to load track database records"
            mobi.beyondpod.rsscore.helpers.CoreHelper.logException(r3, r4, r1)     // Catch: java.lang.Throwable -> L68
            if (r2 == 0) goto L67
            boolean r1 = r2.isClosed()
            if (r1 != 0) goto L67
        L64:
            r2.close()
        L67:
            return r0
        L68:
            r0 = move-exception
        L69:
            if (r2 == 0) goto L74
            boolean r1 = r2.isClosed()
            if (r1 != 0) goto L74
            r2.close()
        L74:
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: mobi.beyondpod.rsscore.repository.DatabaseHelper.loadTracks():mobi.beyondpod.rsscore.TrackDictionary");
    }

    private void loadTrack(Cursor cursor, TrackDictionary trackDictionary) {
        UUID tryParseUUIDFromString;
        try {
            long j = cursor.getLong(0);
            String tryParseStringFromString = StringUtils.tryParseStringFromString(cursor.getString(1), "");
            String tryParseStringFromString2 = StringUtils.tryParseStringFromString(cursor.getString(4), "");
            String tryParseStringFromString3 = StringUtils.tryParseStringFromString(cursor.getString(7), "");
            String tryParseStringFromString4 = StringUtils.tryParseStringFromString(cursor.getString(8), "");
            String tryParseStringFromString5 = StringUtils.tryParseStringFromString(cursor.getString(15), "");
            String tryParseStringFromString6 = StringUtils.tryParseStringFromString(cursor.getString(16), "");
            String tryParseStringFromString7 = StringUtils.tryParseStringFromString(cursor.getString(17), "");
            String tryParseStringFromString8 = StringUtils.tryParseStringFromString(cursor.getString(18), "");
            int safeGetInt = safeGetInt(cursor, 19, 0);
            String tryParseStringFromString9 = StringUtils.tryParseStringFromString(cursor.getString(5), "");
            long safeGetLong = safeGetLong(cursor, 2, 0L);
            long safeGetLong2 = safeGetLong(cursor, 3, 0L);
            boolean safeGetBoolean = safeGetBoolean(cursor, 6, false);
            long safeGetLong3 = safeGetLong(cursor, 9, 0L);
            long safeGetLong4 = safeGetLong(cursor, 10, 0L);
            Date safeGetDate = safeGetDate(cursor, 11);
            String string = cursor.getString(13);
            String string2 = cursor.getString(14);
            long safeGetLong5 = safeGetLong(cursor, 20, 0L);
            Feed feed = null;
            if (!StringUtils.isNullOrEmpty(string2) && (tryParseUUIDFromString = StringUtils.tryParseUUIDFromString(cursor.getString(14), null)) != null) {
                feed = FeedRepository.getFeedById(tryParseUUIDFromString);
            }
            Track track = new Track(tryParseStringFromString, feed);
            track.initRowID(Long.valueOf(j));
            track.setName(tryParseStringFromString2);
            track.setContentMimeType(tryParseStringFromString9);
            track.setProtocol(tryParseStringFromString3);
            track.setUrl(tryParseStringFromString4);
            track.initializePlayedTimes(safeGetLong2, safeGetLong, safeGetBoolean);
            track.setDownloadedPortion(safeGetLong4);
            track.setDownloadSize(safeGetLong3);
            track.setLastModifiedDate(safeGetDate);
            track.setRssItemID(string);
            track.setTrackDescription(tryParseStringFromString6);
            track.setTrackImagePath(tryParseStringFromString5);
            track.setTrackPostTitle(tryParseStringFromString7);
            track.setTrackPostUrl(tryParseStringFromString8);
            boolean z = true;
            if (safeGetInt != 1) {
                z = false;
            }
            track.setLocked(z);
            track.setSavedShowNotesSize(safeGetLong5);
            trackDictionary.put(track.trackPath(), track);
            track.setIsModified(false);
        } catch (Throwable th) {
            CoreHelper.writeLogEntry(TAG, "Unable to read track from database! " + th.getMessage());
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:17:0x0040, code lost:
    
        if (r12.isClosed() == false) goto L26;
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x0058, code lost:
    
        r12.close();
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x0056, code lost:
    
        if (r12.isClosed() == false) goto L26;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.String loadTrackShowNotes(java.lang.Long r12) {
        /*
            r11 = this;
            r0 = 0
            android.database.sqlite.SQLiteDatabase r1 = r11.db     // Catch: java.lang.Throwable -> L45 android.database.SQLException -> L47
            java.lang.String r2 = "tracks"
            java.lang.String[] r3 = mobi.beyondpod.rsscore.repository.DatabaseHelper.COLS_TRACK_SHOW_NOTES     // Catch: java.lang.Throwable -> L45 android.database.SQLException -> L47
            java.lang.String r4 = "_id=?"
            r5 = 1
            java.lang.String[] r5 = new java.lang.String[r5]     // Catch: java.lang.Throwable -> L45 android.database.SQLException -> L47
            long r6 = r12.longValue()     // Catch: java.lang.Throwable -> L45 android.database.SQLException -> L47
            java.lang.String r12 = java.lang.Long.toString(r6)     // Catch: java.lang.Throwable -> L45 android.database.SQLException -> L47
            r9 = 0
            r5[r9] = r12     // Catch: java.lang.Throwable -> L45 android.database.SQLException -> L47
            r6 = 0
            r7 = 0
            r8 = 0
            android.database.Cursor r12 = r1.query(r2, r3, r4, r5, r6, r7, r8)     // Catch: java.lang.Throwable -> L45 android.database.SQLException -> L47
            boolean r1 = r12.moveToFirst()     // Catch: android.database.SQLException -> L43 java.lang.Throwable -> L5c
            if (r1 == 0) goto L3a
            java.lang.String r1 = r12.getString(r9)     // Catch: android.database.SQLException -> L43 java.lang.Throwable -> L5c
            java.lang.String r2 = ""
            java.lang.String r1 = mobi.beyondpod.rsscore.helpers.StringUtils.tryParseStringFromString(r1, r2)     // Catch: android.database.SQLException -> L43 java.lang.Throwable -> L5c
            if (r12 == 0) goto L39
            boolean r0 = r12.isClosed()
            if (r0 != 0) goto L39
            r12.close()
        L39:
            return r1
        L3a:
            if (r12 == 0) goto L5b
            boolean r1 = r12.isClosed()
            if (r1 != 0) goto L5b
            goto L58
        L43:
            r1 = move-exception
            goto L49
        L45:
            r12 = move-exception
            goto L60
        L47:
            r1 = move-exception
            r12 = r0
        L49:
            java.lang.String r2 = mobi.beyondpod.rsscore.repository.DatabaseHelper.TAG     // Catch: java.lang.Throwable -> L5c
            java.lang.String r3 = "Unable to load track show notes from database"
            mobi.beyondpod.rsscore.helpers.CoreHelper.logException(r2, r3, r1)     // Catch: java.lang.Throwable -> L5c
            if (r12 == 0) goto L5b
            boolean r1 = r12.isClosed()
            if (r1 != 0) goto L5b
        L58:
            r12.close()
        L5b:
            return r0
        L5c:
            r0 = move-exception
            r10 = r0
            r0 = r12
            r12 = r10
        L60:
            if (r0 == 0) goto L6b
            boolean r1 = r0.isClosed()
            if (r1 != 0) goto L6b
            r0.close()
        L6b:
            throw r12
        */
        throw new UnsupportedOperationException("Method not decompiled: mobi.beyondpod.rsscore.repository.DatabaseHelper.loadTrackShowNotes(java.lang.Long):java.lang.String");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v0, types: [boolean] */
    /* JADX WARN: Type inference failed for: r2v1 */
    /* JADX WARN: Type inference failed for: r2v3, types: [android.database.Cursor] */
    public void cleanAnyDuplicateDatabaseTracks(TrackDictionary trackDictionary) {
        ?? hasNext;
        Throwable th;
        Cursor cursor;
        SQLException e;
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        Iterator<Track> it = trackDictionary.values().iterator();
        while (true) {
            hasNext = it.hasNext();
            if (hasNext == 0) {
                break;
            } else {
                arrayList2.add(it.next().rowID());
            }
        }
        try {
            try {
                cursor = this.db.query(DB_TABLE_TRACKS, COLS_TRACKS, null, null, null, null, null);
                try {
                    int count = cursor.getCount();
                    cursor.moveToFirst();
                    int i = 0;
                    for (int i2 = 0; i2 < count; i2++) {
                        long j = cursor.getLong(0);
                        if (!arrayList2.contains(Long.valueOf(j))) {
                            arrayList.add(Long.valueOf(j));
                        }
                        cursor.moveToNext();
                    }
                    if (arrayList.size() > 0) {
                        try {
                            beginTransaction();
                            Iterator it2 = arrayList.iterator();
                            while (it2.hasNext()) {
                                Long l = (Long) it2.next();
                                if (this.db.delete(DB_TABLE_TRACKS, "_id=" + l, null) != 1) {
                                    CoreHelper.writeTraceEntry(TAG, "!!! failed to delete record for track id:" + l);
                                } else {
                                    i++;
                                }
                            }
                            CoreHelper.writeTraceEntry(TAG, "Found: " + arrayList.size() + " duplicate track records. Deleted: " + i);
                            setTransactionSuccessful();
                            endTransaction();
                        } catch (Throwable th2) {
                            endTransaction();
                            throw th2;
                        }
                    } else {
                        CoreHelper.writeTraceEntry(TAG, "No duplicate track records were found.");
                    }
                    if (cursor == null || cursor.isClosed()) {
                        return;
                    }
                } catch (SQLException e2) {
                    e = e2;
                    CoreHelper.logException(TAG, "Unable to load track database records", e);
                    if (cursor == null || cursor.isClosed()) {
                        return;
                    }
                    cursor.close();
                }
            } catch (Throwable th3) {
                th = th3;
                if (hasNext != 0 && !hasNext.isClosed()) {
                    hasNext.close();
                }
                throw th;
            }
        } catch (SQLException e3) {
            cursor = null;
            e = e3;
        } catch (Throwable th4) {
            hasNext = 0;
            th = th4;
            if (hasNext != 0) {
                hasNext.close();
            }
            throw th;
        }
        cursor.close();
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x0072  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0088  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void saveCategories() {
        /*
            r14 = this;
            android.content.ContentValues r0 = new android.content.ContentValues
            r0.<init>()
            java.lang.String r1 = mobi.beyondpod.rsscore.categories.CategoryManager.serialize()
            java.lang.String[] r2 = mobi.beyondpod.rsscore.repository.DatabaseHelper.COLS_CATEGORIES
            r3 = 1
            r2 = r2[r3]
            r0.put(r2, r1)
            java.lang.String r2 = mobi.beyondpod.rsscore.repository.DatabaseHelper.TAG
            java.lang.StringBuilder r4 = new java.lang.StringBuilder
            r4.<init>()
            java.lang.String r5 = "Saving category record! Serialized Data: "
            r4.append(r5)
            r4.append(r1)
            java.lang.String r1 = r4.toString()
            mobi.beyondpod.rsscore.helpers.CoreHelper.writeLogEntryInProduction(r2, r1)
            r1 = -9223372036854775808
            r4 = 0
            r5 = 0
            android.database.sqlite.SQLiteDatabase r6 = r14.db     // Catch: java.lang.Throwable -> L57 android.database.SQLException -> L59
            java.lang.String r7 = "categories"
            java.lang.String[] r8 = mobi.beyondpod.rsscore.repository.DatabaseHelper.COLS_CATEGORIES     // Catch: java.lang.Throwable -> L57 android.database.SQLException -> L59
            r9 = 0
            r10 = 0
            r11 = 0
            r12 = 0
            java.lang.String[] r13 = mobi.beyondpod.rsscore.repository.DatabaseHelper.COLS_CATEGORIES     // Catch: java.lang.Throwable -> L57 android.database.SQLException -> L59
            r13 = r13[r4]     // Catch: java.lang.Throwable -> L57 android.database.SQLException -> L59
            android.database.Cursor r6 = r6.query(r7, r8, r9, r10, r11, r12, r13)     // Catch: java.lang.Throwable -> L57 android.database.SQLException -> L59
            boolean r7 = r6.moveToFirst()     // Catch: android.database.SQLException -> L55 java.lang.Throwable -> Lae
            if (r7 == 0) goto L48
            long r7 = r6.getLong(r4)     // Catch: android.database.SQLException -> L55 java.lang.Throwable -> Lae
            goto L49
        L48:
            r7 = r1
        L49:
            if (r6 == 0) goto L6e
            boolean r9 = r6.isClosed()
            if (r9 != 0) goto L6e
            r6.close()
            goto L6e
        L55:
            r7 = move-exception
            goto L5b
        L57:
            r0 = move-exception
            goto Lb0
        L59:
            r7 = move-exception
            r6 = r5
        L5b:
            java.lang.String r8 = mobi.beyondpod.rsscore.repository.DatabaseHelper.TAG     // Catch: java.lang.Throwable -> Lae
            java.lang.String r9 = "Unable to read categories database record"
            mobi.beyondpod.rsscore.helpers.CoreHelper.logException(r8, r9, r7)     // Catch: java.lang.Throwable -> Lae
            if (r6 == 0) goto L6d
            boolean r7 = r6.isClosed()
            if (r7 != 0) goto L6d
            r6.close()
        L6d:
            r7 = r1
        L6e:
            int r6 = (r7 > r1 ? 1 : (r7 == r1 ? 0 : -1))
            if (r6 != 0) goto L88
            android.database.sqlite.SQLiteDatabase r1 = r14.db
            java.lang.String r2 = "categories"
            long r0 = r1.insert(r2, r5, r0)
            r2 = -1
            int r5 = (r0 > r2 ? 1 : (r0 == r2 ? 0 : -1))
            if (r5 != 0) goto Laa
            java.lang.String r0 = mobi.beyondpod.rsscore.repository.DatabaseHelper.TAG
            java.lang.String r1 = "!!! failed to insert category record!"
            mobi.beyondpod.rsscore.helpers.CoreHelper.writeLogEntry(r0, r1)
            goto Laa
        L88:
            android.database.sqlite.SQLiteDatabase r1 = r14.db
            java.lang.String r2 = "categories"
            java.lang.StringBuilder r6 = new java.lang.StringBuilder
            r6.<init>()
            java.lang.String r9 = "_id="
            r6.append(r9)
            r6.append(r7)
            java.lang.String r6 = r6.toString()
            int r0 = r1.update(r2, r0, r6, r5)
            if (r0 == r3) goto Laa
            java.lang.String r0 = mobi.beyondpod.rsscore.repository.DatabaseHelper.TAG
            java.lang.String r1 = "!!! failed to update category record!"
            mobi.beyondpod.rsscore.helpers.CoreHelper.writeLogEntry(r0, r1)
        Laa:
            mobi.beyondpod.rsscore.categories.CategoryManager.setIsModified(r4)
            return
        Lae:
            r0 = move-exception
            r5 = r6
        Lb0:
            if (r5 == 0) goto Lbb
            boolean r1 = r5.isClosed()
            if (r1 != 0) goto Lbb
            r5.close()
        Lbb:
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: mobi.beyondpod.rsscore.repository.DatabaseHelper.saveCategories():void");
    }

    public void loadCategories() {
        Throwable th;
        Cursor cursor;
        SQLException e;
        Cursor cursor2 = null;
        try {
            try {
                cursor = this.db.query(DB_TABLE_CATEGORIES, COLS_CATEGORIES, null, null, null, null, COLS_CATEGORIES[0]);
                try {
                    if (cursor.moveToFirst()) {
                        CategoryManager.deserialize(cursor.getString(1));
                        CategoryManager.setIsModified(false);
                    } else {
                        CoreHelper.writeLogEntry(TAG, "Load of categories failed - unable to move to the first record!");
                    }
                    if (cursor == null || cursor.isClosed()) {
                        return;
                    }
                } catch (SQLException e2) {
                    e = e2;
                    CoreHelper.logException(TAG, "Unable to load categories database record", e);
                    if (cursor == null || cursor.isClosed()) {
                        return;
                    }
                    cursor.close();
                }
            } catch (Throwable th2) {
                th = th2;
                if (0 != 0 && !cursor2.isClosed()) {
                    cursor2.close();
                }
                throw th;
            }
        } catch (SQLException e3) {
            cursor = null;
            e = e3;
        } catch (Throwable th3) {
            th = th3;
            if (0 != 0) {
                cursor2.close();
            }
            throw th;
        }
        cursor.close();
    }

    public void saveTrackedChange(TrackedChangeBase trackedChangeBase) {
        ContentValues contentValues = new ContentValues();
        contentValues.put(COLS_CHANGE_HISTORY[1], Long.valueOf(trackedChangeBase.timeStamp()));
        contentValues.put(COLS_CHANGE_HISTORY[2], Integer.valueOf(trackedChangeBase.changeType()));
        contentValues.put(COLS_CHANGE_HISTORY[3], Integer.valueOf(trackedChangeBase.syncStatus()));
        contentValues.put(COLS_CHANGE_HISTORY[4], trackedChangeBase.blob());
        if (trackedChangeBase.rowID() == null) {
            long insert = this.db.insert(DB_TABLE_CHANGE_HISTORY, null, contentValues);
            if (insert != -1) {
                trackedChangeBase.initRowID(Long.valueOf(insert));
                trackedChangeBase.setIsModified(false);
                return;
            }
            CoreHelper.writeTraceEntry(TAG, "!!! failed to isert change history record for: " + trackedChangeBase.friendlyName());
            return;
        }
        if (this.db.update(DB_TABLE_CHANGE_HISTORY, contentValues, "_id=" + trackedChangeBase.rowID(), null) != 1) {
            CoreHelper.writeTraceEntry(TAG, "!!! failed to update change history record for: " + trackedChangeBase.friendlyName());
            return;
        }
        trackedChangeBase.setIsModified(false);
    }

    public boolean deleteTrackedChange(TrackedChangeBase trackedChangeBase) {
        if (trackedChangeBase == null || trackedChangeBase.rowID() == null) {
            return false;
        }
        if (this.db.delete(DB_TABLE_CHANGE_HISTORY, "_id=" + trackedChangeBase.rowID(), null) == 1) {
            return true;
        }
        CoreHelper.writeTraceEntry(TAG, "!!! failed to delete record for: " + trackedChangeBase.friendlyName());
        return false;
    }

    public void loadTrackedChanges(ArrayList<TrackedChangeBase> arrayList) {
        Cursor query;
        arrayList.clear();
        Cursor cursor = null;
        try {
            try {
                query = this.db.query(DB_TABLE_CHANGE_HISTORY, COLS_CHANGE_HISTORY, null, null, null, null, null);
            } catch (SQLException e) {
                e = e;
            }
        } catch (Throwable th) {
            th = th;
        }
        try {
            int count = query.getCount();
            query.moveToFirst();
            for (int i = 0; i < count; i++) {
                TrackedChangeBase loadTrackedChange = loadTrackedChange(query);
                if (loadTrackedChange != null) {
                    arrayList.add(loadTrackedChange);
                }
                query.moveToNext();
            }
            if (query == null || query.isClosed()) {
                return;
            }
            query.close();
        } catch (SQLException e2) {
            e = e2;
            cursor = query;
            CoreHelper.logException(TAG, "Unable to load change history database records", e);
            if (cursor == null || cursor.isClosed()) {
                return;
            }
            cursor.close();
        } catch (Throwable th2) {
            th = th2;
            cursor = query;
            if (cursor != null && !cursor.isClosed()) {
                cursor.close();
            }
            throw th;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:36:0x0087 A[Catch: Throwable -> 0x008b, TRY_LEAVE, TryCatch #0 {Throwable -> 0x008b, blocks: (B:3:0x0002, B:36:0x0087, B:40:0x005e, B:41:0x0068, B:42:0x0072, B:43:0x007c), top: B:2:0x0002 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private mobi.beyondpod.sync.TrackedChangeBase loadTrackedChange(android.database.Cursor r13) {
        /*
            r12 = this;
            r0 = 0
            r1 = 0
            long r2 = r13.getLong(r1)     // Catch: java.lang.Throwable -> L8b
            java.lang.Long r5 = java.lang.Long.valueOf(r2)     // Catch: java.lang.Throwable -> L8b
            r2 = 2
            int r8 = r12.safeGetInt(r13, r2, r1)     // Catch: java.lang.Throwable -> L8b
            r3 = 0
            r6 = 1
            long r9 = r12.safeGetLong(r13, r6, r3)     // Catch: java.lang.Throwable -> L8b
            r3 = 3
            int r11 = r12.safeGetInt(r13, r3, r1)     // Catch: java.lang.Throwable -> L8b
            r4 = 4
            java.lang.String r13 = r13.getString(r4)     // Catch: java.lang.Throwable -> L8b
            java.lang.String r7 = ""
            java.lang.String r13 = mobi.beyondpod.rsscore.helpers.StringUtils.tryParseStringFromString(r13, r7)     // Catch: java.lang.Throwable -> L8b
            if (r8 == r6) goto L7c
            if (r8 == r2) goto L7c
            if (r8 == r3) goto L7c
            r2 = 14
            if (r8 != r2) goto L32
            goto L7c
        L32:
            if (r8 == r4) goto L72
            r2 = 5
            if (r8 == r2) goto L72
            r2 = 6
            if (r8 != r2) goto L3b
            goto L72
        L3b:
            r2 = 12
            if (r8 == r2) goto L68
            r2 = 13
            if (r8 == r2) goto L68
            r2 = 10
            if (r8 == r2) goto L68
            r2 = 11
            if (r8 != r2) goto L4c
            goto L68
        L4c:
            r2 = 9
            if (r8 == r2) goto L5e
            r2 = 7
            if (r8 == r2) goto L5e
            r2 = 8
            if (r8 == r2) goto L5e
            r2 = 15
            if (r8 != r2) goto L5c
            goto L5e
        L5c:
            r2 = r0
            goto L85
        L5e:
            mobi.beyondpod.sync.TrackedChangeEpisode r2 = new mobi.beyondpod.sync.TrackedChangeEpisode     // Catch: java.lang.Throwable -> L8b
            r4 = r2
            r6 = r9
            r9 = r11
            r10 = r13
            r4.<init>(r5, r6, r8, r9, r10)     // Catch: java.lang.Throwable -> L8b
            goto L85
        L68:
            mobi.beyondpod.sync.TrackedChangePost r2 = new mobi.beyondpod.sync.TrackedChangePost     // Catch: java.lang.Throwable -> L8b
            r4 = r2
            r6 = r9
            r9 = r11
            r10 = r13
            r4.<init>(r5, r6, r8, r9, r10)     // Catch: java.lang.Throwable -> L8b
            goto L85
        L72:
            mobi.beyondpod.sync.TrackedChangeEnclosure r2 = new mobi.beyondpod.sync.TrackedChangeEnclosure     // Catch: java.lang.Throwable -> L8b
            r4 = r2
            r6 = r9
            r9 = r11
            r10 = r13
            r4.<init>(r5, r6, r8, r9, r10)     // Catch: java.lang.Throwable -> L8b
            goto L85
        L7c:
            mobi.beyondpod.sync.TrackedChangeFeed r2 = new mobi.beyondpod.sync.TrackedChangeFeed     // Catch: java.lang.Throwable -> L8b
            r4 = r2
            r6 = r9
            r9 = r11
            r10 = r13
            r4.<init>(r5, r6, r8, r9, r10)     // Catch: java.lang.Throwable -> L8b
        L85:
            if (r2 == 0) goto L8a
            r2.setIsModified(r1)     // Catch: java.lang.Throwable -> L8b
        L8a:
            return r2
        L8b:
            r13 = move-exception
            java.lang.String r1 = mobi.beyondpod.rsscore.repository.DatabaseHelper.TAG
            java.lang.StringBuilder r2 = new java.lang.StringBuilder
            r2.<init>()
            java.lang.String r3 = "Unable to read feed! "
            r2.append(r3)
            java.lang.String r13 = r13.getMessage()
            r2.append(r13)
            java.lang.String r13 = r2.toString()
            mobi.beyondpod.rsscore.helpers.CoreHelper.writeLogEntry(r1, r13)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: mobi.beyondpod.rsscore.repository.DatabaseHelper.loadTrackedChange(android.database.Cursor):mobi.beyondpod.sync.TrackedChangeBase");
    }

    public void saveEpisodeHistory(EpisodeHistoryManager.EpisodeHistoryEntry episodeHistoryEntry) {
        ContentValues contentValues = new ContentValues();
        contentValues.put(COLS_EPISODES_HISTORY[1], episodeHistoryEntry.episodeUrl());
        contentValues.put(COLS_EPISODES_HISTORY[2], episodeHistoryEntry.feedUrl());
        contentValues.put(COLS_EPISODES_HISTORY[3], episodeHistoryEntry.timeStamp());
        contentValues.put(COLS_EPISODES_HISTORY[4], Integer.valueOf(episodeHistoryEntry.entryType()));
        if (episodeHistoryEntry.rowID() == null) {
            long insert = this.db.insert(DB_TABLE_EPISODE_HISTORY, null, contentValues);
            if (insert != -1) {
                episodeHistoryEntry.initRowID(Long.valueOf(insert));
                episodeHistoryEntry.setIsModified(false);
                return;
            }
            CoreHelper.writeTraceEntry(TAG, "!!! failed to insert episode history record for: " + episodeHistoryEntry.friendlyName());
            return;
        }
        if (this.db.update(DB_TABLE_EPISODE_HISTORY, contentValues, "_id=" + episodeHistoryEntry.rowID(), null) != 1) {
            CoreHelper.writeTraceEntry(TAG, "!!! failed to update episode history record for: " + episodeHistoryEntry.friendlyName());
            return;
        }
        episodeHistoryEntry.setIsModified(false);
    }

    public boolean deleteEpisodeFromHistory(EpisodeHistoryManager.EpisodeHistoryEntry episodeHistoryEntry) {
        if (episodeHistoryEntry == null || episodeHistoryEntry.rowID() == null) {
            return false;
        }
        if (this.db.delete(DB_TABLE_EPISODE_HISTORY, "_id=" + episodeHistoryEntry.rowID(), null) == 1) {
            return true;
        }
        CoreHelper.writeTraceEntry(TAG, "!!! failed to delete record for: " + episodeHistoryEntry.friendlyName());
        return false;
    }

    public void loadEpisodeHistory(List<EpisodeHistoryManager.EpisodeHistoryEntry> list) {
        Cursor query;
        list.clear();
        Cursor cursor = null;
        try {
            try {
                query = this.db.query(DB_TABLE_EPISODE_HISTORY, COLS_EPISODES_HISTORY, null, null, null, null, null);
            } catch (SQLException e) {
                e = e;
            }
        } catch (Throwable th) {
            th = th;
        }
        try {
            int count = query.getCount();
            query.moveToFirst();
            for (int i = 0; i < count; i++) {
                EpisodeHistoryManager.EpisodeHistoryEntry loadEpisodeHistoryEntry = loadEpisodeHistoryEntry(query);
                if (loadEpisodeHistoryEntry != null) {
                    list.add(loadEpisodeHistoryEntry);
                }
                query.moveToNext();
            }
            if (query == null || query.isClosed()) {
                return;
            }
            query.close();
        } catch (SQLException e2) {
            e = e2;
            cursor = query;
            CoreHelper.logException(TAG, "Unable to load episode history database records", e);
            if (cursor == null || cursor.isClosed()) {
                return;
            }
            cursor.close();
        } catch (Throwable th2) {
            th = th2;
            cursor = query;
            if (cursor != null && !cursor.isClosed()) {
                cursor.close();
            }
            throw th;
        }
    }

    private EpisodeHistoryManager.EpisodeHistoryEntry loadEpisodeHistoryEntry(Cursor cursor) {
        try {
            EpisodeHistoryManager.EpisodeHistoryEntry episodeHistoryEntry = new EpisodeHistoryManager.EpisodeHistoryEntry(Long.valueOf(cursor.getLong(0)), cursor.getString(1), cursor.getString(2), Long.valueOf(cursor.getLong(3)), cursor.getInt(4));
            episodeHistoryEntry.setIsModified(false);
            return episodeHistoryEntry;
        } catch (Throwable th) {
            CoreHelper.writeLogEntry(TAG, "Unable to read history entry! " + th.getMessage());
            return null;
        }
    }

    public void saveSmartPlaylistEntry(SmartPlaylist.SmartPlaylistEntry smartPlaylistEntry) {
        ContentValues contentValues = new ContentValues();
        contentValues.put(COLS_SMART_PLAYLIST[1], Integer.valueOf(smartPlaylistEntry.getPlaylistId()));
        contentValues.put(COLS_SMART_PLAYLIST[2], smartPlaylistEntry.getPlaylistName());
        contentValues.put(COLS_SMART_PLAYLIST[3], smartPlaylistEntry.getFeed() != null ? smartPlaylistEntry.getFeed().id().toString() : null);
        contentValues.put(COLS_SMART_PLAYLIST[4], Integer.valueOf(smartPlaylistEntry.getSortID()));
        contentValues.put(COLS_SMART_PLAYLIST[5], smartPlaylistEntry.getCategory() != null ? smartPlaylistEntry.getCategory().value() : null);
        contentValues.put(COLS_SMART_PLAYLIST[6], Integer.valueOf(smartPlaylistEntry.getNumTracks()));
        contentValues.put(COLS_SMART_PLAYLIST[7], Integer.valueOf(smartPlaylistEntry.getContentType()));
        contentValues.put(COLS_SMART_PLAYLIST[8], Integer.valueOf(smartPlaylistEntry.getEpisodeSortOrder()));
        contentValues.put(COLS_SMART_PLAYLIST[9], smartPlaylistEntry.getConfig());
        if (smartPlaylistEntry.rowID() == null) {
            long insert = this.db.insert(DB_TABLE_SMART_PLAYLIST, null, contentValues);
            if (insert != -1) {
                smartPlaylistEntry.initRowID(Long.valueOf(insert));
                smartPlaylistEntry.setIsModified(false);
                return;
            }
            CoreHelper.writeTraceEntry(TAG, "!!! failed to insert smart playlist record for: " + smartPlaylistEntry.toString());
            return;
        }
        if (this.db.update(DB_TABLE_SMART_PLAYLIST, contentValues, "_id=" + smartPlaylistEntry.rowID(), null) != 1) {
            CoreHelper.writeTraceEntry(TAG, "!!! failed to update smart playlist record for: " + smartPlaylistEntry.toString());
            return;
        }
        smartPlaylistEntry.setIsModified(false);
    }

    public boolean deleteSmartPlayEntry(SmartPlaylist.SmartPlaylistEntry smartPlaylistEntry) {
        if (smartPlaylistEntry == null || smartPlaylistEntry.rowID() == null) {
            return false;
        }
        if (this.db.delete(DB_TABLE_SMART_PLAYLIST, "_id=" + smartPlaylistEntry.rowID(), null) == 1) {
            return true;
        }
        CoreHelper.writeTraceEntry(TAG, "!!! failed to delete record for: " + smartPlaylistEntry.toString());
        return false;
    }

    public void loadSmartPlaylist(ArrayList<SmartPlaylist.SmartPlaylistEntry> arrayList) {
        Cursor query;
        arrayList.clear();
        Cursor cursor = null;
        try {
            try {
                query = this.db.query(DB_TABLE_SMART_PLAYLIST, COLS_SMART_PLAYLIST, null, null, null, null, COLS_SMART_PLAYLIST[1] + "," + COLS_SMART_PLAYLIST[4]);
            } catch (SQLException e) {
                e = e;
            }
        } catch (Throwable th) {
            th = th;
        }
        try {
            int count = query.getCount();
            query.moveToFirst();
            for (int i = 0; i < count; i++) {
                SmartPlaylist.SmartPlaylistEntry loadSmartPlaylistEntry = loadSmartPlaylistEntry(query);
                if (loadSmartPlaylistEntry != null) {
                    arrayList.add(loadSmartPlaylistEntry);
                }
                query.moveToNext();
            }
            if (query == null || query.isClosed()) {
                return;
            }
            query.close();
        } catch (SQLException e2) {
            e = e2;
            cursor = query;
            CoreHelper.logException(TAG, "Unable to load smart playlist database records", e);
            if (cursor == null || cursor.isClosed()) {
                return;
            }
            cursor.close();
        } catch (Throwable th2) {
            th = th2;
            cursor = query;
            if (cursor != null && !cursor.isClosed()) {
                cursor.close();
            }
            throw th;
        }
    }

    private SmartPlaylist.SmartPlaylistEntry loadSmartPlaylistEntry(Cursor cursor) {
        try {
            Long valueOf = Long.valueOf(cursor.getLong(0));
            SmartPlaylist.SmartPlaylistEntry smartPlaylistEntry = new SmartPlaylist.SmartPlaylistEntry(valueOf.longValue(), cursor.getInt(1), cursor.getString(2), cursor.getString(3), cursor.getInt(4), cursor.getString(5), cursor.getInt(6), cursor.getInt(8), cursor.getInt(7), cursor.getString(9));
            smartPlaylistEntry.setIsModified(false);
            return smartPlaylistEntry;
        } catch (Throwable th) {
            CoreHelper.writeLogEntry(TAG, "Unable to read smart playlist! " + th.getMessage());
            return null;
        }
    }

    public int getMaxPlaylistID() {
        Cursor query;
        Cursor cursor = null;
        try {
            try {
                query = this.db.query(DB_TABLE_SMART_PLAYLIST, COLS_SMART_PLAYLIST, null, null, null, null, COLS_SMART_PLAYLIST[1] + " DESC");
            } catch (Throwable th) {
                th = th;
            }
        } catch (SQLException e) {
            e = e;
        }
        try {
            query.moveToFirst();
            int playlistId = loadSmartPlaylistEntry(query).getPlaylistId();
            if (query != null) {
                query.close();
            }
            return playlistId;
        } catch (SQLException e2) {
            e = e2;
            cursor = query;
            CoreHelper.writeLogEntry(TAG, "Unable to read smart playlist! " + e.getMessage());
            if (cursor == null) {
                return -1;
            }
            cursor.close();
            return -1;
        } catch (Throwable th2) {
            th = th2;
            cursor = query;
            if (cursor != null) {
                cursor.close();
            }
            throw th;
        }
    }

    private int safeGetInt(Cursor cursor, int i, int i2) {
        return cursor.isNull(i) ? i2 : cursor.getInt(i);
    }

    private long safeGetLong(Cursor cursor, int i, long j) {
        return cursor.isNull(i) ? j : cursor.getLong(i);
    }

    private boolean safeGetBoolean(Cursor cursor, int i, boolean z) {
        return cursor.isNull(i) ? z : cursor.getInt(i) == 1;
    }

    private Date safeGetDate(Cursor cursor, int i) {
        if (cursor.isNull(i)) {
            return null;
        }
        return new Date(cursor.getLong(i));
    }

    public void beginTransaction() {
        this.db.beginTransaction();
    }

    public void setTransactionSuccessful() {
        try {
            this.db.setTransactionSuccessful();
        } catch (Exception unused) {
            CoreHelper.writeTraceEntry(TAG, "failed to setTransactionSuccessful");
        }
    }

    public void endTransaction() {
        try {
            this.db.endTransaction();
        } catch (Exception unused) {
            CoreHelper.writeTraceEntry(TAG, "failed to endTransaction");
        }
    }
}
