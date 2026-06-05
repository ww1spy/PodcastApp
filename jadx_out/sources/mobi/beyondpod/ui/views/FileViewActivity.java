package mobi.beyondpod.ui.views;

import android.content.Intent;
import android.graphics.drawable.ColorDrawable;
import android.os.Bundle;
import android.support.v7.app.ActionBar;
import android.support.v7.app.AppCompatActivity;
import android.text.method.ScrollingMovementMethod;
import android.view.Menu;
import android.view.MenuItem;
import android.widget.EditText;
import android.widget.ScrollView;
import android.widget.TextView;
import android.widget.Toast;
import io.fabric.sdk.android.services.settings.SettingsJsonConstants;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import mobi.beyondpod.R;
import mobi.beyondpod.rsscore.Configuration;
import mobi.beyondpod.rsscore.helpers.CoreHelper;
import mobi.beyondpod.ui.commands.CommandManager;

/* loaded from: classes.dex */
public class FileViewActivity extends AppCompatActivity {
    private static final int MENU_EMAIL_SUPPORT = 1;
    private static final int MENU_SCROLL_TO_END = 0;
    private static final int MENU_TRUNCATE_LOG = 2;
    private String _CurrentFile;
    private TextView _EditText;
    private ScrollView _textScroller;

    @Override // android.support.v7.app.AppCompatActivity, android.support.v4.app.FragmentActivity, android.support.v4.app.SupportActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        supportRequestWindowFeature(2);
        super.onCreate(bundle);
        this._EditText = new EditText(this);
        setContentView(R.layout.file_view_activity);
        ActionBar supportActionBar = getSupportActionBar();
        if (supportActionBar != null) {
            supportActionBar.setDisplayOptions(4, 4);
            supportActionBar.setBackgroundDrawable(new ColorDrawable(-12303292));
        }
        this._textScroller = (ScrollView) findViewById(R.id.editTextScroller);
        this._EditText = (TextView) findViewById(R.id.text);
        this._EditText.setMovementMethod(ScrollingMovementMethod.getInstance());
        this._EditText.setClickable(false);
        this._EditText.setLongClickable(false);
        if (bundle == null) {
            Intent intent = getIntent();
            if (intent.getData() != null) {
                this._CurrentFile = "";
                try {
                    this._CurrentFile = intent.getData().getPath();
                    setTitle(intent.getData().getLastPathSegment());
                    FileInputStream fileInputStream = new FileInputStream(this._CurrentFile);
                    byte[] bArr = new byte[4096];
                    ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                    while (true) {
                        int read = fileInputStream.read(bArr);
                        if (read == -1) {
                            break;
                        } else {
                            byteArrayOutputStream.write(bArr, 0, read);
                        }
                    }
                    byteArrayOutputStream.close();
                    fileInputStream.close();
                    this._EditText.setText(byteArrayOutputStream.toString());
                    if (intent.getBooleanExtra("scrollToEnd", false)) {
                        scrollToEnd();
                    }
                } catch (FileNotFoundException unused) {
                    Toast.makeText(this, "File " + this._CurrentFile + " was not found!", 0).show();
                } catch (IOException unused2) {
                }
            }
            if (intent.getStringExtra(SettingsJsonConstants.PROMPT_TITLE_KEY) != null) {
                setTitle(intent.getStringExtra(SettingsJsonConstants.PROMPT_TITLE_KEY));
            }
        }
    }

    private void scrollToEnd() {
        this._textScroller.post(new Runnable() { // from class: mobi.beyondpod.ui.views.FileViewActivity.1
            @Override // java.lang.Runnable
            public void run() {
                FileViewActivity.this._textScroller.scrollTo(0, FileViewActivity.this._EditText.getHeight());
            }
        });
    }

    @Override // android.app.Activity
    public boolean onPrepareOptionsMenu(Menu menu) {
        menu.clear();
        menu.add(0, 0, 0, "View Bottom");
        menu.add(0, 1, 1, "Email Support");
        if (Configuration.logFilePath().equals(this._CurrentFile) || Configuration.syncLogFilePath().equals(this._CurrentFile)) {
            menu.add(0, 2, 2, "Truncate Log File");
        }
        return true;
    }

    @Override // android.app.Activity
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        int itemId = menuItem.getItemId();
        if (itemId != 16908332) {
            switch (itemId) {
                case 0:
                    scrollToEnd();
                    return false;
                case 1:
                    CommandManager.cmdSendEMail(this, "support@beyondpod.mobi", "BeyondPod Log File", CoreHelper.dumpEnvironment() + "\n\nIMPORTANT! If you are sending a log for an issue you have previously reported, please include a bit of background about the issue or a reference (BeyondPod forum user name, twitter handle, support ticket number etc.) so we can match this log to the issue you reported.", this._CurrentFile, true);
                    return false;
                case 2:
                    CoreHelper.truncateLogFile(new File(this._CurrentFile));
                    this._EditText.setText("");
                    return true;
                default:
                    return false;
            }
        }
        finish();
        return true;
    }
}
