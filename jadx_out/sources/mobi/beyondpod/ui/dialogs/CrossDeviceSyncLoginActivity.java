package mobi.beyondpod.ui.dialogs;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.AsyncTask;
import android.os.Bundle;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.inputmethod.InputMethodManager;
import android.widget.Button;
import android.widget.EditText;
import android.widget.ProgressBar;
import android.widget.TextView;
import android.widget.Toast;
import java.util.regex.Pattern;
import mobi.beyondpod.R;
import mobi.beyondpod.rsscore.Configuration;
import mobi.beyondpod.rsscore.helpers.CoreHelper;
import mobi.beyondpod.rsscore.helpers.StringUtils;
import mobi.beyondpod.sync.ChangeTracker;
import mobi.beyondpod.sync.trackers.bp.AuthenticationException;
import mobi.beyondpod.sync.trackers.bp.AuthenticationResult;
import mobi.beyondpod.sync.trackers.bp.BeyondPodServiceClientV1;
import mobi.beyondpod.sync.trackers.bp.ServiceException;
import mobi.beyondpod.ui.commands.CommandManager;

/* loaded from: classes.dex */
public class CrossDeviceSyncLoginActivity extends Activity {
    private static final String BEYOND_POD_HELP = CoreHelper.loadResourceString(R.string.feed_content_beyondpod_help);
    private static final int MENU_HELP = 0;
    private static final String TAG = "CrossDeviceSyncLoginActivity";
    public final Pattern EMAIL_ADDRESS_PATTERN = Pattern.compile("[a-zA-Z0-9\\+\\.\\_\\%\\-\\+]{1,256}\\@[a-zA-Z0-9][a-zA-Z0-9\\-]{0,64}(\\.[a-zA-Z0-9][a-zA-Z0-9\\-]{0,25})+");
    private Button _Cancel;
    Context _Context;
    private TextView _DialogTitle;
    private TextView _InfoLabel;
    private Button _Login;
    private String _LoginPassword;
    private ProgressBar _LoginProgress;
    private String _LoginUserName;
    private boolean _ModeCreate;
    private EditText _Password;
    private EditText _RetypePassword;
    private EditText _UserName;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static class LoginResult {
        static final int RESULT_ACCOUNT_ALREADY_EXISTS = -4;
        static final int RESULT_ACCOUNT_QUOTA_REACHED = -6;
        static final int RESULT_AUTH_FAILED = -1;
        static final int RESULT_INVALID_EMAIL = -5;
        static final int RESULT_NETWORK_ERROR = -2;
        static final int RESULT_OK = 0;
        static final int RESULT_UNVERIFIED_ACCOUNT = -3;
        AuthenticationResult AuthResult;
        int LoginStatus;

        private LoginResult() {
        }
    }

