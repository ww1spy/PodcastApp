package mobi.beyondpod.ui.settings;

import android.annotation.TargetApi;
import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.preference.PreferenceFragment;
import android.text.SpannableString;
import android.text.style.UnderlineSpan;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.ArrayAdapter;
import android.widget.Button;
import android.widget.CheckBox;
import android.widget.CompoundButton;
import android.widget.Spinner;
import android.widget.SpinnerAdapter;
import android.widget.Switch;
import android.widget.TextView;
import java.util.Date;
import mobi.beyondpod.BeyondPodApplication;
import mobi.beyondpod.R;
import mobi.beyondpod.evo.BeyondPodApplicationEvo;
import mobi.beyondpod.evo.GcmRegistrar;
import mobi.beyondpod.rsscore.Configuration;
import mobi.beyondpod.rsscore.helpers.CoreHelper;
import mobi.beyondpod.rsscore.helpers.StringUtils;
import mobi.beyondpod.sync.ChangeTracker;
import mobi.beyondpod.sync.trackers.bp.BPTracker;
import mobi.beyondpod.ui.commands.CommandManager;
import mobi.beyondpod.ui.dialogs.CrossDeviceSyncLoginActivity;

/* loaded from: classes.dex */
public class CrossDeviceSyncSetupFragment extends PreferenceFragment {
    private static final String BEYOND_POD_HELP = CoreHelper.loadResourceString(R.string.feed_content_beyondpod_help);
    Spinner _AcceptFeeds;
    Context _CDSRegistrationContext;
    Button _Cancel;
    Button _CreateAccount;
    TextView _CurrentUser;
    TextView _DeviceId;
    TextView _ForgotPassword;
    TextView _Help;
    Button _Login;
    View _LoginArea;
    CheckBox _OptAllowRemoteDeletions;
    String _Password;
    Button _Save;
    View _SettingsArea;
    Switch _SyncEnabled;
    String _Token;
    String _UserName;
    Handler _LoginAreaHandler = new Handler();
    private CompoundButton.OnCheckedChangeListener _SyncSettingsChangedListener = new CompoundButton.OnCheckedChangeListener() { // from class: mobi.beyondpod.ui.settings.CrossDeviceSyncSetupFragment.1
        @Override // android.widget.CompoundButton.OnCheckedChangeListener
        public void onCheckedChanged(CompoundButton compoundButton, boolean z) {
            Configuration.setCDSAllowRemoteEpisodeDeletions(CrossDeviceSyncSetupFragment.this._OptAllowRemoteDeletions.isChecked());
        }
    };
    private Runnable _UpdateLoginAreaRunnable = new Runnable() { // from class: mobi.beyondpod.ui.settings.CrossDeviceSyncSetupFragment.6
        @Override // java.lang.Runnable
        public void run() {
            CrossDeviceSyncSetupFragment.this.updateLoginArea();
        }
    };
    private View.OnClickListener _LoginCreateListener = new View.OnClickListener() { // from class: mobi.beyondpod.ui.settings.CrossDeviceSyncSetupFragment.7
        @Override // android.view.View.OnClickListener
        @TargetApi(21)
        public void onClick(View view) {
            Intent intent = new Intent(BeyondPodApplication.getInstance(), (Class<?>) CrossDeviceSyncLoginActivity.class);
            if (CoreHelper.apiLevel() >= 21) {
                intent.setFlags(524288);
            } else {
                intent.setFlags(524288);
            }
            intent.putExtra("TYPE", view == CrossDeviceSyncSetupFragment.this._Login ? "LOGIN" : "CREATE");
            CrossDeviceSyncSetupFragment.this.startActivityForResult(intent, 100);
        }
    };
    private View.OnClickListener _LogoutListener = new View.OnClickListener() { // from class: mobi.beyondpod.ui.settings.CrossDeviceSyncSetupFragment.8
        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            BPTracker.logout();
            CrossDeviceSyncSetupFragment crossDeviceSyncSetupFragment = CrossDeviceSyncSetupFragment.this;
            CrossDeviceSyncSetupFragment crossDeviceSyncSetupFragment2 = CrossDeviceSyncSetupFragment.this;
            CrossDeviceSyncSetupFragment.this._Token = "";
            crossDeviceSyncSetupFragment2._Password = "";
            crossDeviceSyncSetupFragment._UserName = "";
            CrossDeviceSyncSetupFragment.this.saveSettings();
        }
    };

    @Override // android.preference.PreferenceFragment, android.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        this._CDSRegistrationContext = BeyondPodApplicationEvo.getInstance();
        this._UserName = Configuration.CDSUserName();
        this._Password = Configuration.CDSPassword();
        this._Token = Configuration.CDSToken();
        getActivity().setTitle(R.string.settings_cds_title);
        View inflate = layoutInflater.inflate(R.layout.cross_device_sync_settings_fragment, viewGroup, false);
        this._LoginArea = inflate.findViewById(R.id.askForCredentials);
        this._SettingsArea = inflate.findViewById(R.id.syncSettingsArea);
        this._ForgotPassword = (TextView) inflate.findViewById(R.id.forgot_password);
        final String string = getResources().getString(R.string.cds_info_forgot_password);
        SpannableString spannableString = new SpannableString(string);
        spannableString.setSpan(new UnderlineSpan(), 0, string.length(), 33);
        this._ForgotPassword.setText(spannableString);
        this._ForgotPassword.setOnClickListener(new View.OnClickListener() { // from class: mobi.beyondpod.ui.settings.CrossDeviceSyncSetupFragment.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                CommandManager.cmdStartHtmlViewActivity(Uri.withAppendedPath(Configuration.CDSEndpoint(), "forgotPassword"), string, false);
            }
        });
        this._OptAllowRemoteDeletions = (CheckBox) inflate.findViewById(R.id.cds_allowRemoteDeletions);
        this._OptAllowRemoteDeletions.setChecked(Configuration.CDSAllowRemoteEpisodeDeletions());
        this._OptAllowRemoteDeletions.setOnCheckedChangeListener(this._SyncSettingsChangedListener);
        this._AcceptFeeds = (Spinner) inflate.findViewById(R.id.acceptFeeds);
        ArrayAdapter<CharSequence> createFromResource = ArrayAdapter.createFromResource(getActivity(), R.array.cds_accept_feeds_type_text, android.R.layout.simple_spinner_item);
        createFromResource.setDropDownViewResource(android.R.layout.simple_spinner_dropdown_item);
        this._AcceptFeeds.setAdapter((SpinnerAdapter) createFromResource);
        int findIndexInNumArray = CoreHelper.findIndexInNumArray(getActivity(), R.array.cds_accept_feeds_type_values, Integer.valueOf(Configuration.CDSAllowRemoteFeeds()));
        if (findIndexInNumArray != -1) {
            this._AcceptFeeds.setSelection(findIndexInNumArray);
        } else {
            this._AcceptFeeds.setSelection(0);
        }
        this._AcceptFeeds.setOnItemSelectedListener(new AdapterView.OnItemSelectedListener() { // from class: mobi.beyondpod.ui.settings.CrossDeviceSyncSetupFragment.3
            @Override // android.widget.AdapterView.OnItemSelectedListener
            public void onNothingSelected(AdapterView<?> adapterView) {
            }

            @Override // android.widget.AdapterView.OnItemSelectedListener
            public void onItemSelected(AdapterView<?> adapterView, View view, int i, long j) {
                int findIndexValueInNumArray = CoreHelper.findIndexValueInNumArray(CrossDeviceSyncSetupFragment.this.getActivity(), R.array.cds_accept_feeds_type_values, i);
                if (findIndexValueInNumArray != Integer.MIN_VALUE) {
                    Configuration.setCDSAllowRemoteFeeds(findIndexValueInNumArray);
                }
            }
        });
        this._Login = (Button) inflate.findViewById(R.id.loginBtn);
        this._Login.setOnClickListener(this._LoginCreateListener);
        this._CreateAccount = (Button) inflate.findViewById(R.id.createAccountBtn);
        this._CreateAccount.setOnClickListener(this._LoginCreateListener);
        this._DeviceId = (TextView) inflate.findViewById(R.id.deviceName);
        this._CurrentUser = (TextView) inflate.findViewById(R.id.currentUser);
        this._Help = (TextView) inflate.findViewById(R.id.cds_help);
        String string2 = getResources().getString(R.string.cds_help);
        String string3 = getResources().getString(R.string.cds_info_title1, string2);
        SpannableString spannableString2 = new SpannableString(string3);
        int indexOf = string3.indexOf(string2);
        spannableString2.setSpan(new UnderlineSpan(), indexOf, string2.length() + indexOf, 33);
        this._Help.setText(spannableString2);
        this._Help.setOnClickListener(new View.OnClickListener() { // from class: mobi.beyondpod.ui.settings.CrossDeviceSyncSetupFragment.4
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                CommandManager.cmdStartHtmlViewActivity(Configuration.helpFileCDSURL(), CrossDeviceSyncSetupFragment.BEYOND_POD_HELP, false);
            }
        });
        this._SyncEnabled = (Switch) inflate.findViewById(R.id.cds_enable);
        this._SyncEnabled.setChecked(Configuration.CDSEnabled());
        this._SyncEnabled.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() { // from class: mobi.beyondpod.ui.settings.CrossDeviceSyncSetupFragment.5
            @Override // android.widget.CompoundButton.OnCheckedChangeListener
            public void onCheckedChanged(CompoundButton compoundButton, boolean z) {
                CrossDeviceSyncSetupFragment.this.saveSettings();
            }
        });
        if (ChangeTracker.isTrackingEnabled()) {
            ChangeTracker.initializeHistory();
        }
        updateLoginArea();
        if (!Configuration.CDSEnabled()) {
            new AlertDialog.Builder(getActivity()).setTitle(R.string.adv_settings_enable_cds_settings_dlg_title).setMessage(R.string.adv_settings_enable_cds_settings_dlg_msg).setNegativeButton(R.string.alert_dialog_continue, (DialogInterface.OnClickListener) null).setCancelable(true).show();
        }
        return inflate;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void saveSettings() {
        if (StringUtils.isNullOrEmpty(this._UserName) || StringUtils.isNullOrEmpty(this._Password) || StringUtils.isNullOrEmpty(ChangeTracker.deviceID())) {
            Configuration.setCDSEnabled(false);
        } else {
            Configuration.setCDSEnabled(this._SyncEnabled.isChecked());
        }
        Configuration.setCDSUserName(this._UserName);
        Configuration.setCDSPassword(this._Password);
        Configuration.setCDSDeviceID(ChangeTracker.deviceID());
        Configuration.setCDSSyncRetryInterval(0);
        if (Configuration.CDSEnabled()) {
            ChangeTracker.initializeHistory();
            if (Configuration.lastRemoteChangeTimeStamp() < 0) {
                Configuration.setLastRemoteChangeTimeStamp(new Date().getTime());
            }
            if (BeyondPodApplication.getInstance().isGCMSupportedOnDevice() && !GcmRegistrar.isRegistered()) {
                GcmRegistrar.register(this._CDSRegistrationContext);
            }
        } else if (BeyondPodApplication.getInstance().isGCMSupportedOnDevice() && GcmRegistrar.isRegistered()) {
            GcmRegistrar.unregister(this._CDSRegistrationContext);
        }
        updateLoginArea();
    }

    private void updateLoginAreaDelayed() {
        this._LoginAreaHandler.removeCallbacksAndMessages(null);
        this._LoginAreaHandler.postDelayed(this._UpdateLoginAreaRunnable, 500L);
    }

    @Override // android.preference.PreferenceFragment, android.app.Fragment
    public void onActivityResult(int i, int i2, Intent intent) {
        if (i == 100 && i2 != 0) {
            this._UserName = intent.getStringExtra("userName");
            this._Password = intent.getStringExtra("password");
            if (StringUtils.isNullOrEmpty(this._Password)) {
                AlertDialog.Builder builder = new AlertDialog.Builder(getActivity());
                builder.setTitle(R.string.cds_awaiting_verification_title);
                builder.setMessage(getResources().getString(R.string.cds_awaiting_verification_msg, this._UserName));
                builder.setCancelable(true);
                builder.setNegativeButton(R.string.alert_dialog_ok, (DialogInterface.OnClickListener) null);
                builder.create().show();
            }
            saveSettings();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateLoginArea() {
        String str;
        String str2;
        if (isAdded()) {
            this._LoginArea.setVisibility(this._SyncEnabled.isChecked() ? 0 : 8);
            if (!StringUtils.isNullOrEmpty(this._UserName) && !StringUtils.isNullOrEmpty(this._Password)) {
                boolean z = true;
                String string = getString(R.string.cds_device_id, new Object[]{ChangeTracker.deviceID()});
                if (!StringUtils.isNullOrEmpty(this._Token)) {
                    String str3 = string + "\n" + this._Token;
                    StringBuilder sb = new StringBuilder();
                    sb.append(str3);
                    sb.append("\n");
                    if (new Date().after(Configuration.CDSTokenExpiration())) {
                        str2 = "Token Expired";
                    } else {
                        str2 = "Token Expires: " + Configuration.CDSTokenExpiration();
                    }
                    sb.append(str2);
                    string = sb.toString();
                }
                if (Configuration.CDSDebugEnabled()) {
                    if (BeyondPodApplication.getInstance().isGCMSupportedOnDevice()) {
                        if (StringUtils.isNullOrEmpty(GcmRegistrar.getRegistrationId())) {
                            str = string + "\nNot registered for InstantSync!";
                        } else if (GcmRegistrar.isRegisteredOnServer()) {
                            str = string + "\nRegistered for InstantSync!";
                        } else {
                            str = string + "\nRegistered with GCM but not with CDS!";
                        }
                        this._DeviceId.setText(str + "\n" + Configuration.CDSEndpoint());
                        this._DeviceId.setVisibility(0);
                    } else {
                        str = string + "\nInstantSync is not supported on this device!";
                    }
                    z = false;
                    this._DeviceId.setText(str + "\n" + Configuration.CDSEndpoint());
                    this._DeviceId.setVisibility(0);
                } else {
                    this._DeviceId.setVisibility(8);
                    z = false;
                }
                this._CurrentUser.setText(this._UserName);
                this._CurrentUser.setVisibility(0);
                this._Login.setVisibility(8);
                this._ForgotPassword.setVisibility(8);
                this._SettingsArea.setVisibility(0);
                this._CreateAccount.setText(R.string.cds_logaout_text);
                this._CreateAccount.setOnClickListener(this._LogoutListener);
                if (z) {
                    updateLoginAreaDelayed();
                    return;
                }
                return;
            }
            this._DeviceId.setVisibility(8);
            this._CurrentUser.setVisibility(8);
            this._Login.setVisibility(0);
            this._CreateAccount.setText(R.string.cds_create_account_text);
            this._CreateAccount.setOnClickListener(this._LoginCreateListener);
            this._SettingsArea.setVisibility(8);
            this._ForgotPassword.setVisibility(0);
        }
    }

    @Override // android.app.Fragment
    public void onDetach() {
        this._LoginAreaHandler.removeCallbacksAndMessages(null);
        super.onDetach();
    }
}
