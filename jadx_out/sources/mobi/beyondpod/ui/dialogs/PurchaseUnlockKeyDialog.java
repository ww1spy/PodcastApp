package mobi.beyondpod.ui.dialogs;

import android.app.AlertDialog;
import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.text.format.DateUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import java.util.Date;
import mobi.beyondpod.R;
import mobi.beyondpod.rsscore.Configuration;
import mobi.beyondpod.rsscore.rss.LicenseManager;
import mobi.beyondpod.ui.commands.CommandManagerBase;

/* loaded from: classes.dex */
public class PurchaseUnlockKeyDialog {
    private Context _Context;

    public PurchaseUnlockKeyDialog(Context context) {
        this._Context = context;
    }

    public static void showDialog(Context context) {
        new PurchaseUnlockKeyDialog(context).createDialog().show();
    }

    public Dialog createDialog() {
        View inflate = LayoutInflater.from(this._Context).inflate(R.layout.purchase_unlock_key, (ViewGroup) null);
        ((TextView) inflate.findViewById(R.id.puk_expiration_date_title)).setText(new Date().compareTo(LicenseManager.trialExpirationDate()) > 0 ? R.string.dlg_purchase_info_header_did : R.string.dlg_purchase_info_header_will);
        ((TextView) inflate.findViewById(R.id.puk_expiration_date)).setText(DateUtils.formatDateTime(this._Context, LicenseManager.trialExpirationDate().getTime(), 524304));
        ((TextView) inflate.findViewById(R.id.app_store_msg)).setText(R.string.dlg_purchase_info_Msg);
        return new AlertDialog.Builder(this._Context).setTitle(R.string.dlg_purchase_title).setView(inflate).setNegativeButton(R.string.dlg_purchase_btn_Msg, new DialogInterface.OnClickListener() { // from class: mobi.beyondpod.ui.dialogs.PurchaseUnlockKeyDialog.2
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
                CommandManagerBase.cmdStartPurchaseUnlockKeyIntent();
            }
        }).setPositiveButton(R.string.dlg_purchase_why_pro_Msg, new DialogInterface.OnClickListener() { // from class: mobi.beyondpod.ui.dialogs.PurchaseUnlockKeyDialog.1
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
                CommandManagerBase.cmdOpenExternalBrowser(Configuration.faqLiteProURL().toString());
            }
        }).create();
    }
}
