package mobi.beyondpod.services.player.smartplay;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.regex.Pattern;
import mobi.beyondpod.rsscore.Configuration;
import mobi.beyondpod.rsscore.Feed;
import mobi.beyondpod.rsscore.categories.FeedCategory;
import mobi.beyondpod.rsscore.helpers.AnalyticsTracker;
import mobi.beyondpod.rsscore.helpers.CoreHelper;
import mobi.beyondpod.rsscore.helpers.StringUtils;
import mobi.beyondpod.rsscore.repository.RepositoryPersistence;

/* loaded from: classes.dex */
public class SmartPlaylistManager {
    private static final String TAG = "SmartPlaylistManager";
    private static boolean _SavingEntries = false;
    private static final ArrayList<SmartPlaylist> _Playlists = new ArrayList<>();
    private static Comparator<SmartPlaylist> _PlaylistSorter = new Comparator<SmartPlaylist>() { // from class: mobi.beyondpod.services.player.smartplay.SmartPlaylistManager.1
        @Override // java.util.Comparator
        public int compare(SmartPlaylist smartPlaylist, SmartPlaylist smartPlaylist2) {
            if (smartPlaylist == null && smartPlaylist2 == null) {
                return 0;
            }
            if (smartPlaylist != null && smartPlaylist2 == null) {
                return 1;
            }
            if (smartPlaylist == null) {
                return -1;
            }
            return smartPlaylist.name().compareToIgnoreCase(smartPlaylist2.name());
        }
    };
    private static Runnable _SaveToDBRunnable = new Runnable() { // from class: mobi.beyondpod.services.player.smartplay.SmartPlaylistManager.2
        @Override // java.lang.Runnable
        public void run() {
            SmartPlaylistManager.access$000();
        }
    };

    static /* synthetic */ boolean access$000() {
        return saveToDatabaseInternal();
    }

    /* JADX WARN: Code restructure failed: missing block: B:21:0x005f, code lost:
    
        if (r4 != null) goto L15;
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x0061, code lost:
    
        r4.cleanup();
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x007c, code lost:
    
        if (r3.size() <= 0) goto L32;
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x007e, code lost:
    
        r1 = r3.values().iterator();
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x008a, code lost:
    
        if (r1.hasNext() == false) goto L58;
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x008c, code lost:
    
        r2 = (java.util.ArrayList) r1.next();
        mobi.beyondpod.services.player.smartplay.SmartPlaylistManager._Playlists.add(new mobi.beyondpod.services.player.smartplay.SmartPlaylist(r2, ((mobi.beyondpod.services.player.smartplay.SmartPlaylist.SmartPlaylistEntry) r2.get(0)).getPlaylistId(), ((mobi.beyondpod.services.player.smartplay.SmartPlaylist.SmartPlaylistEntry) r2.get(0)).getPlaylistName()));
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x00b2, code lost:
    
        r1 = loadFromFile();
     */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x00b6, code lost:
    
        if (r1 == null) goto L35;
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x00b8, code lost:
    
