.class public Lmobi/beyondpod/ui/views/UpdateAndDownloadQueueViewAdapter;
.super Landroid/widget/BaseAdapter;
.source "UpdateAndDownloadQueueViewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmobi/beyondpod/ui/views/UpdateAndDownloadQueueViewAdapter$QueueListViewItem;,
        Lmobi/beyondpod/ui/views/UpdateAndDownloadQueueViewAdapter$QueueListDataItem;
    }
.end annotation


# static fields
.field private static final CONNECTING:Ljava/lang/String;

.field private static final DOWNLOADED:Ljava/lang/String;

.field private static final UPDATING:Ljava/lang/String;

.field private static final UPDATING_S:Ljava/lang/String;

.field private static sInfoTextFormatter:Ljava/util/Formatter;

.field private static sInfoTextStringBuilder:Ljava/lang/StringBuilder;


# instance fields
.field private _Inflater:Landroid/view/LayoutInflater;

.field _Items:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lmobi/beyondpod/ui/views/UpdateAndDownloadQueueViewAdapter$QueueListDataItem;",
            ">;"
        }
    .end annotation
.end field

.field _Owner:Lmobi/beyondpod/ui/views/UpdateAndDownloadQueueActivityDialog;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const v0, 0x7f1003fe

    .line 46
    invoke-static {v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->loadResourceString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmobi/beyondpod/ui/views/UpdateAndDownloadQueueViewAdapter;->UPDATING:Ljava/lang/String;

    const v0, 0x7f1003ff

    .line 47
    invoke-static {v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->loadResourceString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmobi/beyondpod/ui/views/UpdateAndDownloadQueueViewAdapter;->UPDATING_S:Ljava/lang/String;

    const v0, 0x7f1003fc

    .line 48
    invoke-static {v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->loadResourceString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmobi/beyondpod/ui/views/UpdateAndDownloadQueueViewAdapter;->DOWNLOADED:Ljava/lang/String;

    const v0, 0x7f1003fb

    .line 49
    invoke-static {v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->loadResourceString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmobi/beyondpod/ui/views/UpdateAndDownloadQueueViewAdapter;->CONNECTING:Ljava/lang/String;

    .line 56
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sput-object v0, Lmobi/beyondpod/ui/views/UpdateAndDownloadQueueViewAdapter;->sInfoTextStringBuilder:Ljava/lang/StringBuilder;

    .line 57
    new-instance v0, Ljava/util/Formatter;

    sget-object v1, Lmobi/beyondpod/ui/views/UpdateAndDownloadQueueViewAdapter;->sInfoTextStringBuilder:Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    sput-object v0, Lmobi/beyondpod/ui/views/UpdateAndDownloadQueueViewAdapter;->sInfoTextFormatter:Ljava/util/Formatter;

    return-void
.end method

.method public constructor <init>(Lmobi/beyondpod/ui/views/UpdateAndDownloadQueueActivityDialog;)V
    .locals 1

    .line 60
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmobi/beyondpod/ui/views/UpdateAndDownloadQueueViewAdapter;->_Items:Ljava/util/ArrayList;

    .line 61
    iput-object p1, p0, Lmobi/beyondpod/ui/views/UpdateAndDownloadQueueViewAdapter;->_Owner:Lmobi/beyondpod/ui/views/UpdateAndDownloadQueueActivityDialog;

    .line 62
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lmobi/beyondpod/ui/views/UpdateAndDownloadQueueViewAdapter;->_Inflater:Landroid/view/LayoutInflater;

    return-void
.end method

.method private BuildViewItem(Lmobi/beyondpod/ui/views/UpdateAndDownloadQueueViewAdapter$QueueListViewItem;Lmobi/beyondpod/ui/views/UpdateAndDownloadQueueViewAdapter$QueueListDataItem;Landroid/view/ViewGroup;)V
    .locals 12

    .line 166
    sget-object p3, Lmobi/beyondpod/ui/views/UpdateAndDownloadQueueViewAdapter;->sInfoTextStringBuilder:Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 168
    iget-object p3, p1, Lmobi/beyondpod/ui/views/UpdateAndDownloadQueueViewAdapter$QueueListViewItem;->RemoveFromQueueBtn:Landroid/widget/ImageView;

    iget-object v1, p0, Lmobi/beyondpod/ui/views/UpdateAndDownloadQueueViewAdapter;->_Owner:Lmobi/beyondpod/ui/views/UpdateAndDownloadQueueActivityDialog;

    invoke-virtual {p3, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 169
    iget-object p3, p1, Lmobi/beyondpod/ui/views/UpdateAndDownloadQueueViewAdapter$QueueListViewItem;->RemoveFromQueueBtn:Landroid/widget/ImageView;

    invoke-virtual {p3, p2}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 171
    iget-object p3, p2, Lmobi/beyondpod/ui/views/UpdateAndDownloadQueueViewAdapter$QueueListDataItem;->Enclosure:Lmobi/beyondpod/downloadengine/EnclosureDownloadManager$DownloadableEnclosure;

    const/4 v1, 0x2

    const/4 v2, 0x3

    const-wide/16 v3, 0x0

    const/4 v5, 0x1

    const/16 v6, 0x8

    if-eqz p3, :cond_6

    .line 173
    iget-object p3, p1, Lmobi/beyondpod/ui/views/UpdateAndDownloadQueueViewAdapter$QueueListViewItem;->PrimaryText:Landroid/widget/TextView;

    iget-object v7, p2, Lmobi/beyondpod/ui/views/UpdateAndDownloadQueueViewAdapter$QueueListDataItem;->Enclosure:Lmobi/beyondpod/downloadengine/EnclosureDownloadManager$DownloadableEnclosure;

    iget-object v7, v7, Lmobi/beyondpod/downloadengine/EnclosureDownloadManager$DownloadableEnclosure;->enclosure:Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;

    iget-object v7, v7, Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;->Parent:Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;

    if-eqz v7, :cond_0

    iget-object v7, p2, Lmobi/beyondpod/ui/views/UpdateAndDownloadQueueViewAdapter$QueueListDataItem;->Enclosure:Lmobi/beyondpod/downloadengine/EnclosureDownloadManager$DownloadableEnclosure;

    iget-object v7, v7, Lmobi/beyondpod/downloadengine/EnclosureDownloadManager$DownloadableEnclosure;->enclosure:Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;

    iget-object v7, v7, Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;->Parent:Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;

    iget-object v7, v7, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->Title:Ljava/lang/CharSequence;

    goto :goto_0

    :cond_0
    iget-object v7, p2, Lmobi/beyondpod/ui/views/UpdateAndDownloadQueueViewAdapter$QueueListDataItem;->Enclosure:Lmobi/beyondpod/downloadengine/EnclosureDownloadManager$DownloadableEnclosure;

    iget-object v7, v7, Lmobi/beyondpod/downloadengine/EnclosureDownloadManager$DownloadableEnclosure;->enclosure:Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;

    iget-object v7, v7, Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;->TempTitle:Ljava/lang/String;

    if-eqz v7, :cond_1

    iget-object v7, p2, Lmobi/beyondpod/ui/views/UpdateAndDownloadQueueViewAdapter$QueueListDataItem;->Enclosure:Lmobi/beyondpod/downloadengine/EnclosureDownloadManager$DownloadableEnclosure;

    iget-object v7, v7, Lmobi/beyondpod/downloadengine/EnclosureDownloadManager$DownloadableEnclosure;->enclosure:Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;

    iget-object v7, v7, Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;->TempTitle:Ljava/lang/String;

    goto :goto_0

    :cond_1
    iget-object v7, p2, Lmobi/beyondpod/ui/views/UpdateAndDownloadQueueViewAdapter$QueueListDataItem;->Enclosure:Lmobi/beyondpod/downloadengine/EnclosureDownloadManager$DownloadableEnclosure;

    iget-object v7, v7, Lmobi/beyondpod/downloadengine/EnclosureDownloadManager$DownloadableEnclosure;->enclosure:Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;

    .line 174
    invoke-virtual {v7}, Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;->localFileName()Ljava/lang/String;

    move-result-object v7

    .line 173
    :goto_0
    invoke-virtual {p3, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 175
    iget-object p3, p1, Lmobi/beyondpod/ui/views/UpdateAndDownloadQueueViewAdapter$QueueListViewItem;->SecondaryText:Landroid/widget/TextView;

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 176
    iget-object p3, p1, Lmobi/beyondpod/ui/views/UpdateAndDownloadQueueViewAdapter$QueueListViewItem;->RemoveFromQueueBtn:Landroid/widget/ImageView;

    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 177
    iget-object p3, p1, Lmobi/beyondpod/ui/views/UpdateAndDownloadQueueViewAdapter$QueueListViewItem;->SecondaryText:Landroid/widget/TextView;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p2, Lmobi/beyondpod/ui/views/UpdateAndDownloadQueueViewAdapter$QueueListDataItem;->Enclosure:Lmobi/beyondpod/downloadengine/EnclosureDownloadManager$DownloadableEnclosure;

    iget-object v8, v8, Lmobi/beyondpod/downloadengine/EnclosureDownloadManager$DownloadableEnclosure;->feed:Lmobi/beyondpod/rsscore/Feed;

    invoke-virtual {v8}, Lmobi/beyondpod/rsscore/Feed;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p2, Lmobi/beyondpod/ui/views/UpdateAndDownloadQueueViewAdapter$QueueListDataItem;->Enclosure:Lmobi/beyondpod/downloadengine/EnclosureDownloadManager$DownloadableEnclosure;

    iget-object v8, v8, Lmobi/beyondpod/downloadengine/EnclosureDownloadManager$DownloadableEnclosure;->enclosure:Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;

    invoke-virtual {v8}, Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;->enclosureFileLength()Ljava/lang/Long;

    move-result-object v8

    if-eqz v8, :cond_3

    iget-object v8, p2, Lmobi/beyondpod/ui/views/UpdateAndDownloadQueueViewAdapter$QueueListDataItem;->Enclosure:Lmobi/beyondpod/downloadengine/EnclosureDownloadManager$DownloadableEnclosure;

    iget-object v8, v8, Lmobi/beyondpod/downloadengine/EnclosureDownloadManager$DownloadableEnclosure;->enclosure:Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;

    .line 178
    invoke-virtual {v8}, Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;->enclosureFileLength()Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    cmp-long v10, v8, v3

    if-nez v10, :cond_2

    goto :goto_1

    :cond_2
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " - "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, p2, Lmobi/beyondpod/ui/views/UpdateAndDownloadQueueViewAdapter$QueueListDataItem;->Enclosure:Lmobi/beyondpod/downloadengine/EnclosureDownloadManager$DownloadableEnclosure;

    iget-object v9, v9, Lmobi/beyondpod/downloadengine/EnclosureDownloadManager$DownloadableEnclosure;->enclosure:Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;

    .line 179
    invoke-virtual {v9}, Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;->enclosureSizeAsString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_2

    :cond_3
    :goto_1
    const-string v8, ""

    :goto_2
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 177
    invoke-virtual {p3, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 181
    iget-object p3, p2, Lmobi/beyondpod/ui/views/UpdateAndDownloadQueueViewAdapter$QueueListDataItem;->Enclosure:Lmobi/beyondpod/downloadengine/EnclosureDownloadManager$DownloadableEnclosure;

    iget-object p3, p3, Lmobi/beyondpod/downloadengine/EnclosureDownloadManager$DownloadableEnclosure;->enclosure:Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;

    invoke-virtual {p3}, Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;->playableState()I

    move-result p3

    const/4 v7, 0x5

    if-ne p3, v7, :cond_5

    .line 185
    iget-object p3, p1, Lmobi/beyondpod/ui/views/UpdateAndDownloadQueueViewAdapter$QueueListViewItem;->Progress:Landroid/widget/ProgressBar;

    invoke-virtual {p3, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 186
    iget-object p3, p1, Lmobi/beyondpod/ui/views/UpdateAndDownloadQueueViewAdapter$QueueListViewItem;->ProgressText:Landroid/widget/TextView;

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 188
    iget-object p3, p2, Lmobi/beyondpod/ui/views/UpdateAndDownloadQueueViewAdapter$QueueListDataItem;->Enclosure:Lmobi/beyondpod/downloadengine/EnclosureDownloadManager$DownloadableEnclosure;

    iget-object p3, p3, Lmobi/beyondpod/downloadengine/EnclosureDownloadManager$DownloadableEnclosure;->enclosure:Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;

    invoke-virtual {p3}, Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;->getLocalEnclosureTrack()Lmobi/beyondpod/rsscore/Track;

    move-result-object p3

    if-eqz p3, :cond_6

    .line 191
    invoke-virtual {p3}, Lmobi/beyondpod/rsscore/Track;->getDownloadedPortion()J

    move-result-wide v7

    cmp-long v9, v7, v3

    if-nez v9, :cond_4

    .line 193
    iget-object p3, p1, Lmobi/beyondpod/ui/views/UpdateAndDownloadQueueViewAdapter$QueueListViewItem;->Progress:Landroid/widget/ProgressBar;

    invoke-virtual {p3, v5}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 194
    iget-object p3, p1, Lmobi/beyondpod/ui/views/UpdateAndDownloadQueueViewAdapter$QueueListViewItem;->ProgressText:Landroid/widget/TextView;

    sget-object v7, Lmobi/beyondpod/ui/views/UpdateAndDownloadQueueViewAdapter;->CONNECTING:Ljava/lang/String;

    invoke-virtual {p3, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 197
    :cond_4
    iget-object v7, p1, Lmobi/beyondpod/ui/views/UpdateAndDownloadQueueViewAdapter$QueueListViewItem;->Progress:Landroid/widget/ProgressBar;

    invoke-virtual {v7, v0}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 198
    iget-object v7, p1, Lmobi/beyondpod/ui/views/UpdateAndDownloadQueueViewAdapter$QueueListViewItem;->Progress:Landroid/widget/ProgressBar;

    invoke-virtual {p3}, Lmobi/beyondpod/rsscore/Track;->getDownloadPercent()F

    move-result v8

    float-to-int v8, v8

    invoke-virtual {v7, v8}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 200
    iget-object v7, p1, Lmobi/beyondpod/ui/views/UpdateAndDownloadQueueViewAdapter$QueueListViewItem;->ProgressText:Landroid/widget/TextView;

    const-string v8, "%s %s%% of %s"

    new-array v9, v2, [Ljava/lang/Object;

    sget-object v10, Lmobi/beyondpod/ui/views/UpdateAndDownloadQueueViewAdapter;->DOWNLOADED:Ljava/lang/String;

    aput-object v10, v9, v0

    .line 201
    invoke-virtual {p3}, Lmobi/beyondpod/rsscore/Track;->getDownloadPercent()F

    move-result v10

    float-to-int v10, v10

    .line 200
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v5

    .line 201
    invoke-virtual {p3}, Lmobi/beyondpod/rsscore/Track;->getDownloadSize()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-static {p3}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->getFileLengthAsString(Ljava/lang/Long;)Ljava/lang/String;

    move-result-object p3

    aput-object p3, v9, v1

    .line 200
    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v7, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 205
    :cond_5
    iget-object p3, p2, Lmobi/beyondpod/ui/views/UpdateAndDownloadQueueViewAdapter$QueueListDataItem;->Enclosure:Lmobi/beyondpod/downloadengine/EnclosureDownloadManager$DownloadableEnclosure;

    iget-object p3, p3, Lmobi/beyondpod/downloadengine/EnclosureDownloadManager$DownloadableEnclosure;->enclosure:Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;

    invoke-static {p3}, Lmobi/beyondpod/downloadengine/EnclosureDownloadManager;->isDownloadPending(Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;)Z

    move-result p3

    if-eqz p3, :cond_6

    .line 207
    iget-object p3, p1, Lmobi/beyondpod/ui/views/UpdateAndDownloadQueueViewAdapter$QueueListViewItem;->ProgressText:Landroid/widget/TextView;

    invoke-virtual {p3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 208
    iget-object p3, p1, Lmobi/beyondpod/ui/views/UpdateAndDownloadQueueViewAdapter$QueueListViewItem;->Progress:Landroid/widget/ProgressBar;

    invoke-virtual {p3, v6}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 212
    :cond_6
    :goto_3
    iget-object p3, p2, Lmobi/beyondpod/ui/views/UpdateAndDownloadQueueViewAdapter$QueueListDataItem;->Feed:Lmobi/beyondpod/rsscore/Feed;

    if-eqz p3, :cond_a

    .line 214
    iget-object p3, p1, Lmobi/beyondpod/ui/views/UpdateAndDownloadQueueViewAdapter$QueueListViewItem;->PrimaryText:Landroid/widget/TextView;

    iget-object v7, p2, Lmobi/beyondpod/ui/views/UpdateAndDownloadQueueViewAdapter$QueueListDataItem;->Feed:Lmobi/beyondpod/rsscore/Feed;

    invoke-virtual {v7}, Lmobi/beyondpod/rsscore/Feed;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p3, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 215
    iget-object p3, p1, Lmobi/beyondpod/ui/views/UpdateAndDownloadQueueViewAdapter$QueueListViewItem;->SecondaryText:Landroid/widget/TextView;

    invoke-virtual {p3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 216
    iget-object p3, p1, Lmobi/beyondpod/ui/views/UpdateAndDownloadQueueViewAdapter$QueueListViewItem;->RemoveFromQueueBtn:Landroid/widget/ImageView;

    invoke-virtual {p3, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 220
    invoke-static {}, Lmobi/beyondpod/downloadengine/RssFeedUpdateManager;->isUpdating()Z

    move-result p3

    if-eqz p3, :cond_9

    invoke-static {}, Lmobi/beyondpod/downloadengine/RssFeedUpdateManager;->currentFeed()Lmobi/beyondpod/rsscore/Feed;

    move-result-object p3

    iget-object v7, p2, Lmobi/beyondpod/ui/views/UpdateAndDownloadQueueViewAdapter$QueueListDataItem;->Feed:Lmobi/beyondpod/rsscore/Feed;

    if-ne p3, v7, :cond_9

    .line 222
    iget-object p3, p1, Lmobi/beyondpod/ui/views/UpdateAndDownloadQueueViewAdapter$QueueListViewItem;->ProgressText:Landroid/widget/TextView;

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 223
    iget-object p3, p1, Lmobi/beyondpod/ui/views/UpdateAndDownloadQueueViewAdapter$QueueListViewItem;->Progress:Landroid/widget/ProgressBar;

    invoke-virtual {p3, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 225
    iget-object p3, p2, Lmobi/beyondpod/ui/views/UpdateAndDownloadQueueViewAdapter$QueueListDataItem;->Feed:Lmobi/beyondpod/rsscore/Feed;

    invoke-virtual {p3}, Lmobi/beyondpod/rsscore/Feed;->getUpdateSize()J

    move-result-wide v6

    cmp-long p3, v6, v3

    if-gtz p3, :cond_8

    .line 227
    iget-object p3, p1, Lmobi/beyondpod/ui/views/UpdateAndDownloadQueueViewAdapter$QueueListViewItem;->Progress:Landroid/widget/ProgressBar;

    invoke-virtual {p3, v5}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 229
    iget-object p3, p2, Lmobi/beyondpod/ui/views/UpdateAndDownloadQueueViewAdapter$QueueListDataItem;->Feed:Lmobi/beyondpod/rsscore/Feed;

    invoke-virtual {p3}, Lmobi/beyondpod/rsscore/Feed;->getUpdatedPortion()J

    move-result-wide v1

    cmp-long p3, v1, v3

    if-nez p3, :cond_7

    .line 230
    sget-object p2, Lmobi/beyondpod/ui/views/UpdateAndDownloadQueueViewAdapter;->CONNECTING:Ljava/lang/String;

    goto :goto_4

    .line 232
    :cond_7
    sget-object p3, Lmobi/beyondpod/ui/views/UpdateAndDownloadQueueViewAdapter;->sInfoTextFormatter:Ljava/util/Formatter;

    sget-object v1, Lmobi/beyondpod/ui/views/UpdateAndDownloadQueueViewAdapter;->UPDATING_S:Ljava/lang/String;

    new-array v2, v5, [Ljava/lang/Object;

    iget-object p2, p2, Lmobi/beyondpod/ui/views/UpdateAndDownloadQueueViewAdapter$QueueListDataItem;->Feed:Lmobi/beyondpod/rsscore/Feed;

    .line 233
    invoke-virtual {p2}, Lmobi/beyondpod/rsscore/Feed;->getUpdatedPortion()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-static {p2}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->getFileLengthAsString(Ljava/lang/Long;)Ljava/lang/String;

    move-result-object p2

    aput-object p2, v2, v0

    .line 232
    invoke-virtual {p3, v1, v2}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object p2

    .line 233
    invoke-virtual {p2}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_4

    .line 236
    :cond_8
    sget-object p3, Lmobi/beyondpod/ui/views/UpdateAndDownloadQueueViewAdapter;->sInfoTextFormatter:Ljava/util/Formatter;

    const-string v3, "%s %s%% of %s"

    new-array v2, v2, [Ljava/lang/Object;

    sget-object v4, Lmobi/beyondpod/ui/views/UpdateAndDownloadQueueViewAdapter;->UPDATING:Ljava/lang/String;

    aput-object v4, v2, v0

    iget-object v4, p2, Lmobi/beyondpod/ui/views/UpdateAndDownloadQueueViewAdapter$QueueListDataItem;->Feed:Lmobi/beyondpod/rsscore/Feed;

    invoke-virtual {v4}, Lmobi/beyondpod/rsscore/Feed;->updatePercent()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v5

    iget-object v4, p2, Lmobi/beyondpod/ui/views/UpdateAndDownloadQueueViewAdapter$QueueListDataItem;->Feed:Lmobi/beyondpod/rsscore/Feed;

    .line 237
    invoke-virtual {v4}, Lmobi/beyondpod/rsscore/Feed;->getUpdateSize()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static {v4}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->getFileLengthAsString(Ljava/lang/Long;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v1

    .line 236
    invoke-virtual {p3, v3, v2}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object p3

    .line 237
    invoke-virtual {p3}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object p3

    .line 239
    iget-object v1, p1, Lmobi/beyondpod/ui/views/UpdateAndDownloadQueueViewAdapter$QueueListViewItem;->Progress:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 240
    iget-object v0, p1, Lmobi/beyondpod/ui/views/UpdateAndDownloadQueueViewAdapter$QueueListViewItem;->Progress:Landroid/widget/ProgressBar;

    iget-object p2, p2, Lmobi/beyondpod/ui/views/UpdateAndDownloadQueueViewAdapter$QueueListDataItem;->Feed:Lmobi/beyondpod/rsscore/Feed;

    invoke-virtual {p2}, Lmobi/beyondpod/rsscore/Feed;->updatePercent()I

    move-result p2

    invoke-virtual {v0, p2}, Landroid/widget/ProgressBar;->setProgress(I)V

    move-object p2, p3

    .line 243
    :goto_4
    iget-object p1, p1, Lmobi/beyondpod/ui/views/UpdateAndDownloadQueueViewAdapter$QueueListViewItem;->ProgressText:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_5

    .line 246
    :cond_9
    iget-object p2, p1, Lmobi/beyondpod/ui/views/UpdateAndDownloadQueueViewAdapter$QueueListViewItem;->ProgressText:Landroid/widget/TextView;

    invoke-virtual {p2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 247
    iget-object p1, p1, Lmobi/beyondpod/ui/views/UpdateAndDownloadQueueViewAdapter$QueueListViewItem;->Progress:Landroid/widget/ProgressBar;

    invoke-virtual {p1, v6}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :cond_a
    :goto_5
    return-void
.end method


# virtual methods
.method public Clear()V
    .locals 1

    .line 254
    iget-object v0, p0, Lmobi/beyondpod/ui/views/UpdateAndDownloadQueueViewAdapter;->_Items:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public Refresh()V
    .locals 5

    .line 283
    iget-object v0, p0, Lmobi/beyondpod/ui/views/UpdateAndDownloadQueueViewAdapter;->_Items:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 285
    invoke-static {}, Lmobi/beyondpod/downloadengine/UpdateAndDownloadManager;->hasWorkToDo()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-static {}, Lmobi/beyondpod/downloadengine/EnclosureDownloadManager;->queueCount()I

    move-result v0

    if-lez v0, :cond_2

    .line 287
    :cond_0
    invoke-static {}, Lmobi/beyondpod/downloadengine/RssFeedUpdateManager;->updateQueue()Lmobi/beyondpod/rsscore/FeedList;

    move-result-object v0

    invoke-virtual {v0}, Lmobi/beyondpod/rsscore/FeedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmobi/beyondpod/rsscore/Feed;

    .line 288
    iget-object v3, p0, Lmobi/beyondpod/ui/views/UpdateAndDownloadQueueViewAdapter;->_Items:Ljava/util/ArrayList;

    new-instance v4, Lmobi/beyondpod/ui/views/UpdateAndDownloadQueueViewAdapter$QueueListDataItem;

    invoke-direct {v4, v2, v1}, Lmobi/beyondpod/ui/views/UpdateAndDownloadQueueViewAdapter$QueueListDataItem;-><init>(Lmobi/beyondpod/rsscore/Feed;Lmobi/beyondpod/downloadengine/EnclosureDownloadManager$DownloadableEnclosure;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 290
    :cond_1
    invoke-static {}, Lmobi/beyondpod/downloadengine/EnclosureDownloadManager;->downloadQueue()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmobi/beyondpod/downloadengine/EnclosureDownloadManager$DownloadableEnclosure;

    .line 291
    iget-object v3, p0, Lmobi/beyondpod/ui/views/UpdateAndDownloadQueueViewAdapter;->_Items:Ljava/util/ArrayList;

    new-instance v4, Lmobi/beyondpod/ui/views/UpdateAndDownloadQueueViewAdapter$QueueListDataItem;

    invoke-direct {v4, v1, v2}, Lmobi/beyondpod/ui/views/UpdateAndDownloadQueueViewAdapter$QueueListDataItem;-><init>(Lmobi/beyondpod/rsscore/Feed;Lmobi/beyondpod/downloadengine/EnclosureDownloadManager$DownloadableEnclosure;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 294
    :cond_2
    iget-object v0, p0, Lmobi/beyondpod/ui/views/UpdateAndDownloadQueueViewAdapter;->_Items:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_3

    .line 296
    iget-object v0, p0, Lmobi/beyondpod/ui/views/UpdateAndDownloadQueueViewAdapter;->_Items:Ljava/util/ArrayList;

    new-instance v2, Lmobi/beyondpod/ui/views/UpdateAndDownloadQueueViewAdapter$QueueListDataItem;

    invoke-direct {v2, v1, v1}, Lmobi/beyondpod/ui/views/UpdateAndDownloadQueueViewAdapter$QueueListDataItem;-><init>(Lmobi/beyondpod/rsscore/Feed;Lmobi/beyondpod/downloadengine/EnclosureDownloadManager$DownloadableEnclosure;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 299
    :cond_3
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/UpdateAndDownloadQueueViewAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public getCount()I
    .locals 1

    .line 67
    iget-object v0, p0, Lmobi/beyondpod/ui/views/UpdateAndDownloadQueueViewAdapter;->_Items:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getEnclosureAt(I)Lmobi/beyondpod/downloadengine/EnclosureDownloadManager$DownloadableEnclosure;
    .locals 0

    .line 259
    invoke-virtual {p0, p1}, Lmobi/beyondpod/ui/views/UpdateAndDownloadQueueViewAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 263
    check-cast p1, Lmobi/beyondpod/ui/views/UpdateAndDownloadQueueViewAdapter$QueueListDataItem;

    iget-object p1, p1, Lmobi/beyondpod/ui/views/UpdateAndDownloadQueueViewAdapter$QueueListDataItem;->Enclosure:Lmobi/beyondpod/downloadengine/EnclosureDownloadManager$DownloadableEnclosure;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getFeedAt(I)Lmobi/beyondpod/rsscore/Feed;
    .locals 0

    .line 271
    invoke-virtual {p0, p1}, Lmobi/beyondpod/ui/views/UpdateAndDownloadQueueViewAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 275
    check-cast p1, Lmobi/beyondpod/ui/views/UpdateAndDownloadQueueViewAdapter$QueueListDataItem;

    iget-object p1, p1, Lmobi/beyondpod/ui/views/UpdateAndDownloadQueueViewAdapter$QueueListDataItem;->Feed:Lmobi/beyondpod/rsscore/Feed;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .line 72
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/UpdateAndDownloadQueueViewAdapter;->getCount()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 73
    iget-object v0, p0, Lmobi/beyondpod/ui/views/UpdateAndDownloadQueueViewAdapter;->_Items:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1

    .line 96
    iget-object v0, p0, Lmobi/beyondpod/ui/views/UpdateAndDownloadQueueViewAdapter;->_Items:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lmobi/beyondpod/ui/views/UpdateAndDownloadQueueViewAdapter$QueueListDataItem;

    .line 97
    iget-object v0, p1, Lmobi/beyondpod/ui/views/UpdateAndDownloadQueueViewAdapter$QueueListDataItem;->Feed:Lmobi/beyondpod/rsscore/Feed;

    if-nez v0, :cond_0

    iget-object p1, p1, Lmobi/beyondpod/ui/views/UpdateAndDownloadQueueViewAdapter$QueueListDataItem;->Enclosure:Lmobi/beyondpod/downloadengine/EnclosureDownloadManager$DownloadableEnclosure;

    if-nez p1, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    .line 106
    iget-object v0, p0, Lmobi/beyondpod/ui/views/UpdateAndDownloadQueueViewAdapter;->_Items:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lmobi/beyondpod/ui/views/UpdateAndDownloadQueueViewAdapter$QueueListDataItem;

    .line 110
    :try_start_0
    iget-object v0, p1, Lmobi/beyondpod/ui/views/UpdateAndDownloadQueueViewAdapter$QueueListDataItem;->Enclosure:Lmobi/beyondpod/downloadengine/EnclosureDownloadManager$DownloadableEnclosure;

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-nez v0, :cond_3

    iget-object v0, p1, Lmobi/beyondpod/ui/views/UpdateAndDownloadQueueViewAdapter$QueueListDataItem;->Feed:Lmobi/beyondpod/rsscore/Feed;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    if-nez p2, :cond_1

    .line 137
    iget-object p1, p0, Lmobi/beyondpod/ui/views/UpdateAndDownloadQueueViewAdapter;->_Inflater:Landroid/view/LayoutInflater;

    const p3, 0x7f0c00d1

    invoke-virtual {p1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    move-object p2, p1

    :cond_1
    const p1, 0x7f0902a2

    .line 140
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const p3, 0x7f0901d5

    .line 142
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    .line 144
    invoke-static {}, Lmobi/beyondpod/downloadengine/UpdateAndDownloadManager;->hasWorkToDo()Z

    move-result v0

    if-eqz v0, :cond_2

    const v0, 0x7f100407

    .line 146
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 147
    invoke-virtual {p3, v1}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_3

    :cond_2
    const v0, 0x7f100408

    .line 151
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    const/16 p1, 0x8

    .line 152
    invoke-virtual {p3, p1}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_3

    :cond_3
    :goto_0
    if-nez p2, :cond_4

    .line 114
    iget-object v0, p0, Lmobi/beyondpod/ui/views/UpdateAndDownloadQueueViewAdapter;->_Inflater:Landroid/view/LayoutInflater;

    const v3, 0x7f0c00d2

    invoke-virtual {v0, v3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 115
    :try_start_1
    new-instance p2, Lmobi/beyondpod/ui/views/UpdateAndDownloadQueueViewAdapter$QueueListViewItem;

    invoke-direct {p2, v2}, Lmobi/beyondpod/ui/views/UpdateAndDownloadQueueViewAdapter$QueueListViewItem;-><init>(Lmobi/beyondpod/ui/views/UpdateAndDownloadQueueViewAdapter$1;)V

    const v2, 0x7f0901ee

    .line 116
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p2, Lmobi/beyondpod/ui/views/UpdateAndDownloadQueueViewAdapter$QueueListViewItem;->PrimaryText:Landroid/widget/TextView;

    const v2, 0x7f0901f1

    .line 117
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p2, Lmobi/beyondpod/ui/views/UpdateAndDownloadQueueViewAdapter$QueueListViewItem;->SecondaryText:Landroid/widget/TextView;

    const v2, 0x7f0901f0

    .line 118
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p2, Lmobi/beyondpod/ui/views/UpdateAndDownloadQueueViewAdapter$QueueListViewItem;->ProgressText:Landroid/widget/TextView;

    const v2, 0x7f0901ef

    .line 119
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ProgressBar;

    iput-object v2, p2, Lmobi/beyondpod/ui/views/UpdateAndDownloadQueueViewAdapter$QueueListViewItem;->Progress:Landroid/widget/ProgressBar;

    .line 121
    iget-object v2, p2, Lmobi/beyondpod/ui/views/UpdateAndDownloadQueueViewAdapter$QueueListViewItem;->Progress:Landroid/widget/ProgressBar;

    const/16 v3, 0x64

    invoke-virtual {v2, v3}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 122
    iget-object v2, p2, Lmobi/beyondpod/ui/views/UpdateAndDownloadQueueViewAdapter$QueueListViewItem;->Progress:Landroid/widget/ProgressBar;

    invoke-virtual {v2, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    const v1, 0x7f090060

    .line 124
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p2, Lmobi/beyondpod/ui/views/UpdateAndDownloadQueueViewAdapter$QueueListViewItem;->RemoveFromQueueBtn:Landroid/widget/ImageView;

    .line 125
    invoke-virtual {v0, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    move-object p2, v0

    goto :goto_2

    .line 129
    :cond_4
    :try_start_2
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmobi/beyondpod/ui/views/UpdateAndDownloadQueueViewAdapter$QueueListViewItem;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-object v4, v0

    move-object v0, p2

    move-object p2, v4

    .line 132
    :goto_1
    :try_start_3
    invoke-direct {p0, p2, p1, p3}, Lmobi/beyondpod/ui/views/UpdateAndDownloadQueueViewAdapter;->BuildViewItem(Lmobi/beyondpod/ui/views/UpdateAndDownloadQueueViewAdapter$QueueListViewItem;Lmobi/beyondpod/ui/views/UpdateAndDownloadQueueViewAdapter$QueueListDataItem;Landroid/view/ViewGroup;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    move-object p2, v0

    goto :goto_3

    :catch_1
    move-exception p1

    .line 158
    :goto_2
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_3
    return-object p2
.end method

.method public getViewTypeCount()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public isEnabled(I)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method
