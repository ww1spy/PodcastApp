package mobi.beyondpod.ui.dialogs;

import android.content.Intent;
import android.os.Bundle;
import android.support.v7.app.AppCompatActivity;
import android.view.MenuItem;
import android.view.View;
import java.util.UUID;
import mobi.beyondpod.R;
import mobi.beyondpod.rsscore.Configuration;
import mobi.beyondpod.rsscore.Feed;
import mobi.beyondpod.rsscore.helpers.CoreHelper;
import mobi.beyondpod.rsscore.helpers.StringUtils;
import mobi.beyondpod.ui.commands.CommandManagerBase;

/* loaded from: classes.dex */
public class PreviewPlayer extends AppCompatActivity {
    private static final String TAG = "PreviewPlayer";
    private PreviewPlayerControl mControl;
    Feed mCurrentFeed;
    private boolean mFinishOnCompletion;
    private boolean mResumed = false;
    private boolean mFocused = false;
    private boolean mControlResumed = false;

    @Override // android.support.v7.app.AppCompatActivity, android.support.v4.app.FragmentActivity, android.support.v4.app.SupportActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        int i;
        int intExtra;
        supportRequestWindowFeature(9);
        super.onCreate(bundle);
        getSupportActionBar().setDisplayOptions(4, 4);
        setContentView(R.layout.preview_player);
        View findViewById = findViewById(R.id.root);
        Intent intent = getIntent();
        String stringExtra = intent.getStringExtra("android.intent.extra.album");
        if (!StringUtils.isNullOrEmpty(stringExtra)) {
            this.mCurrentFeed = Configuration.findFeedByIdInTempOrRepository(UUID.fromString(stringExtra));
        }
        int intExtra2 = intent.getIntExtra("output", -1);
        if (intExtra2 == -1) {
            String type = intent.getType();
            if (!StringUtils.isNullOrEmpty(type) && !type.startsWith("audio")) {
                if (type.startsWith("video")) {
                    intExtra2 = 2;
                } else if (type.startsWith("image")) {
                    intExtra2 = 3;
                }
            } else {
                i = 1;
                CoreHelper.writeTraceEntry(TAG, "Starting preview of " + intent.getDataString() + ", feed: " + this.mCurrentFeed + ", type:" + i + ", mime:" + intent.getType());
                CommandManagerBase.cmdPauseAudioPlayback();
                this.mControl = new PreviewPlayerControl(findViewById, this, intent.getData(), this.mCurrentFeed, i) { // from class: mobi.beyondpod.ui.dialogs.PreviewPlayer.1
                    @Override // mobi.beyondpod.ui.dialogs.PreviewPlayerControl
                    public void onCompletion() {
                        if (PreviewPlayer.this.mFinishOnCompletion) {
                            PreviewPlayer.this.finish();
                        }
                    }
                };
                if (intent.hasExtra("android.intent.extra.screenOrientation") && (intExtra = intent.getIntExtra("android.intent.extra.screenOrientation", -1)) != getRequestedOrientation()) {
                    setRequestedOrientation(intExtra);
                }
                this.mFinishOnCompletion = intent.getBooleanExtra("android.intent.extra.finishOnCompletion", true);
            }
        }
        i = intExtra2;
        CoreHelper.writeTraceEntry(TAG, "Starting preview of " + intent.getDataString() + ", feed: " + this.mCurrentFeed + ", type:" + i + ", mime:" + intent.getType());
        CommandManagerBase.cmdPauseAudioPlayback();
        this.mControl = new PreviewPlayerControl(findViewById, this, intent.getData(), this.mCurrentFeed, i) { // from class: mobi.beyondpod.ui.dialogs.PreviewPlayer.1
            @Override // mobi.beyondpod.ui.dialogs.PreviewPlayerControl
            public void onCompletion() {
                if (PreviewPlayer.this.mFinishOnCompletion) {
                    PreviewPlayer.this.finish();
                }
            }
        };
        if (intent.hasExtra("android.intent.extra.screenOrientation")) {
            setRequestedOrientation(intExtra);
        }
        this.mFinishOnCompletion = intent.getBooleanExtra("android.intent.extra.finishOnCompletion", true);
    }

    @Override // android.support.v4.app.FragmentActivity, android.app.Activity
    public void onPause() {
        super.onPause();
        this.mResumed = false;
        if (this.mControlResumed) {
            this.mControl.onPause();
            this.mControlResumed = false;
        }
    }

    @Override // android.support.v4.app.FragmentActivity, android.app.Activity
    public void onResume() {
        super.onResume();
        this.mResumed = true;
        if (!this.mFocused || this.mControlResumed) {
            return;
        }
        this.mControl.onResume();
        this.mControlResumed = true;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.support.v7.app.AppCompatActivity, android.support.v4.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        this.mControl.onDestroy();
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public void onWindowFocusChanged(boolean z) {
        this.mFocused = z;
        if (this.mFocused && this.mResumed && !this.mControlResumed) {
            this.mControl.onResume();
            this.mControlResumed = true;
        }
    }

    @Override // android.app.Activity
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        if (menuItem.getItemId() != 16908332) {
            return false;
        }
        finish();
        return true;
    }
}
