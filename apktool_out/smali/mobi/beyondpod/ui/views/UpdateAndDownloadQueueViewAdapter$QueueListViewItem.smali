.class Lmobi/beyondpod/ui/views/UpdateAndDownloadQueueViewAdapter$QueueListViewItem;
.super Ljava/lang/Object;
.source "UpdateAndDownloadQueueViewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobi/beyondpod/ui/views/UpdateAndDownloadQueueViewAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "QueueListViewItem"
.end annotation


# instance fields
.field PrimaryText:Landroid/widget/TextView;

.field Progress:Landroid/widget/ProgressBar;

.field ProgressText:Landroid/widget/TextView;

.field RemoveFromQueueBtn:Landroid/widget/ImageView;

.field SecondaryText:Landroid/widget/TextView;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 314
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lmobi/beyondpod/ui/views/UpdateAndDownloadQueueViewAdapter$1;)V
    .locals 0

    .line 314
    invoke-direct {p0}, Lmobi/beyondpod/ui/views/UpdateAndDownloadQueueViewAdapter$QueueListViewItem;-><init>()V

    return-void
.end method
