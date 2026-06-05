package mobi.beyondpod.ui.dialogs;

import android.graphics.Color;
import android.graphics.drawable.ColorDrawable;
import android.os.Bundle;
import android.support.v7.app.ActionBar;
import android.support.v7.app.AppCompatActivity;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.view.inputmethod.InputMethodManager;
import android.widget.EditText;
import android.widget.Toast;
import mobi.beyondpod.R;
import mobi.beyondpod.rsscore.StartupContentBuilder;
import mobi.beyondpod.rsscore.categories.CategoryManager;
import mobi.beyondpod.rsscore.categories.FeedCategory;
import mobi.beyondpod.rsscore.helpers.CoreHelper;
import mobi.beyondpod.rsscore.helpers.StringUtils;
import mobi.beyondpod.rsscore.repository.FeedRepository;
import mobi.beyondpod.schedulercore.OperationUpdateCategory;
import mobi.beyondpod.schedulercore.ScheduleUtils;
import mobi.beyondpod.schedulercore.ScheduledTask;
import mobi.beyondpod.services.auto.MediaIdHelper;
import mobi.beyondpod.ui.views.base.colorpicker.ColorPickerPalette;
import mobi.beyondpod.ui.views.base.colorpicker.ColorPickerSwatch;

/* loaded from: classes.dex */
public class CategoryPropertiesActivity extends AppCompatActivity {
    private static final int MENU_CANCEL = 1;
    private static final int MENU_OK = 0;
    public static final String TAG = "CategoryPropertiesActivity";
    FeedCategory _CurrentCategory;
    EditText _Name;
    int _SelectedColor;
    int[] mColors = null;
    private ColorPickerPalette mPalette;
    private static final String UNABLE_TO_MODIFY_CATEGORY = CoreHelper.loadResourceString(R.string.category_props_unable_to_modify_category);
    private static final String NEW_CATEGORY = CoreHelper.loadResourceString(R.string.category_props_new_category);

