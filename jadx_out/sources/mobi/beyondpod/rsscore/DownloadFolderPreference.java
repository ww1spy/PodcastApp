package mobi.beyondpod.rsscore;

import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.preference.Preference;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.Toast;
import java.io.File;
import mobi.beyondpod.R;
import mobi.beyondpod.rsscore.helpers.CoreHelper;
import mobi.beyondpod.rsscore.helpers.PermissionUtil;
import mobi.beyondpod.rsscore.helpers.StringUtils;
import mobi.beyondpod.ui.dialogs.ApplicationErrorMessageDialog;

/* loaded from: classes.dex */
public class DownloadFolderPreference extends Preference {
    public static final String PREFERENCE_KEY = "customSDCardLocation";

    public DownloadFolderPreference(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        refreshLatestBackup();
    }

    public void refresh() {
        refreshLatestBackup();
    }

    private void refreshLatestBackup() {
        if (StringUtils.isNullOrEmpty(Configuration.customSDCardLocation())) {
            setSummary(getContext().getString(R.string.adv_settings_custom_sdcard_location_summary));
        } else {
            setSummary(getContext().getResources().getString(StringUtils.equalsIgnoreCase(CoreHelper.externalStorageDirectory().getAbsolutePath(), Configuration.customSDCardLocation()) ? R.string.move_storage_folder_in_use : R.string.move_storage_folder_available, Configuration.customSDCardLocation()));
        }
    }

    @Override // android.preference.Preference
    protected void onBindView(View view) {
        refreshLatestBackup();
        super.onBindView(view);
    }

    @Override // android.preference.Preference
    protected void onClick() {
        if (!PermissionUtil.hasExternalStoragePermission()) {
            ApplicationErrorMessageDialog.requestPermissionsIfNeeded(getContext(), null, getContext().getResources().getString(R.string.application_error_access_granted_retry), "");
            return;
        }
        View inflate = LayoutInflater.from(getContext()).inflate(R.layout.download_folder_preference_view, (ViewGroup) null, false);
        final EditText editText = (EditText) inflate.findViewById(R.id.input);
        editText.setText(Configuration.customSDCardLocation());
        editText.setHint("e.g. " + CoreHelper.getPreMPrimaryStorageMount().getAbsolutePath());
        new AlertDialog.Builder(getContext()).setTitle(R.string.adv_settings_custom_sdcard_location_title).setMessage(R.string.adv_settings_custom_sdcard_location_summary).setView(inflate).setPositiveButton(R.string.alert_dialog_ok, new DialogInterface.OnClickListener() { // from class: mobi.beyondpod.rsscore.DownloadFolderPreference.1
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
                String obj = editText.getText().toString();
                if (!StringUtils.isNullOrEmpty(obj)) {
                    File file = new File(obj);
                    if (!file.exists() || !file.canWrite()) {
                        Toast.makeText(DownloadFolderPreference.this.getContext(), DownloadFolderPreference.this.getContext().getResources().getString(R.string.move_storage_folder_does_not_exist, file.getAbsolutePath()), 1).show();
                        return;
                    }
                    Configuration.setCustomSDCardLocation(file.getAbsolutePath());
                    if (StringUtils.equalsIgnoreCase(CoreHelper.externalStorageDirectory().getAbsolutePath(), file.getAbsolutePath())) {
                        return;
                    }
                    PodcastStorageFolderPreference.showMoveInstructionsDialog(DownloadFolderPreference.this.getContext(), file, R.string.move_storage_folder_instructions_new_title);
                    return;
                }
                Configuration.setCustomSDCardLocation(obj);
            }
        }).setNegativeButton(R.string.alert_dialog_cancel, (DialogInterface.OnClickListener) null).setCancelable(true).show();
    }
}
