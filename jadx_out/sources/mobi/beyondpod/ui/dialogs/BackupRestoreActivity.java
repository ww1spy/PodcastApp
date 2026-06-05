package mobi.beyondpod.ui.dialogs;

import android.app.Activity;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import mobi.beyondpod.R;

/* loaded from: classes.dex */
public class BackupRestoreActivity extends Activity {
    @Override // android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.backup_restore_activity);
        Button button = (Button) findViewById(R.id.button2);
        findViewById(R.id.button1).setVisibility(8);
        button.setText(R.string.alert_dialog_cancel);
        button.setOnClickListener(new View.OnClickListener() { // from class: mobi.beyondpod.ui.dialogs.BackupRestoreActivity.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                BackupRestoreActivity.this.finish();
            }
        });
    }
}