    /* loaded from: classes.dex */
    private class LoginTask extends AsyncTask<String, Integer, LoginResult> {
        private LoginTask() {
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        public LoginResult doInBackground(String... strArr) {
            LoginResult loginResult = new LoginResult();
            BeyondPodServiceClientV1 beyondPodServiceClientV1 = new BeyondPodServiceClientV1();
            try {
                if (strArr.length > 2) {
                    loginResult.AuthResult = beyondPodServiceClientV1.registerUser(strArr[0], strArr[1], BeyondPodServiceClientV1.AuthType.BeyondPod, ChangeTracker.deviceID());
                } else {
                    loginResult.AuthResult = beyondPodServiceClientV1.authenticateUser(strArr[0], strArr[1], BeyondPodServiceClientV1.AuthType.BeyondPod, ChangeTracker.deviceID(), false);
                }
                loginResult.LoginStatus = loginResult.AuthResult.isWaitingForEmailVerification() ? -3 : 0;
            } catch (AuthenticationException e) {
                int statusCode = e.getStatusCode();
                if (statusCode == 10) {
                    loginResult.LoginStatus = -4;
                } else if (statusCode == 20) {
                    loginResult.LoginStatus = -5;
                } else if (statusCode == 30) {
                    loginResult.LoginStatus = -3;
                } else if (statusCode == 100) {
                    loginResult.LoginStatus = -6;
                } else {
                    loginResult.LoginStatus = -1;
                }
            } catch (ServiceException e2) {
                String str = CrossDeviceSyncLoginActivity.TAG;
                StringBuilder sb = new StringBuilder();
                sb.append("Service Error! ");
                sb.append(e2.getCause() != null ? e2.getCause().getMessage() : e2.getMessage());
                CoreHelper.writeLogEntry(str, sb.toString());
                loginResult.LoginStatus = -2;
            }
            return loginResult;
        }

        @Override // android.os.AsyncTask
        protected void onPreExecute() {
            CrossDeviceSyncLoginActivity.this._LoginProgress.setVisibility(0);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        public void onPostExecute(LoginResult loginResult) {
            CrossDeviceSyncLoginActivity.this._LoginProgress.setVisibility(8);
            if (loginResult == null || loginResult.LoginStatus == -2) {
                Toast.makeText(CrossDeviceSyncLoginActivity.this, R.string.cds_network_error, 1).show();
                return;
            }
            if (loginResult.LoginStatus == -1) {
                Toast.makeText(CrossDeviceSyncLoginActivity.this, R.string.cds_login_failed, 1).show();
                return;
            }
            if (loginResult.LoginStatus == -4) {
                Toast.makeText(CrossDeviceSyncLoginActivity.this, R.string.cds_account_exists, 1).show();
                return;
            }
            if (loginResult.LoginStatus == -5) {
                Toast.makeText(CrossDeviceSyncLoginActivity.this, R.string.cds_invalid_email, 1).show();
                return;
            }
            if (loginResult.LoginStatus == -6) {
                Toast.makeText(CrossDeviceSyncLoginActivity.this, R.string.cds_account_quota_reached, 1).show();
                return;
            }
            Intent intent = new Intent();
            intent.putExtra("userName", CrossDeviceSyncLoginActivity.this._LoginUserName);
            if (loginResult.LoginStatus == 0) {
                intent.putExtra("password", loginResult.AuthResult.getEncryptedPassword());
            }
            intent.putExtra("deviceID", ChangeTracker.deviceID());
            CrossDeviceSyncLoginActivity.this.setResult(-1, intent);
            CrossDeviceSyncLoginActivity.this.finish();
        }
    }

    @Override // android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this._Context = this;
        setContentView(R.layout.cross_device_sync_login_activity);
        this._UserName = (EditText) findViewById(R.id.cds_uname);
        this._Password = (EditText) findViewById(R.id.cds_pw);
        this._RetypePassword = (EditText) findViewById(R.id.cds_pw_repeat);
        this._ModeCreate = "CREATE".equals(getIntent().getStringExtra("TYPE"));
        this._LoginProgress = (ProgressBar) findViewById(R.id.cds_loginProgress);
        this._LoginProgress.setVisibility(8);
        this._Cancel = (Button) findViewById(R.id.button2);
        this._Cancel.setText(R.string.alert_dialog_cancel);
        this._Cancel.setOnClickListener(new View.OnClickListener() { // from class: mobi.beyondpod.ui.dialogs.CrossDeviceSyncLoginActivity.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                CrossDeviceSyncLoginActivity.this.finish();
            }
        });
        this._Login = (Button) findViewById(R.id.button1);
        this._Login.setOnClickListener(new View.OnClickListener() { // from class: mobi.beyondpod.ui.dialogs.CrossDeviceSyncLoginActivity.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                InputMethodManager inputMethodManager = (InputMethodManager) CrossDeviceSyncLoginActivity.this.getSystemService("input_method");
                if (inputMethodManager != null) {
                    inputMethodManager.hideSoftInputFromWindow(CrossDeviceSyncLoginActivity.this._UserName.getWindowToken(), 0);
                    inputMethodManager.hideSoftInputFromWindow(CrossDeviceSyncLoginActivity.this._Password.getWindowToken(), 0);
                    inputMethodManager.hideSoftInputFromWindow(CrossDeviceSyncLoginActivity.this._RetypePassword.getWindowToken(), 0);
                }
                CrossDeviceSyncLoginActivity.this._LoginUserName = CrossDeviceSyncLoginActivity.this._UserName.getText().toString().trim();
                CrossDeviceSyncLoginActivity.this._LoginPassword = CrossDeviceSyncLoginActivity.this._Password.getText().toString().trim();
                if (StringUtils.isNullOrEmpty(CrossDeviceSyncLoginActivity.this._LoginUserName) || !CrossDeviceSyncLoginActivity.this.EMAIL_ADDRESS_PATTERN.matcher(CrossDeviceSyncLoginActivity.this._LoginUserName).matches()) {
                    CrossDeviceSyncLoginActivity.this._UserName.setText(CrossDeviceSyncLoginActivity.this._LoginUserName);
                    CrossDeviceSyncLoginActivity.this._UserName.requestFocus();
                    Toast.makeText(CrossDeviceSyncLoginActivity.this, R.string.cds_invalid_email, 0).show();
                    return;
                }
                if (StringUtils.isNullOrEmpty(CrossDeviceSyncLoginActivity.this._LoginPassword) || CrossDeviceSyncLoginActivity.this._LoginPassword.length() < 5) {
                    CrossDeviceSyncLoginActivity.this._Password.setText(CrossDeviceSyncLoginActivity.this._LoginPassword);
                    CrossDeviceSyncLoginActivity.this._Password.requestFocus();
                    Toast.makeText(CrossDeviceSyncLoginActivity.this, R.string.cds_invalid_password, 0).show();
                    return;
                }
                if (CrossDeviceSyncLoginActivity.this._ModeCreate) {
                    String trim = CrossDeviceSyncLoginActivity.this._RetypePassword.getText().toString().trim();
                    if (!CrossDeviceSyncLoginActivity.this._LoginPassword.equals(trim)) {
                        CrossDeviceSyncLoginActivity.this._RetypePassword.requestFocus();
                        Toast.makeText(CrossDeviceSyncLoginActivity.this, R.string.cds_password_dont_match, 0).show();
                        return;
                    } else {
                        new LoginTask().execute(CrossDeviceSyncLoginActivity.this._LoginUserName, CrossDeviceSyncLoginActivity.this._LoginPassword, trim);
                        return;
                    }
                }
                new LoginTask().execute(CrossDeviceSyncLoginActivity.this._LoginUserName, CrossDeviceSyncLoginActivity.this._LoginPassword);
            }
        });
        this._InfoLabel = (TextView) findViewById(R.id.cds_info_label);
        this._DialogTitle = (TextView) findViewById(R.id.dlg_title);
        if (this._ModeCreate) {
            this._DialogTitle.setText(R.string.cds_create_account_text);
            this._RetypePassword.setVisibility(0);
            this._Login.setText(R.string.cds_create_text);
            this._InfoLabel.setText(R.string.cds_info_label_create);
        } else {
            this._DialogTitle.setText(R.string.cds_login_text);
            this._RetypePassword.setVisibility(8);
            this._Login.setText(R.string.cds_login_text);
            final String string = getResources().getString(R.string.cds_info_forgot_password);
            this._InfoLabel.setText(string);
            this._InfoLabel.setGravity(5);
            this._InfoLabel.setText(R.string.cds_info_forgot_password);
            this._InfoLabel.setOnClickListener(new View.OnClickListener() { // from class: mobi.beyondpod.ui.dialogs.CrossDeviceSyncLoginActivity.3
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    CommandManager.cmdStartHtmlViewActivity(Uri.withAppendedPath(Configuration.CDSEndpoint(), "forgotPassword"), string, false);
                }
            });
        }
        if (CoreHelper.isRunningOnARC()) {
            return;
        }
        getWindow().setSoftInputMode(3);
    }

    @Override // android.app.Activity
    public boolean onCreateOptionsMenu(Menu menu) {
        menu.add(0, 0, 0, R.string.MENU_view_help);
        return true;
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public boolean onMenuItemSelected(int i, MenuItem menuItem) {
        int itemId = menuItem.getItemId();
        if (itemId == 0) {
            CommandManager.cmdStartHtmlViewActivity(Configuration.backupRestoreFileURL(), BEYOND_POD_HELP, false);
            return true;
        }
        if (itemId != 16908332) {
            return false;
        }
        finish();
        return true;
    }
}
