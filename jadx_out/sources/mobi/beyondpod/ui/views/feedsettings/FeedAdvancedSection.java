package mobi.beyondpod.ui.views.feedsettings;

import android.view.View;
import android.widget.ArrayAdapter;
import android.widget.Button;
import android.widget.CheckBox;
import android.widget.CompoundButton;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.Spinner;
import android.widget.SpinnerAdapter;
import android.widget.TextView;
import mobi.beyondpod.R;
import mobi.beyondpod.rsscore.Configuration;
import mobi.beyondpod.rsscore.Feed;
import mobi.beyondpod.rsscore.helpers.CoreHelper;
import mobi.beyondpod.rsscore.helpers.StringUtils;
import mobi.beyondpod.rsscore.repository.FeedRepository;
import mobi.beyondpod.rsscore.rss.RssFeedCache;
import mobi.beyondpod.ui.core.FeedImageCache;
import mobi.beyondpod.ui.views.notifications.NotificationPreferences;

/* loaded from: classes.dex */
public class FeedAdvancedSection extends SettingsSectionBase {
    private static final String TAG = "FeedAdvancedSection";
    private CheckBox _AllowDeletions;
    private Button _ClearCustomImage;
    private Button _ClearHistory;
    private Button _CustomImage;
    private TextView _DownloadFolderMessage;
    private TextView _DownloadFolderTitle;
    private ImageView _FeedImage;
    private View _FeedImageBody;
    private View _FeedImageMsg;
    private View _FeedImageTitle;
    private EditText _FeedPassword;
    private EditText _FeedUserName;
    private Spinner _FingerprintType;
    private CheckBox _ForceUniqueNames;
    private TextView _ForceUniqueNamesMsg;
    private View _GoogleProxyNumItemsArea;
    private int _ItemFingerprintTypeOnLoad;
    private Spinner _ItemSortOrder;
    private Spinner _LongPodcasNamesHandling;
    private Button _MarkDownloaded;
    private EditText _Name;
    private EditText _NumGreaderItemsToGet;
    private PlaybackSpeedSettings _PlaybackSpeed;
    private EditText _PodcastDownloadFolder;
    private Spinner _PodcastSort;
    private Spinner _PreferredEnclosure;
    private CheckBox _SavePlayedPosition;
    private CheckBox _UseGoogleProxy;
    private VolumeBoostSettings _VolumeBoost;
    private CompoundButton.OnCheckedChangeListener _onSyncWithGoogleChanged;

    @Override // mobi.beyondpod.ui.views.feedsettings.SettingsSectionBase
    public boolean hasFeedAddressChanged() {
        return false;
    }

