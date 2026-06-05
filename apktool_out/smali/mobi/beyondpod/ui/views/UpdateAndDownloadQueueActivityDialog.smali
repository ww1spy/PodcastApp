.class public Lmobi/beyondpod/ui/views/UpdateAndDownloadQueueActivityDialog;
.super Landroid/app/Activity;
.source "UpdateAndDownloadQueueActivityDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "UpdateAndDownloadQueueActivityDialog"


# instance fields
.field private _Adapter:Lmobi/beyondpod/ui/views/UpdateAndDownloadQueueViewAdapter;

.field _Content:Landroid/widget/ListView;

.field private _EnclosureBatchUpdateListener:Lmobi/beyondpod/downloadengine/EnclosureDownloadManager$EnclosureBatchDownloadListener;

.field _OKButton:Landroid/widget/Button;

.field private _OnOKListener:Landroid/view/View$OnClickListener;

.field private _RssFeedUpdateListener:Lmobi/beyondpod/downloadengine/RssFeedUpdateManager$FeedBatchUpdateListener;

.field private _UpdateAndDownloadListener:Lmobi/beyondpod/downloadengine/UpdateAndDownloadManager$UpdateAndDownloadListener;

.field _ViewUpdateLogButton:Landroid/widget/Button;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 45
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 120
    new-instance v0, Lmobi/beyondpod/ui/views/UpdateAndDownloadQueueActivityDialog$3;

    invoke-direct {v0, p0}, Lmobi/beyondpod/ui/views/UpdateAndDownloadQueueActivityDialog$3;-><init>(Lmobi/beyondpod/ui/views/UpdateAndDownloadQueueActivityDialog;)V

    iput-object v0, p0, Lmobi/beyondpod/ui/views/UpdateAndDownloadQueueActivityDialog;->_OnOKListener:Landroid/view/View$OnClickListener;

    .line 155
    new-instance v0, Lmobi/beyondpod/ui/views/UpdateAndDownloadQueueActivityDialog$5;

    invoke-direct {v0, p0}, Lmobi/beyondpod/ui/views/UpdateAndDownloadQueueActivityDialog$5;-><init>(Lmobi/beyondpod/ui/views/UpdateAndDownloadQueueActivityDialog;)V

    iput-object v0, p0, Lmobi/beyondpod/ui/views/UpdateAndDownloadQueueActivityDialog;->_RssFeedUpdateListener:Lmobi/beyondpod/downloadengine/RssFeedUpdateManager$FeedBatchUpdateListener;

    .line 207
    new-instance v0, Lmobi/beyondpod/ui/views/UpdateAndDownloadQueueActivityDialog$6;

    invoke-direct {v0, p0}, Lmobi/beyondpod/ui/views/UpdateAndDownloadQueueActivityDialog$6;-><init>(Lmobi/beyondpod/ui/views/UpdateAndDownloadQueueActivityDialog;)V

    iput-object v0, p0, Lmobi/beyondpod/ui/views/UpdateAndDownloadQueueActivityDialog;->_EnclosureBatchUpdateListener:Lmobi/beyondpod/downloadengine/EnclosureDownloadManager$EnclosureBatchDownloadListener;

    .line 275
    new-instance v0, Lmobi/beyondpod/ui/views/UpdateAndDownloadQueueActivityDialog$7;

    invoke-direct {v0, p0}, Lmobi/beyondpod/ui/views/UpdateAndDownloadQueueActivityDialog$7;-><init>(Lmobi/beyondpod/ui/views/UpdateAndDownloadQueueActivityDialog;)V

    iput-object v0, p0, Lmobi/beyondpod/ui/views/UpdateAndDownloadQueueActivityDialog;->_UpdateAndDownloadListener:Lmobi/beyondpod/downloadengine/UpdateAndDownloadManager$UpdateAndDownloadListener;

    return-void
.end method

