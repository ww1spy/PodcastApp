package mobi.beyondpod.ui.dialogs;

import android.app.AlertDialog;
import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.res.Resources;
import mobi.beyondpod.R;
import mobi.beyondpod.rsscore.Feed;
import mobi.beyondpod.rsscore.helpers.CoreHelper;
import mobi.beyondpod.rsscore.repository.FeedRepository;
import mobi.beyondpod.services.player.smartplay.SmartPlaylistManager;

/* loaded from: classes.dex */
public class DeleteFeedDialog {
    private static final String ARE_YOU_SURE_YOU_WANT_TO_DELETE = CoreHelper.loadResourceString(R.string.delete_feed_diolog_sure_you_want_to_delete);
    private static final String FEED = CoreHelper.loadResourceString(R.string.delete_feed_diolog_feed);
    private Context _Context;
    private Feed _Feed;
    private DialogInterface.OnClickListener _OnOK = new DialogInterface.OnClickListener() { // from class: mobi.beyondpod.ui.dialogs.DeleteFeedDialog.1
        @Override // android.content.DialogInterface.OnClickListener
        public void onClick(DialogInterface dialogInterface, int i) {
            FeedRepository.deleteFeedAndRelatedFoldersAsync(DeleteFeedDialog.this._Feed);
            SmartPlaylistManager.onFeedDeleted(DeleteFeedDialog.this._Feed);
        }
    };

    public static void showDialog(Context context, Feed feed) {
        DeleteFeedDialog deleteFeedDialog = new DeleteFeedDialog();
        deleteFeedDialog._Feed = feed;
        deleteFeedDialog._Context = context;
        deleteFeedDialog.createDialog().show();
    }

    public Dialog createDialog() {
        if (this._Feed == null) {
            return null;
        }
        return new AlertDialog.Builder(this._Context).setMessage(getMessage()).setPositiveButton(R.string.alert_dialog_ok, this._OnOK).setNegativeButton(R.string.alert_dialog_cancel, (DialogInterface.OnClickListener) null).create();
    }

    private String getMessage() {
        Resources resources = this._Context.getResources();
        int i = (this._Feed.hasUrl() && this._Feed.hasPodcasts()) ? R.string.dlg_DeleteFeedAndPodcastsMsg : R.string.dlg_DeleteFeedMsg;
        Object[] objArr = new Object[1];
        objArr[0] = this._Feed != null ? this._Feed.getName() : FEED;
        return resources.getString(i, objArr);
    }
}
