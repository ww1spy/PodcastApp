package mobi.beyondpod.ui.dialogs;

import android.app.AlertDialog;
import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import mobi.beyondpod.R;
import mobi.beyondpod.rsscore.StartupContentBuilder;
import mobi.beyondpod.rsscore.categories.CategoryManager;
import mobi.beyondpod.rsscore.categories.FeedCategory;
import mobi.beyondpod.rsscore.helpers.CoreHelper;
import mobi.beyondpod.rsscore.repository.FeedRepository;
import mobi.beyondpod.schedulercore.ScheduleUtils;
import mobi.beyondpod.schedulercore.ScheduledTask;
import mobi.beyondpod.schedulercore.ScheduledTasksManager;
import mobi.beyondpod.services.player.smartplay.SmartPlaylistManager;

/* loaded from: classes.dex */
public class DeleteCategoryDialog {
    private static final String DATA = CoreHelper.loadResourceString(R.string.delete_category_dialog_data);
    private static String _Format = CoreHelper.loadResourceString(R.string.dlg_DeleteCategoryMsg);
    private FeedCategory _Category;
    private Context _Context;
    private DialogInterface.OnClickListener _OnOK = new DialogInterface.OnClickListener() { // from class: mobi.beyondpod.ui.dialogs.DeleteCategoryDialog.1
        @Override // android.content.DialogInterface.OnClickListener
        public void onClick(DialogInterface dialogInterface, int i) {
            CategoryManager.deleteCategory(DeleteCategoryDialog.this._Category);
            ScheduledTask scheduledTaskForCategory = ScheduleUtils.getScheduledTaskForCategory(DeleteCategoryDialog.this._Category);
            if (scheduledTaskForCategory != null) {
                ScheduledTasksManager.deleteScheduledTask(scheduledTaskForCategory);
            }
            SmartPlaylistManager.onCategoryDeleted(DeleteCategoryDialog.this._Category);
            FeedRepository.autoSaveRepository();
            StartupContentBuilder.backupRepositoriesAsync();
        }
    };

    public static void showDialog(Context context, FeedCategory feedCategory) {
        DeleteCategoryDialog deleteCategoryDialog = new DeleteCategoryDialog();
        deleteCategoryDialog._Category = feedCategory;
        deleteCategoryDialog._Context = context;
        deleteCategoryDialog.createDialog().show();
    }

    public Dialog createDialog() {
        AlertDialog.Builder builder = new AlertDialog.Builder(this._Context);
        String str = _Format;
        Object[] objArr = new Object[1];
        objArr[0] = this._Category != null ? this._Category.name() : DATA;
        return builder.setMessage(String.format(str, objArr)).setPositiveButton(R.string.alert_dialog_ok, this._OnOK).setNegativeButton(R.string.alert_dialog_cancel, (DialogInterface.OnClickListener) null).create();
    }
}
