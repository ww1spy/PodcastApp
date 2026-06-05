package mobi.beyondpod.ui.views.contentview;

import android.content.Context;
import android.content.Intent;
import android.graphics.drawable.ColorDrawable;
import android.os.Bundle;
import android.support.v7.app.ActionBar;
import android.widget.ProgressBar;
import java.util.Arrays;
import mobi.beyondpod.BeyondPodApplication;
import mobi.beyondpod.R;
import mobi.beyondpod.downloadengine.UpdateAndDownloadEvents;
import mobi.beyondpod.rsscore.Configuration;
import mobi.beyondpod.rsscore.helpers.CoreHelper;
import mobi.beyondpod.rsscore.repository.FeedRepository;
import mobi.beyondpod.rsscore.repository.RepositoryEvents;
import mobi.beyondpod.services.player.PlayListEvents;
import mobi.beyondpod.ui.core.MasterViewState;
import mobi.beyondpod.ui.core.mediarouter.BPMediaRouteControllerDialog;
import mobi.beyondpod.ui.views.base.FeedContentDataSourceEvents;
import uk.co.chrisjenx.calligraphy.CalligraphyContextWrapper;

/* loaded from: classes.dex */
public class FeedItemContentViewPager extends FeedItemContentViewPagerBase implements FeedContentDataSourceEvents.FeedContentListViewDataSourceEventListener, RepositoryEvents.RepositoryEventListener, PlayListEvents.PlayListEventListener, UpdateAndDownloadEvents.UpdateAndDownloadEventListener, BPMediaRouteControllerDialog.IRouteControllerDialogOwner {
    static final String CURRENT_RSS_ITEM_ID_TAG = "CurrentRSSItemID";
    private Bundle _CurrentSavedInstanceState;
    private ProgressBar _LoadingProgress;

    @Override // mobi.beyondpod.ui.views.contentview.FeedItemContentViewPagerBase, android.support.v7.app.AppCompatActivity, android.support.v4.app.FragmentActivity, android.support.v4.app.SupportActivity, android.app.Activity
    protected void onCreate(Bundle bundle) {
        System.gc();
        _InstanceCount++;
        CoreHelper.writeTraceEntryInDebug(TAG, "######### FeedItemContentViewPager Created! Current instances: " + _InstanceCount);
        if (_InstanceCount > 1) {
            CoreHelper.writeTraceErrorInDebug(TAG, "######### Possible FeedItemContentViewPager Leak ######### " + _InstanceCount);
        }
        supportRequestWindowFeature(9);
        if (Arrays.asList(Configuration.contentThemes).indexOf(Configuration.contentTheme()) > 1) {
            setTheme(2131820935);
        }
        super.onCreate(bundle);
        setContentView(R.layout.feed_item_content_view_dialog);
        this._LoadingProgress = (ProgressBar) findViewById(R.id.loadingProgress);
        ActionBar supportActionBar = getSupportActionBar();
        if (supportActionBar != null) {
            supportActionBar.setDisplayOptions(7);
            supportActionBar.setBackgroundDrawable(new ColorDrawable(-12303292));
        }
        this._DataSource = buildDataSource(getIntent(), bundle);
        if (bundle == null) {
            wireViewPager(this._DataSource.getItemByIntentOrSavedState(getIntent(), null), null);
        }
    }

    @Override // mobi.beyondpod.ui.views.contentview.FeedItemContentViewPagerBase, android.support.v4.app.FragmentActivity, android.app.Activity
    protected void onResume() {
        BeyondPodApplication.messageBus.subscribe(this, PlayListEvents.PlayListEvent.class);
        BeyondPodApplication.messageBus.subscribe(this, UpdateAndDownloadEvents.UpdateAndDownloadEvent.class);
        super.onResume();
    }

    @Override // mobi.beyondpod.ui.views.contentview.FeedItemContentViewPagerBase, android.support.v4.app.FragmentActivity, android.app.Activity
    protected void onPause() {
        BeyondPodApplication.messageBus.unsubscribe(this, PlayListEvents.PlayListEvent.class);
        BeyondPodApplication.messageBus.unsubscribe(this, UpdateAndDownloadEvents.UpdateAndDownloadEvent.class);
        super.onPause();
    }

    private IDataSource buildDataSource(Intent intent, Bundle bundle) {
        if (bundle != null) {
            if (MyEpisodesSource.isMySavedState(bundle)) {
                return new MyEpisodesSource();
            }
            if (FeedSource.isMySavedState(bundle)) {
                return new FeedSource();
            }
        }
        if (MyEpisodesSource.isMyIntent(intent)) {
            return new MyEpisodesSource(intent);
        }
        return new FeedSource();
    }

    @Override // android.support.v7.app.AppCompatActivity, android.support.v4.app.FragmentActivity, android.support.v4.app.SupportActivity, android.app.Activity
    public void onSaveInstanceState(Bundle bundle) {
        CoreHelper.writeTraceEntry(TAG, "#*#*# save Instance State for: " + this._CurrentRssItem);
        super.onSaveInstanceState(bundle);
        if (currentWebView() != null) {
            currentWebView().saveState(bundle);
        }
        if (this._DataSource != null) {
            this._DataSource.saveCurrentState(bundle, this._CurrentRssItem);
        }
    }