        mobi.beyondpod.services.player.smartplay.SmartPlaylistManager._Playlists.add(r1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x00c1, code lost:
    
        if (saveToDatabaseInternal() == false) goto L38;
     */
    /* JADX WARN: Code restructure failed: missing block: B:38:0x00c3, code lost:
    
        mobi.beyondpod.rsscore.helpers.FileUtils.deleteFileIfExists(mobi.beyondpod.rsscore.Configuration.smartPlaylistFilePath());
        mobi.beyondpod.rsscore.helpers.FileUtils.deleteFileIfExists(mobi.beyondpod.rsscore.Configuration.smartPlaylistBackupFilePath());
     */
    /* JADX WARN: Code restructure failed: missing block: B:42:0x0075, code lost:
    
        if (r4 == null) goto L26;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static void loadSmartPlaylists() {
        /*
            java.util.ArrayList<mobi.beyondpod.services.player.smartplay.SmartPlaylist> r0 = mobi.beyondpod.services.player.smartplay.SmartPlaylistManager._Playlists
            monitor-enter(r0)
            java.util.ArrayList<mobi.beyondpod.services.player.smartplay.SmartPlaylist> r1 = mobi.beyondpod.services.player.smartplay.SmartPlaylistManager._Playlists     // Catch: java.lang.Throwable -> Lda
            r1.clear()     // Catch: java.lang.Throwable -> Lda
            r1 = 0
            java.util.ArrayList r2 = new java.util.ArrayList     // Catch: java.lang.Throwable -> Lda
            r2.<init>()     // Catch: java.lang.Throwable -> Lda
            java.util.HashMap r3 = new java.util.HashMap     // Catch: java.lang.Throwable -> Lda
            r3.<init>()     // Catch: java.lang.Throwable -> Lda
            mobi.beyondpod.rsscore.repository.DatabaseHelper r4 = new mobi.beyondpod.rsscore.repository.DatabaseHelper     // Catch: java.lang.Throwable -> L67 java.lang.Exception -> L6b
            mobi.beyondpod.BeyondPodApplication r5 = mobi.beyondpod.BeyondPodApplication.getInstance()     // Catch: java.lang.Throwable -> L67 java.lang.Exception -> L6b
            android.content.Context r5 = r5.getApplicationContext()     // Catch: java.lang.Throwable -> L67 java.lang.Exception -> L6b
            r4.<init>(r5)     // Catch: java.lang.Throwable -> L67 java.lang.Exception -> L6b
            r4.loadSmartPlaylist(r2)     // Catch: java.lang.Exception -> L65 java.lang.Throwable -> Ld3
            java.util.Iterator r1 = r2.iterator()     // Catch: java.lang.Exception -> L65 java.lang.Throwable -> Ld3
        L27:
            boolean r2 = r1.hasNext()     // Catch: java.lang.Exception -> L65 java.lang.Throwable -> Ld3
            if (r2 == 0) goto L5f
            java.lang.Object r2 = r1.next()     // Catch: java.lang.Exception -> L65 java.lang.Throwable -> Ld3
            mobi.beyondpod.services.player.smartplay.SmartPlaylist$SmartPlaylistEntry r2 = (mobi.beyondpod.services.player.smartplay.SmartPlaylist.SmartPlaylistEntry) r2     // Catch: java.lang.Exception -> L65 java.lang.Throwable -> Ld3
            int r5 = r2.getPlaylistId()     // Catch: java.lang.Exception -> L65 java.lang.Throwable -> Ld3
            java.lang.Integer r6 = java.lang.Integer.valueOf(r5)     // Catch: java.lang.Exception -> L65 java.lang.Throwable -> Ld3
            boolean r6 = r3.containsKey(r6)     // Catch: java.lang.Exception -> L65 java.lang.Throwable -> Ld3
            if (r6 != 0) goto L51
            java.util.ArrayList r6 = new java.util.ArrayList     // Catch: java.lang.Exception -> L65 java.lang.Throwable -> Ld3
            r6.<init>()     // Catch: java.lang.Exception -> L65 java.lang.Throwable -> Ld3
            r6.add(r2)     // Catch: java.lang.Exception -> L65 java.lang.Throwable -> Ld3
            java.lang.Integer r2 = java.lang.Integer.valueOf(r5)     // Catch: java.lang.Exception -> L65 java.lang.Throwable -> Ld3
            r3.put(r2, r6)     // Catch: java.lang.Exception -> L65 java.lang.Throwable -> Ld3
            goto L27
        L51:
            java.lang.Integer r5 = java.lang.Integer.valueOf(r5)     // Catch: java.lang.Exception -> L65 java.lang.Throwable -> Ld3
            java.lang.Object r5 = r3.get(r5)     // Catch: java.lang.Exception -> L65 java.lang.Throwable -> Ld3
            java.util.ArrayList r5 = (java.util.ArrayList) r5     // Catch: java.lang.Exception -> L65 java.lang.Throwable -> Ld3
            r5.add(r2)     // Catch: java.lang.Exception -> L65 java.lang.Throwable -> Ld3
            goto L27
        L5f:
            if (r4 == 0) goto L78
        L61:
            r4.cleanup()     // Catch: java.lang.Throwable -> Lda
            goto L78
        L65:
            r1 = move-exception
            goto L6e
        L67:
            r2 = move-exception
            r4 = r1
            r1 = r2
            goto Ld4
        L6b:
            r2 = move-exception
            r4 = r1
            r1 = r2
        L6e:
            java.lang.String r2 = mobi.beyondpod.services.player.smartplay.SmartPlaylistManager.TAG     // Catch: java.lang.Throwable -> Ld3
            java.lang.String r5 = "Unable to load the user history from database"
            mobi.beyondpod.rsscore.helpers.CoreHelper.logException(r2, r5, r1)     // Catch: java.lang.Throwable -> Ld3
            if (r4 == 0) goto L78
            goto L61
        L78:
            int r1 = r3.size()     // Catch: java.lang.Throwable -> Lda
            if (r1 <= 0) goto Lb2
            java.util.Collection r1 = r3.values()     // Catch: java.lang.Throwable -> Lda
            java.util.Iterator r1 = r1.iterator()     // Catch: java.lang.Throwable -> Lda
        L86:
            boolean r2 = r1.hasNext()     // Catch: java.lang.Throwable -> Lda
            if (r2 == 0) goto Ld1
            java.lang.Object r2 = r1.next()     // Catch: java.lang.Throwable -> Lda
            java.util.ArrayList r2 = (java.util.ArrayList) r2     // Catch: java.lang.Throwable -> Lda
            java.util.ArrayList<mobi.beyondpod.services.player.smartplay.SmartPlaylist> r3 = mobi.beyondpod.services.player.smartplay.SmartPlaylistManager._Playlists     // Catch: java.lang.Throwable -> Lda
            mobi.beyondpod.services.player.smartplay.SmartPlaylist r4 = new mobi.beyondpod.services.player.smartplay.SmartPlaylist     // Catch: java.lang.Throwable -> Lda
            r5 = 0
            java.lang.Object r6 = r2.get(r5)     // Catch: java.lang.Throwable -> Lda
            mobi.beyondpod.services.player.smartplay.SmartPlaylist$SmartPlaylistEntry r6 = (mobi.beyondpod.services.player.smartplay.SmartPlaylist.SmartPlaylistEntry) r6     // Catch: java.lang.Throwable -> Lda
            int r6 = r6.getPlaylistId()     // Catch: java.lang.Throwable -> Lda
            java.lang.Object r5 = r2.get(r5)     // Catch: java.lang.Throwable -> Lda
            mobi.beyondpod.services.player.smartplay.SmartPlaylist$SmartPlaylistEntry r5 = (mobi.beyondpod.services.player.smartplay.SmartPlaylist.SmartPlaylistEntry) r5     // Catch: java.lang.Throwable -> Lda
            java.lang.String r5 = r5.getPlaylistName()     // Catch: java.lang.Throwable -> Lda
            r4.<init>(r2, r6, r5)     // Catch: java.lang.Throwable -> Lda
            r3.add(r4)     // Catch: java.lang.Throwable -> Lda
            goto L86
        Lb2:
            mobi.beyondpod.services.player.smartplay.SmartPlaylist r1 = loadFromFile()     // Catch: java.lang.Throwable -> Lda
            if (r1 == 0) goto Lbd
            java.util.ArrayList<mobi.beyondpod.services.player.smartplay.SmartPlaylist> r2 = mobi.beyondpod.services.player.smartplay.SmartPlaylistManager._Playlists     // Catch: java.lang.Throwable -> Lda
            r2.add(r1)     // Catch: java.lang.Throwable -> Lda
        Lbd:
            boolean r1 = saveToDatabaseInternal()     // Catch: java.lang.Throwable -> Lda
            if (r1 == 0) goto Ld1
            java.lang.String r1 = mobi.beyondpod.rsscore.Configuration.smartPlaylistFilePath()     // Catch: java.lang.Throwable -> Lda
            mobi.beyondpod.rsscore.helpers.FileUtils.deleteFileIfExists(r1)     // Catch: java.lang.Throwable -> Lda
            java.lang.String r1 = mobi.beyondpod.rsscore.Configuration.smartPlaylistBackupFilePath()     // Catch: java.lang.Throwable -> Lda
            mobi.beyondpod.rsscore.helpers.FileUtils.deleteFileIfExists(r1)     // Catch: java.lang.Throwable -> Lda
        Ld1:
            monitor-exit(r0)     // Catch: java.lang.Throwable -> Lda
            return
        Ld3:
            r1 = move-exception
        Ld4:
            if (r4 == 0) goto Ld9
            r4.cleanup()     // Catch: java.lang.Throwable -> Lda
        Ld9:
            throw r1     // Catch: java.lang.Throwable -> Lda
        Lda:
            r1 = move-exception
            monitor-exit(r0)     // Catch: java.lang.Throwable -> Lda
            throw r1
        */
        throw new UnsupportedOperationException("Method not decompiled: mobi.beyondpod.services.player.smartplay.SmartPlaylistManager.loadSmartPlaylists():void");
    }

