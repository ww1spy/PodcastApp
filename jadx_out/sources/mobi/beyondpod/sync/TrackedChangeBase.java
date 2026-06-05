package mobi.beyondpod.sync;

import io.fabric.sdk.android.services.events.EventsFilesManager;
import java.io.BufferedWriter;
import java.io.FileWriter;
import java.util.Comparator;
import java.util.Date;
import mobi.beyondpod.rsscore.Configuration;
import mobi.beyondpod.rsscore.helpers.CoreHelper;
import mobi.beyondpod.rsscore.helpers.StringUtils;
import mobi.beyondpod.rsscore.repository.RepositoryPersistence;

/* loaded from: classes.dex */
public abstract class TrackedChangeBase {
    public static final int CHANGE_TYPE_ENCLOSURE_MARKED_AS_DOWNLOADED = 5;
    public static final int CHANGE_TYPE_ENCLOSURE_MARKED_AS_NOT_DOWNLOADED = 6;
    public static final int CHANGE_TYPE_ENCLOSURE_STREAMABLE_TRACK_ADDED = 4;
    public static final int CHANGE_TYPE_EPISODE_DELETED = 9;
    public static final int CHANGE_TYPE_EPISODE_DOWNLOADED = 7;
    public static final int CHANGE_TYPE_EPISODE_PLAYED = 8;
    public static final int CHANGE_TYPE_EPISODE_UPDATED = 15;
    public static final int CHANGE_TYPE_FEED_ADDED = 1;
    public static final int CHANGE_TYPE_FEED_DELETED = 2;
    public static final int CHANGE_TYPE_FEED_MODIFIED = 3;
    public static final int CHANGE_TYPE_FEED_PUSH = 14;
    public static final int CHANGE_TYPE_POST_READ = 12;
    public static final int CHANGE_TYPE_POST_STARRED = 10;
    public static final int CHANGE_TYPE_POST_UNREAD = 13;
    public static final int CHANGE_TYPE_POST_UNSTARRED = 11;
    public static final int SYNC_STATUS_SYNC_DOWN_APPLIED = 4;
    public static final int SYNC_STATUS_SYNC_DOWN_PENDING = 3;
    public static final int SYNC_STATUS_SYNC_UP_PENDING = 2;
    public static final int SYNC_STATUS_SYNC_UP_SYNCED = 1;
    public static final int SYNC_STATUS_UNKNOWN = 0;
    public static Comparator<TrackedChangeBase> TimestampComparator = new Comparator<TrackedChangeBase>() { // from class: mobi.beyondpod.sync.TrackedChangeBase.1
        @Override // java.util.Comparator
        public int compare(TrackedChangeBase trackedChangeBase, TrackedChangeBase trackedChangeBase2) {
            if (trackedChangeBase.timeStamp() == trackedChangeBase2.timeStamp()) {
                return 0;
            }
            return trackedChangeBase.timeStamp() > trackedChangeBase2.timeStamp() ? 1 : -1;
        }
    };
    protected static final String _BlobDelimiter = "|$*|";
    protected String _Blob;
    protected int _ChangeType;
    private boolean _Deleted;
    private boolean _IsModified;
    protected String _MessageId;
    private Long _StorageRowID;
    private int _SyncStatus;
    protected long _TimeStamp;

    public abstract void applyRemoteChange();

    public abstract String friendlyName();

    protected abstract boolean isValid();

    public abstract String messageId();

    public abstract void prepareForSave();

    public long timeStamp() {
        return this._TimeStamp;
    }

    public Long rowID() {
        return this._StorageRowID;
    }

    public void initRowID(Long l) {
        this._StorageRowID = l;
    }

    public boolean isNew() {
        return this._StorageRowID == null;
    }

    public boolean isMarkedForDeletion() {
        return this._Deleted;
    }

    public void markDeleted() {
        this._Deleted = true;
    }

    public void updateSyncStatusTo(int i) {
        this._SyncStatus = i;
        this._IsModified = true;
    }

    public void updateTo(TrackedChangeBase trackedChangeBase) {
        this._TimeStamp = trackedChangeBase.timeStamp();
        this._IsModified = true;
    }

