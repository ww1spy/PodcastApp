package mobi.beyondpod.ui.dialogs;

import android.annotation.TargetApi;
import android.app.Activity;
import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.os.Bundle;
import android.widget.Toast;
import mobi.beyondpod.R;
import mobi.beyondpod.rsscore.helpers.CoreHelper;
import mobi.beyondpod.rsscore.helpers.PermissionUtil;
import mobi.beyondpod.rsscore.helpers.StringUtils;
import mobi.beyondpod.ui.commands.CommandManager;

/* loaded from: classes.dex */
public class ApplicationErrorMessageDialog extends Activity {
    public static final String BUTTON_TEXT = "mobi.beyondpod.ButtonText";
    public static final String ERROR_MESSAGE = "mobi.beyondpod.ErrorMessage";
    public static final String ERROR_PERMISSION_DENIED_MSG = "mobi.beyondpod.permission.denied.msg";
    public static final String ERROR_PERMISSION_GRANTED_MSG = "mobi.beyondpod.permission.granted.msg";
    public static final String ERROR_TYPE = "mobi.beyondpod.ErrorType";
    public static final int ERROR_TYPE_ASK_PERMISSION = 6;
    public static final int ERROR_TYPE_NO_PERMISSION = 5;
    public static final int REQUEST_EXTERNAL_STORAGE = 501;

    @Override // android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        Intent intent = getIntent();
        AlertDialog.Builder builder = new AlertDialog.Builder(this);
        builder.setCancelable(true);
        builder.setOnCancelListener(new DialogInterface.OnCancelListener() { // from class: mobi.beyondpod.ui.dialogs.ApplicationErrorMessageDialog.1
            @Override // android.content.DialogInterface.OnCancelListener
            public void onCancel(DialogInterface dialogInterface) {
                ApplicationErrorMessageDialog.this.finish();
            }
        });
        if (intent != null) {
            builder.setMessage(intent.getStringExtra(ERROR_MESSAGE));
            final int intExtra = intent.getIntExtra(ERROR_TYPE, -1);
            if (intExtra == 6) {
                handlePermissionRequest();
            } else if (intExtra == 5) {
                builder.setNegativeButton(R.string.alert_dialog_continue, new DialogInterface.OnClickListener() { // from class: mobi.beyondpod.ui.dialogs.ApplicationErrorMessageDialog.2
                    @Override // android.content.DialogInterface.OnClickListener
                    public void onClick(DialogInterface dialogInterface, int i) {
                        ApplicationErrorMessageDialog.this.handlePermissionRequest();
                    }
                });
            } else if (intExtra < 0) {
                builder.setNegativeButton(R.string.alert_dialog_ok, new DialogInterface.OnClickListener() { // from class: mobi.beyondpod.ui.dialogs.ApplicationErrorMessageDialog.3
                    @Override // android.content.DialogInterface.OnClickListener
                    public void onClick(DialogInterface dialogInterface, int i) {
                        ApplicationErrorMessageDialog.this.finish();
                    }
                });
            } else {
                builder.setPositiveButton(intent.getStringExtra(BUTTON_TEXT), new DialogInterface.OnClickListener() { // from class: mobi.beyondpod.ui.dialogs.ApplicationErrorMessageDialog.4
                    @Override // android.content.DialogInterface.OnClickListener
                    public void onClick(DialogInterface dialogInterface, int i) {
                        if (intExtra == 1) {
                            CommandManager.cmdOpenGReaderLogin(ApplicationErrorMessageDialog.this);
                        }
                        ApplicationErrorMessageDialog.this.finish();
                    }
                });
            }
        }
        builder.create().show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    @TargetApi(23)
    public void handlePermissionRequest() {
        if (CoreHelper.apiLevel() < 23 || PermissionUtil.hasExternalStoragePermission()) {
            return;
        }
        requestPermissions(PermissionUtil.PERMISSIONS_EXT_STORAGE, 501);
    }

    @Override // android.app.Activity
    public void onRequestPermissionsResult(int i, String[] strArr, int[] iArr) {
        if (i == 501) {
            Intent intent = getIntent();
            String stringExtra = intent != null ? intent.getStringExtra(ERROR_PERMISSION_GRANTED_MSG) : null;
            if (stringExtra == null) {
                stringExtra = getString(R.string.application_error_access_granted);
            }
            String stringExtra2 = intent != null ? intent.getStringExtra(ERROR_PERMISSION_DENIED_MSG) : null;
            String string = stringExtra2 == null ? getString(R.string.application_error_access_denied) : stringExtra2;
            if (PermissionUtil.verifyPermissions(iArr)) {
                string = stringExtra;
            }
            if (!StringUtils.isNullOrEmpty(string)) {
                Toast.makeText(this, string, 1).show();
            }
            finish();
            return;
        }
        super.onRequestPermissionsResult(i, strArr, iArr);
    }

    public static boolean requestPermissionsIfNeeded(Context context, CharSequence charSequence, CharSequence charSequence2, CharSequence charSequence3) {
        if (!PermissionUtil.versionSupportsPermissions()) {
            return false;
        }
        Intent intent = new Intent(context, (Class<?>) ApplicationErrorMessageDialog.class);
        if (!PermissionUtil.hasSelfPermission(context, PermissionUtil.PERMISSIONS_EXT_STORAGE)) {
            intent.putExtra(ERROR_MESSAGE, charSequence);
            intent.putExtra(ERROR_TYPE, (charSequence == null || charSequence.length() == 0) ? 6 : 5);
            if (charSequence2 != null) {
                intent.putExtra(ERROR_PERMISSION_GRANTED_MSG, charSequence2);
            }
            if (charSequence3 != null) {
                intent.putExtra(ERROR_PERMISSION_DENIED_MSG, charSequence3);
            }
        } else {
            intent.putExtra(ERROR_MESSAGE, context.getResources().getText(R.string.application_error_access_granted_but_still_cant_write));
        }
        intent.setFlags(268435456);
        context.startActivity(intent);
        return true;
    }
}