.method private RefreshQueue()V
    .locals 1

    .line 133
    new-instance v0, Lmobi/beyondpod/ui/views/UpdateAndDownloadQueueActivityDialog$4;

    invoke-direct {v0, p0}, Lmobi/beyondpod/ui/views/UpdateAndDownloadQueueActivityDialog$4;-><init>(Lmobi/beyondpod/ui/views/UpdateAndDownloadQueueActivityDialog;)V

    invoke-virtual {p0, v0}, Lmobi/beyondpod/ui/views/UpdateAndDownloadQueueActivityDialog;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic access$000(Lmobi/beyondpod/ui/views/UpdateAndDownloadQueueActivityDialog;)Lmobi/beyondpod/ui/views/UpdateAndDownloadQueueViewAdapter;
    .locals 0

    .line 45
    iget-object p0, p0, Lmobi/beyondpod/ui/views/UpdateAndDownloadQueueActivityDialog;->_Adapter:Lmobi/beyondpod/ui/views/UpdateAndDownloadQueueViewAdapter;

    return-object p0
.end method

.method static synthetic access$100(Lmobi/beyondpod/ui/views/UpdateAndDownloadQueueActivityDialog;)V
    .locals 0

    .line 45
    invoke-direct {p0}, Lmobi/beyondpod/ui/views/UpdateAndDownloadQueueActivityDialog;->RefreshQueue()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 317
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 320
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lmobi/beyondpod/ui/views/UpdateAndDownloadQueueViewAdapter$QueueListDataItem;

    .line 322
    iget-object v0, p1, Lmobi/beyondpod/ui/views/UpdateAndDownloadQueueViewAdapter$QueueListDataItem;->Feed:Lmobi/beyondpod/rsscore/Feed;

    if-nez v0, :cond_2

    .line 323
    iget-object v0, p1, Lmobi/beyondpod/ui/views/UpdateAndDownloadQueueViewAdapter$QueueListDataItem;->Enclosure:Lmobi/beyondpod/downloadengine/EnclosureDownloadManager$DownloadableEnclosure;

    iget-object v0, v0, Lmobi/beyondpod/downloadengine/EnclosureDownloadManager$DownloadableEnclosure;->enclosure:Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;

    if-eqz v0, :cond_2

    .line 325
    iget-object v0, p1, Lmobi/beyondpod/ui/views/UpdateAndDownloadQueueViewAdapter$QueueListDataItem;->Enclosure:Lmobi/beyondpod/downloadengine/EnclosureDownloadManager$DownloadableEnclosure;

    iget-object v0, v0, Lmobi/beyondpod/downloadengine/EnclosureDownloadManager$DownloadableEnclosure;->enclosure:Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;

    invoke-virtual {v0}, Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;->playableState()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    .line 329
    invoke-static {}, Lmobi/beyondpod/downloadengine/EnclosureDownloadManager;->terminateCurrentDownload()V

    goto :goto_0

    .line 332
    :cond_1
    iget-object p1, p1, Lmobi/beyondpod/ui/views/UpdateAndDownloadQueueViewAdapter$QueueListDataItem;->Enclosure:Lmobi/beyondpod/downloadengine/EnclosureDownloadManager$DownloadableEnclosure;

    iget-object p1, p1, Lmobi/beyondpod/downloadengine/EnclosureDownloadManager$DownloadableEnclosure;->enclosure:Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;

    invoke-static {p1}, Lmobi/beyondpod/downloadengine/EnclosureDownloadManager;->removeFromQueue(Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;)V

    .line 333
    invoke-direct {p0}, Lmobi/beyondpod/ui/views/UpdateAndDownloadQueueActivityDialog;->RefreshQueue()V

    :cond_2
    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 56
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 58
    invoke-static {}, Lmobi/beyondpod/rsscore/repository/FeedRepository;->isRepositoryAvailable()Z

    move-result p1

    if-nez p1, :cond_0

    .line 60
    sget-object p1, Lmobi/beyondpod/ui/views/UpdateAndDownloadQueueActivityDialog;->TAG:Ljava/lang/String;

    const-string v0, "Closing view because the repository is not Loaded"

    invoke-static {p1, v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/UpdateAndDownloadQueueActivityDialog;->finish()V

    return-void

    :cond_0
    const p1, 0x7f0c00d0

    .line 65
    invoke-virtual {p0, p1}, Lmobi/beyondpod/ui/views/UpdateAndDownloadQueueActivityDialog;->setContentView(I)V

    const p1, 0x7f090065

    .line 67
    invoke-virtual {p0, p1}, Lmobi/beyondpod/ui/views/UpdateAndDownloadQueueActivityDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lmobi/beyondpod/ui/views/UpdateAndDownloadQueueActivityDialog;->_OKButton:Landroid/widget/Button;

    .line 68
    iget-object p1, p0, Lmobi/beyondpod/ui/views/UpdateAndDownloadQueueActivityDialog;->_OKButton:Landroid/widget/Button;

    iget-object v0, p0, Lmobi/beyondpod/ui/views/UpdateAndDownloadQueueActivityDialog;->_OnOKListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f090066

    .line 70
    invoke-virtual {p0, p1}, Lmobi/beyondpod/ui/views/UpdateAndDownloadQueueActivityDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lmobi/beyondpod/ui/views/UpdateAndDownloadQueueActivityDialog;->_ViewUpdateLogButton:Landroid/widget/Button;

    .line 72
    iget-object p1, p0, Lmobi/beyondpod/ui/views/UpdateAndDownloadQueueActivityDialog;->_ViewUpdateLogButton:Landroid/widget/Button;

    const v0, 0x7f100409

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(I)V

    .line 73
    iget-object p1, p0, Lmobi/beyondpod/ui/views/UpdateAndDownloadQueueActivityDialog;->_ViewUpdateLogButton:Landroid/widget/Button;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 75
    iget-object p1, p0, Lmobi/beyondpod/ui/views/UpdateAndDownloadQueueActivityDialog;->_ViewUpdateLogButton:Landroid/widget/Button;

    new-instance v0, Lmobi/beyondpod/ui/views/UpdateAndDownloadQueueActivityDialog$1;

    invoke-direct {v0, p0}, Lmobi/beyondpod/ui/views/UpdateAndDownloadQueueActivityDialog$1;-><init>(Lmobi/beyondpod/ui/views/UpdateAndDownloadQueueActivityDialog;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f090009

    .line 84
    invoke-virtual {p0, p1}, Lmobi/beyondpod/ui/views/UpdateAndDownloadQueueActivityDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ListView;

    iput-object p1, p0, Lmobi/beyondpod/ui/views/UpdateAndDownloadQueueActivityDialog;->_Content:Landroid/widget/ListView;

    .line 86
    new-instance p1, Lmobi/beyondpod/ui/views/UpdateAndDownloadQueueViewAdapter;

    invoke-direct {p1, p0}, Lmobi/beyondpod/ui/views/UpdateAndDownloadQueueViewAdapter;-><init>(Lmobi/beyondpod/ui/views/UpdateAndDownloadQueueActivityDialog;)V

    iput-object p1, p0, Lmobi/beyondpod/ui/views/UpdateAndDownloadQueueActivityDialog;->_Adapter:Lmobi/beyondpod/ui/views/UpdateAndDownloadQueueViewAdapter;

    .line 87
    iget-object p1, p0, Lmobi/beyondpod/ui/views/UpdateAndDownloadQueueActivityDialog;->_Content:Landroid/widget/ListView;

    iget-object v0, p0, Lmobi/beyondpod/ui/views/UpdateAndDownloadQueueActivityDialog;->_Adapter:Lmobi/beyondpod/ui/views/UpdateAndDownloadQueueViewAdapter;

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 89
    iget-object p1, p0, Lmobi/beyondpod/ui/views/UpdateAndDownloadQueueActivityDialog;->_Content:Landroid/widget/ListView;

    new-instance v0, Lmobi/beyondpod/ui/views/UpdateAndDownloadQueueActivityDialog$2;

    invoke-direct {v0, p0}, Lmobi/beyondpod/ui/views/UpdateAndDownloadQueueActivityDialog$2;-><init>(Lmobi/beyondpod/ui/views/UpdateAndDownloadQueueActivityDialog;)V

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void
.end method

.method protected onPause()V
    .locals 1

    .line 114
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 115
    iget-object v0, p0, Lmobi/beyondpod/ui/views/UpdateAndDownloadQueueActivityDialog;->_EnclosureBatchUpdateListener:Lmobi/beyondpod/downloadengine/EnclosureDownloadManager$EnclosureBatchDownloadListener;

    invoke-static {v0}, Lmobi/beyondpod/downloadengine/EnclosureDownloadManager;->removeEnclosureBatchDownloadListener(Lmobi/beyondpod/downloadengine/EnclosureDownloadManager$EnclosureBatchDownloadListener;)V

    .line 116
    iget-object v0, p0, Lmobi/beyondpod/ui/views/UpdateAndDownloadQueueActivityDialog;->_UpdateAndDownloadListener:Lmobi/beyondpod/downloadengine/UpdateAndDownloadManager$UpdateAndDownloadListener;

    invoke-static {v0}, Lmobi/beyondpod/downloadengine/UpdateAndDownloadManager;->removeUpdateAndDownloadListener(Lmobi/beyondpod/downloadengine/UpdateAndDownloadManager$UpdateAndDownloadListener;)V

    .line 117
    iget-object v0, p0, Lmobi/beyondpod/ui/views/UpdateAndDownloadQueueActivityDialog;->_RssFeedUpdateListener:Lmobi/beyondpod/downloadengine/RssFeedUpdateManager$FeedBatchUpdateListener;

    invoke-static {v0}, Lmobi/beyondpod/downloadengine/RssFeedUpdateManager;->removeFeedBatchUpdateListener(Lmobi/beyondpod/downloadengine/RssFeedUpdateManager$FeedBatchUpdateListener;)V

    return-void
.end method

.method protected onResume()V
    .locals 1

    .line 104
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 105
    iget-object v0, p0, Lmobi/beyondpod/ui/views/UpdateAndDownloadQueueActivityDialog;->_EnclosureBatchUpdateListener:Lmobi/beyondpod/downloadengine/EnclosureDownloadManager$EnclosureBatchDownloadListener;

    invoke-static {v0}, Lmobi/beyondpod/downloadengine/EnclosureDownloadManager;->addEnclosureBatchDownloadListener(Lmobi/beyondpod/downloadengine/EnclosureDownloadManager$EnclosureBatchDownloadListener;)V

    .line 106
    iget-object v0, p0, Lmobi/beyondpod/ui/views/UpdateAndDownloadQueueActivityDialog;->_UpdateAndDownloadListener:Lmobi/beyondpod/downloadengine/UpdateAndDownloadManager$UpdateAndDownloadListener;

    invoke-static {v0}, Lmobi/beyondpod/downloadengine/UpdateAndDownloadManager;->addUpdateAndDownloadListener(Lmobi/beyondpod/downloadengine/UpdateAndDownloadManager$UpdateAndDownloadListener;)V

    .line 107
    iget-object v0, p0, Lmobi/beyondpod/ui/views/UpdateAndDownloadQueueActivityDialog;->_RssFeedUpdateListener:Lmobi/beyondpod/downloadengine/RssFeedUpdateManager$FeedBatchUpdateListener;

    invoke-static {v0}, Lmobi/beyondpod/downloadengine/RssFeedUpdateManager;->addFeedBatchUpdateListener(Lmobi/beyondpod/downloadengine/RssFeedUpdateManager$FeedBatchUpdateListener;)V

    .line 108
    invoke-direct {p0}, Lmobi/beyondpod/ui/views/UpdateAndDownloadQueueActivityDialog;->RefreshQueue()V

    return-void
.end method
