package mobi.beyondpod.ui.dialogs;

import android.app.Activity;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.TextView;
import android.widget.Toast;
import java.util.Iterator;
import mobi.beyondpod.R;
import mobi.beyondpod.aggregators.AggregatorLoginHelper;
import mobi.beyondpod.rsscore.Feed;
import mobi.beyondpod.rsscore.FeedList;

/* loaded from: classes.dex */
public class DisableGoogleReaderDialog extends Activity {
    @Override // android.app.Activity
    protected void onCreate(Bundle bundle) {
        boolean z;
        super.onCreate(bundle);
        setContentView(R.layout.disable_google_reader_dialog);
        TextView textView = (TextView) findViewById(R.id.dlg_message);
        StringBuilder sb = new StringBuilder();
        FeedList allAggregatorFeeds = AggregatorLoginHelper.getAllAggregatorFeeds();
        if (allAggregatorFeeds.size() == 0) {
            AggregatorLoginHelper.clearLogin();
            Toast.makeText(this, R.string.import_reader_log_out_msg, 1).show();
            finish();
            return;
        }
        StringBuilder sb2 = new StringBuilder();
        Iterator<Feed> it = allAggregatorFeeds.iterator();
        while (it.hasNext()) {
            Feed next = it.next();
            if (!AggregatorLoginHelper.isCategoryAggregatorFeed(next)) {
                sb2.append("  • ");
                sb2.append(next.getName());
                sb2.append("\n");
            }
        }
        if (sb2.length() > 0) {
            sb.append(getResources().getString(R.string.settings_disconnect_from_reader_msg, sb2));
            z = true;
        } else {
            z = false;
        }
        FeedList allSpecialAggregatorFeeds = AggregatorLoginHelper.getAllSpecialAggregatorFeeds();
        if (allSpecialAggregatorFeeds.size() > 0) {
            sb.append("\n\n");
            StringBuilder sb3 = new StringBuilder();
            Iterator<Feed> it2 = allSpecialAggregatorFeeds.iterator();
            while (it2.hasNext()) {
                Feed next2 = it2.next();
                sb3.append("  • ");
                sb3.append(next2.getName());
                sb3.append("\n");
            }
            sb.append(getResources().getString(R.string.settings_disconnect_from_reader_cant_convert_msg, sb3.toString()));
        }
        textView.setText(sb.toString());
        Button button = (Button) findViewById(R.id.button2);
        button.setText(R.string.alert_dialog_cancel);
        button.setOnClickListener(new View.OnClickListener() { // from class: mobi.beyondpod.ui.dialogs.DisableGoogleReaderDialog.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                DisableGoogleReaderDialog.this.finish();
            }
        });
        Button button2 = (Button) findViewById(R.id.button1);
        button2.setText(R.string.settings_disconnect_from_reader);
        if (z) {
            button2.setOnClickListener(new View.OnClickListener() { // from class: mobi.beyondpod.ui.dialogs.DisableGoogleReaderDialog.2
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    Toast.makeText(DisableGoogleReaderDialog.this, DisableGoogleReaderDialog.this.getResources().getString(R.string.settings_global_apply, Integer.valueOf(AggregatorLoginHelper.disconnectFromAggregator())), 0).show();
                    DisableGoogleReaderDialog.this.finish();
                }
            });
        } else {
            button2.setVisibility(8);
        }
    }
}
