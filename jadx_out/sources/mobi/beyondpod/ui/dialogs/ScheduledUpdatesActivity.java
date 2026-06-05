package mobi.beyondpod.ui.dialogs;

import android.annotation.TargetApi;
import android.graphics.drawable.ColorDrawable;
import android.os.Bundle;
import android.support.v7.app.ActionBar;
import android.support.v7.app.AppCompatActivity;
import android.text.format.DateFormat;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.widget.ArrayAdapter;
import android.widget.CompoundButton;
import android.widget.ImageButton;
import android.widget.Spinner;
import android.widget.SpinnerAdapter;
import android.widget.Switch;
import android.widget.TextSwitcher;
import android.widget.TextView;
import android.widget.TimePicker;
import android.widget.Toast;
import android.widget.ViewSwitcher;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.GregorianCalendar;
import java.util.Iterator;
import mobi.beyondpod.R;
import mobi.beyondpod.rsscore.categories.CategoryManager;
import mobi.beyondpod.rsscore.categories.FeedCategory;
import mobi.beyondpod.rsscore.helpers.CoreHelper;
import mobi.beyondpod.rsscore.helpers.TimeSpan;
import mobi.beyondpod.rsscore.repository.FeedRepository;
import mobi.beyondpod.schedulercore.Event;
import mobi.beyondpod.schedulercore.OperationBase;
import mobi.beyondpod.schedulercore.OperationUpdateCategory;
import mobi.beyondpod.schedulercore.ScheduleUtils;
import mobi.beyondpod.schedulercore.ScheduledTask;
import mobi.beyondpod.schedulercore.ScheduledTasksManager;