    @Override // mobi.beyondpod.ui.views.feedsettings.SettingsSectionBase
    public boolean isURLFeed() {
        return true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // mobi.beyondpod.ui.views.feedsettings.SettingsSectionBase
    public void patchFeedUrl(String str) {
    }

    @Override // mobi.beyondpod.ui.views.feedsettings.SettingsSectionBase
    public boolean validateControls(Feed feed) {
        return true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public FeedAdvancedSection(FeedPropertiesView feedPropertiesView) {
        super(feedPropertiesView);
        this._onSyncWithGoogleChanged = new CompoundButton.OnCheckedChangeListener() { // from class: mobi.beyondpod.ui.views.feedsettings.FeedAdvancedSection.1
            @Override // android.widget.CompoundButton.OnCheckedChangeListener
            public void onCheckedChanged(CompoundButton compoundButton, boolean z) {
                FeedAdvancedSection.this._GoogleProxyNumItemsArea.setVisibility(z ? 0 : 8);
                if (z) {
                    if (StringUtils.isNullOrEmpty(FeedAdvancedSection.this._NumGreaderItemsToGet.getText().toString()) || StringUtils.equals(FeedAdvancedSection.this._NumGreaderItemsToGet.getText().toString(), NotificationPreferences.NO)) {
                        FeedAdvancedSection.this._NumGreaderItemsToGet.setText(Integer.toString(Configuration.getGlobalDefaultMaximumGReaderItemsToGet()));
                    }
                }
            }
        };
        this._StubId = R.id.stub_advancedFeedProperties;
    }

    @Override // mobi.beyondpod.ui.views.feedsettings.SettingsSectionBase
    protected void initialize() {
        this._DownloadFolderTitle = (TextView) this._InflatedContent.findViewById(R.id.fp_feedDownloadFolderTitle);
        this._DownloadFolderMessage = (TextView) this._InflatedContent.findViewById(R.id.fp_feedDownloadFolderMsg);
        this._DownloadFolderMessage.setText(String.format(this._InflatedContent.getResources().getText(R.string.feed_properties_feed_download_folder_msg).toString(), Configuration.enclosureDownloadRoot()));
        this._Name = (EditText) this._InflatedContent.findViewById(R.id.fp_feedName);
        this._PodcastDownloadFolder = (EditText) this._InflatedContent.findViewById(R.id.fp_feedDownloadFolder);
        this._FeedUserName = (EditText) this._InflatedContent.findViewById(R.id.fp_login_uname);
        this._FeedPassword = (EditText) this._InflatedContent.findViewById(R.id.fp_login_pw);
        this._PodcastSort = (Spinner) this._InflatedContent.findViewById(R.id.fp_podcastSortOrder);
        this._LongPodcasNamesHandling = (Spinner) this._InflatedContent.findViewById(R.id.fp_podcastLongNameHandling);
        this._FingerprintType = (Spinner) this._InflatedContent.findViewById(R.id.fp_fingerprintType);
        this._AllowDeletions = (CheckBox) this._InflatedContent.findViewById(R.id.fp_allowDeletions);
        this._SavePlayedPosition = (CheckBox) this._InflatedContent.findViewById(R.id.fp_savePlayedPosition);
        this._ItemSortOrder = (Spinner) this._InflatedContent.findViewById(R.id.fp_forceItemSort);
        this._PreferredEnclosure = (Spinner) this._InflatedContent.findViewById(R.id.fp_preferred_enclosure);
        this._ClearHistory = (Button) this._InflatedContent.findViewById(R.id.fp_clear_historyButton);
        this._MarkDownloaded = (Button) this._InflatedContent.findViewById(R.id.fp_mark_downloadedButton);
        this._CustomImage = (Button) this._InflatedContent.findViewById(R.id.fp_customImageButton);
        this._ClearCustomImage = (Button) this._InflatedContent.findViewById(R.id.fp_clearImageButton);
        this._PlaybackSpeed = new PlaybackSpeedSettings(this._InflatedContent);
        this._VolumeBoost = new VolumeBoostSettings(this._InflatedContent);
        ArrayAdapter<CharSequence> createFromResource = ArrayAdapter.createFromResource(this._Owner, R.array.settings_trackSortOrder_text, android.R.layout.simple_spinner_item);
        createFromResource.setDropDownViewResource(android.R.layout.simple_spinner_dropdown_item);
        this._PodcastSort.setAdapter((SpinnerAdapter) createFromResource);
        ArrayAdapter<CharSequence> createFromResource2 = ArrayAdapter.createFromResource(this._Owner, R.array.settings_long_podcastName_handling_text, android.R.layout.simple_spinner_item);
        createFromResource2.setDropDownViewResource(android.R.layout.simple_spinner_dropdown_item);
        this._LongPodcasNamesHandling.setAdapter((SpinnerAdapter) createFromResource2);
        ArrayAdapter<CharSequence> createFromResource3 = ArrayAdapter.createFromResource(this._Owner, R.array.feed_fingerprint_type_values_text, android.R.layout.simple_spinner_item);
        createFromResource3.setDropDownViewResource(android.R.layout.simple_spinner_dropdown_item);
        this._FingerprintType.setAdapter((SpinnerAdapter) createFromResource3);
        ArrayAdapter<CharSequence> createFromResource4 = ArrayAdapter.createFromResource(this._Owner, R.array.settings_itemSortOrder_text, android.R.layout.simple_spinner_item);
        createFromResource4.setDropDownViewResource(android.R.layout.simple_spinner_dropdown_item);
        this._ItemSortOrder.setAdapter((SpinnerAdapter) createFromResource4);
        ArrayAdapter<CharSequence> createFromResource5 = ArrayAdapter.createFromResource(this._Owner, R.array.settings_preferred_enclosure_text, android.R.layout.simple_spinner_item);
        createFromResource5.setDropDownViewResource(android.R.layout.simple_spinner_dropdown_item);
        this._PreferredEnclosure.setAdapter((SpinnerAdapter) createFromResource5);
        this._ForceUniqueNames = (CheckBox) this._InflatedContent.findViewById(R.id.fp_forceUniqueNames);
        this._ForceUniqueNamesMsg = (TextView) this._InflatedContent.findViewById(R.id.fp_forceUniqueNames_msg);
        this._FeedImage = (ImageView) this._InflatedContent.findViewById(R.id.fp_feedImage);
        this._FeedImageTitle = this._InflatedContent.findViewById(R.id.fp_feedImage_title);
        this._FeedImageBody = this._InflatedContent.findViewById(R.id.fp_feedImage_body);
        this._FeedImageMsg = this._InflatedContent.findViewById(R.id.fp_feedImage_msg);
        this._GoogleProxyNumItemsArea = this._Owner.findViewById(R.id.fp_google_proxy_num_items_area);
        this._NumGreaderItemsToGet = (EditText) this._Owner.findViewById(R.id.fp_num_greader_items_to_get);
        this._UseGoogleProxy = (CheckBox) this._Owner.findViewById(R.id.fp_useGoogleProxy);
        this._UseGoogleProxy.setOnCheckedChangeListener(this._onSyncWithGoogleChanged);
    }

    @Override // mobi.beyondpod.ui.views.feedsettings.SettingsSectionBase
    public void loadFromFeed(Feed feed) {
        if (feed != null) {
            this._Name.setText(feed.getName());
            this._NumGreaderItemsToGet.setText(Integer.toString(feed.getMaxNumGReaderItemsToGet()));
            this._UseGoogleProxy.setChecked(feed.isGReaderFeed());
            this._PodcastDownloadFolder.setText(feed.getFeedPath());
            int findIndexInNumArray = CoreHelper.findIndexInNumArray(this._Owner, R.array.settings_trackSortOrder_values, Integer.valueOf(feed.getTrackSortOrder()));
            if (findIndexInNumArray != -1) {
                this._PodcastSort.setSelection(findIndexInNumArray);
            } else {
                this._PodcastSort.setSelection(0);
            }
            this._ItemFingerprintTypeOnLoad = feed.getItemFingerprintAlgorithm();
            this._FingerprintType.setSelection(CoreHelper.findIndexInNumArray(this._Owner, R.array.feed_fingerprint_type_values, Integer.valueOf(feed.getItemFingerprintAlgorithm())));
            this._LongPodcasNamesHandling.setSelection(feed.getLeftTruncateLongTrackNames() ? 1 : 0);
            this._AllowDeletions.setChecked(feed.getAllowAutoTrackDeletions() != 1);
            this._SavePlayedPosition.setChecked(feed.getShouldRememberPlayedPosition());
            int forceFeedItemSort = feed.getForceFeedItemSort();
            if (forceFeedItemSort == -1) {
                this._ItemSortOrder.setSelection(0);
            } else {
                switch (forceFeedItemSort) {
                    case 2:
                        this._ItemSortOrder.setSelection(2);
                        break;
                    case 3:
                        this._ItemSortOrder.setSelection(1);
                        break;
                }
            }
            this._PlaybackSpeed.initialize(feed.getFeedPlayer());
            this._VolumeBoost.initialize(feed.getAudioSettings().getVolumeBoost());
            this._PreferredEnclosure.setSelection(feed.getPreferredEnclosureIndex());
            this._ForceUniqueNames.setChecked(feed.getForceUniqueTrackNames());
            this._FeedUserName.setText(feed.getUserName());
            this._FeedPassword.setText(feed.getPassword());
            refreshFeedImage(feed);
        } else {
            this._UseGoogleProxy.setChecked(false);
            this._NumGreaderItemsToGet.setText(Integer.toString(Configuration.getGlobalDefaultMaximumGReaderItemsToGet()));
            this._MarkDownloaded.setEnabled(false);
            this._ClearHistory.setEnabled(false);
            this._AllowDeletions.setChecked(true);
            this._SavePlayedPosition.setChecked(true);
            this._PlaybackSpeed.initialize(0);
            this._VolumeBoost.initialize(0);
        }
        if (feed == null) {
            this._FeedImageTitle.setVisibility(8);
            this._FeedImageBody.setVisibility(8);
            this._FeedImageMsg.setVisibility(8);
        }
        this._ClearHistory.setOnClickListener(this._Owner._ClearHistoryListener);
        this._MarkDownloaded.setOnClickListener(this._Owner._MarkDownloadedListener);
        this._CustomImage.setOnClickListener(this._Owner._SelectCustomImageListener);
        this._ClearCustomImage.setOnClickListener(this._Owner._ClearCustomImageListener);
        this._PodcastDownloadFolder.setVisibility(Configuration.enableLoggingInProduction() ? 0 : 8);
        this._DownloadFolderMessage.setVisibility(Configuration.enableLoggingInProduction() ? 0 : 8);
        this._DownloadFolderTitle.setVisibility(Configuration.enableLoggingInProduction() ? 0 : 8);
        super.loadFromFeed(feed);
    }

    @Override // mobi.beyondpod.ui.views.feedsettings.SettingsSectionBase
    public void saveToFeed(Feed feed) {
        feed.setName(this._Name.getText().toString().trim());
        updateFeedNameToFeedURLIfNeeded(feed);
        feed.setFeedPath(this._PodcastDownloadFolder.getText().toString());
        feed.setForceUniqueTrackNames(this._ForceUniqueNames.isChecked());
        feed.setPreferredEnclosureIndex(this._PreferredEnclosure.getSelectedItemPosition());
        switch (this._ItemSortOrder.getSelectedItemPosition()) {
            case 0:
                feed.setForceFeedItemSort(-1);
                break;
            case 1:
                feed.setForceFeedItemSort(3);
                break;
            case 2:
                feed.setForceFeedItemSort(2);
                break;
        }
        int findIndexValueInNumArray = CoreHelper.findIndexValueInNumArray(this._Owner, R.array.settings_trackSortOrder_values, this._PodcastSort.getSelectedItemPosition());
        if (findIndexValueInNumArray != Integer.MIN_VALUE) {
            feed.setTrackSortOrder(findIndexValueInNumArray);
        }
        int findIndexValueInNumArray2 = CoreHelper.findIndexValueInNumArray(this._Owner, R.array.feed_fingerprint_type_values, this._FingerprintType.getSelectedItemPosition());
        if (findIndexValueInNumArray2 != Integer.MIN_VALUE) {
            feed.setItemFingerprintAlgorithm(findIndexValueInNumArray2);
        }
        if (this._ItemFingerprintTypeOnLoad != feed.getItemFingerprintAlgorithm()) {
            CoreHelper.writeTraceEntry(TAG, "feed item Fingeprint type changed! Deleting feed cache...");
            RssFeedCache.deleteFeedCacheFor(feed);
        }
        feed.setFeedPlayer(this._PlaybackSpeed.getSelectedSpeed());
        feed.getAudioSettings().setVolumeBoost(this._VolumeBoost.getSelectedVolumeBoost());
        feed.setLeftTruncateLongTrackNames(this._LongPodcasNamesHandling.getSelectedItemPosition() == 1);
        feed.setAllowAutoTrackDeletions(!this._AllowDeletions.isChecked() ? 1 : 0);
        feed.setShouldRememberPlayedPosition(this._SavePlayedPosition.isChecked());
        if (feed.getType() == 1) {
            FeedRepository.refreshVirtualFeed(feed);
        }
        String trim = this._FeedUserName.getText().toString().trim();
        String trim2 = this._FeedPassword.getText().toString().trim();
        if (!StringUtils.isNullOrEmpty(trim)) {
            feed.setUserName(trim);
        } else {
            feed.setUserName(null);
        }
        if (!StringUtils.isNullOrEmpty(trim2)) {
            feed.setPassword(trim2);
        } else {
            feed.setPassword(null);
        }
        feed.setMaxNumGReaderItemsToGet(StringUtils.tryParseIntFromString(this._NumGreaderItemsToGet.getText().toString(), 0).intValue());
        feed.setType(this._UseGoogleProxy.isChecked() ? 5 : 0);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void updateFeedNameToFeedURLIfNeeded(Feed feed) {
        if (StringUtils.isNullOrEmpty(feed.getName()) || feed.getName().toLowerCase().startsWith("http:")) {
            feed.setName(feed.getFeedUrl());
        }
    }

    @Override // mobi.beyondpod.ui.views.feedsettings.SettingsSectionBase
    public void show() {
        super.show();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // mobi.beyondpod.ui.views.feedsettings.SettingsSectionBase
    public void refresh(Feed feed) {
        refreshFeedImage(feed);
    }

    private void refreshFeedImage(Feed feed) {
        this._FeedImage.setImageDrawable(FeedImageCache.getFeedImageFor(feed));
        this._ClearCustomImage.setVisibility(FeedImageCache.hasCustomImageForFeed(feed) ? 0 : 8);
    }
}
