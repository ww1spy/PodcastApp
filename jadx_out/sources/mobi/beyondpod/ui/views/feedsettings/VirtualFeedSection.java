package mobi.beyondpod.ui.views.feedsettings;

import android.os.Handler;
import android.view.View;
import android.widget.ArrayAdapter;
import android.widget.CheckBox;
import android.widget.EditText;
import android.widget.ImageButton;
import android.widget.Spinner;
import android.widget.SpinnerAdapter;
import android.widget.Toast;
import java.io.File;
import java.io.IOException;
import java.util.StringTokenizer;
import mobi.beyondpod.R;
import mobi.beyondpod.rsscore.Configuration;
import mobi.beyondpod.rsscore.Feed;
import mobi.beyondpod.rsscore.categories.CategoryList;
import mobi.beyondpod.rsscore.categories.CategoryManager;
import mobi.beyondpod.rsscore.categories.FeedCategory;
import mobi.beyondpod.rsscore.helpers.CoreHelper;
import mobi.beyondpod.rsscore.helpers.StringUtils;
import mobi.beyondpod.rsscore.repository.FeedRepository;

/* loaded from: classes.dex */
public class VirtualFeedSection extends SettingsSectionBase {
    private static final String THIS_FEED_ALREADY_EXISTS_IN_CATEGORY = CoreHelper.loadResourceString(R.string.feed_settings_feed_already_exists_in_category);
    private CheckBox _AllowDeletions;
    private View _Cat1Num;
    private View _Cat2Num;
    private ImageButton _Cat2Toggle;
    private CategoryList _Categories;
    private Spinner _Category1;
    private Spinner _Category2;
    private Handler _Handler;
    private Spinner _LongPodcasNamesHandling;
    private EditText _Name;
    private String _OriginalDownloadFolder;
    private PlaybackSpeedSettings _PlaybackSpeed;
    private EditText _PodcastDownloadFolder;
    private Spinner _PodcastSort;
    private CheckBox _SavePlayedPosition;
    private VolumeBoostSettings _VolumeBoost;

