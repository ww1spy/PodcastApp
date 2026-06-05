package mobi.beyondpod.ui.views.impexp;

import android.app.AlertDialog;
import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.widget.Toast;
import java.io.File;
import mobi.beyondpod.R;
import mobi.beyondpod.rsscore.Configuration;
import mobi.beyondpod.rsscore.helpers.CoreHelper;
import mobi.beyondpod.rsscore.repository.FeedRepository;

/* loaded from: classes.dex */
public class ExportToOPMLDialog {
    Context _Context;
    private DialogInterface.OnClickListener _OnExportListener = new DialogInterface.OnClickListener() { // from class: mobi.beyondpod.ui.views.impexp.ExportToOPMLDialog.1
        @Override // android.content.DialogInterface.OnClickListener
        public void onClick(DialogInterface dialogInterface, int i) {
            try {
                FeedRepository.saveRepositoryAsOpml(new File(Configuration.beyondPodPublicStorageRootPath(), "BeyondPodFeeds.opml").getPath());
                Toast.makeText(ExportToOPMLDialog.this._Context, ExportToOPMLDialog.EXPORT_COMPLETE, 0).show();
            } catch (Exception e) {
                Toast.makeText(ExportToOPMLDialog.this._Context, ExportToOPMLDialog.EXPORT_FAILED + "\n" + e.getMessage(), 0).show();
            }
        }
    };
    private static final String EXPORT_FAILED = CoreHelper.loadResourceString(R.string.export_to_opml_export_failed);
    private static final String EXPORT_COMPLETE = CoreHelper.loadResourceString(R.string.export_to_opml_export_complete);

    public static void showDialog(Context context) {
        ExportToOPMLDialog exportToOPMLDialog = new ExportToOPMLDialog();
        exportToOPMLDialog._Context = context;
        exportToOPMLDialog.createDialog().show();
    }

    public Dialog createDialog() {
        return new AlertDialog.Builder(this._Context).setMessage(String.format(this._Context.getResources().getText(R.string.opml_export_msg).toString(), Configuration.beyondPodPublicStorageRootPath())).setPositiveButton(R.string.opml_export_btn_label, this._OnExportListener).setNegativeButton(R.string.alert_dialog_cancel, (DialogInterface.OnClickListener) null).create();
    }
}
