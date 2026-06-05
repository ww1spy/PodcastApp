package mobi.beyondpod.ui.evosearch;

import android.content.ContentProvider;
import android.content.ContentValues;
import android.content.UriMatcher;
import android.database.Cursor;
import android.net.Uri;

/* loaded from: classes.dex */
public class RepositorySearchProvider extends ContentProvider {
    private static final int GET_ITEM = 1;
    private static final int REFRESH_SHORTCUT = 3;
    public static final String RESULTS_MIME_TYPE = "vnd.android.cursor.dir/mobi.beyondpod.ui.evosearch";
    public static final String RESULT_MIME_TYPE = "vnd.android.cursor.item/mobi.beyondpod.ui.evosearch";
    private static final int SEARCH_REPO = 0;
    private static final int SEARCH_SUGGEST = 2;
    String TAG = "RepositorySearchProvider";
    private RepositorySearchDatabase mDictionary;
    public static String AUTHORITY = "mobi.beyondpod.ui.evosearch.RepositorySearchProvider";
    public static String PATH = "/repository";
    public static final Uri CONTENT_URI = Uri.parse("content://" + AUTHORITY + PATH);
    private static final UriMatcher sURIMatcher = buildUriMatcher();

    private static UriMatcher buildUriMatcher() {
        UriMatcher uriMatcher = new UriMatcher(-1);
        uriMatcher.addURI(AUTHORITY, "repository", 0);
        uriMatcher.addURI(AUTHORITY, "repository/#", 1);
        uriMatcher.addURI(AUTHORITY, "search_suggest_query", 2);
        uriMatcher.addURI(AUTHORITY, "search_suggest_query/*", 2);
        uriMatcher.addURI(AUTHORITY, "search_suggest_shortcut", 3);
        uriMatcher.addURI(AUTHORITY, "search_suggest_shortcut/*", 3);
        return uriMatcher;
    }

    @Override // android.content.ContentProvider
    public boolean onCreate() {
        this.mDictionary = new RepositorySearchDatabase(getContext());
        return true;
    }

    @Override // android.content.ContentProvider
    public Cursor query(Uri uri, String[] strArr, String str, String[] strArr2, String str2) {
        switch (sURIMatcher.match(uri)) {
            case 0:
                if (strArr2 == null) {
                    throw new IllegalArgumentException("selectionArgs must be provided for the Uri: " + uri);
                }
                return search(strArr2[0]);
            case 1:
                return getWord(uri);
            case 2:
                if (strArr2 == null) {
                    throw new IllegalArgumentException("selectionArgs must be provided for the Uri: " + uri);
                }
                return getSuggestions(strArr2[0]);
            case 3:
                return refreshShortcut(uri);
            default:
                throw new IllegalArgumentException("Unknown Uri: " + uri);
        }
    }

    private Cursor getSuggestions(String str) {
        return this.mDictionary.getFeedTrackMatches(str.toLowerCase(), new String[]{"_id", "suggest_text_1", "suggest_text_2", "suggest_icon_1", "suggest_intent_data_id"});
    }

    private Cursor search(String str) {
        return this.mDictionary.getFeedTrackMatches(str.toLowerCase(), new String[]{"_id", "suggest_text_1", "suggest_text_2", "suggest_icon_1"});
    }

    private Cursor getWord(Uri uri) {
        return this.mDictionary.getWord(uri.getLastPathSegment(), new String[]{"suggest_text_1", "suggest_text_2", "suggest_icon_1"});
    }

    private Cursor refreshShortcut(Uri uri) {
        return this.mDictionary.getWord(uri.getLastPathSegment(), new String[]{"_id", "suggest_text_1", "suggest_text_2", "suggest_icon_1", "suggest_shortcut_id", "suggest_intent_data_id"});
    }

    @Override // android.content.ContentProvider
    public String getType(Uri uri) {
        switch (sURIMatcher.match(uri)) {
            case 0:
                return RESULTS_MIME_TYPE;
            case 1:
                return RESULT_MIME_TYPE;
            case 2:
                return "vnd.android.cursor.dir/vnd.android.search.suggest";
            case 3:
                return "vnd.android.cursor.item/vnd.android.search.suggest";
            default:
                throw new IllegalArgumentException("Unknown URL " + uri);
        }
    }

    @Override // android.content.ContentProvider
    public Uri insert(Uri uri, ContentValues contentValues) {
        throw new UnsupportedOperationException();
    }

    @Override // android.content.ContentProvider
    public int delete(Uri uri, String str, String[] strArr) {
        throw new UnsupportedOperationException();
    }

    @Override // android.content.ContentProvider
    public int update(Uri uri, ContentValues contentValues, String str, String[] strArr) {
        throw new UnsupportedOperationException();
    }
}
