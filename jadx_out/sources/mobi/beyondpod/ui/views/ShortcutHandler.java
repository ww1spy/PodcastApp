package mobi.beyondpod.ui.views;

import android.app.Activity;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.support.v4.content.ContextCompat;
import mobi.beyondpod.BeyondPodApplication;
import mobi.beyondpod.Constants;
import mobi.beyondpod.rsscore.helpers.CoreHelper;
import mobi.beyondpod.services.player.MediaPlaybackService;
import mobi.beyondpod.services.player.smartplay.SmartPlaylistManager;
import mobi.beyondpod.services.scheduler.CommandReceiver;

/* loaded from: classes.dex */
public class ShortcutHandler extends Activity {
    private static final String TAG = "ShortcutHandler";

    @Override // android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (!BeyondPodApplication.isInitialized()) {
            CoreHelper.writeTraceEntry(TAG, "WidgetActionPicker started with no storage card. Exiting...");
            startActivity(new Intent(getApplicationContext(), (Class<?>) Splash.class));
            finish();
        } else if (!SmartPlaylistManager.isConfigured()) {
            openBeyondPodUI();
            finish();
        } else {
            Intent intent = getIntent();
            if (intent != null) {
                startSmartPlay(intent.getIntExtra(CommandReceiver.EXTRA_PLAYLIST_ID, -1));
            }
        }
    }

    @Override // android.app.Activity
    protected void onResume() {
        super.onResume();
        openBeyondPodUI();
        finish();
    }

    private void openBeyondPodUI() {
        Intent intent = new Intent(this, BeyondPodApplication.getInstance().masterViewClass());
        intent.setFlags(536870912);
        intent.setData(Uri.parse(Constants.INTENT_ACTION_OPEN_PLAYER));
        startActivity(intent);
    }

    private void startSmartPlay(int i) {
        Intent intent = new Intent(BeyondPodApplication.getInstance(), (Class<?>) MediaPlaybackService.class);
        intent.setAction(MediaPlaybackService.SERVICE_WIDGET_CMD_START_SMARTPLAY);
        intent.putExtra(CommandReceiver.EXTRA_PLAYLIST_ID, i);
        if (CoreHelper.isOreoCompatible()) {
            ContextCompat.startForegroundService(this, intent);
        } else {
            startService(intent);
        }
    }
}