    public static void deleteSmartPlaylist(SmartPlaylist smartPlaylist) {
        smartPlaylist.markForDeletion();
        saveToDatabase();
    }

    public static boolean isConfigured() {
        return Configuration.primarySmartplayId() != -1;
    }

    public static void onCategoryDeleted(FeedCategory feedCategory) {
        for (int i = 0; i != _Playlists.size(); i++) {
            _Playlists.get(i).onCategoryDeleted(feedCategory);
        }
        saveToDatabase();
    }

    public static void onCategoryRenamed(FeedCategory feedCategory) {
        for (int i = 0; i != _Playlists.size(); i++) {
            _Playlists.get(i).onCategoryRenamed(feedCategory);
        }
        saveToDatabase();
    }

    public static void onFeedDeleted(Feed feed) {
        for (int i = 0; i != _Playlists.size(); i++) {
            _Playlists.get(i).onFeedDeleted(feed);
        }
        saveToDatabase();
    }

    public static SmartPlaylist getSmartPlaylist(int i) {
        for (int i2 = 0; i2 != _Playlists.size(); i2++) {
            if (_Playlists.get(i2).id() == i) {
                return _Playlists.get(i2);
            }
        }
        return null;
    }

    public static SmartPlaylist getSmartPlaylistByName(String str) {
        if (StringUtils.isNullOrEmpty(str)) {
            return null;
        }
        for (int i = 0; i != _Playlists.size(); i++) {
            if (_Playlists.get(i).name().equals(str)) {
                return _Playlists.get(i);
            }
        }
        return null;
    }

