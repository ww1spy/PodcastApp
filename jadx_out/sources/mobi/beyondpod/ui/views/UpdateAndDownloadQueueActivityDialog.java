package mobi.beyondpod.ui.views;

import android.app.Activity;
import android.os.Bundle;
import android.view.View;
import android.widget.AdapterView;
import android.widget.Button;
import android.widget.ListAdapter;
import android.widget.ListView;
import mobi.beyondpod.R;
import mobi.beyondpod.downloadengine.EnclosureDownloadManager;
import mobi.beyondpod.downloadengine.RssFeedUpdateManager;
import mobi.beyondpod.downloadengine.UpdateAndDownloadManager;
import mobi.beyondpod.rsscore.Feed;
import mobi.beyondpod.rsscore.Track;
import mobi.beyondpod.rsscore.helpers.CoreHelper;
import mobi.beyondpod.rsscore.repository.FeedRepository;
import mobi.beyondpod.rsscore.repository.FlashStorageLocation;
import mobi.beyondpod.ui.commands.CommandManager;
import mobi.beyondpod.ui.views.UpdateAndDownloadQueueViewAdapter;

/* loaded from: classes.dex */
public class UpdateAndDownloadQueueActivityDialog extends Activity implements View.OnClickListener {
    private static final String TAG = "UpdateAndDownloadQueueActivityDialog";
    private UpdateAndDownloadQueueViewAdapter _Adapter;
    ListView _Content;
    Button _OKButton;
    Button _ViewUpdateLogButton;
    private View.OnClickListener _OnOKListener = new View.OnClickListener() { // from class: mobi.beyondpod.ui.views.UpdateAndDownloadQueueActivityDialog.3
        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            UpdateAndDownloadManager.terminateAll();
            UpdateAndDownloadQueueActivityDialog.this.finish();
        }
    };
    private RssFeedUpdateManager.FeedBatchUpdateListener _RssFeedUpdateListener = new RssFeedUpdateManager.FeedBatchUpdateListener() { // from class: mobi.beyondpod.ui.views.UpdateAndDownloadQueueActivityDialog.5
        @Override // mobi.beyondpod.downloadengine.RssFeedUpdateManager.FeedBatchUpdateListener
        public void onAnotherUpdateIsInProgress() {
        }

        @Override // mobi.beyondpod.downloadengine.RssFeedUpdateManager.FeedBatchUpdateListener
        public void onFeedBatchUpdateCanceled() {
        }

        @Override // mobi.beyondpod.downloadengine.RssFeedUpdateManager.FeedBatchUpdateListener
        public void onFeedBatchUpdateUnableToEstablishNetworkConnection() {
        }

        @Override // mobi.beyondpod.downloadengine.RssFeedUpdateManager.FeedBatchUpdateListener
        public void onFeedUpdateCompleted(Feed feed) {
        }

        @Override // mobi.beyondpod.downloadengine.RssFeedUpdateManager.FeedBatchUpdateListener
        public void onInsufficientSpaceAtDownloadLocation(FlashStorageLocation flashStorageLocation) {
        }

        @Override // mobi.beyondpod.downloadengine.RssFeedUpdateManager.FeedBatchUpdateListener
        public void onFeedBatchUpdateCompleted() {
            UpdateAndDownloadQueueActivityDialog.this.RefreshQueue();
        }

        @Override // mobi.beyondpod.downloadengine.RssFeedUpdateManager.FeedBatchUpdateListener
        public void onFeedBatchUpdateStarted(Feed feed) {
            UpdateAndDownloadQueueActivityDialog.this.RefreshQueue();
        }

        @Override // mobi.beyondpod.downloadengine.RssFeedUpdateManager.FeedBatchUpdateListener
        public void onFeedUpdateProgress(Feed feed) {
            UpdateAndDownloadQueueActivityDialog.this.RefreshQueue();
        }

        @Override // mobi.beyondpod.downloadengine.RssFeedUpdateManager.FeedBatchUpdateListener
        public void onFeedUpdateStarted(Feed feed) {
            UpdateAndDownloadQueueActivityDialog.this.RefreshQueue();
        }
    };
    private EnclosureDownloadManager.EnclosureBatchDownloadListener _EnclosureBatchUpdateListener = new EnclosureDownloadManager.EnclosureBatchDownloadListener() { // from class: mobi.beyondpod.ui.views.UpdateAndDownloadQueueActivityDialog.6
        @Override // mobi.beyondpod.downloadengine.EnclosureDownloadManager.EnclosureBatchDownloadListener
        public void onAnotherDownloadIsInProgress() {
        }

        @Override // mobi.beyondpod.downloadengine.EnclosureDownloadManager.EnclosureBatchDownloadListener
        public void onEnclosureBatchDownloadCanceled() {
        }

        @Override // mobi.beyondpod.downloadengine.EnclosureDownloadManager.EnclosureBatchDownloadListener
        public void onEnclosureDownloadCanceled(Track track) {
        }

        @Override // mobi.beyondpod.downloadengine.EnclosureDownloadManager.EnclosureBatchDownloadListener
        public void onEnclosureDownloadCompleted(Track track) {
        }

        @Override // mobi.beyondpod.downloadengine.EnclosureDownloadManager.EnclosureBatchDownloadListener
        public void onEnclosureDownloadFailed(Track track, Exception exc) {
        }

        @Override // mobi.beyondpod.downloadengine.EnclosureDownloadManager.EnclosureBatchDownloadListener
        public void onEnclosureDownloadTerminated(Track track) {
        }

        @Override // mobi.beyondpod.downloadengine.EnclosureDownloadManager.EnclosureBatchDownloadListener
        public void onUnableToEstablishNetworkConnection() {
        }

        @Override // mobi.beyondpod.downloadengine.EnclosureDownloadManager.EnclosureBatchDownloadListener
        public void onEnclosureBatchDownloadStarted() {
            UpdateAndDownloadQueueActivityDialog.this.RefreshQueue();
        }

        @Override // mobi.beyondpod.downloadengine.EnclosureDownloadManager.EnclosureBatchDownloadListener
        public void onEnclosureBatchDownloadCompleted() {
            UpdateAndDownloadQueueActivityDialog.this.RefreshQueue();
        }

        @Override // mobi.beyondpod.downloadengine.EnclosureDownloadManager.EnclosureBatchDownloadListener
        public void onEnclosureBatchEnclosureDownloadStarting(Track track, boolean z) {
            UpdateAndDownloadQueueActivityDialog.this.RefreshQueue();
        }

        @Override // mobi.beyondpod.downloadengine.EnclosureDownloadManager.EnclosureBatchDownloadListener
        public void onEnclosureDownloadProgress(Track track) {
            UpdateAndDownloadQueueActivityDialog.this.RefreshQueue();
        }

        @Override // mobi.beyondpod.downloadengine.EnclosureDownloadManager.EnclosureBatchDownloadListener
        public void onEnclosureDownloadStarted(Track track) {
            UpdateAndDownloadQueueActivityDialog.this.RefreshQueue();
        }
    };
    private UpdateAndDownloadManager.UpdateAndDownloadListener _UpdateAndDownloadListener = new UpdateAndDownloadManager.UpdateAndDownloadListener() { // from class: mobi.beyondpod.ui.views.UpdateAndDownloadQueueActivityDialog.7
        @Override // mobi.beyondpod.downloadengine.UpdateAndDownloadManager.UpdateAndDownloadListener
        public void onAnotherDownloadIsInProgress() {
        }

        @Override // mobi.beyondpod.downloadengine.UpdateAndDownloadManager.UpdateAndDownloadListener
        public void onUnableToEstablishNetworkConnection() {
        }

        @Override // mobi.beyondpod.downloadengine.UpdateAndDownloadManager.UpdateAndDownloadListener
        public void processingCanceled(int i) {
        }

        @Override // mobi.beyondpod.downloadengine.UpdateAndDownloadManager.UpdateAndDownloadListener
        public void processingCompleted(int i) {
        }

        @Override // mobi.beyondpod.downloadengine.UpdateAndDownloadManager.UpdateAndDownloadListener
        public void updateAndDownloadBatchCompleted() {
        }

        @Override // mobi.beyondpod.downloadengine.UpdateAndDownloadManager.UpdateAndDownloadListener
        public void updateAndDownloadBatchStarted() {
        }

        @Override // mobi.beyondpod.downloadengine.UpdateAndDownloadManager.UpdateAndDownloadListener
        public void processingStarted(int i) {
            UpdateAndDownloadQueueActivityDialog.this.RefreshQueue();
        }
    };

    @Override // android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (!FeedRepository.isRepositoryAvailable()) {
            CoreHelper.writeTraceEntry(TAG, "Closing view because the repository is not Loaded");
            finish();
            return;
        }
        setContentView(R.layout.update_download_queue_view);
        this._OKButton = (Button) findViewById(R.id.button1);
        this._OKButton.setOnClickListener(this._OnOKListener);
        this._ViewUpdateLogButton = (Button) findViewById(R.id.button2);
        this._ViewUpdateLogButton.setText(R.string.update_download_queue_view_update_log);
        this._ViewUpdateLogButton.setVisibility(8);
        this._ViewUpdateLogButton.setOnClickListener(new View.OnClickListener() { // from class: mobi.beyondpod.ui.views.UpdateAndDownloadQueueActivityDialog.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                CommandManager.cmdShowUpdateLog(UpdateAndDownloadQueueActivityDialog.this);
            }
        });
        this._Content = (ListView) findViewById(R.id.QueueContent);
        this._Adapter = new UpdateAndDownloadQueueViewAdapter(this);
        this._Content.setAdapter((ListAdapter) this._Adapter);
        this._Content.setOnItemClickListener(new AdapterView.OnItemClickListener() { // from class: mobi.beyondpod.ui.views.UpdateAndDownloadQueueActivityDialog.2
            @Override // android.widget.AdapterView.OnItemClickListener
            public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
                if (UpdateAndDownloadManager.hasWorkToDo() || EnclosureDownloadManager.queueCount() > 0) {
                    return;
                }
                CommandManager.cmdShowUpdateLog(UpdateAndDownloadQueueActivityDialog.this);
            }
        });
    }

    @Override // android.app.Activity
    protected void onResume() {
        super.onResume();
        EnclosureDownloadManager.addEnclosureBatchDownloadListener(this._EnclosureBatchUpdateListener);
        UpdateAndDownloadManager.addUpdateAndDownloadListener(this._UpdateAndDownloadListener);
        RssFeedUpdateManager.addFeedBatchUpdateListener(this._RssFeedUpdateListener);
        RefreshQueue();
    }

    @Override // android.app.Activity
    protected void onPause() {
        super.onPause();
        EnclosureDownloadManager.removeEnclosureBatchDownloadListener(this._EnclosureBatchUpdateListener);
        UpdateAndDownloadManager.removeUpdateAndDownloadListener(this._UpdateAndDownloadListener);
        RssFeedUpdateManager.removeFeedBatchUpdateListener(this._RssFeedUpdateListener);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void RefreshQueue() {
        runOnUiThread(new Runnable() { // from class: mobi.beyondpod.ui.views.UpdateAndDownloadQueueActivityDialog.4
            @Override // java.lang.Runnable
            public void run() {
                String str;
                UpdateAndDownloadQueueActivityDialog.this._Adapter.Refresh();
                boolean z = UpdateAndDownloadManager.hasWorkToDo() || EnclosureDownloadManager.queueCount() > 0;
                UpdateAndDownloadQueueActivityDialog.this._OKButton.setText(z ? R.string.update_download_queue_activity_cancel_update : R.string.update_download_queue_download_completed);
                UpdateAndDownloadQueueActivityDialog.this._ViewUpdateLogButton.setVisibility(z ? 8 : 0);
                int queueCount = RssFeedUpdateManager.queueCount();
                int queueCount2 = EnclosureDownloadManager.queueCount();
                UpdateAndDownloadQueueActivityDialog updateAndDownloadQueueActivityDialog = UpdateAndDownloadQueueActivityDialog.this;
                StringBuilder sb = new StringBuilder();
                sb.append(UpdateAndDownloadQueueActivityDialog.this.getResources().getString(R.string.update_and_download_queue_title));
                if (queueCount > 0) {
                    str = " (" + queueCount + ")";
                } else if (queueCount2 > 0) {
                    str = " (" + queueCount2 + ")";
                } else {
                    str = "";
                }
                sb.append(str);
                updateAndDownloadQueueActivityDialog.setTitle(sb.toString());
            }
        });
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        if (view.getTag() == null) {
            return;
        }
        UpdateAndDownloadQueueViewAdapter.QueueListDataItem queueListDataItem = (UpdateAndDownloadQueueViewAdapter.QueueListDataItem) view.getTag();
        if (queueListDataItem.Feed != null || queueListDataItem.Enclosure.enclosure == null) {
            return;
        }
        if (queueListDataItem.Enclosure.enclosure.playableState() == 5) {
            EnclosureDownloadManager.terminateCurrentDownload();
        } else {
            EnclosureDownloadManager.removeFromQueue(queueListDataItem.Enclosure.enclosure);
            RefreshQueue();
        }
    }
}
