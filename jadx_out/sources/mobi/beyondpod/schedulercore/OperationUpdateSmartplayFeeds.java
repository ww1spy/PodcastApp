package mobi.beyondpod.schedulercore;

import java.util.Iterator;
import java.util.UUID;
import mobi.beyondpod.BeyondPodApplication;
import mobi.beyondpod.downloadengine.UpdateAndDownloadEvents;
import mobi.beyondpod.downloadengine.UpdateAndDownloadManager;
import mobi.beyondpod.rsscore.FeedList;
import mobi.beyondpod.rsscore.helpers.CoreHelper;
import mobi.beyondpod.schedulercore.OperationBase;
import mobi.beyondpod.services.player.smartplay.SmartPlaylist;
import mobi.beyondpod.services.player.smartplay.SmartPlaylistManager;
import mobi.beyondpod.ui.commands.CommandManagerBase;

/* loaded from: classes.dex */
public class OperationUpdateSmartplayFeeds extends OperationBase {
    public static final UUID OperationID = UUID.fromString("F1B1C1D1-0C02-4314-B8C4-4FEDE4C83C80");
    private static String TAG = "OperationUpdateSmartplayFeeds";
    UpdateAndDownloadEvents.UpdateAndDownloadEventListener _OnUpdateAndDownloadHandler;
    private String _SmartPlayToUpdate;

    /* JADX INFO: Access modifiers changed from: package-private */
    public OperationUpdateSmartplayFeeds() {
        super("BeyondPod Update Smartplay feeds", "BeyondPod Update Smartplay feeds", OperationID);
        this._SmartPlayToUpdate = null;
        this._OnUpdateAndDownloadHandler = new UpdateAndDownloadEvents.UpdateAndDownloadEventListener() { // from class: mobi.beyondpod.schedulercore.OperationUpdateSmartplayFeeds.1
            @Override // mobi.beyondpod.downloadengine.UpdateAndDownloadEvents.UpdateAndDownloadEventListener
            public void onUpdateAndDownloadEvent(UpdateAndDownloadEvents.UpdateAndDownloadEvent updateAndDownloadEvent) {
                if (updateAndDownloadEvent.Type == UpdateAndDownloadEvents.UpdateAndDownloadEvent.UPDATE_AND_DOWNLOAD_COMPLETED) {
                    CoreHelper.writeTraceEntry(OperationUpdateSmartplayFeeds.TAG, "SmartPlay Update and Download Completed!");
                    BeyondPodApplication.messageBus.unsubscribe(OperationUpdateSmartplayFeeds.this._OnUpdateAndDownloadHandler, UpdateAndDownloadEvents.UpdateAndDownloadEvent.class);
                    OperationUpdateSmartplayFeeds.this.onOperationCompleted();
                }
            }
        };
    }

    @Override // mobi.beyondpod.schedulercore.OperationBase
    public void execute(OperationBase.OperationCompletedCallback operationCompletedCallback) {
        super.execute(operationCompletedCallback);
        if (!UpdateAndDownloadManager.isWorking()) {
            FeedList feedList = new FeedList();
            SmartPlaylist smartPlaylistByName = SmartPlaylistManager.getSmartPlaylistByName(this._SmartPlayToUpdate);
            if (smartPlaylistByName == null) {
                smartPlaylistByName = SmartPlaylistManager.primarySmartPlay();
            }
            if (smartPlaylistByName != null) {
                Iterator<SmartPlaylist.SmartPlaylistEntry> it = smartPlaylistByName.entries().iterator();
                while (it.hasNext()) {
                    feedList.addAll(it.next().getFeeds());
                }
            }
            if (feedList.size() == 0) {
                CoreHelper.writeLogEntry(TAG, "SmartPlay list has no feeds! Nothing to do!");
                onOperationCompleted();
                return;
            } else {
                CoreHelper.writeTraceEntry(TAG, String.format("Starting the update of %s feeds in SmartPlay", Integer.valueOf(feedList.size())));
                BeyondPodApplication.messageBus.subscribe(this._OnUpdateAndDownloadHandler, UpdateAndDownloadEvents.UpdateAndDownloadEvent.class);
                CommandManagerBase.cmdUpdateFeeds(feedList, true);
                return;
            }
        }
        CoreHelper.writeLogEntry(TAG, "SmartPlay update found another update is already in progress! Skipping update!");
        onOperationCompleted();
    }

    public void setSmartPlayToUpdate(String str) {
        this._SmartPlayToUpdate = str;
    }

    @Override // mobi.beyondpod.schedulercore.OperationBase
    public OperationBase createInstance(String str) {
        return new OperationUpdateSmartplayFeeds();
    }

    @Override // mobi.beyondpod.schedulercore.OperationBase
    public String name() {
        return this._Name;
    }
}
