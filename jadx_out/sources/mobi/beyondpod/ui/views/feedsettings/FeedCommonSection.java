package mobi.beyondpod.ui.views.feedsettings;

import android.app.AlertDialog;
import android.content.DialogInterface;
import android.content.Intent;
import android.os.Handler;
import android.view.View;
import android.widget.AdapterView;
import android.widget.ArrayAdapter;
import android.widget.EditText;
import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.ScrollView;
import android.widget.Spinner;
import android.widget.SpinnerAdapter;
import android.widget.TextView;
import android.widget.Toast;
import mobi.beyondpod.BeyondPodApplication;
import mobi.beyondpod.R;
import mobi.beyondpod.rsscore.Configuration;
import mobi.beyondpod.rsscore.Feed;
import mobi.beyondpod.rsscore.TrackList;
import mobi.beyondpod.rsscore.categories.CategoryList;
import mobi.beyondpod.rsscore.categories.CategoryManager;
import mobi.beyondpod.rsscore.categories.FeedCategory;
import mobi.beyondpod.rsscore.helpers.CoreHelper;
import mobi.beyondpod.rsscore.helpers.StringUtils;
import mobi.beyondpod.rsscore.helpers.TimeSpan;
import mobi.beyondpod.rsscore.repository.FeedRepository;
import mobi.beyondpod.ui.commands.CommandManager;
import mobi.beyondpod.ui.settings.SettingsView;

/* loaded from: classes.dex */
public class FeedCommonSection extends SettingsSectionBase {
    private static final String HTTP = "http://";
    private static final String THIS_FEED_ALREADY_EXISTS_IN_CATEGORY = CoreHelper.loadResourceString(R.string.feed_settings_feed_already_exists_in_category);
    private FeedAdvancedSection _AdvancedSettings;
    private View _Cat1Num;
    private View _Cat2Num;
    private ImageButton _Cat2Toggle;
    private CategoryList _Categories;
    private Spinner _Category1;
    private Spinner _Category2;
    private View _CustomizeDefaults;
    private EditText _DeleteIfOlderThan;
    private String[] _DownloadActions;
    private Spinner _DownloadPodcasts;
    private Handler _Handler;
    private EditText _KeepAtMost;
    private EditText _NumPodcastsToDownload;
    private TextView _NumPodcastsToDownloadAction;
    private int _Old_keep_at_Most;
    private int _Old_max_age;
    private String _OriginalFeedUrl;
    private TextView _PodcastDefaults;
    private View _PodcastSectionFull;
    private View _PodcastSectionSimple;
    private TextView _ShowGlobals;
    private View _SpaceSaversArea;
    private ImageView _ToggleAdvancedPrefs;
    private View _ToggleAdvancedPrefsHolder;
    private View.OnClickListener _ToggleAdvancedPrefsListener;
    private TextView _ToggleAdvancedPrefsMsg;
    private EditText _Url;

