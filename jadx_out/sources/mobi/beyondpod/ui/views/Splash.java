package mobi.beyondpod.ui.views;

import android.content.Intent;
import android.support.design.widget.Snackbar;
import android.support.v7.app.AppCompatActivity;
import android.view.View;
import android.widget.Button;
import android.widget.RadioButton;
import android.widget.RadioGroup;
import android.widget.TextView;
import android.widget.Toast;
import java.io.File;
import mobi.beyondpod.BeyondPodApplication;
import mobi.beyondpod.R;
import mobi.beyondpod.rsscore.Configuration;
import mobi.beyondpod.rsscore.helpers.CoreHelper;
import mobi.beyondpod.rsscore.helpers.PermissionUtil;

/* loaded from: classes.dex */
public class Splash extends AppCompatActivity {
    public static final int REQUEST_EXTERNAL_STORAGE = 501;
    private static final String TAG = "Splash";
    private Button _CancelBtn;
    private Button _ExitBtn;
    View.OnClickListener _ExitListener = new View.OnClickListener() { // from class: mobi.beyondpod.ui.views.Splash.3
        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            CoreHelper.writeTraceEntry(Splash.TAG, "Splash is exiting.");
            BeyondPodApplication.getInstance().shutdown();
            Splash.this.finish();
        }
    };
    private RadioButton _External;
    private boolean _ExternalAvailable;
    private File _ExternalSDCardMount;
    private RadioButton _Internal;
    private boolean _InternalAvailable;
    private File _InternalSDCardMount;
    private Button _ResetBtn;
    private RadioGroup _SDCardSelector;
    private TextView _StatusMsg;

    /* JADX WARN: Code restructure failed: missing block: B:63:0x0201, code lost:
    
        if (r3.equals("removed") == false) goto L75;
     */
    @Override // android.support.v7.app.AppCompatActivity, android.support.v4.app.FragmentActivity, android.support.v4.app.SupportActivity, android.app.Activity
    @android.annotation.SuppressLint({"NewApi"})
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onCreate(android.os.Bundle r13) {
        /*
            Method dump skipped, instructions count: 744
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: mobi.beyondpod.ui.views.Splash.onCreate(android.os.Bundle):void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void initAndRestartSplash() {
        try {
            Configuration.initialize(getApplicationContext());
            Intent intent = getIntent();
            finish();
            startActivity(intent);
        } catch (Exception e) {
            CoreHelper.logException(TAG, "failed to initialize Configuration", e);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.support.v7.app.AppCompatActivity, android.support.v4.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        CoreHelper.writeTraceEntry(TAG, "Splash activity destroyed!");
        super.onDestroy();
    }

    @Override // android.support.v4.app.FragmentActivity, android.app.Activity, android.support.v4.app.ActivityCompat.OnRequestPermissionsResultCallback
    public void onRequestPermissionsResult(int i, String[] strArr, int[] iArr) {
        if (i == 501) {
            if (PermissionUtil.verifyPermissions(iArr)) {
                Toast.makeText(this, R.string.grant_permission_access_granted, 1).show();
                initAndRestartSplash();
                return;
            } else {
                Snackbar.make(findViewById(android.R.id.content), R.string.grant_permission_access_denied, 0).show();
                return;
            }
        }
        super.onRequestPermissionsResult(i, strArr, iArr);
    }
}