/* loaded from: classes.dex */
public class ScheduledUpdatesActivity extends AppCompatActivity {
    private static final int MENU_CANCEL = 1;
    private static final int MENU_OK = 0;
    public static final String TAG = "ScheduledUpdatesActivity";
    Switch _Active;
    TextView _CategoryName;
    View _CategoryUnderline;
    FeedCategory _CurrentCategory;
    ScheduledTask _CurrentTask;
    int _Interval;
    View _IntervalLayoutGroup;
    View _IntervalTitle;
    ImageButton _MinusButton;
    Spinner _Period;
    ImageButton _PlusButton;
    TextView _ScheduleInformationText;
    TextSwitcher _Switcher;
    TimePicker _TimePicker;
    View _TimePickerTitle;
    private static final String PLEASE_MAKE_SURE_THAT_START_TIMES_ARE_AT_LEAST_15_MINUTES_APART = CoreHelper.loadResourceString(R.string.category_schedule_please_make_sure_that_start_times_are_at_least_15_minutes_apart);
    private static final String THE_START_TIME_OF_THIS_UPDATE_OVERLAPS_WITH_CATEGORY = CoreHelper.loadResourceString(R.string.category_schedule_the_start_time_of_this_update_overlaps_with_category);
    TimeSpan[] _Periods = {new TimeSpan(1, 0, 0), new TimeSpan(1, 0, 0, 0), new TimeSpan(7, 0, 0, 0)};
    private CompoundButton.OnCheckedChangeListener _OnActiveCheckChanged = new CompoundButton.OnCheckedChangeListener() { // from class: mobi.beyondpod.ui.dialogs.ScheduledUpdatesActivity.4
        @Override // android.widget.CompoundButton.OnCheckedChangeListener
        public void onCheckedChanged(CompoundButton compoundButton, boolean z) {
            ScheduledUpdatesActivity.this.toggleActive(ScheduledUpdatesActivity.this._Active.isChecked());
        }
    };
    private View.OnClickListener _OnPlusListener = new View.OnClickListener() { // from class: mobi.beyondpod.ui.dialogs.ScheduledUpdatesActivity.5
        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (ScheduledUpdatesActivity.this._Interval < 99) {
                ScheduledUpdatesActivity.this._Interval++;
                ScheduledUpdatesActivity.this.updateInterval();
            }
        }
    };
    private View.OnClickListener _OnMinusListener = new View.OnClickListener() { // from class: mobi.beyondpod.ui.dialogs.ScheduledUpdatesActivity.6
        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (ScheduledUpdatesActivity.this._Interval > 1) {
                ScheduledUpdatesActivity.this._Interval--;
                ScheduledUpdatesActivity.this.updateInterval();
            }
        }
    };

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.support.v7.app.AppCompatActivity, android.support.v4.app.FragmentActivity, android.support.v4.app.SupportActivity, android.app.Activity
    @TargetApi(23)
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (!FeedRepository.isRepositoryAvailable()) {
            CoreHelper.writeTraceEntry(TAG, "Closing view because the repository is not Loaded");
            finish();
            return;
        }
        String stringExtra = getIntent().getStringExtra("categoryValue");
        setContentView(R.layout.category_schedule_view);
        ActionBar supportActionBar = getSupportActionBar();
        if (supportActionBar != null) {
            supportActionBar.setBackgroundDrawable(new ColorDrawable(-12303292));
        }
        if (getResources().getInteger(R.integer.screen_size) < 600) {
            addOkCancelButtons();
        } else if (supportActionBar != null) {
            supportActionBar.setDisplayOptions(4, 4);
        }
        this._Period = (Spinner) findViewById(R.id.sp_schedulePeriod);
        ArrayAdapter<CharSequence> createFromResource = ArrayAdapter.createFromResource(this, R.array.schedule_update_period, android.R.layout.simple_spinner_item);
        createFromResource.setDropDownViewResource(android.R.layout.simple_spinner_dropdown_item);
        this._Period.setAdapter((SpinnerAdapter) createFromResource);
        this._TimePickerTitle = findViewById(R.id.timePickerTitle);
        this._IntervalTitle = findViewById(R.id.intervalTitle);
        this._IntervalLayoutGroup = findViewById(R.id.intervalLayoutGroup);
        this._ScheduleInformationText = (TextView) findViewById(R.id.scheduleInformationText);
        this._CategoryName = (TextView) findViewById(R.id.category_name);
        this._CategoryUnderline = findViewById(R.id.section_divider);
        this._PlusButton = (ImageButton) findViewById(R.id.sp_buttonPlus);
        this._PlusButton.setOnClickListener(this._OnPlusListener);
        this._MinusButton = (ImageButton) findViewById(R.id.sp_buttonMinus);
        this._MinusButton.setOnClickListener(this._OnMinusListener);
        this._Active = (Switch) findViewById(R.id.sp_scheduleActive);
        this._Active.setOnCheckedChangeListener(this._OnActiveCheckChanged);
        this._Switcher = (TextSwitcher) findViewById(R.id.sp_scheduleInterval);
        this._Switcher.setFactory(new ViewSwitcher.ViewFactory() { // from class: mobi.beyondpod.ui.dialogs.ScheduledUpdatesActivity.1
            @Override // android.widget.ViewSwitcher.ViewFactory
            public View makeView() {
                TextView textView = new TextView(ScheduledUpdatesActivity.this);
                textView.setGravity(1);
                textView.setTextSize(28.0f);
                return textView;
            }
        });
        Animation loadAnimation = AnimationUtils.loadAnimation(this, android.R.anim.fade_in);
        Animation loadAnimation2 = AnimationUtils.loadAnimation(this, android.R.anim.fade_out);
        this._Switcher.setInAnimation(loadAnimation);
        this._Switcher.setOutAnimation(loadAnimation2);
        this._TimePicker = (TimePicker) findViewById(R.id.sp_timePicker);
        this._TimePicker.setIs24HourView(Boolean.valueOf(DateFormat.is24HourFormat(this)));
        GregorianCalendar gregorianCalendar = new GregorianCalendar();
        if (CoreHelper.apiLevel() >= 23) {
            this._TimePicker.setHour(gregorianCalendar.get(11));
            this._TimePicker.setMinute(gregorianCalendar.get(12));
        } else {
            this._TimePicker.setCurrentHour(Integer.valueOf(gregorianCalendar.get(11)));
            this._TimePicker.setCurrentMinute(Integer.valueOf(gregorianCalendar.get(12)));
        }
        this._CurrentCategory = CategoryManager.getCategoryByValue(stringExtra);
        this._CurrentTask = ScheduleUtils.getScheduledTaskForCategory(this._CurrentCategory);
        setTitle(R.string.MENU_set_update_schedule);
        this._CategoryName.setText(this._CurrentCategory.name());
        int color = this._CurrentCategory.color();
        if (color != 0) {
            this._CategoryUnderline.setBackgroundColor(color);
        }
        if (this._CurrentTask != null) {
            Calendar calendar = Calendar.getInstance();
            calendar.setTime(this._CurrentTask.event.getUnadjustedStartTime());
            this._Active.setChecked(this._CurrentTask.active && ScheduledTasksManager.hasPendingIntentForTask(this._CurrentTask));
            if (CoreHelper.apiLevel() >= 23) {
                this._TimePicker.setHour(calendar.get(11));
                this._TimePicker.setMinute(calendar.get(12));
            } else {
                this._TimePicker.setCurrentHour(Integer.valueOf(calendar.get(11)));
                this._TimePicker.setCurrentMinute(Integer.valueOf(calendar.get(12)));
            }
            this._Interval = this._CurrentTask.event.getRecurrenceInterval();
            long totalMilliseconds = this._CurrentTask.event.getRecurrencePeriod().getTotalMilliseconds();
            if (totalMilliseconds == this._Periods[0].getTotalMilliseconds()) {
                this._Period.setSelection(0);
            } else if (totalMilliseconds == this._Periods[1].getTotalMilliseconds()) {
                this._Period.setSelection(1);
            } else {
                this._Period.setSelection(2);
            }
        } else {
            this._Interval = 1;
            this._Period.setSelection(1);
            this._Active.setChecked(false);
        }
        toggleActive(this._Active.isChecked());
        updateInterval();
    }

    private void addOkCancelButtons() {
        View inflate = ((LayoutInflater) getSupportActionBar().getThemedContext().getSystemService("layout_inflater")).inflate(R.layout.action_bar_done_cancel, (ViewGroup) null);
        inflate.findViewById(R.id.actionbar_done).setOnClickListener(new View.OnClickListener() { // from class: mobi.beyondpod.ui.dialogs.ScheduledUpdatesActivity.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                ScheduledUpdatesActivity.this.saveChanges();
            }
        });
        inflate.findViewById(R.id.actionbar_cancel).setOnClickListener(new View.OnClickListener() { // from class: mobi.beyondpod.ui.dialogs.ScheduledUpdatesActivity.3
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                ScheduledUpdatesActivity.this.finish();
            }
        });
        ActionBar supportActionBar = getSupportActionBar();
        supportActionBar.setDisplayOptions(16, 26);
        supportActionBar.setCustomView(inflate, new ActionBar.LayoutParams(-1, -1));
    }

    /* JADX INFO: Access modifiers changed from: private */
    @TargetApi(23)
    public void saveChanges() {
        if (validateControls()) {
            GregorianCalendar gregorianCalendar = new GregorianCalendar();
            if (CoreHelper.apiLevel() >= 23) {
                gregorianCalendar.set(11, this._TimePicker.getHour());
                gregorianCalendar.set(12, this._TimePicker.getMinute());
            } else {
                gregorianCalendar.set(11, this._TimePicker.getCurrentHour().intValue());
                gregorianCalendar.set(12, this._TimePicker.getCurrentMinute().intValue());
            }
            Event event = new Event(gregorianCalendar.getTime(), this._Interval, this._Periods[this._Period.getSelectedItemPosition()]);
            OperationBase createInstance = ScheduledTasksManager.operations().get(OperationUpdateCategory.OperationID).createInstance("");
            ((OperationUpdateCategory) createInstance).setCategoryToUpdate(this._CurrentCategory.value());
            if (this._CurrentTask == null) {
                this._CurrentTask = new ScheduledTask(event, createInstance);
                ScheduledTasksManager.registerTask(this._CurrentTask);
            } else {
                ScheduledTasksManager.deleteScheduledTaskFromDevice(this._CurrentTask);
                this._CurrentTask.event = event;
                this._CurrentTask.setOperation(createInstance);
            }
            this._CurrentTask.active = this._Active.isChecked();
            if (this._CurrentTask.active) {
                ScheduledTasksManager.setScheduledTaskToDevice(this._CurrentTask);
            }
            FeedRepository.saveRepositoryAsync();
            FeedRepository.notifyCategoryEvent(14);
            finish();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateInterval() {
        this._Switcher.setText(String.valueOf(this._Interval));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void toggleActive(boolean z) {
        this._TimePicker.setVisibility(z ? 0 : 4);
        this._TimePickerTitle.setVisibility(z ? 0 : 4);
        this._IntervalTitle.setVisibility(z ? 0 : 4);
        this._IntervalLayoutGroup.setVisibility(z ? 0 : 4);
        this._ScheduleInformationText.setVisibility(z ? 0 : 4);
    }

    @TargetApi(23)
    private boolean validateControls() {
        FeedCategory categoryByValue;
        this._TimePicker.clearFocus();
        GregorianCalendar gregorianCalendar = new GregorianCalendar();
        int hour = CoreHelper.apiLevel() >= 23 ? this._TimePicker.getHour() : this._TimePicker.getCurrentHour().intValue();
        int minute = CoreHelper.apiLevel() >= 23 ? this._TimePicker.getMinute() : this._TimePicker.getCurrentMinute().intValue();
        gregorianCalendar.set(11, hour);
        gregorianCalendar.set(12, minute);
        ArrayList<ScheduledTask> findOverlappingTasksWith = ScheduledTasksManager.findOverlappingTasksWith(new Event(gregorianCalendar.getTime(), this._Interval, this._Periods[this._Period.getSelectedItemPosition()]));
        Iterator<ScheduledTask> it = findOverlappingTasksWith.iterator();
        while (it.hasNext()) {
            if (it.next() != this._CurrentTask) {
                String str = "";
                OperationBase operation = findOverlappingTasksWith.get(0).operation();
                if ((operation instanceof OperationUpdateCategory) && (categoryByValue = CategoryManager.getCategoryByValue(((OperationUpdateCategory) operation).getCategoryToUpdate())) != null) {
                    str = categoryByValue.name();
                }
                Toast.makeText(this, THE_START_TIME_OF_THIS_UPDATE_OVERLAPS_WITH_CATEGORY + " '" + str + "'.\n\n" + PLEASE_MAKE_SURE_THAT_START_TIMES_ARE_AT_LEAST_15_MINUTES_APART, 1).show();
                return false;
            }
        }
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