    @Override // android.support.v7.app.AppCompatActivity, android.support.v4.app.FragmentActivity, android.support.v4.app.SupportActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        String stringExtra = getIntent().getStringExtra("categoryValue");
        if (!FeedRepository.isRepositoryAvailable()) {
            CoreHelper.writeTraceEntry(TAG, "Closing view because the repository is not Loaded");
            finish();
            return;
        }
        setContentView(R.layout.category_properties_view);
        ActionBar supportActionBar = getSupportActionBar();
        if (supportActionBar != null) {
            supportActionBar.setBackgroundDrawable(new ColorDrawable(-12303292));
        }
        if (getResources().getInteger(R.integer.screen_size) < 600) {
            addOkCancelButtons();
        } else if (supportActionBar != null) {
            supportActionBar.setDisplayOptions(4, 4);
        }
        this._Name = (EditText) findViewById(R.id.cp_category_name);
        this._CurrentCategory = CategoryManager.getCategoryByValue(stringExtra);
        if (this._CurrentCategory != CategoryManager.AllFeeds) {
            this._Name.setText(this._CurrentCategory.name());
            setTitle(getResources().getString(R.string.category_properties_title));
        } else {
            this._Name.setText(NEW_CATEGORY);
            setTitle(getResources().getString(R.string.category_editor_dialog_add_category));
        }
        this.mPalette = (ColorPickerPalette) findViewById(R.id.color_picker);
        String[] stringArray = getResources().getStringArray(R.array.default_category_color_choice_values);
        if (stringArray != null && stringArray.length > 0) {
            this.mColors = new int[stringArray.length];
            for (int i = 0; i < stringArray.length; i++) {
                this.mColors[i] = Color.parseColor(stringArray[i]);
            }
        }
        setColor(this._CurrentCategory.color());
        loadColors();
        this._Name.setOnFocusChangeListener(new View.OnFocusChangeListener() { // from class: mobi.beyondpod.ui.dialogs.CategoryPropertiesActivity.1
            @Override // android.view.View.OnFocusChangeListener
            public void onFocusChange(View view, boolean z) {
                if (z) {
                    CategoryPropertiesActivity.this.getWindow().setSoftInputMode(5);
                    return;
                }
                InputMethodManager inputMethodManager = (InputMethodManager) CategoryPropertiesActivity.this.getSystemService("input_method");
                if (inputMethodManager != null) {
                    inputMethodManager.hideSoftInputFromWindow(view.getWindowToken(), 0);
                }
            }
        });
    }

    void loadColors() {
        int[] iArr = this.mColors;
        this.mPalette.init(3, new ColorPickerSwatch.OnColorSelectedListener() { // from class: mobi.beyondpod.ui.dialogs.CategoryPropertiesActivity.2
            @Override // mobi.beyondpod.ui.views.base.colorpicker.ColorPickerSwatch.OnColorSelectedListener
            public void onColorSelected(int i) {
                CategoryPropertiesActivity categoryPropertiesActivity = CategoryPropertiesActivity.this;
                if (i == -1) {
                    i = 0;
                }
                categoryPropertiesActivity.setColor(i);
                CategoryPropertiesActivity.this.updateColorPalette();
            }
        });
        updateColorPalette();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateColorPalette() {
        this.mPalette.drawPalette(this.mColors, this._SelectedColor == 0 ? -1 : this._SelectedColor);
    }

    private void addOkCancelButtons() {
        View inflate = ((LayoutInflater) getSupportActionBar().getThemedContext().getSystemService("layout_inflater")).inflate(R.layout.action_bar_done_cancel, (ViewGroup) null);
        inflate.findViewById(R.id.actionbar_done).setOnClickListener(new View.OnClickListener() { // from class: mobi.beyondpod.ui.dialogs.CategoryPropertiesActivity.3
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                CategoryPropertiesActivity.this.saveChanges();
            }
        });
        inflate.findViewById(R.id.actionbar_cancel).setOnClickListener(new View.OnClickListener() { // from class: mobi.beyondpod.ui.dialogs.CategoryPropertiesActivity.4
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                CategoryPropertiesActivity.this.finish();
            }
        });
        ActionBar supportActionBar = getSupportActionBar();
        supportActionBar.setDisplayOptions(16, 26);
        supportActionBar.setCustomView(inflate, new ActionBar.LayoutParams(-1, -1));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void saveChanges() {
        if (validateControls()) {
            String obj = this._Name.getText().toString();
            FeedCategory feedCategory = this._CurrentCategory;
            try {
                if (this._CurrentCategory == CategoryManager.AllFeeds) {
                    FeedCategory feedCategory2 = new FeedCategory(obj);
                    try {
                        CategoryManager.addCategory(feedCategory2);
                        feedCategory = feedCategory2;
                    } catch (Exception e) {
                        e = e;
                        feedCategory = feedCategory2;
                        CoreHelper.logException(TAG, UNABLE_TO_MODIFY_CATEGORY, e);
                        CategoryManager.setCategoryColor(feedCategory, this._SelectedColor);
                        FeedRepository.saveRepositoryAsync();
                        StartupContentBuilder.backupRepositoriesAsync();
                        finish();
                    }
                } else if (!StringUtils.equalsIgnoreCase(this._CurrentCategory.name(), obj)) {
                    ScheduledTask scheduledTaskForCategory = ScheduleUtils.getScheduledTaskForCategory(this._CurrentCategory);
                    if (scheduledTaskForCategory != null) {
                        ((OperationUpdateCategory) scheduledTaskForCategory.operation()).setCategoryToUpdate(obj);
                    }
                    CategoryManager.renameCategory(this._CurrentCategory, obj);
                }
            } catch (Exception e2) {
                e = e2;
            }
            CategoryManager.setCategoryColor(feedCategory, this._SelectedColor);
            FeedRepository.saveRepositoryAsync();
            StartupContentBuilder.backupRepositoriesAsync();
            finish();
        }
    }

    void setColor(int i) {
        this._SelectedColor = i;
        this._Name.clearFocus();
    }

    @Override // android.support.v7.app.AppCompatActivity, android.support.v4.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
    }

    private boolean validateControls() {
        String trim = this._Name.getText().toString().trim();
        if (trim.length() == 0 || trim.contains("^") || trim.contains(MediaIdHelper.AUTO_MEDIA_ID_SEPERATOR)) {
            Toast.makeText(this, R.string.category_properties_vld_NameEmpty, 1).show();
            this._Name.requestFocus();
            return false;
        }
        if (this._CurrentCategory == CategoryManager.AllFeeds && CategoryManager.getCategoryByValue(trim) != CategoryManager.CategoryNull) {
            Toast.makeText(this, R.string.category_properties_vld_categoryExists, 1).show();
            this._Name.requestFocus();
            return false;
        }
        this._Name.setText(trim.trim());
        return true;
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
}