    public int changeType() {
        return this._ChangeType;
    }

    public int syncStatus() {
        return this._SyncStatus;
    }

    public void setSyncStatus(int i) {
        this._IsModified = true;
        this._SyncStatus = i;
    }

    public TrackedChangeBase(int i) {
        this._SyncStatus = 0;
        this._IsModified = false;
        this._StorageRowID = null;
        this._Deleted = false;
        this._ChangeType = i;
        this._TimeStamp = new Date().getTime();
    }

    public TrackedChangeBase(Long l, long j, int i, int i2, String str) {
        this._SyncStatus = 0;
        this._IsModified = false;
        this._StorageRowID = null;
        this._Deleted = false;
        this._TimeStamp = j;
        this._ChangeType = i;
        this._SyncStatus = i2;
        this._StorageRowID = l;
        this._Blob = str;
    }

    public boolean isModified() {
        return this._IsModified;
    }

    public void setIsModified(boolean z) {
        this._IsModified = z;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("St:");
        sb.append(storageType());
        sb.append(", Sync:");
        sb.append(syncStatusName());
        sb.append(" : ");
        sb.append(new Date(timeStamp()));
        sb.append(" => ");
        sb.append(changeName());
        sb.append(" (");
        sb.append(isValid() ? "V" : "I");
        sb.append(") ");
        sb.append(friendlyName());
        return sb.toString();
    }

    public String changeName() {
        switch (this._ChangeType) {
            case 1:
                return "FEED_ADDED";
            case 2:
                return "FEED_DELETED";
            case 3:
                return "FEED_MODIFIED";
            case 4:
                return "EP_ADDED";
            case 5:
                return "ENCL_MARKED_AS_DOWNLOADED";
            case 6:
                return "ENCL_MARKED_AS_NOT_DOWNLOADED";
            case 7:
                return "EP_DOWNLOADED";
            case 8:
                return "EP_PLAYED";
            case 9:
                return "EP_DELETED";
            case 10:
                return "POST_STARRED";
            case 11:
                return "POST_UNSTARRED";
            case 12:
                return "POST_READ";
            case 13:
                return "POST_UNREAD";
            case 14:
                return "FEED_PUSH";
            case 15:
                return "EP_UPDATED";
            default:
                return "UNKNOWN";
        }
    }

    private String syncStatusName() {
        switch (this._SyncStatus) {
            case 1:
                return "US";
            case 2:
                return "UP";
            case 3:
                return "DP";
            case 4:
                return "DS";
            default:
                return "NA";
        }
    }

    private String storageType() {
        return this._StorageRowID == null ? "+" : isMarkedForDeletion() ? "-" : isModified() ? "*" : EventsFilesManager.ROLL_OVER_FILE_NAME_SEPARATOR;
    }

    public String blob() {
        return this._Blob;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void saveToBlob(String... strArr) {
        StringBuilder sb = new StringBuilder();
        for (int i = 0; i != strArr.length; i++) {
            String str = strArr[i];
            if (str != null) {
                sb.append(str.replace(_BlobDelimiter, " "));
            }
            if (i < strArr.length - 1) {
                sb.append(_BlobDelimiter);
            }
        }
        this._Blob = sb.toString();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public String[] parseBlob() {
        if (StringUtils.isNullOrEmpty(this._Blob)) {
            return new String[0];
        }
        return this._Blob.split("\\|\\$\\*\\|");
    }

    public static void logSyncEvent(String str, final String str2, TrackedChangeBase trackedChangeBase) {
        CoreHelper.writeTraceEntry(str, str2);
        RepositoryPersistence.repositoryHandler().post(new Runnable() { // from class: mobi.beyondpod.sync.TrackedChangeBase.2
            @Override // java.lang.Runnable
            public void run() {
                String str3 = str2 + "\r\n";
                try {
                    BufferedWriter bufferedWriter = new BufferedWriter(new FileWriter(Configuration.syncLogFilePath(), true), 8192);
                    bufferedWriter.write(str3);
                    bufferedWriter.close();
                } catch (Exception unused) {
                }
            }
        });
    }
}