    @Override // mobi.beyondpod.ui.views.feedsettings.SettingsSectionBase
    public boolean isURLFeed() {
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // mobi.beyondpod.ui.views.feedsettings.SettingsSectionBase
    public void patchFeedUrl(String str) {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // mobi.beyondpod.ui.views.feedsettings.SettingsSectionBase
    public void refresh(Feed feed) {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public VirtualFeedSection(FeedPropertiesView feedPropertiesView) {
        super(feedPropertiesView);
        this._OriginalDownloadFolder = null;
        this._StubId = R.id.stub_virtualFeedSettings;
    }

    @Override // mobi.beyondpod.ui.views.feedsettings.SettingsSectionBase
    protected void initialize() {
        this._Handler = new Handler();
        this._Name = (EditText) this._InflatedContent.findViewById(R.id.fp_feedName);
        this._PodcastDownloadFolder = (EditText) this._InflatedContent.findViewById(R.id.fp_feedDownloadFolder);
        this._PodcastSort = (Spinner) this._InflatedContent.findViewById(R.id.fp_podcastSortOrder);
        this._LongPodcasNamesHandling = (Spinner) this._InflatedContent.findViewById(R.id.fp_podcastLongNameHandling);
        this._AllowDeletions = (CheckBox) this._InflatedContent.findViewById(R.id.fp_allowDeletions);
        this._SavePlayedPosition = (CheckBox) this._InflatedContent.findViewById(R.id.fp_savePlayedPosition);
        this._Category1 = (Spinner) this._Owner.findViewById(R.id.fp_category1);
        this._Category2 = (Spinner) this._Owner.findViewById(R.id.fp_category2);
        this._Cat1Num = this._Owner.findViewById(R.id.fp_cat1Num);
        this._Cat2Num = this._Owner.findViewById(R.id.fp_cat2Num);
        this._Cat2Toggle = (ImageButton) this._Owner.findViewById(R.id.fp_toggleCat2);
        this._Cat2Toggle.setOnClickListener(new View.OnClickListener() { // from class: mobi.beyondpod.ui.views.feedsettings.VirtualFeedSection.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                VirtualFeedSection.this.toggleCat2(VirtualFeedSection.this._Category2.getVisibility() == 8);
            }
        });
        this._PlaybackSpeed = new PlaybackSpeedSettings(this._InflatedContent);
        this._VolumeBoost = new VolumeBoostSettings(this._InflatedContent);
        ArrayAdapter<CharSequence> createFromResource = ArrayAdapter.createFromResource(this._Owner, R.array.settings_trackSortOrder_text, android.R.layout.simple_spinner_item);
        createFromResource.setDropDownViewResource(android.R.layout.simple_spinner_dropdown_item);
        this._PodcastSort.setAdapter((SpinnerAdapter) createFromResource);
        ArrayAdapter<CharSequence> createFromResource2 = ArrayAdapter.createFromResource(this._Owner, R.array.settings_long_podcastName_handling_text, android.R.layout.simple_spinner_item);
        createFromResource2.setDropDownViewResource(android.R.layout.simple_spinner_dropdown_item);
        this._LongPodcasNamesHandling.setAdapter((SpinnerAdapter) createFromResource2);
        this._Categories = CategoryManager.getCategoriesForAssignment();
        this._Owner.findViewById(R.id.toggleAdvancedPrefs).setVisibility(8);
        ArrayAdapter arrayAdapter = new ArrayAdapter(this._Owner, android.R.layout.simple_spinner_item, CategoryManager.getCategoriesForAssignment());
        arrayAdapter.setDropDownViewResource(android.R.layout.simple_spinner_dropdown_item);
        this._Category1.setAdapter((SpinnerAdapter) arrayAdapter);
        ArrayAdapter arrayAdapter2 = new ArrayAdapter(this._Owner, android.R.layout.simple_spinner_item, CategoryManager.getCategoriesForAssignment());
        arrayAdapter2.setDropDownViewResource(android.R.layout.simple_spinner_dropdown_item);
        this._Category2.setAdapter((SpinnerAdapter) arrayAdapter2);
        this._PodcastDownloadFolder.setInputType(0);
        this._Handler.postDelayed(new Runnable() { // from class: mobi.beyondpod.ui.views.feedsettings.VirtualFeedSection.2
            @Override // java.lang.Runnable
            public void run() {
                VirtualFeedSection.this._PodcastDownloadFolder.setInputType(16);
            }
        }, 1000L);
    }

    @Override // mobi.beyondpod.ui.views.feedsettings.SettingsSectionBase
    public void loadFromFeed(Feed feed) {
        if (feed != null) {
            this._Name.setText(feed.getName());
            this._PodcastDownloadFolder.setText(feed.getFeedPath());
            this._OriginalDownloadFolder = feed.getFeedPath();
            int findIndexInNumArray = CoreHelper.findIndexInNumArray(this._Owner, R.array.settings_trackSortOrder_values, Integer.valueOf(feed.getTrackSortOrder()));
            if (findIndexInNumArray != -1) {
                this._PodcastSort.setSelection(findIndexInNumArray);
            } else {
                this._PodcastSort.setSelection(0);
            }
            this._LongPodcasNamesHandling.setSelection(feed.getLeftTruncateLongTrackNames() ? 1 : 0);
            this._AllowDeletions.setChecked(feed.getAllowAutoTrackDeletions() != 1);
            this._SavePlayedPosition.setChecked(feed.getShouldRememberPlayedPosition());
            this._Category1.setSelection(this._Categories.indexOf(feed.getCategories().getPrimary()));
            this._Category2.setSelection(this._Categories.indexOf(feed.getCategories().getSecondary()));
            this._PlaybackSpeed.initialize(feed.getFeedPlayer());
            this._VolumeBoost.initialize(feed.getAudioSettings().getVolumeBoost());
            toggleCat2(true ^ CategoryManager.Unassigned.equals(feed.getCategories().getSecondary()));
        } else {
            this._PlaybackSpeed.initialize(0);
            this._VolumeBoost.initialize(0);
            this._AllowDeletions.setChecked(false);
            this._SavePlayedPosition.setChecked(true);
            String passedFeedUrl = this._Owner.getPassedFeedUrl();
            if (!StringUtils.isNullOrEmpty(passedFeedUrl)) {
                this._PodcastDownloadFolder.setText(passedFeedUrl);
                String name = new File(passedFeedUrl).getName();
                this._Name.setText(String.format("%s%s", Character.valueOf(Character.toUpperCase(name.charAt(0))), name.substring(1)));
            }
            this._Category1.setSelection(this._Categories.indexOf(Configuration.getActiveFeedCategory()));
            this._Category2.setSelection(this._Categories.indexOf(CategoryManager.Unassigned));
            toggleCat2(false);
        }
        super.loadFromFeed(feed);
    }

    @Override // mobi.beyondpod.ui.views.feedsettings.SettingsSectionBase
    public void saveToFeed(Feed feed) {
        feed.setName(this._Name.getText().toString());
        feed.setFeedPath(this._PodcastDownloadFolder.getText().toString());
        feed.setLeftTruncateLongTrackNames(this._LongPodcasNamesHandling.getSelectedItemPosition() == 1);
        feed.setAllowAutoTrackDeletions(!this._AllowDeletions.isChecked() ? 1 : 0);
        feed.setShouldRememberPlayedPosition(this._SavePlayedPosition.isChecked());
        feed.setType(1);
        feed.getCategories().setPrimary((FeedCategory) this._Category1.getSelectedItem());
        if (this._Category2.getVisibility() == 0) {
            feed.getCategories().setSecondary((FeedCategory) this._Category2.getSelectedItem());
        } else {
            feed.getCategories().setSecondary(CategoryManager.Unassigned);
        }
        int findIndexValueInNumArray = CoreHelper.findIndexValueInNumArray(this._Owner, R.array.settings_trackSortOrder_values, this._PodcastSort.getSelectedItemPosition());
        if (findIndexValueInNumArray != Integer.MIN_VALUE) {
            feed.setTrackSortOrder(findIndexValueInNumArray);
        }
        feed.setFeedPlayer(this._PlaybackSpeed.getSelectedSpeed());
        feed.getAudioSettings().setVolumeBoost(this._VolumeBoost.getSelectedVolumeBoost());
    }

    @Override // mobi.beyondpod.ui.views.feedsettings.SettingsSectionBase
    public boolean validateControls(Feed feed) {
        String trim = this._PodcastDownloadFolder.getText().toString().trim();
        File file = new File(trim);
        if (StringUtils.isNullOrEmpty(trim) || !file.exists()) {
            Toast.makeText(this._Owner, R.string.feed_properties_vld_podcast_folder_vir_feed_invalid, 1).show();
            this._PodcastDownloadFolder.requestFocus();
            return false;
        }
        String normalizeFolder = normalizeFolder(file);
        this._PodcastDownloadFolder.setText(normalizeFolder);
        String trim2 = this._Name.getText().toString().trim();
        if (trim2.length() == 0) {
            Toast.makeText(this._Owner, R.string.feed_properties_vld_feedNameEmpty, 1).show();
            this._Name.requestFocus();
            return false;
        }
        this._Name.setText(trim2);
        Feed virtualFeedByDownloadPath = FeedRepository.getVirtualFeedByDownloadPath(normalizeFolder);
        if (virtualFeedByDownloadPath == null || virtualFeedByDownloadPath == feed) {
            return true;
        }
        Toast.makeText(this._Owner, String.format(THIS_FEED_ALREADY_EXISTS_IN_CATEGORY, virtualFeedByDownloadPath.getCategories().getPrimary().name()), 1).show();
        this._PodcastDownloadFolder.requestFocus();
        return false;
    }

    private String normalizeFolder(File file) {
        try {
            String canonicalPath = file.getCanonicalPath();
            if (CoreHelper.apiLevel() >= 21) {
                return canonicalPath;
            }
            StringTokenizer stringTokenizer = new StringTokenizer(canonicalPath, File.separator, false);
            StringBuilder sb = new StringBuilder(File.separator);
            while (stringTokenizer.hasMoreTokens()) {
                String nextToken = stringTokenizer.nextToken();
                File[] listFiles = new File(sb.toString()).listFiles();
                int length = listFiles.length;
                int i = 0;
                while (true) {
                    if (i < length) {
                        File file2 = listFiles[i];
                        if (file2.isDirectory() && StringUtils.equalsIgnoreCase(file2.getName(), nextToken)) {
                            if (sb.length() > 1) {
                                sb.append(File.separator);
                            }
                            sb.append(file2.getName());
                        } else {
                            i++;
                        }
                    }
                }
            }
            return sb.toString();
        } catch (IOException unused) {
            return file.getPath();
        }
    }

    @Override // mobi.beyondpod.ui.views.feedsettings.SettingsSectionBase
    public boolean hasFeedAddressChanged() {
        return !StringUtils.equalsIgnoreCase(this._OriginalDownloadFolder, this._PodcastDownloadFolder.getText().toString());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void toggleCat2(boolean z) {
        this._Cat1Num.setVisibility(z ? 0 : 8);
        this._Cat2Num.setVisibility(z ? 0 : 8);
        this._Category2.setVisibility(z ? 0 : 8);
        this._Cat2Toggle.setImageResource(z ? R.drawable.ic_action_minus_dark : R.drawable.ic_action_add_dark);
    }
}
