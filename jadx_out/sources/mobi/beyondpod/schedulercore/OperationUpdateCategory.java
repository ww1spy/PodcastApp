package mobi.beyondpod.schedulercore;

import java.util.UUID;
import mobi.beyondpod.BeyondPodApplication;
import mobi.beyondpod.downloadengine.UpdateAndDownloadEvents;
import mobi.beyondpod.downloadengine.UpdateAndDownloadManager;
import mobi.beyondpod.rsscore.Feed;
import mobi.beyondpod.rsscore.FeedList;
import mobi.beyondpod.rsscore.categories.CategoryManager;
import mobi.beyondpod.rsscore.categories.FeedCategory;
import mobi.beyondpod.rsscore.helpers.CoreHelper;
import mobi.beyondpod.rsscore.repository.FeedRepository;
import mobi.beyondpod.schedulercore.OperationBase;
import mobi.beyondpod.sync.ChangeTracker;
import mobi.beyondpod.ui.commands.CommandManagerBase;

/* loaded from: classes.dex */
public class OperationUpdateCategory extends OperationBase {
    public static final UUID OperationID = UUID.fromString("ABC76FEC-0C02-4314-B8C4-4FEDE4C83C80");
    private static String TAG = "OperationUpdateCategory";
    private String _CategoryToUpdate;
    UpdateAndDownloadEvents.UpdateAndDownloadEventListener _OnUpdateAndDownloadHandler;

    /* JADX INFO: Access modifiers changed from: package-private */
    public OperationUpdateCategory() {
        super("BeyondPod Update Category", "BeyondPod Update Category", OperationID);
        this._CategoryToUpdate = "Favorites";
        this._OnUpdateAndDownloadHandler = new UpdateAndDownloadEvents.UpdateAndDownloadEventListener() { // from class: mobi.beyondpod.schedulercore.OperationUpdateCategory.1
            @Override // mobi.beyondpod.downloadengine.UpdateAndDownloadEvents.UpdateAndDownloadEventListener
            public void onUpdateAndDownloadEvent(UpdateAndDownloadEvents.UpdateAndDownloadEvent updateAndDownloadEvent) {
                if (updateAndDownloadEvent.Type == UpdateAndDownloadEvents.UpdateAndDownloadEvent.UPDATE_AND_DOWNLOAD_COMPLETED) {
                    CoreHelper.writeTraceEntry(OperationUpdateCategory.TAG, "Update and Download Completed!");
                    BeyondPodApplication.messageBus.unsubscribe(OperationUpdateCategory.this._OnUpdateAndDownloadHandler, UpdateAndDownloadEvents.UpdateAndDownloadEvent.class);
                    OperationUpdateCategory.this.onOperationCompleted();
                }
            }
        };
    }

    @Override // mobi.beyondpod.schedulercore.OperationBase
    public String serializedData() {
        return getCategoryToUpdate();
    }

    @Override // mobi.beyondpod.schedulercore.OperationBase
    public void execute(OperationBase.OperationCompletedCallback operationCompletedCallback) {
        super.execute(operationCompletedCallback);
        if (!UpdateAndDownloadManager.isWorking()) {
            FeedCategory categoryByValue = CategoryManager.getCategoryByValue(getCategoryToUpdate());
            if (categoryByValue == CategoryManager.CategoryNull) {
                CoreHelper.writeLogEntry(TAG, "Category " + getCategoryToUpdate() + " does not exist! Nothing to do!");
                onOperationCompleted();
                return;
            }
            FeedList feedList = new FeedList();
            for (Feed feed : FeedRepository.getRootFeed().subFeeds()) {
                if (CategoryManager.isInCategory(feed, categoryByValue)) {
                    feedList.add(feed);
                }
            }
            if (feedList.size() == 0) {
                CoreHelper.writeLogEntry(TAG, "Category " + getCategoryToUpdate() + " has no feeds! Nothing to do!");
                onOperationCompleted();
                return;
            }
            CoreHelper.writeLogEntryInProduction(TAG, String.format("Starting the update of %s feeds in category %s", Integer.valueOf(feedList.size()), categoryByValue.name()));
            BeyondPodApplication.messageBus.subscribe(this._OnUpdateAndDownloadHandler, UpdateAndDownloadEvents.UpdateAndDownloadEvent.class);
            CommandManagerBase.cmdUpdateFeeds(feedList, true);
            return;
        }
        CoreHelper.writeLogEntry(TAG, "Another update is already in progress! Skipping update!");
        onOperationCompleted();
    }

    @Override // mobi.beyondpod.schedulercore.OperationBase
    public OperationBase createInstance(String str) {
        OperationUpdateCategory operationUpdateCategory = new OperationUpdateCategory();
        operationUpdateCategory.setCategoryToUpdate(str);
        return operationUpdateCategory;
    }

    @Override // mobi.beyondpod.schedulercore.OperationBase
    public String name() {
        return this._Name + ": " + getCategoryToUpdate();
    }

    public void setCategoryToUpdate(String str) {
        this._CategoryToUpdate = str;
        this.m_IsModified = true;
    }

    public String getCategoryToUpdate() {
        return this._CategoryToUpdate;
    }

    @Override // mobi.beyondpod.schedulercore.OperationBase
    public long startTimeBias() {
        if (ChangeTracker.isTrackingEnabled()) {
            return generateRandomOffest(1000L, 30000L);
        }
        return super.startTimeBias();
    }
}
