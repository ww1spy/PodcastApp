package mobi.beyondpod.ui.dialogs;

import android.app.Activity;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.support.v4.content.ContextCompat;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.ArrayAdapter;
import android.widget.ImageView;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.TextView;
import mobi.beyondpod.BeyondPodApplication;
import mobi.beyondpod.Constants;
import mobi.beyondpod.R;
import mobi.beyondpod.rsscore.helpers.CoreHelper;
import mobi.beyondpod.rsscore.rss.PolicyManager;
import mobi.beyondpod.services.player.MediaPlaybackService;
import mobi.beyondpod.services.player.smartplay.SmartPlaylistManager;
import mobi.beyondpod.ui.commands.CommandManager;
import mobi.beyondpod.ui.views.Splash;

/* loaded from: classes.dex */
public class WidgetActionPicker extends Activity {
    private static final String TAG = "WidgetActionPicker";
    private static final String UPDATE_SMART_PLAY_FEEDS = CoreHelper.loadResourceString(R.string.widget_action_picker_update_smartplay_feeds);
    private static final String START_SMART_PLAY = CoreHelper.loadResourceString(R.string.widget_action_picker_start_smartplay);
    private static final String OPEN_BEYOND_POD = CoreHelper.loadResourceString(R.string.widget_action_picker_open_beyondpod);
    private String[] mStrings = {OPEN_BEYOND_POD, START_SMART_PLAY, UPDATE_SMART_PLAY_FEEDS};
    private int[] mImages = {R.drawable.ic_action_home, R.drawable.ic_action_smartplay, R.drawable.ic_action_reload};

    @Override // android.app.Activity
    protected void onCreate(Bundle bundle) {
        requestWindowFeature(1);
        super.onCreate(bundle);
        if (!BeyondPodApplication.isInitialized()) {
            CoreHelper.writeTraceEntry(TAG, "WidgetActionPicker started with no storage card. Exiting...");
            startActivity(new Intent(getApplicationContext(), (Class<?>) Splash.class));
            finish();
        } else if (!SmartPlaylistManager.isConfigured()) {
            openBeyondPodUI();
            finish();
        } else {
            setContentView(R.layout.widget_picker_view);
            ListView listView = (ListView) findViewById(R.id.widget_picker_selector);
            listView.setAdapter((ListAdapter) new IconicAdapter(this));
            listView.setOnItemClickListener(new AdapterView.OnItemClickListener() { // from class: mobi.beyondpod.ui.dialogs.WidgetActionPicker.1
                @Override // android.widget.AdapterView.OnItemClickListener
                public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
                    switch (i) {
                        case 0:
                            WidgetActionPicker.this.openBeyondPodUI();
                            break;
                        case 1:
                            WidgetActionPicker.this.startSmartPlay();
                            break;
                        case 2:
                            if (!PolicyManager.checkAndNotifyIfInDownloadRestrictedMode()) {
                                CommandManager.cmdUpdateSmartPlayList("#$DEF$#");
                                break;
                            }
                            break;
                    }
                    WidgetActionPicker.this.finish();
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void openBeyondPodUI() {
        Intent intent = new Intent(this, BeyondPodApplication.getInstance().masterViewClass());
        intent.setFlags(536870912);
        intent.setData(Uri.parse(Constants.INTENT_ACTION_WIDGET));
        startActivity(intent);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void startSmartPlay() {
        Intent intent = new Intent(BeyondPodApplication.getInstance(), (Class<?>) MediaPlaybackService.class);
        intent.setAction(MediaPlaybackService.SERVICE_WIDGET_CMD_START_SMARTPLAY);
        if (CoreHelper.isOreoCompatible()) {
            ContextCompat.startForegroundService(this, intent);
        } else {
            startService(intent);
        }
    }

    /* loaded from: classes.dex */
    class IconicAdapter extends ArrayAdapter<String> {
        private final String NOW_PLAYING;
        Activity context;

        IconicAdapter(Activity activity) {
            super(activity, R.layout.widget_picker_view_item, WidgetActionPicker.this.mStrings);
            this.NOW_PLAYING = CoreHelper.loadResourceString(R.string.widget_action_picker_now_playing);
            this.context = activity;
        }

        @Override // android.widget.ArrayAdapter, android.widget.Adapter
        public View getView(int i, View view, ViewGroup viewGroup) {
            View inflate = this.context.getLayoutInflater().inflate(R.layout.widget_picker_view_item, (ViewGroup) null);
            TextView textView = (TextView) inflate.findViewById(R.id.wpText);
            ImageView imageView = (ImageView) inflate.findViewById(R.id.wpIcon);
            if (i > 0) {
                textView.setText(WidgetActionPicker.this.mStrings[i]);
                imageView.setImageResource(WidgetActionPicker.this.mImages[i]);
            } else if (BeyondPodApplication.getInstance().playList().currentTrack() == null || BeyondPodApplication.getInstance().playList().currentTrack().getCurrentPlayState() != 1) {
                textView.setText(WidgetActionPicker.this.mStrings[i]);
                imageView.setImageResource(WidgetActionPicker.this.mImages[i]);
            } else {
                textView.setText(this.NOW_PLAYING);
                imageView.setImageResource(R.drawable.ic_action_play);
            }
            return inflate;
        }
    }
}
