package mobi.beyondpod.ui.dialogs;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.AdapterView;
import android.widget.ArrayAdapter;
import android.widget.ListAdapter;
import android.widget.ListView;
import mobi.beyondpod.R;
import mobi.beyondpod.evo.BeyondPodApplicationEvo;
import mobi.beyondpod.rsscore.Configuration;

/* loaded from: classes.dex */
public class WidgetPreferences extends Activity {
    int _AppWidgetId;

    @Override // android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setResult(0);
        setContentView(R.layout.widget_preferences_view);
        Bundle extras = getIntent().getExtras();
        if (extras != null) {
            this._AppWidgetId = extras.getInt("appWidgetId", 0);
        }
        if (this._AppWidgetId == 0) {
            finish();
        }
        ListView listView = (ListView) findViewById(R.id.widget_picker_selector);
        listView.setAdapter((ListAdapter) new ArrayAdapter(this, android.R.layout.simple_list_item_1, android.R.id.text1, getResources().getStringArray(R.array.widget_background_text)));
        listView.setOnItemClickListener(new AdapterView.OnItemClickListener() { // from class: mobi.beyondpod.ui.dialogs.WidgetPreferences.1
            @Override // android.widget.AdapterView.OnItemClickListener
            public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
                switch (i) {
                    case 0:
                        Configuration.setWidgetBackgroundColor(1);
                        break;
                    case 1:
                        Configuration.setWidgetBackgroundColor(2);
                        break;
                    case 2:
                        Configuration.setWidgetBackgroundColor(3);
                        break;
                }
                BeyondPodApplicationEvo.getInstance().refreshWidgets();
                Intent intent = new Intent();
                intent.putExtra("appWidgetId", WidgetPreferences.this._AppWidgetId);
                WidgetPreferences.this.setResult(-1, intent);
                WidgetPreferences.this.finish();
            }
        });
    }
}
