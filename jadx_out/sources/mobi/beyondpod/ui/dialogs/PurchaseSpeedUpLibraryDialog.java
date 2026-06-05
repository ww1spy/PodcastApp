package mobi.beyondpod.ui.dialogs;

import android.app.AlertDialog;
import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.RadioGroup;
import android.widget.TextView;
import mobi.beyondpod.R;
import mobi.beyondpod.downloadengine.IHttpClient;
import mobi.beyondpod.rsscore.Configuration;
import mobi.beyondpod.ui.commands.CommandManager;

/* loaded from: classes.dex */
public class PurchaseSpeedUpLibraryDialog {
    private Context _Context;

    public PurchaseSpeedUpLibraryDialog(Context context) {
        this._Context = context;
    }

    public static void showDialog(Context context) {
        new PurchaseSpeedUpLibraryDialog(context).createDialog().show();
    }

    public Dialog createDialog() {
        View inflate = LayoutInflater.from(this._Context).inflate(R.layout.enable_playback_speed_plugin_view, (ViewGroup) null);
        inflate.setMinimumHeight(IHttpClient.SC_MULTIPLE_CHOICES);
        TextView textView = (TextView) inflate.findViewById(R.id.dlg_message);
        textView.setGravity(8388611);
        textView.setText(R.string.dlg_enable_speedup_plugin_msg);
        final TextView textView2 = (TextView) inflate.findViewById(R.id.dlg_checkBoxInfo);
        textView2.setGravity(8388611);
        final RadioGroup radioGroup = (RadioGroup) inflate.findViewById(R.id.speedupOptions);
        radioGroup.setOnCheckedChangeListener(new RadioGroup.OnCheckedChangeListener() { // from class: mobi.beyondpod.ui.dialogs.PurchaseSpeedUpLibraryDialog.1
            @Override // android.widget.RadioGroup.OnCheckedChangeListener
            public void onCheckedChanged(RadioGroup radioGroup2, int i) {
                textView2.setVisibility(0);
                if (i == R.id.soEnable) {
                    textView2.setText(R.string.dlg_purchase_speedup_plugin_doShowInfo);
                } else {
                    textView2.setText(R.string.dlg_purchase_speedup_plugin_doNotshowInfo);
                }
            }
        });
        return new AlertDialog.Builder(this._Context).setTitle(R.string.dlg_purchase_speedup_plugin_title).setView(inflate).setPositiveButton(R.string.alert_dialog_ok, new DialogInterface.OnClickListener() { // from class: mobi.beyondpod.ui.dialogs.PurchaseSpeedUpLibraryDialog.2
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
                if (radioGroup.getCheckedRadioButtonId() == R.id.soEnable) {
                    Configuration.setEnableAudioPlugins(true);
                    Configuration.setEnableSonicAudioPlugin(true);
                    CommandManager.cmdLoadCurrentTrack();
                } else if (radioGroup.getCheckedRadioButtonId() == R.id.soDisable) {
                    Configuration.setEnableAudioPlugins(false);
                    Configuration.setEnableSonicAudioPlugin(true);
                }
            }
        }).setNegativeButton(R.string.alert_dialog_cancel, (DialogInterface.OnClickListener) null).create();
    }
}
