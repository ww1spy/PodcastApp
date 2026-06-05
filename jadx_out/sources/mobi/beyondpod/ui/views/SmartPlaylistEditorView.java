package mobi.beyondpod.ui.views;

import android.graphics.Color;
import android.graphics.drawable.ColorDrawable;
import android.os.Bundle;
import android.support.v4.app.FragmentActivity;
import android.support.v7.app.ActionBar;
import android.support.v7.app.AppCompatActivity;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.view.inputmethod.InputMethodManager;
import android.widget.AdapterView;
import android.widget.ArrayAdapter;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ScrollView;
import android.widget.Spinner;
import android.widget.SpinnerAdapter;
import android.widget.TextView;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import mobi.beyondpod.R;
import mobi.beyondpod.rsscore.Feed;
import mobi.beyondpod.rsscore.FeedSorter;
import mobi.beyondpod.rsscore.categories.CategoryList;
import mobi.beyondpod.rsscore.categories.CategoryManager;
import mobi.beyondpod.rsscore.categories.FeedCategory;
import mobi.beyondpod.rsscore.helpers.CoreHelper;
import mobi.beyondpod.rsscore.helpers.StringUtils;
import mobi.beyondpod.rsscore.repository.FeedRepository;
import mobi.beyondpod.services.player.smartplay.SmartPlaylist;
import mobi.beyondpod.services.player.smartplay.SmartPlaylistManager;
import mobi.beyondpod.ui.views.myepisodesview.cards.InfoCardManager;
import mobi.beyondpod.ui.views.myepisodesview.cards.InfoCardTip;
import mobi.beyondpod.ui.views.notifications.Message;
import mobi.beyondpod.ui.views.notifications.UserNotificationManager;

/* loaded from: classes.dex */
public class SmartPlaylistEditorView extends AppCompatActivity {
    private static final int MENU_CANCEL = 1;
    private static final int MENU_OK = 0;
    private static final String TAG = "SmartPlaylistEditorView";
    ArrayList<SmartPlaylist.SmartPlaylistEntry> _AllEntries;
    private LinearLayout _ListHolder;
    String[] _NumEpisodes;
    EditText _PlaylistName;
    int[] _RuleColors;
    private ScrollView _ScrollView;
    SmartPlaylist _Template = null;
    View _TipInfoCard;
    private static final String THEN_PLAY = CoreHelper.loadResourceString(R.string.smart_playlist_then_play);
    private static final String START_WITH = CoreHelper.loadResourceString(R.string.smart_playlist_start_with);

    int getPosFromSortOrder(int i) {
        if (i != 2) {
            return i != 100 ? 0 : 2;
        }
        return 1;
    }

    int getSortOrderFromPos(int i) {
        switch (i) {
            case 1:
                return 2;
            case 2:
                return 100;
            default:
                return 3;
        }
    }