    public static SmartPlaylist findSmartPlayByName(String str) {
        if (StringUtils.isNullOrEmpty(str)) {
            return null;
        }
        Pattern compile = Pattern.compile(str.trim(), 10);
        Iterator<SmartPlaylist> it = getPlaylistsForDiaplay().iterator();
        while (it.hasNext()) {
            SmartPlaylist next = it.next();
            if (next.name() != null && compile.matcher(next.name()).find()) {
                return next;
            }
        }
        return null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:24:0x00b3  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x00d2  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x00d8 A[RETURN] */
    /* JADX WARN: Type inference failed for: r2v6, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r2v7, types: [java.io.FileInputStream] */
    /* JADX WARN: Type inference failed for: r2v9 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static mobi.beyondpod.services.player.smartplay.SmartPlaylist loadFromFile() {
        /*
            java.util.ArrayList r0 = new java.util.ArrayList
            r0.<init>()
            java.io.File r1 = new java.io.File
            java.lang.String r2 = mobi.beyondpod.rsscore.Configuration.smartPlaylistFilePath()
            r1.<init>(r2)
            boolean r2 = r1.exists()
            r3 = 0
            if (r2 == 0) goto L7e
            java.lang.String r2 = mobi.beyondpod.services.player.smartplay.SmartPlaylistManager.TAG
            java.lang.StringBuilder r4 = new java.lang.StringBuilder
            r4.<init>()
            java.lang.String r5 = "Smart Playlist File exists! Size: "
            r4.append(r5)
            long r5 = r1.length()
            r4.append(r5)
            java.lang.String r5 = "bytes"
            r4.append(r5)
            java.lang.String r4 = r4.toString()
            mobi.beyondpod.rsscore.helpers.CoreHelper.writeTraceEntry(r2, r4)
            java.io.FileInputStream r2 = new java.io.FileInputStream     // Catch: java.lang.Throwable -> L53 java.lang.Exception -> L56
            r2.<init>(r1)     // Catch: java.lang.Throwable -> L53 java.lang.Exception -> L56
            java.io.DataInputStream r1 = new java.io.DataInputStream     // Catch: java.lang.Exception -> L51 java.lang.Throwable -> L6e
            r1.<init>(r2)     // Catch: java.lang.Exception -> L51 java.lang.Throwable -> L6e
        L3e:
            mobi.beyondpod.services.player.smartplay.SmartPlaylist$SmartPlaylistEntry r4 = mobi.beyondpod.services.player.smartplay.SmartPlaylist.SmartPlaylistEntry.deserialize(r1)     // Catch: java.io.EOFException -> L48 java.lang.Exception -> L51 java.lang.Throwable -> L6e
            if (r4 == 0) goto L3e
            r0.add(r4)     // Catch: java.io.EOFException -> L48 java.lang.Exception -> L51 java.lang.Throwable -> L6e
            goto L3e
        L48:
            r2.close()     // Catch: java.lang.Exception -> L51 java.lang.Throwable -> L6e
            if (r2 == 0) goto L85
            r2.close()     // Catch: java.lang.Exception -> L65
            goto L85
        L51:
            r1 = move-exception
            goto L58
        L53:
            r0 = move-exception
            r2 = r3
            goto L6f
        L56:
            r1 = move-exception
            r2 = r3
        L58:
            java.lang.String r4 = mobi.beyondpod.services.player.smartplay.SmartPlaylistManager.TAG     // Catch: java.lang.Throwable -> L6e
            java.lang.String r5 = "Unable to load Smart Playlist file. reason: "
            mobi.beyondpod.rsscore.helpers.CoreHelper.logException(r4, r5, r1)     // Catch: java.lang.Throwable -> L6e
            if (r2 == 0) goto L85
            r2.close()     // Catch: java.lang.Exception -> L65
            goto L85
        L65:
            r1 = move-exception
            java.lang.String r2 = mobi.beyondpod.services.player.smartplay.SmartPlaylistManager.TAG
            java.lang.String r4 = "Unable to load Smart Playlist file. reason: "
            mobi.beyondpod.rsscore.helpers.CoreHelper.logException(r2, r4, r1)
            goto L85
        L6e:
            r0 = move-exception
        L6f:
            if (r2 == 0) goto L7d
            r2.close()     // Catch: java.lang.Exception -> L75
            goto L7d
        L75:
            r1 = move-exception
            java.lang.String r2 = mobi.beyondpod.services.player.smartplay.SmartPlaylistManager.TAG
            java.lang.String r3 = "Unable to load Smart Playlist file. reason: "
            mobi.beyondpod.rsscore.helpers.CoreHelper.logException(r2, r3, r1)
        L7d:
            throw r0
        L7e:
            java.lang.String r1 = mobi.beyondpod.services.player.smartplay.SmartPlaylistManager.TAG
            java.lang.String r2 = "Smart Playlist File DOES NOT exist!"
            mobi.beyondpod.rsscore.helpers.CoreHelper.writeLogEntryInProduction(r1, r2)
        L85:
            java.lang.String r1 = mobi.beyondpod.services.player.smartplay.SmartPlaylistManager.TAG
            java.lang.StringBuilder r2 = new java.lang.StringBuilder
            r2.<init>()
            java.lang.String r4 = "Loaded "
            r2.append(r4)
            int r4 = r0.size()
            r2.append(r4)
            java.lang.String r4 = " rules from the Smart Playlist file..."
            r2.append(r4)
            java.lang.String r2 = r2.toString()
            mobi.beyondpod.rsscore.helpers.CoreHelper.writeTraceEntry(r1, r2)
            int r1 = getNextPlaylistId()
            java.lang.String r2 = getNextPlaylistName()
            r4 = 0
        Lad:
            int r5 = r0.size()
            if (r4 >= r5) goto Lcc
            java.lang.Object r5 = r0.get(r4)
            mobi.beyondpod.services.player.smartplay.SmartPlaylist$SmartPlaylistEntry r5 = (mobi.beyondpod.services.player.smartplay.SmartPlaylist.SmartPlaylistEntry) r5
            int r6 = r5.getPlaylistId()
            r7 = -1
            if (r6 != r7) goto Lc9
            r5.setPlaylistId(r1)
            r5.setSortID(r4)
            r5.setPlaylistName(r2)
        Lc9:
            int r4 = r4 + 1
            goto Lad
        Lcc:
            int r4 = r0.size()
            if (r4 <= 0) goto Ld8
            mobi.beyondpod.services.player.smartplay.SmartPlaylist r3 = new mobi.beyondpod.services.player.smartplay.SmartPlaylist
            r3.<init>(r0, r1, r2)
            return r3
        Ld8:
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: mobi.beyondpod.services.player.smartplay.SmartPlaylistManager.loadFromFile():mobi.beyondpod.services.player.smartplay.SmartPlaylist");
    }

    public static void saveToDatabase() {
        RepositoryPersistence.repositoryHandler().removeCallbacks(_SaveToDBRunnable);
        RepositoryPersistence.repositoryHandler().postDelayed(_SaveToDBRunnable, 100L);
    }

    /* JADX WARN: Removed duplicated region for block: B:57:0x017e  */
    /* JADX WARN: Removed duplicated region for block: B:82:0x0172 A[Catch: all -> 0x0221, TRY_ENTER, TryCatch #1 {, blocks: (B:11:0x0013, B:53:0x014e, B:54:0x0154, B:55:0x017b, B:82:0x0172, B:83:0x0178, B:91:0x0218, B:92:0x021e, B:93:0x0220), top: B:10:0x0013 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static boolean saveToDatabaseInternal() {
        /*
            Method dump skipped, instructions count: 548
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: mobi.beyondpod.services.player.smartplay.SmartPlaylistManager.saveToDatabaseInternal():boolean");
    }

    public static SmartPlaylist addSmartPlaylist() {
        SmartPlaylist smartPlaylist = new SmartPlaylist(new ArrayList(), getNextPlaylistId(), getNextPlaylistName());
        _Playlists.add(smartPlaylist);
        return smartPlaylist;
    }

    private static int getNextPlaylistId() {
        if (_Playlists.size() == 0) {
            return 1;
        }
        int i = Integer.MIN_VALUE;
        for (int i2 = 0; i2 != _Playlists.size(); i2++) {
            int id = _Playlists.get(i2).id();
            if (id > i) {
                i = id;
            }
        }
        return i + 1;
    }

    public static String getNextPlaylistName() {
        return _Playlists.size() == 0 ? SmartPlaylist.DEFAULT_SMART_PLAYLIST_NAME : String.format("%s %s", SmartPlaylist.DEFAULT_SMART_PLAYLIST_NAME, Integer.valueOf(_Playlists.size() + 1));
    }

    public static void initialize() {
        loadSmartPlaylists();
        CoreHelper.writeTraceEntry(TAG, "Loaded " + _Playlists.size() + " Smart Playlists");
        AnalyticsTracker.onSmartPlaylistLoaded(_Playlists.size());
    }

    public static ArrayList<SmartPlaylist> getPlaylistsForDiaplay() {
        ArrayList<SmartPlaylist> arrayList = new ArrayList<>();
        for (int i = 0; i != _Playlists.size(); i++) {
            if (!_Playlists.get(i).isMarkedForDeletion()) {
                arrayList.add(_Playlists.get(i));
            }
        }
        Collections.sort(arrayList, _PlaylistSorter);
        return arrayList;
    }

    public static void updateSmartplayTo(SmartPlaylist smartPlaylist) {
        SmartPlaylist smartPlaylist2 = getSmartPlaylist(smartPlaylist.id());
        if (smartPlaylist2 == null) {
            return;
        }
        _Playlists.remove(smartPlaylist2);
        _Playlists.add(smartPlaylist);
    }

    public static SmartPlaylist lastUsedSmartplay() {
        SmartPlaylist smartPlaylist = getSmartPlaylist(Configuration.lastUsedSmartplayId());
        if (smartPlaylist != null && !smartPlaylist.isMarkedForDeletion()) {
            return smartPlaylist;
        }
        Iterator<SmartPlaylist> it = _Playlists.iterator();
        while (it.hasNext()) {
            SmartPlaylist next = it.next();
            if (!next.isMarkedForDeletion()) {
                Configuration.setLastUsedSmartplayId(next.id());
                return next;
            }
        }
        Configuration.setLastUsedSmartplayId(1);
        return null;
    }

    public static void setLastUsedSmartPlay(SmartPlaylist smartPlaylist) {
        Configuration.setLastUsedSmartplayId(smartPlaylist.id());
    }

    public static SmartPlaylist primarySmartPlay() {
        SmartPlaylist smartPlaylist = getSmartPlaylist(Configuration.primarySmartplayId());
        if (smartPlaylist != null && !smartPlaylist.isMarkedForDeletion()) {
            return smartPlaylist;
        }
        Iterator<SmartPlaylist> it = _Playlists.iterator();
        while (it.hasNext()) {
            SmartPlaylist next = it.next();
            if (!next.isMarkedForDeletion()) {
                Configuration.setPrimarySmartplayId(next.id());
                return next;
            }
        }
        Configuration.setPrimarySmartplayId(-1);
        return null;
    }

    public static void setDefaultSmartPlay(SmartPlaylist smartPlaylist) {
        Configuration.setPrimarySmartplayId(smartPlaylist.id());
    }

    public static int numVisiblePlaylists() {
        return getPlaylistsForDiaplay().size();
    }
}