    @Override // android.app.Activity
    public void onRestoreInstanceState(Bundle bundle) {
        super.onRestoreInstanceState(bundle);
        if (this._DataSource == null) {
            return;
        }
        if (this._DataSource.isDataLoaded()) {
            restorePagerState(bundle);
        } else {
            this._CurrentSavedInstanceState = bundle;
            startWaitingForDataSourceToLoad();
        }
    }

    private void startWaitingForDataSourceToLoad() {
        BeyondPodApplication.messageBus.subscribe(this, FeedContentDataSourceEvents.FeedContentListViewDataSourceEvent.class);
        BeyondPodApplication.messageBus.subscribe(this, RepositoryEvents.RepositoryEvent.class);
        if (FeedRepository.repositoryLoadState() == 2) {
            restoreDataSourceState();
        } else {
            CoreHelper.writeTraceEntry(TAG, "******* startWaitingForDataSourceToLoad found that repository is not loaded! (repo state is: " + FeedRepository.repositoryLoadState() + ") Loading repository...");
            FeedRepository.initializeAndLoadRepository();
        }
        setLoadingProgressVisibility(true);
    }

    private void stopWaitingForDataSourceToLoad() {
        BeyondPodApplication.messageBus.unsubscribe(this, FeedContentDataSourceEvents.FeedContentListViewDataSourceEvent.class);
        BeyondPodApplication.messageBus.unsubscribe(this, RepositoryEvents.RepositoryEvent.class);
        setLoadingProgressVisibility(false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void restoreDataSourceState() {
        if (this._DataSource.isDataLoaded() || this._CurrentSavedInstanceState == null) {
            return;
        }
        this._DataSource.restoreCurrentState(MasterViewState.fromBundle(this._CurrentSavedInstanceState));
    }

    private void restorePagerState(Bundle bundle) {
        if (this._DataSource.isDataLoaded() && bundle != null) {
            this._CurrentRssItem = this._DataSource.getItemByIntentOrSavedState(null, bundle);
            if (this._CurrentRssItem != null) {
                invalidateOptionsMenu();
            } else {
                CoreHelper.writeTraceEntry(TAG, "#*#*# Restored item Not Found");
            }
            wireViewPager(this._CurrentRssItem, null);
        }
    }

    @Override // mobi.beyondpod.rsscore.repository.RepositoryEvents.RepositoryEventListener
    public void onRepositoryEvent(final RepositoryEvents.RepositoryEvent repositoryEvent) {
        runOnUiThread(new Runnable() { // from class: mobi.beyondpod.ui.views.contentview.FeedItemContentViewPager.1
            @Override // java.lang.Runnable
            public void run() {
                if (repositoryEvent.Type == 2) {
                    FeedItemContentViewPager.this.restoreDataSourceState();
                }
            }
        });
    }

    @Override // mobi.beyondpod.services.player.PlayListEvents.PlayListEventListener
    public void onPlayListEvent(PlayListEvents.PlayListEvent playListEvent) {
        runOnUiThread(new Runnable() { // from class: mobi.beyondpod.ui.views.contentview.FeedItemContentViewPager.2
            @Override // java.lang.Runnable
            public void run() {
                FeedItemContentViewPager.this.invalidateOptionsMenu();
            }
        });
    }

    @Override // mobi.beyondpod.downloadengine.UpdateAndDownloadEvents.UpdateAndDownloadEventListener
    public void onUpdateAndDownloadEvent(UpdateAndDownloadEvents.UpdateAndDownloadEvent updateAndDownloadEvent) {
        if (updateAndDownloadEvent.Type == UpdateAndDownloadEvents.UpdateAndDownloadEvent.ENCLOSURE_DOWNLOAD_COMPLETED) {
            runOnUiThread(new Runnable() { // from class: mobi.beyondpod.ui.views.contentview.FeedItemContentViewPager.3
                @Override // java.lang.Runnable
                public void run() {
                    FeedItemContentViewPager.this.invalidateOptionsMenu();
                }
            });
        }
    }

    @Override // mobi.beyondpod.ui.views.base.FeedContentDataSourceEvents.FeedContentListViewDataSourceEventListener
    public void onFeedContentListViewDataSourceEvent(FeedContentDataSourceEvents.FeedContentListViewDataSourceEvent feedContentListViewDataSourceEvent) {
        if (feedContentListViewDataSourceEvent.type == FeedContentDataSourceEvents.FeedContentListViewDataSourceEvent.LOAD_COMPLETED) {
            stopWaitingForDataSourceToLoad();
            restorePagerState(this._CurrentSavedInstanceState);
        }
    }

    @Override // mobi.beyondpod.ui.core.mediarouter.BPMediaRouteControllerDialog.IRouteControllerDialogOwner
    public void onMediaItemSelected() {
        openFullScreenPlayerandFinish();
    }

    @Override // android.app.Activity, android.view.ContextThemeWrapper, android.content.ContextWrapper
    protected void attachBaseContext(Context context) {
        super.attachBaseContext(CalligraphyContextWrapper.wrap(context));
    }

    private void setLoadingProgressVisibility(boolean z) {
        this._LoadingProgress.setVisibility(z ? 0 : 8);
    }
}
