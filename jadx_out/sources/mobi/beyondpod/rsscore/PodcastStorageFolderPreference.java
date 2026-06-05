package mobi.beyondpod.rsscore;

import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.preference.Preference;
import android.util.AttributeSet;
import android.view.View;
import java.io.File;
import mobi.beyondpod.BeyondPodApplication;
import mobi.beyondpod.R;
import mobi.beyondpod.rsscore.helpers.CoreHelper;
import mobi.beyondpod.rsscore.helpers.PermissionUtil;
import mobi.beyondpod.rsscore.helpers.StringUtils;
import mobi.beyondpod.ui.commands.CommandManager;
import mobi.beyondpod.ui.dialogs.MoveFilesDialog;

/* loaded from: classes.dex */
public class PodcastStorageFolderPreference extends Preference {
    public PodcastStorageFolderPreference(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        refreshLatestBackup();
    }

    public void refresh() {
        refreshLatestBackup();
    }

    private void refreshLatestBackup() {
        if (getAlternativePath() == null) {
            setSummary(Configuration.enclosureDownloadRoot());
            setEnabled(false);
        } else {
            setSummary(getContext().getResources().getString(R.string.move_storage_folder_current, Configuration.enclosureDownloadRoot(), getAlternativePath().getAbsolutePath()));
            setEnabled(true);
        }
    }

    @Override // android.preference.Preference
    protected void onBindView(View view) {
        refreshLatestBackup();
        super.onBindView(view);
    }

    @Override // android.preference.Preference
    protected void onClick() {
        File alternativePath = getAlternativePath();
        if (alternativePath != null) {
            showMoveInstructionsDialog(getContext(), alternativePath, R.string.move_storage_folder_instructions_alt_title);
        }
    }

    public File getAlternativePath() {
        File primaryStorageMount = CoreHelper.getPrimaryStorageMount();
        File optionalStorageFullDataPath = CoreHelper.getOptionalStorageFullDataPath();
        if (StringUtils.equalsIgnoreCase(CoreHelper.externalStorageDirectory().getAbsolutePath(), primaryStorageMount.getAbsolutePath())) {
            primaryStorageMount = optionalStorageFullDataPath;
        }
        if (primaryStorageMount == null || !primaryStorageMount.exists()) {
            return null;
        }
        if (PermissionUtil.versionSupportsPermissions() || primaryStorageMount.canWrite()) {
            return primaryStorageMount;
        }
        return null;
    }

    public static void showMoveInstructionsDialog(Context context, File file, int i) {
        final String str = "" + file;
        new AlertDialog.Builder(context).setTitle(i).setMessage(context.getResources().getString(R.string.move_storage_folder_instructions_msg)).setPositiveButton(R.string.alert_dialog_ok, (DialogInterface.OnClickListener) null).setNegativeButton(R.string.alert_dialog_cancel, (DialogInterface.OnClickListener) null).setPositiveButton(R.string.mf_do_move, new DialogInterface.OnClickListener() { // from class: mobi.beyondpod.rsscore.PodcastStorageFolderPreference.1
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i2) {
                Intent intent = new Intent(BeyondPodApplication.getInstance(), (Class<?>) MoveFilesDialog.class);
                intent.putExtra("destination", str);
                CommandManager.startActivity(intent);
            }
        }).show();
    }
}