    @Override // mobi.beyondpod.ui.views.feedsettings.SettingsSectionBase
    public boolean isURLFeed() {
        return true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public FeedCommonSection(FeedPropertiesView feedPropertiesView) {
        super(feedPropertiesView);
        this._Old_keep_at_Most = -1;
        this._Old_max_age = -1;
        this._OriginalFeedUrl = null;
        this._StubId = R.id.stub_commonFeedSettings;
    }

    @Override // mobi.beyondpod.ui.views.feedsettings.SettingsSectionBase
    protected void initialize() {
        this._Handler = new Handler();
        this._Url = (EditText) this._Owner.findViewById(R.id.fp_feedUrl);
        this._Url.setHint(HTTP);
        this._Url.setInputType(0);
        this._Handler.postDelayed(new Runnable() { // from class: mobi.beyondpod.ui.views.feedsettings.FeedCommonSection.1
            @Override // java.lang.Runnable
            public void run() {
                FeedCommonSection.this._Url.setInputType(16);
            }
        }, 1000L);
        this._DownloadActions = this._Owner.getResources().getStringArray(R.array.settings_podcastDownloadAction_values);
        this._SpaceSaversArea = this._Owner.findViewById(R.id.fp_spacesavers_area);
        this._NumPodcastsToDownload = (EditText) this._Owner.findViewById(R.id.fp_num_podcasts_to_download);
        this._NumPodcastsToDownloadAction = (TextView) this._Owner.findViewById(R.id.fp_num_podcasts_to_download_action);
        this._DeleteIfOlderThan = (EditText) this._Owner.findViewById(R.id.fp_delete_older_than);
        this._KeepAtMost = (EditText) this._Owner.findViewById(R.id.fp_keep_at_most);
        this._Owner.findViewById(R.id.fp_categoriesGroup).setVisibility(CategoryManager.hasUserCategories() ? 0 : 8);
        this._Category1 = (Spinner) this._Owner.findViewById(R.id.fp_category1);
        this._Category2 = (Spinner) this._Owner.findViewById(R.id.fp_category2);
        this._Cat1Num = this._Owner.findViewById(R.id.fp_cat1Num);
        this._Cat2Num = this._Owner.findViewById(R.id.fp_cat2Num);
        this._Cat2Toggle = (ImageButton) this._Owner.findViewById(R.id.fp_toggleCat2);
        this._Cat2Toggle.setOnClickListener(new View.OnClickListener() { // from class: mobi.beyondpod.ui.views.feedsettings.FeedCommonSection.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                FeedCommonSection.this.toggleCat2(FeedCommonSection.this._Category2.getVisibility() == 8);
            }
        });
        this._CustomizeDefaults = this._Owner.findViewById(R.id.fp_defPodcastSettingsCustomize);
        this._PodcastDefaults = (TextView) this._Owner.findViewById(R.id.fp_defPodcastSettingsDescr);
        this._PodcastSectionFull = this._Owner.findViewById(R.id.fp_PodcastSettingsFull);
        this._PodcastSectionSimple = this._Owner.findViewById(R.id.fp_PodcastSettingsSimple);
        this._CustomizeDefaults.setOnClickListener(new View.OnClickListener() { // from class: mobi.beyondpod.ui.views.feedsettings.FeedCommonSection.3
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                FeedCommonSection.this.toggleDownloadOptions(FeedCommonSection.this._PodcastSectionSimple.getVisibility() == 0);
            }
        });
        this._DownloadPodcasts = (Spinner) this._Owner.findViewById(R.id.fp_downloadPodcasts);
        this._ToggleAdvancedPrefsHolder = this._Owner.findViewById(R.id.toggleAdvancedPrefsHolder);
        this._ToggleAdvancedPrefsMsg = (TextView) this._Owner.findViewById(R.id.toggleAdvancedPrefsMsg);
        this._ToggleAdvancedPrefs = (ImageView) this._Owner.findViewById(R.id.toggleAdvancedPrefs);
        this._ToggleAdvancedPrefsHolder.setVisibility(0);
        this._Categories = CategoryManager.getCategoriesForAssignment();
        this._ShowGlobals = (TextView) this._Owner.findViewById(R.id.adjustFeedDefaults);
        this._ShowGlobals.setOnClickListener(new View.OnClickListener() { // from class: mobi.beyondpod.ui.views.feedsettings.FeedCommonSection.4
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                Intent intent = new Intent(BeyondPodApplication.getInstance(), (Class<?>) SettingsView.class);
                intent.putExtra(SettingsView.START_SCREEN_PREFERENCES_KEY, 0);
                CommandManager.startActivity(intent);
            }
        });
        ArrayAdapter arrayAdapter = new ArrayAdapter(this._Owner, android.R.layout.simple_spinner_item, CategoryManager.getCategoriesForAssignment());
        arrayAdapter.setDropDownViewResource(android.R.layout.simple_spinner_dropdown_item);
        this._Category1.setAdapter((SpinnerAdapter) arrayAdapter);
        ArrayAdapter arrayAdapter2 = new ArrayAdapter(this._Owner, android.R.layout.simple_spinner_item, CategoryManager.getCategoriesForAssignment());
        arrayAdapter2.setDropDownViewResource(android.R.layout.simple_spinner_dropdown_item);
        this._Category2.setAdapter((SpinnerAdapter) arrayAdapter2);
        ArrayAdapter<CharSequence> createFromResource = ArrayAdapter.createFromResource(this._Owner, R.array.settings_podcastDownloadAction_text, android.R.layout.simple_spinner_item);
        createFromResource.setDropDownViewResource(android.R.layout.simple_spinner_dropdown_item);
        this._DownloadPodcasts.setAdapter((SpinnerAdapter) createFromResource);
        this._DownloadPodcasts.setOnItemSelectedListener(new AdapterView.OnItemSelectedListener() { // from class: mobi.beyondpod.ui.views.feedsettings.FeedCommonSection.5
            @Override // android.widget.AdapterView.OnItemSelectedListener
            public void onNothingSelected(AdapterView<?> adapterView) {
            }

            @Override // android.widget.AdapterView.OnItemSelectedListener
            public void onItemSelected(AdapterView<?> adapterView, View view, int i, long j) {
                View findViewById = FeedCommonSection.this._Owner.findViewById(R.id.fp_NumDownloadPodcastsArea);
                TextView textView = (TextView) FeedCommonSection.this._Owner.findViewById(R.id.fp_download_podcasts_msg);
                int downloadAction = FeedCommonSection.this.getDownloadAction();
                if (downloadAction == 1 || downloadAction == 2) {
                    findViewById.setVisibility(0);
                    FeedCommonSection.this._SpaceSaversArea.setVisibility(0);
                } else if (downloadAction == 5 || downloadAction == 4) {
                    findViewById.setVisibility(0);
                    FeedCommonSection.this._SpaceSaversArea.setVisibility(8);
                } else {
                    findViewById.setVisibility(8);
                    FeedCommonSection.this._SpaceSaversArea.setVisibility(8);
                }
                switch (downloadAction) {
                    case 0:
                        textView.setText(R.string.feed_properties_num_podcasts_to_download_no_download_msg);
                        return;
                    case 1:
                        textView.setText(R.string.feed_properties_num_podcasts_to_download_download_msg);
                        FeedCommonSection.this._NumPodcastsToDownloadAction.setText(R.string.feed_settings_download);
                        return;
                    case 2:
                        textView.setText(R.string.feed_properties_num_podcasts_to_download_stream_msg);
                        FeedCommonSection.this._NumPodcastsToDownloadAction.setText(R.string.feed_settings_get);
                        return;
                    case 3:
                        textView.setText(R.string.feed_properties_num_podcasts_to_download_ignore_msg);
                        return;
                    case 4:
                        textView.setText(R.string.feed_properties_num_podcasts_to_download_download_in_order_msg);
                        FeedCommonSection.this._NumPodcastsToDownloadAction.setText(R.string.feed_settings_download);
                        return;
                    case 5:
                        textView.setText(R.string.feed_properties_num_podcasts_to_download_stream_in_order_msg);
                        FeedCommonSection.this._NumPodcastsToDownloadAction.setText(R.string.feed_settings_get);
                        return;
                    default:
                        return;
                }
            }
        });
        this._AdvancedSettings = new FeedAdvancedSection(this._Owner);
    }

    @Override // mobi.beyondpod.ui.views.feedsettings.SettingsSectionBase
    public void loadFromFeed(final Feed feed) {
        if (feed != null) {
            this._Url.setText(feed.getFeedUrl());
            this._OriginalFeedUrl = feed.getFeedUrl();
            this._Category1.setSelection(this._Categories.indexOf(feed.getCategories().getPrimary()));
            this._Category2.setSelection(this._Categories.indexOf(feed.getCategories().getSecondary()));
            this._DownloadPodcasts.setSelection(getDownloadActionPosition(feed.getPodcastDownloadAction()));
            this._NumPodcastsToDownload.setText(Integer.toString(feed.getMaxNumberPodcastToDownload()));
            this._Old_max_age = (int) feed.getMaximumPodcastAge().getTotalDays();
            this._DeleteIfOlderThan.setText(Integer.toString(this._Old_max_age));
            this._Old_keep_at_Most = feed.getKeepAtMostPodcasts();
            this._KeepAtMost.setText(Integer.toString(this._Old_keep_at_Most));
            this._ShowGlobals.setVisibility(0);
            toggleCat2(!CategoryManager.Unassigned.equals(feed.getCategories().getSecondary()));
        } else {
            String passedFeedUrl = this._Owner.getPassedFeedUrl();
            if (!StringUtils.isNullOrEmpty(passedFeedUrl) && !HTTP.equals(passedFeedUrl)) {
                this._Url.setText(passedFeedUrl);
            }
            this._NumPodcastsToDownload.setText(Integer.toString(Configuration.getGlobalDefaultNumberPodcastsToDownload()));
            this._DeleteIfOlderThan.setText(Integer.toString((int) Configuration.getGlobalDefaultMaximumPodcastAge().getTotalDays()));
            this._KeepAtMost.setText(Integer.toString(Configuration.getGlobalDefaultKeepAtMostPodcasts()));
            this._DownloadPodcasts.setSelection(getDownloadActionPosition(Configuration.getGlobalDefaultPodcastDownloadAction()));
            this._Category1.setSelection(this._Categories.indexOf(Configuration.getActiveFeedCategory()));
            this._Category2.setSelection(this._Categories.indexOf(CategoryManager.Unassigned));
            this._ShowGlobals.setVisibility(0);
            toggleCat2(false);
        }
        this._ToggleAdvancedPrefsListener = new View.OnClickListener() { // from class: mobi.beyondpod.ui.views.feedsettings.FeedCommonSection.6
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (FeedCommonSection.this._AdvancedSettings.isVisible()) {
                    FeedCommonSection.this._AdvancedSettings.hide();
                    FeedCommonSection.this._ToggleAdvancedPrefsMsg.setText(R.string.feed_properties_advanced_section);
                    FeedCommonSection.this._ToggleAdvancedPrefs.setImageResource(R.drawable.ic_action_arrow_bottom);
                    return;
                }
                FeedCommonSection.this._AdvancedSettings.show();
                FeedCommonSection.this._ToggleAdvancedPrefsMsg.setText(R.string.feed_properties_toggle_adv_pref_hide);
                FeedCommonSection.this._ToggleAdvancedPrefs.setImageResource(R.drawable.ic_action_arrow_top);
                if (!FeedCommonSection.this._AdvancedSettings.isDataLoaded()) {
                    FeedCommonSection.this._AdvancedSettings.loadFromFeed(feed);
                }
                final ScrollView scrollView = (ScrollView) FeedCommonSection.this._Owner.findViewById(R.id.settingsScroll);
                scrollView.postDelayed(new Runnable() { // from class: mobi.beyondpod.ui.views.feedsettings.FeedCommonSection.6.1
                    @Override // java.lang.Runnable
                    public void run() {
                        scrollView.smoothScrollTo(0, FeedCommonSection.this._ToggleAdvancedPrefsHolder.getTop() - 20);
                    }
                }, 100L);
            }
        };
        this._ToggleAdvancedPrefsHolder.setOnClickListener(this._ToggleAdvancedPrefsListener);
        this._ToggleAdvancedPrefs.setOnClickListener(this._ToggleAdvancedPrefsListener);
        this._PodcastDefaults.setText(generateSimplePodcastSectionText());
        super.loadFromFeed(feed);
    }

    @Override // mobi.beyondpod.ui.views.feedsettings.SettingsSectionBase
    public void saveToFeed(Feed feed) {
        feed.setFeedUrl(this._Url.getText().toString().trim());
        FeedCategory feedCategory = (FeedCategory) this._Category1.getSelectedItem();
        if (feedCategory != null) {
            feed.getCategories().setPrimary(feedCategory);
        }
        if (this._Category2.getVisibility() == 0 && this._Category1.getSelectedItem() != this._Category2.getSelectedItem()) {
            feed.getCategories().setSecondary((FeedCategory) this._Category2.getSelectedItem());
        } else {
            feed.getCategories().setSecondary(CategoryManager.Unassigned);
        }
        feed.setPodcastDownloadAction(getDownloadAction());
        int intValue = StringUtils.tryParseIntFromString(this._NumPodcastsToDownload.getText().toString(), Integer.valueOf(Configuration.getGlobalDefaultNumberPodcastsToDownload())).intValue();
        if (intValue > 0) {
            feed.setMaxNumberPodcastsToDownload(intValue);
        } else {
            feed.setPodcastDownloadAction(0);
        }
        feed.setMaximumPodcastAge(new TimeSpan(StringUtils.tryParseIntFromString(this._DeleteIfOlderThan.getText().toString(), Integer.valueOf(Configuration.DEFAULT_MAXIMUM_PODCAST_AGE_IN_DAYS)).intValue(), 0L, 0L, 0L));
        feed.setKeepAtMostPodcasts(StringUtils.tryParseIntFromString(this._KeepAtMost.getText().toString(), Integer.valueOf(Configuration.getGlobalDefaultKeepAtMostPodcasts())).intValue());
        if (this._AdvancedSettings.isDataLoaded()) {
            this._AdvancedSettings.saveToFeed(feed);
        } else {
            this._AdvancedSettings.updateFeedNameToFeedURLIfNeeded(feed);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int getDownloadAction() {
        return Integer.parseInt(this._DownloadActions[this._DownloadPodcasts.getSelectedItemPosition()]);
    }

    private int getDownloadActionPosition(int i) {
        String num = Integer.toString(i);
        int i2 = 0;
        for (String str : this._DownloadActions) {
            if (str.equals(num)) {
                return i2;
            }
            i2++;
        }
        return 0;
    }

    private String normalizeUrl(String str) {
        if (StringUtils.isNullOrEmpty(str)) {
            return str;
        }
        String lowerCase = str.toLowerCase();
        if (lowerCase.length() > 5 && lowerCase.startsWith("feed:")) {
            return "http:" + str.substring(5);
        }
        if (lowerCase.startsWith("http")) {
            return lowerCase.startsWith("http://http") ? str.substring(7) : str;
        }
        return HTTP + str;
    }

    @Override // mobi.beyondpod.ui.views.feedsettings.SettingsSectionBase
    public boolean validateControls(Feed feed) {
        String normalizeUrl = normalizeUrl(this._Url.getText().toString().trim());
        if (normalizeUrl.length() < 5 || CoreHelper.safeCreateUri(normalizeUrl) == null) {
            Toast.makeText(this._Owner, R.string.feed_properties_vld_feedUrlOrNameEmpty, 1).show();
            this._Url.requestFocus();
            return false;
        }
        Feed feedByUrl = FeedRepository.getFeedByUrl(normalizeUrl);
        if (feedByUrl != null && feedByUrl != feed) {
            Toast.makeText(this._Owner, String.format(THIS_FEED_ALREADY_EXISTS_IN_CATEGORY, feedByUrl.getCategories().getPrimary().name()), 1).show();
            this._Url.requestFocus();
            return false;
        }
        int intValue = StringUtils.tryParseIntFromString(this._KeepAtMost.getText().toString(), Integer.valueOf(Configuration.getGlobalDefaultKeepAtMostPodcasts())).intValue();
        int intValue2 = StringUtils.tryParseIntFromString(this._NumPodcastsToDownload.getText().toString(), Integer.valueOf(Configuration.getGlobalDefaultNumberPodcastsToDownload())).intValue();
        int intValue3 = StringUtils.tryParseIntFromString(this._DeleteIfOlderThan.getText().toString(), Integer.valueOf(Configuration.DEFAULT_MAXIMUM_PODCAST_AGE_IN_DAYS)).intValue();
        boolean z = this._Old_keep_at_Most != intValue;
        boolean z2 = this._Old_max_age != intValue3;
        if ((getDownloadAction() == 1 || getDownloadAction() == 2) && intValue2 > intValue) {
            Toast.makeText(this._Owner, R.string.feed_properties_vld_podcast_num_download_is_less_than_keep_at_most, 1).show();
            this._KeepAtMost.requestFocus();
            return false;
        }
        if ((z || z2) && ((getDownloadAction() == 1 || getDownloadAction() == 2) && feed != null)) {
            final TrackList oldTracksForFeed = FeedRepository.getOldTracksForFeed(feed, intValue, new TimeSpan(intValue3, 0L, 0L, 0L), false);
            if (oldTracksForFeed.size() > 0) {
                new AlertDialog.Builder(this._Owner).setMessage(this._Owner.getString(R.string.feed_properties_vld_spacesavers_will_delete_podcasts, new Object[]{Integer.valueOf(oldTracksForFeed.size())})).setPositiveButton(R.string.MENU_delete_episode, new DialogInterface.OnClickListener() { // from class: mobi.beyondpod.ui.views.feedsettings.FeedCommonSection.7
                    @Override // android.content.DialogInterface.OnClickListener
                    public void onClick(DialogInterface dialogInterface, int i) {
                        CommandManager.cmdDeletePodcasts(FeedCommonSection.this._Owner, oldTracksForFeed);
                    }
                }).setNegativeButton(R.string.alert_dialog_cancel, (DialogInterface.OnClickListener) null).create().show();
                return false;
            }
        }
        this._Url.setText(normalizeUrl);
        return this._AdvancedSettings.validateControls(feed);
    }

    @Override // mobi.beyondpod.ui.views.feedsettings.SettingsSectionBase
    void refresh(Feed feed) {
        this._AdvancedSettings.refresh(feed);
    }

    @Override // mobi.beyondpod.ui.views.feedsettings.SettingsSectionBase
    public boolean hasFeedAddressChanged() {
        return !StringUtils.equalsIgnoreCase(this._OriginalFeedUrl, this._Url.getText().toString().trim());
    }

    @Override // mobi.beyondpod.ui.views.feedsettings.SettingsSectionBase
    void patchFeedUrl(String str) {
        this._Url.setText(str);
        this._Url.requestFocus();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void toggleCat2(boolean z) {
        if (z) {
            this._Cat1Num.setVisibility(0);
            this._Cat2Num.setVisibility(0);
            this._Category2.setVisibility(0);
            this._Cat2Toggle.setImageResource(R.drawable.ic_action_minus_dark);
            return;
        }
        this._Cat1Num.setVisibility(8);
        this._Cat2Num.setVisibility(8);
        this._Category2.setVisibility(8);
        this._Cat2Toggle.setImageResource(R.drawable.ic_action_add_dark);
    }

    private String generateSimplePodcastSectionText() {
        int downloadAction = getDownloadAction();
        int intValue = StringUtils.tryParseIntFromString(this._NumPodcastsToDownload.getText().toString(), Integer.valueOf(Configuration.getGlobalDefaultNumberPodcastsToDownload())).intValue();
        TimeSpan timeSpan = new TimeSpan(StringUtils.tryParseIntFromString(this._DeleteIfOlderThan.getText().toString(), Integer.valueOf(Configuration.DEFAULT_MAXIMUM_PODCAST_AGE_IN_DAYS)).intValue(), 0L, 0L, 0L);
        String string = timeSpan.getTotalDays() < 99999.0d ? this._Owner.getResources().getString(R.string.feed_properties_num_days_to_delete_short_msg, Integer.valueOf((int) timeSpan.getTotalDays())) : "";
        int intValue2 = StringUtils.tryParseIntFromString(this._KeepAtMost.getText().toString(), Integer.valueOf(Configuration.getGlobalDefaultKeepAtMostPodcasts())).intValue();
        if (downloadAction == 0) {
            return this._Owner.getResources().getString(R.string.feed_properties_num_podcasts_to_download_no_download_short_msg);
        }
        if (downloadAction == 3) {
            return this._Owner.getResources().getString(R.string.feed_properties_num_podcasts_to_download_ignore_short_msg);
        }
        if (downloadAction == 1) {
            return this._Owner.getResources().getString(R.string.feed_properties_num_podcasts_to_download_download_short_msg, this._Owner.getResources().getQuantityString(R.plurals.plr_episodes, intValue, Integer.valueOf(intValue)), this._Owner.getResources().getQuantityString(R.plurals.plr_episodes, intValue2, Integer.valueOf(intValue2)), string);
        }
        if (downloadAction == 2) {
            return this._Owner.getResources().getString(R.string.feed_properties_num_podcasts_to_download_stream_short_msg, this._Owner.getResources().getQuantityString(R.plurals.plr_episodes, intValue, Integer.valueOf(intValue)), this._Owner.getResources().getQuantityString(R.plurals.plr_episodes, intValue2, Integer.valueOf(intValue2)), string);
        }
        if (downloadAction == 4) {
            return this._Owner.getResources().getString(R.string.feed_properties_num_podcasts_to_download_download_in_order_short_msg, this._Owner.getResources().getQuantityString(R.plurals.plr_episodes, intValue, Integer.valueOf(intValue)));
        }
        return downloadAction == 5 ? this._Owner.getResources().getString(R.string.feed_properties_num_podcasts_to_download_stream_in_order_short_msg, this._Owner.getResources().getQuantityString(R.plurals.plr_episodes, intValue, Integer.valueOf(intValue))) : "";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void toggleDownloadOptions(boolean z) {
        if (z) {
            this._PodcastSectionSimple.setVisibility(8);
            this._PodcastSectionFull.setVisibility(0);
        } else {
            this._PodcastDefaults.setText(generateSimplePodcastSectionText());
            this._PodcastSectionSimple.setVisibility(0);
            this._PodcastSectionFull.setVisibility(8);
        }
    }

    @Override // mobi.beyondpod.ui.views.feedsettings.SettingsSectionBase
    public void focusControl(int i) {
        if (i == R.id.fp_num_greader_items_to_get && !this._AdvancedSettings.isVisible()) {
            this._ToggleAdvancedPrefsListener.onClick(this._ToggleAdvancedPrefs);
        } else {
            toggleDownloadOptions(true);
        }
        super.focusControl(i);
    }
}