    @Override // android.support.v7.app.AppCompatActivity, android.support.v4.app.FragmentActivity, android.support.v4.app.SupportActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (!FeedRepository.isRepositoryAvailable()) {
            CoreHelper.writeTraceEntry(TAG, "Closing view because the repository is not Loaded");
            finish();
            return;
        }
        setContentView(R.layout.smart_playlist_editor_view);
        ActionBar supportActionBar = getSupportActionBar();
        if (getResources().getInteger(R.integer.screen_size) < 600) {
            addOkCancelButtons();
        } else if (supportActionBar != null) {
            supportActionBar.setDisplayOptions(4, 4);
        }
        this._NumEpisodes = getResources().getStringArray(R.array.smart_playlist_numPodcasts_values);
        this._ScrollView = (ScrollView) findViewById(R.id.smart_playlist_scroller);
        this._ListHolder = (LinearLayout) findViewById(R.id.smart_playlist_listHolder);
        this._PlaylistName = (EditText) findViewById(R.id.smart_playlist_name);
        View findViewById = findViewById(R.id.add_rule);
        SmartPlaylist smartPlaylist = SmartPlaylistManager.getSmartPlaylist(getIntent().getIntExtra("id", -1));
        if (smartPlaylist == null) {
            smartPlaylist = SmartPlaylistManager.addSmartPlaylist();
        }
        this._Template = smartPlaylist.cloneSmartPlaylist();
        if (this._Template.entries().size() > 0) {
            this._PlaylistName.setText(this._Template.name());
        }
        findViewById.setOnClickListener(new View.OnClickListener() { // from class: mobi.beyondpod.ui.views.SmartPlaylistEditorView.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                SmartPlaylist.SmartPlaylistEntry smartPlaylistEntry = new SmartPlaylist.SmartPlaylistEntry(0, 3);
                SmartPlaylistEditorView.this._Template.entries().add(smartPlaylistEntry);
                smartPlaylistEntry.setSortID(SmartPlaylistEditorView.this._Template.entries().indexOf(smartPlaylistEntry));
                SmartPlaylistEditorView.this.reBindTemplates();
                InputMethodManager inputMethodManager = (InputMethodManager) SmartPlaylistEditorView.this.getSystemService("input_method");
                if (inputMethodManager != null) {
                    inputMethodManager.hideSoftInputFromWindow(SmartPlaylistEditorView.this._PlaylistName.getWindowToken(), 2);
                }
            }
        });
        String[] stringArray = getResources().getStringArray(R.array.add_feed_interests_colors);
        this._RuleColors = new int[stringArray.length];
        for (int i = 0; i != stringArray.length; i++) {
            try {
                this._RuleColors[i] = Color.parseColor(stringArray[i]);
            } catch (Exception unused) {
                this._RuleColors[i] = -16776961;
            }
        }
        bindTemplates();
        showHowToUseSmartPlay();
        if (bundle != null) {
            this._ScrollView.scrollTo(0, bundle.getInt("ScrollPos"));
        }
        if (supportActionBar != null) {
            supportActionBar.setBackgroundDrawable(new ColorDrawable(-12303292));
        }
    }

    private void addOkCancelButtons() {
        View inflate = ((LayoutInflater) getSupportActionBar().getThemedContext().getSystemService("layout_inflater")).inflate(R.layout.action_bar_done_cancel, (ViewGroup) null);
        inflate.findViewById(R.id.actionbar_done).setOnClickListener(new View.OnClickListener() { // from class: mobi.beyondpod.ui.views.SmartPlaylistEditorView.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                SmartPlaylistEditorView.this.saveChanges();
            }
        });
        inflate.findViewById(R.id.actionbar_cancel).setOnClickListener(new View.OnClickListener() { // from class: mobi.beyondpod.ui.views.SmartPlaylistEditorView.3
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                SmartPlaylistEditorView.this.finish();
            }
        });
        ActionBar supportActionBar = getSupportActionBar();
        supportActionBar.setDisplayOptions(16, 26);
        supportActionBar.setCustomView(inflate, new ActionBar.LayoutParams(-1, -1));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void saveChanges() {
        String trim = this._PlaylistName.getText().toString().trim();
        if (StringUtils.isNullOrEmpty(trim)) {
            trim = SmartPlaylistManager.getNextPlaylistName();
        }
        this._Template.renameTo(trim);
        SmartPlaylistManager.updateSmartplayTo(this._Template);
        SmartPlaylistManager.saveToDatabase();
        finish();
    }

    @Override // android.app.Activity
    public boolean onCreateOptionsMenu(Menu menu) {
        if (getResources().getInteger(R.integer.screen_size) < 600) {
            return false;
        }
        menu.add(0, 0, 2, R.string.alert_dialog_save).setIcon(R.drawable.ic_action_tick).setShowAsAction(6);
        menu.add(0, 1, 1, R.string.alert_dialog_cancel).setIcon(R.drawable.ic_action_cancel).setShowAsAction(6);
        return true;
    }

    @Override // android.app.Activity
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        int itemId = menuItem.getItemId();
        if (itemId == 16908332) {
            finish();
            return true;
        }
        switch (itemId) {
            case 0:
                saveChanges();
                return true;
            case 1:
                finish();
                return true;
            default:
                return super.onOptionsItemSelected(menuItem);
        }
    }

    void reBindTemplates() {
        int scrollY = this._ScrollView.getScrollY();
        this._ListHolder.removeAllViews();
        bindTemplates();
        this._ScrollView.scrollTo(0, scrollY);
    }

    void bindTemplates() {
        if (this._Template.size() > 0) {
            for (int i = 0; i != this._Template.size(); i++) {
                if (!this._Template.entries().get(i).isMarkedForDeletion()) {
                    this._ListHolder.addView(BuildItem(this._Template.entries().get(i), i), this._ListHolder.getChildCount());
                }
            }
        }
    }

    View BuildItem(final SmartPlaylist.SmartPlaylistEntry smartPlaylistEntry, int i) {
        int i2;
        View inflate = LayoutInflater.from(this).inflate(R.layout.smart_playlist_entry_item, (ViewGroup) null);
        ((TextView) inflate.findViewById(R.id.smart_playlist_play_text)).setText(i == 0 ? START_WITH : THEN_PLAY);
        TextView textView = (TextView) inflate.findViewById(R.id.ruleNum);
        textView.setText(Integer.toString(i + 1));
        textView.setTextColor(this._RuleColors[i < this._RuleColors.length ? i : i % this._RuleColors.length]);
        ((ImageView) inflate.findViewById(R.id.smart_playlist_delete)).setOnClickListener(new View.OnClickListener() { // from class: mobi.beyondpod.ui.views.SmartPlaylistEditorView.4
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                smartPlaylistEntry.markDeleted();
                SmartPlaylistEditorView.this.reBindTemplates();
            }
        });
        Spinner spinner = (Spinner) inflate.findViewById(R.id.smart_playlist_feed);
        ArrayAdapter arrayAdapter = new ArrayAdapter(this, android.R.layout.simple_spinner_item, getEntriesForAssignment());
        arrayAdapter.setDropDownViewResource(android.R.layout.simple_spinner_dropdown_item);
        spinner.setAdapter((SpinnerAdapter) arrayAdapter);
        if (smartPlaylistEntry.getCategory() != null || smartPlaylistEntry.getFeed() != null) {
            Iterator<SmartPlaylist.SmartPlaylistEntry> it = getEntriesForAssignment().iterator();
            i2 = 0;
            while (it.hasNext()) {
                SmartPlaylist.SmartPlaylistEntry next = it.next();
                if (next.getCategory() == smartPlaylistEntry.getCategory() && next.getFeed() == smartPlaylistEntry.getFeed()) {
                    break;
                }
                i2++;
            }
        } else {
            i2 = 0;
        }
        if (i2 < arrayAdapter.getCount()) {
            spinner.setSelection(i2);
        }
        spinner.setOnItemSelectedListener(new AdapterView.OnItemSelectedListener() { // from class: mobi.beyondpod.ui.views.SmartPlaylistEditorView.5
            @Override // android.widget.AdapterView.OnItemSelectedListener
            public void onNothingSelected(AdapterView<?> adapterView) {
            }

            @Override // android.widget.AdapterView.OnItemSelectedListener
            public void onItemSelected(AdapterView<?> adapterView, View view, int i3, long j) {
                SmartPlaylist.SmartPlaylistEntry smartPlaylistEntry2 = (SmartPlaylist.SmartPlaylistEntry) adapterView.getItemAtPosition(i3);
                smartPlaylistEntry.setFeed(smartPlaylistEntry2.getFeed());
                smartPlaylistEntry.setCategory(smartPlaylistEntry2.getCategory());
            }
        });
        Spinner spinner2 = (Spinner) inflate.findViewById(R.id.smart_playlist_sort_order);
        ArrayAdapter<CharSequence> createFromResource = ArrayAdapter.createFromResource(this, R.array.smart_playlist_sortOrder_text, android.R.layout.simple_spinner_item);
        createFromResource.setDropDownViewResource(android.R.layout.simple_spinner_dropdown_item);
        spinner2.setAdapter((SpinnerAdapter) createFromResource);
        spinner2.setSelection(getPosFromSortOrder(smartPlaylistEntry.getEpisodeSortOrder()));
        spinner2.setOnItemSelectedListener(new AdapterView.OnItemSelectedListener() { // from class: mobi.beyondpod.ui.views.SmartPlaylistEditorView.6
            @Override // android.widget.AdapterView.OnItemSelectedListener
            public void onNothingSelected(AdapterView<?> adapterView) {
            }

            @Override // android.widget.AdapterView.OnItemSelectedListener
            public void onItemSelected(AdapterView<?> adapterView, View view, int i3, long j) {
                smartPlaylistEntry.setEpisodeSortOrder(SmartPlaylistEditorView.this.getSortOrderFromPos(i3));
            }
        });
        Spinner spinner3 = (Spinner) inflate.findViewById(R.id.smart_playlist_num_podcasts);
        ArrayAdapter<CharSequence> createFromResource2 = ArrayAdapter.createFromResource(this, R.array.smart_playlist_numPodcasts_text, android.R.layout.simple_spinner_item);
        createFromResource2.setDropDownViewResource(android.R.layout.simple_spinner_dropdown_item);
        spinner3.setAdapter((SpinnerAdapter) createFromResource2);
        spinner3.setSelection(getEpisodesPositionFromNumEpisodes(smartPlaylistEntry.getNumTracks()));
        spinner3.setOnItemSelectedListener(new AdapterView.OnItemSelectedListener() { // from class: mobi.beyondpod.ui.views.SmartPlaylistEditorView.7
            @Override // android.widget.AdapterView.OnItemSelectedListener
            public void onNothingSelected(AdapterView<?> adapterView) {
            }

            @Override // android.widget.AdapterView.OnItemSelectedListener
            public void onItemSelected(AdapterView<?> adapterView, View view, int i3, long j) {
                smartPlaylistEntry.setNumTracks(SmartPlaylistEditorView.this.getNumEpisodesFromPosition(i3));
            }
        });
        ImageView imageView = (ImageView) inflate.findViewById(R.id.btnMoveDown);
        imageView.setOnClickListener(new View.OnClickListener() { // from class: mobi.beyondpod.ui.views.SmartPlaylistEditorView.8
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                int indexOf = SmartPlaylistEditorView.this._Template.entries().indexOf(smartPlaylistEntry);
                SmartPlaylistEditorView.this._Template.swapItems(indexOf, indexOf + 1);
                SmartPlaylistEditorView.this.reBindTemplates();
            }
        });
        imageView.setVisibility(i == this._Template.size() + (-1) ? 4 : 0);
        ImageView imageView2 = (ImageView) inflate.findViewById(R.id.btnMoveUp);
        imageView2.setOnClickListener(new View.OnClickListener() { // from class: mobi.beyondpod.ui.views.SmartPlaylistEditorView.9
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                int indexOf = SmartPlaylistEditorView.this._Template.entries().indexOf(smartPlaylistEntry);
                SmartPlaylistEditorView.this._Template.swapItems(indexOf, indexOf - 1);
                SmartPlaylistEditorView.this.reBindTemplates();
            }
        });
        imageView2.setVisibility(i != 0 ? 0 : 4);
        return inflate;
    }

    ArrayList<SmartPlaylist.SmartPlaylistEntry> getEntriesForAssignment() {
        if (this._AllEntries == null) {
            CategoryList categoriesForFilter = usesUncategorized() ? CategoryManager.getCategoriesForFilter() : CategoryManager.getCategoriesForFilterNoUncategorized();
            this._AllEntries = new ArrayList<>();
            Iterator<FeedCategory> it = categoriesForFilter.iterator();
            while (it.hasNext()) {
                this._AllEntries.add(new SmartPlaylist.SmartPlaylistEntry(it.next(), (Integer) 0, (Integer) 0));
            }
            ArrayList arrayList = new ArrayList(FeedRepository.getRootFeed().subFeeds());
            Collections.sort(arrayList, new FeedSorter(0));
            Iterator it2 = arrayList.iterator();
            while (it2.hasNext()) {
                this._AllEntries.add(new SmartPlaylist.SmartPlaylistEntry((Feed) it2.next(), (Integer) 0, (Integer) 0));
            }
        }
        return this._AllEntries;
    }

    private boolean usesUncategorized() {
        Iterator<SmartPlaylist.SmartPlaylistEntry> it = this._Template.entries().iterator();
        while (it.hasNext()) {
            SmartPlaylist.SmartPlaylistEntry next = it.next();
            if (next.getCategory() != null && next.getCategory().equals(CategoryManager.Unassigned)) {
                return true;
            }
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.support.v7.app.AppCompatActivity, android.support.v4.app.FragmentActivity, android.support.v4.app.SupportActivity, android.app.Activity
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putInt("ScrollPos", this._ScrollView.getScrollY());
    }

    int getNumEpisodesFromPosition(int i) {
        return Integer.parseInt(this._NumEpisodes[i]);
    }

    int getEpisodesPositionFromNumEpisodes(int i) {
        String num = Integer.toString(i);
        int i2 = 0;
        for (String str : this._NumEpisodes) {
            if (str.equals(num)) {
                return i2;
            }
            i2++;
        }
        return 0;
    }

    private void showHowToUseSmartPlay() {
        if (UserNotificationManager.isNotificationEnabledFor(13)) {
            Message message = new Message();
            message.MessageText = getResources().getString(R.string.smart_playlist_editor_msg);
            message.MessageTitle = getResources().getString(R.string.smart_playlist_editor_title);
            InfoCardTip infoCardTip = new InfoCardTip(this, message, 13, 2, new InfoCardManager.IInfoCardAdapterOwner() { // from class: mobi.beyondpod.ui.views.SmartPlaylistEditorView.10
                @Override // mobi.beyondpod.ui.views.myepisodesview.cards.InfoCardManager.IInfoCardAdapterOwner
                public FragmentActivity getOwnerActivity() {
                    return null;
                }

                @Override // mobi.beyondpod.ui.views.myepisodesview.cards.InfoCardManager.IInfoCardAdapterOwner
                public void reloadContent() {
                    if (SmartPlaylistEditorView.this._TipInfoCard != null) {
                        ((ViewGroup) SmartPlaylistEditorView.this.findViewById(R.id.smart_playlist_editor_holder)).removeView(SmartPlaylistEditorView.this._TipInfoCard);
                    }
                }
            });
            ViewGroup viewGroup = (ViewGroup) findViewById(R.id.smart_playlist_editor_holder);
            this._TipInfoCard = infoCardTip.getView(0, null, null);
            this._TipInfoCard.setPadding(0, this._TipInfoCard.getPaddingTop(), 0, this._TipInfoCard.getPaddingBottom());
            viewGroup.addView(this._TipInfoCard, 0);
        }
    }
}
