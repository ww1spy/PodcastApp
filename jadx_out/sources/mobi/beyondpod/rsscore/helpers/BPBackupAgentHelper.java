package mobi.beyondpod.rsscore.helpers;

import android.annotation.SuppressLint;
import android.app.backup.BackupAgentHelper;
import android.app.backup.FullBackupDataOutput;
import java.io.IOException;
import mobi.beyondpod.rsscore.Configuration;

@SuppressLint({"NewApi"})
/* loaded from: classes.dex */
public class BPBackupAgentHelper extends BackupAgentHelper {
    private static final String TAG = "BPBackupAgentHelper";

    @Override // android.app.backup.BackupAgent
    public void onFullBackup(FullBackupDataOutput fullBackupDataOutput) throws IOException {
        super.onFullBackup(fullBackupDataOutput);
        CoreHelper.writeTraceEntry(TAG, "Android Backup complete!");
    }

    @Override // android.app.backup.BackupAgent
    public void onRestoreFinished() {
        super.onRestoreFinished();
        CoreHelper.writeTraceEntry(TAG, "Android Restore complete! Post-processing...");
        if (CoreHelper.apiLevel() >= 23) {
            CoreHelper.writeTraceEntry(TAG, "  Setting restore flag...");
            boolean commit = getApplicationContext().getSharedPreferences(Configuration.SETTINGS_NAME, 0).edit().putInt("androidBackupRestored", 1).commit();
            CoreHelper.writeTraceEntry(TAG, "  Restore flag set: " + commit);
        } else {
            CoreHelper.writeTraceEntry(TAG, "Restoring on pre M device. Nothing to do!");
        }
        CoreHelper.writeTraceEntry(TAG, "Restore post-processing completed! Exiting...");
    }
}
