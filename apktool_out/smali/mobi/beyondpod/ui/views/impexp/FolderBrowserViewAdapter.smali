.class public Lmobi/beyondpod/ui/views/impexp/FolderBrowserViewAdapter;
.super Landroid/widget/BaseAdapter;
.source "FolderBrowserViewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmobi/beyondpod/ui/views/impexp/FolderBrowserViewAdapter$FolderListViewItem;,
        Lmobi/beyondpod/ui/views/impexp/FolderBrowserViewAdapter$FileNameComparator;
    }
.end annotation


# static fields
.field private static final BACK_TO:Ljava/lang/String;

.field private static final FILES:Ljava/lang/String;

.field private static final IN:Ljava/lang/String;

.field private static final INTERNAL_STORAGE:Ljava/lang/String;

.field private static final SD_CARD:Ljava/lang/String;


# instance fields
.field private _CanNavigateBack:Z

.field private _ClickListener:Landroid/view/View$OnClickListener;

.field private _Inflater:Landroid/view/LayoutInflater;

.field private _IsSelectingVirtualFeed:Z

.field private _Items:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field private _Root:Ljava/io/File;

.field private _RootMounts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const v0, 0x7f10023e

    .line 44
    invoke-static {v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->loadResourceString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmobi/beyondpod/ui/views/impexp/FolderBrowserViewAdapter;->FILES:Ljava/lang/String;

    const v0, 0x7f10023f

    .line 45
    invoke-static {v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->loadResourceString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmobi/beyondpod/ui/views/impexp/FolderBrowserViewAdapter;->IN:Ljava/lang/String;

    const v0, 0x7f10023d

    .line 46
    invoke-static {v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->loadResourceString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmobi/beyondpod/ui/views/impexp/FolderBrowserViewAdapter;->BACK_TO:Ljava/lang/String;

    const v0, 0x7f100240

    .line 47
    invoke-static {v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->loadResourceString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmobi/beyondpod/ui/views/impexp/FolderBrowserViewAdapter;->INTERNAL_STORAGE:Ljava/lang/String;

    const v0, 0x7f100241

    .line 48
    invoke-static {v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->loadResourceString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmobi/beyondpod/ui/views/impexp/FolderBrowserViewAdapter;->SD_CARD:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/View$OnClickListener;Z)V
    .locals 2

    .line 67
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmobi/beyondpod/ui/views/impexp/FolderBrowserViewAdapter;->_Items:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 50
    iput-boolean v0, p0, Lmobi/beyondpod/ui/views/impexp/FolderBrowserViewAdapter;->_CanNavigateBack:Z

    .line 53
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lmobi/beyondpod/ui/views/impexp/FolderBrowserViewAdapter;->_RootMounts:Ljava/util/ArrayList;

    .line 68
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lmobi/beyondpod/ui/views/impexp/FolderBrowserViewAdapter;->_Inflater:Landroid/view/LayoutInflater;

    .line 70
    iput-boolean p3, p0, Lmobi/beyondpod/ui/views/impexp/FolderBrowserViewAdapter;->_IsSelectingVirtualFeed:Z

    .line 72
    iput-object p2, p0, Lmobi/beyondpod/ui/views/impexp/FolderBrowserViewAdapter;->_ClickListener:Landroid/view/View$OnClickListener;

    .line 76
    invoke-static {}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->getPrimaryStorageMount()Ljava/io/File;

    move-result-object p1

    invoke-static {p1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->findSDRoot(Ljava/io/File;)Ljava/io/File;

    move-result-object p1

    .line 77
    invoke-static {}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->getOptionalStorageMount()Ljava/io/File;

    move-result-object p2

    invoke-static {p2}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->findSDRoot(Ljava/io/File;)Ljava/io/File;

    move-result-object p2

    if-eqz p1, :cond_0

    .line 83
    iget-object p3, p0, Lmobi/beyondpod/ui/views/impexp/FolderBrowserViewAdapter;->_RootMounts:Ljava/util/ArrayList;

    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    if-eqz p2, :cond_1

    .line 87
    iget-object p1, p0, Lmobi/beyondpod/ui/views/impexp/FolderBrowserViewAdapter;->_RootMounts:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 90
    :cond_1
    new-instance p1, Ljava/io/File;

    const-string p2, "/mnt/media"

    invoke-direct {p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 91
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 93
    new-instance p2, Lmobi/beyondpod/ui/views/impexp/FolderBrowserViewAdapter$1;

    invoke-direct {p2, p0}, Lmobi/beyondpod/ui/views/impexp/FolderBrowserViewAdapter$1;-><init>(Lmobi/beyondpod/ui/views/impexp/FolderBrowserViewAdapter;)V

    invoke-virtual {p1, p2}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object p1

    .line 103
    array-length p2, p1

    :goto_0
    if-ge v0, p2, :cond_3

    aget-object p3, p1, v0

    .line 105
    invoke-virtual {p3}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 106
    iget-object v1, p0, Lmobi/beyondpod/ui/views/impexp/FolderBrowserViewAdapter;->_RootMounts:Ljava/util/ArrayList;

    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method private buildViewItem(Lmobi/beyondpod/ui/views/impexp/FolderBrowserViewAdapter$FolderListViewItem;Ljava/io/File;Landroid/view/ViewGroup;)V
    .locals 6

    .line 209
    iget-object p3, p0, Lmobi/beyondpod/ui/views/impexp/FolderBrowserViewAdapter;->_Root:Ljava/io/File;

    invoke-direct {p0, p2, p3}, Lmobi/beyondpod/ui/views/impexp/FolderBrowserViewAdapter;->isParentOf(Ljava/io/File;Ljava/io/File;)Z

    move-result p3

    const/16 v0, 0x8

    if-eqz p3, :cond_0

    .line 211
    iget-object p3, p1, Lmobi/beyondpod/ui/views/impexp/FolderBrowserViewAdapter$FolderListViewItem;->primaryText:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lmobi/beyondpod/ui/views/impexp/FolderBrowserViewAdapter;->BACK_TO:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 212
    iget-object p2, p1, Lmobi/beyondpod/ui/views/impexp/FolderBrowserViewAdapter$FolderListViewItem;->secondaryText:Landroid/widget/TextView;

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 213
    iget-object p2, p1, Lmobi/beyondpod/ui/views/impexp/FolderBrowserViewAdapter$FolderListViewItem;->selectFolderBtn:Landroid/view/View;

    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 214
    iget-object p1, p1, Lmobi/beyondpod/ui/views/impexp/FolderBrowserViewAdapter$FolderListViewItem;->folderIcon:Landroid/widget/ImageView;

    const p2, 0x7f0800db

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_3

    .line 218
    :cond_0
    iget-object p3, p1, Lmobi/beyondpod/ui/views/impexp/FolderBrowserViewAdapter$FolderListViewItem;->primaryText:Landroid/widget/TextView;

    invoke-direct {p0, p2}, Lmobi/beyondpod/ui/views/impexp/FolderBrowserViewAdapter;->getRootUserReadableName(Ljava/io/File;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 p3, 0x0

    .line 222
    iget-boolean v1, p0, Lmobi/beyondpod/ui/views/impexp/FolderBrowserViewAdapter;->_IsSelectingVirtualFeed:Z

    if-eqz v1, :cond_1

    .line 223
    invoke-virtual {p2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lmobi/beyondpod/rsscore/repository/FeedRepository;->getVirtualFeedByDownloadPath(Ljava/lang/String;)Lmobi/beyondpod/rsscore/Feed;

    move-result-object p3

    :cond_1
    const/4 v1, 0x0

    if-eqz p3, :cond_2

    .line 228
    iget-object v2, p1, Lmobi/beyondpod/ui/views/impexp/FolderBrowserViewAdapter$FolderListViewItem;->secondaryText:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lmobi/beyondpod/ui/views/impexp/FolderBrowserViewAdapter;->IN:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lmobi/beyondpod/rsscore/Feed;->getCategories()Lmobi/beyondpod/rsscore/categories/FeedCategories;

    move-result-object v4

    invoke-virtual {v4}, Lmobi/beyondpod/rsscore/categories/FeedCategories;->getPrimary()Lmobi/beyondpod/rsscore/categories/FeedCategory;

    move-result-object v4

    invoke-virtual {v4}, Lmobi/beyondpod/rsscore/categories/FeedCategory;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move v2, v1

    goto :goto_0

    .line 232
    :cond_2
    invoke-direct {p0, p2}, Lmobi/beyondpod/ui/views/impexp/FolderBrowserViewAdapter;->getNumberOfFiles(Ljava/io/File;)I

    move-result v2

    .line 233
    iget-object v3, p1, Lmobi/beyondpod/ui/views/impexp/FolderBrowserViewAdapter$FolderListViewItem;->secondaryText:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Lmobi/beyondpod/ui/views/impexp/FolderBrowserViewAdapter;->FILES:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 236
    :goto_0
    iget-object v3, p1, Lmobi/beyondpod/ui/views/impexp/FolderBrowserViewAdapter$FolderListViewItem;->secondaryText:Landroid/widget/TextView;

    if-nez p3, :cond_4

    if-lez v2, :cond_3

    goto :goto_1

    :cond_3
    move v2, v0

    goto :goto_2

    :cond_4
    :goto_1
    move v2, v1

    :goto_2
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 237
    iget-object v2, p1, Lmobi/beyondpod/ui/views/impexp/FolderBrowserViewAdapter$FolderListViewItem;->selectFolderBtn:Landroid/view/View;

    if-nez p3, :cond_5

    move v0, v1

    :cond_5
    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 238
    iget-object p3, p1, Lmobi/beyondpod/ui/views/impexp/FolderBrowserViewAdapter$FolderListViewItem;->folderIcon:Landroid/widget/ImageView;

    const v0, 0x7f0800bd

    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 239
    iget-object p3, p1, Lmobi/beyondpod/ui/views/impexp/FolderBrowserViewAdapter$FolderListViewItem;->selectFolderBtn:Landroid/view/View;

    iget-object v0, p0, Lmobi/beyondpod/ui/views/impexp/FolderBrowserViewAdapter;->_ClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p3, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 240
    iget-object p1, p1, Lmobi/beyondpod/ui/views/impexp/FolderBrowserViewAdapter$FolderListViewItem;->selectFolderBtn:Landroid/view/View;

    invoke-virtual {p1, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :goto_3
    return-void
.end method

.method private getNumberOfFiles(Ljava/io/File;)I
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 323
    :cond_0
    new-instance v1, Lmobi/beyondpod/ui/views/impexp/FolderBrowserViewAdapter$3;

    invoke-direct {v1, p0}, Lmobi/beyondpod/ui/views/impexp/FolderBrowserViewAdapter$3;-><init>(Lmobi/beyondpod/ui/views/impexp/FolderBrowserViewAdapter;)V

    invoke-virtual {p1, v1}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object p1

    if-nez p1, :cond_1

    return v0

    .line 334
    :cond_1
    array-length p1, p1

    return p1
.end method

.method private getParentDirectory()Ljava/io/File;
    .locals 4

    .line 305
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lmobi/beyondpod/ui/views/impexp/FolderBrowserViewAdapter;->_Root:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lmobi/beyondpod/ui/views/impexp/FolderBrowserViewAdapter;->_Root:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private getRootUserReadableName(Ljava/io/File;)Ljava/lang/String;
    .locals 4

    .line 196
    iget-object v0, p0, Lmobi/beyondpod/ui/views/impexp/FolderBrowserViewAdapter;->_RootMounts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    .line 197
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lmobi/beyondpod/ui/views/impexp/FolderBrowserViewAdapter;->_RootMounts:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 198
    sget-object p1, Lmobi/beyondpod/ui/views/impexp/FolderBrowserViewAdapter;->INTERNAL_STORAGE:Ljava/lang/String;

    return-object p1

    .line 200
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lmobi/beyondpod/ui/views/impexp/FolderBrowserViewAdapter;->_RootMounts:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 201
    sget-object p1, Lmobi/beyondpod/ui/views/impexp/FolderBrowserViewAdapter;->SD_CARD:Ljava/lang/String;

    return-object p1

    .line 204
    :cond_1
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private isParentOf(Ljava/io/File;Ljava/io/File;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    if-nez p2, :cond_0

    goto :goto_0

    .line 314
    :cond_0
    invoke-virtual {p2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-le v1, v2, :cond_1

    invoke-virtual {p2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0

    :cond_2
    :goto_0
    return v0
.end method


# virtual methods
.method public canGoUp()Z
    .locals 1

    .line 376
    iget-boolean v0, p0, Lmobi/beyondpod/ui/views/impexp/FolderBrowserViewAdapter;->_CanNavigateBack:Z

    return v0
.end method

.method public clear()V
    .locals 1

    .line 246
    iget-object v0, p0, Lmobi/beyondpod/ui/views/impexp/FolderBrowserViewAdapter;->_Items:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public getCount()I
    .locals 1

    .line 114
    iget-object v0, p0, Lmobi/beyondpod/ui/views/impexp/FolderBrowserViewAdapter;->_Items:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getFileAt(I)Ljava/io/File;
    .locals 0

    .line 251
    invoke-virtual {p0, p1}, Lmobi/beyondpod/ui/views/impexp/FolderBrowserViewAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 254
    check-cast p1, Ljava/io/File;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .line 119
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/impexp/FolderBrowserViewAdapter;->getCount()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 120
    iget-object v0, p0, Lmobi/beyondpod/ui/views/impexp/FolderBrowserViewAdapter;->_Items:Ljava/util/ArrayList;

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

    .line 144
    iget-object v0, p0, Lmobi/beyondpod/ui/views/impexp/FolderBrowserViewAdapter;->_Items:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/io/File;

    if-nez p1, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .line 155
    iget-object v0, p0, Lmobi/beyondpod/ui/views/impexp/FolderBrowserViewAdapter;->_Items:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/io/File;

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    .line 163
    :try_start_0
    iget-object v1, p0, Lmobi/beyondpod/ui/views/impexp/FolderBrowserViewAdapter;->_Inflater:Landroid/view/LayoutInflater;

    const v2, 0x7f0c0070

    invoke-virtual {v1, v2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 164
    :try_start_1
    new-instance p2, Lmobi/beyondpod/ui/views/impexp/FolderBrowserViewAdapter$FolderListViewItem;

    invoke-direct {p2, v0}, Lmobi/beyondpod/ui/views/impexp/FolderBrowserViewAdapter$FolderListViewItem;-><init>(Lmobi/beyondpod/ui/views/impexp/FolderBrowserViewAdapter$1;)V

    const v0, 0x7f09010b

    .line 165
    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p2, Lmobi/beyondpod/ui/views/impexp/FolderBrowserViewAdapter$FolderListViewItem;->primaryText:Landroid/widget/TextView;

    const v0, 0x7f09010c

    .line 166
    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p2, Lmobi/beyondpod/ui/views/impexp/FolderBrowserViewAdapter$FolderListViewItem;->secondaryText:Landroid/widget/TextView;

    const v0, 0x7f090061

    .line 167
    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p2, Lmobi/beyondpod/ui/views/impexp/FolderBrowserViewAdapter$FolderListViewItem;->selectFolderBtn:Landroid/view/View;

    const v0, 0x7f09010a

    .line 168
    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p2, Lmobi/beyondpod/ui/views/impexp/FolderBrowserViewAdapter$FolderListViewItem;->folderIcon:Landroid/widget/ImageView;

    .line 169
    invoke-virtual {v1, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :catch_1
    move-exception p1

    move-object v1, p2

    goto :goto_1

    .line 173
    :cond_0
    :try_start_2
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmobi/beyondpod/ui/views/impexp/FolderBrowserViewAdapter$FolderListViewItem;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-object v1, p2

    move-object p2, v0

    .line 176
    :goto_0
    :try_start_3
    invoke-direct {p0, p2, p1, p3}, Lmobi/beyondpod/ui/views/impexp/FolderBrowserViewAdapter;->buildViewItem(Lmobi/beyondpod/ui/views/impexp/FolderBrowserViewAdapter$FolderListViewItem;Ljava/io/File;Landroid/view/ViewGroup;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_2

    :cond_1
    if-nez p2, :cond_2

    .line 182
    :try_start_4
    iget-object p1, p0, Lmobi/beyondpod/ui/views/impexp/FolderBrowserViewAdapter;->_Inflater:Landroid/view/LayoutInflater;

    const p3, 0x7f0c00d1

    invoke-virtual {p1, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    move-object v1, p1

    goto :goto_2

    .line 189
    :goto_1
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    :cond_2
    move-object v1, p2

    :goto_2
    return-object v1
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

.method public refresh()V
    .locals 4

    const/4 v0, 0x0

    .line 262
    iput-boolean v0, p0, Lmobi/beyondpod/ui/views/impexp/FolderBrowserViewAdapter;->_CanNavigateBack:Z

    .line 263
    iget-object v1, p0, Lmobi/beyondpod/ui/views/impexp/FolderBrowserViewAdapter;->_Items:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 265
    iget-object v1, p0, Lmobi/beyondpod/ui/views/impexp/FolderBrowserViewAdapter;->_Root:Ljava/io/File;

    const/4 v2, 0x1

    if-nez v1, :cond_1

    .line 266
    iget-object v1, p0, Lmobi/beyondpod/ui/views/impexp/FolderBrowserViewAdapter;->_RootMounts:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-le v1, v2, :cond_0

    .line 267
    iget-object v0, p0, Lmobi/beyondpod/ui/views/impexp/FolderBrowserViewAdapter;->_Items:Ljava/util/ArrayList;

    iget-object v1, p0, Lmobi/beyondpod/ui/views/impexp/FolderBrowserViewAdapter;->_RootMounts:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 268
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/impexp/FolderBrowserViewAdapter;->notifyDataSetChanged()V

    return-void

    .line 271
    :cond_0
    iget-object v1, p0, Lmobi/beyondpod/ui/views/impexp/FolderBrowserViewAdapter;->_RootMounts:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    iput-object v1, p0, Lmobi/beyondpod/ui/views/impexp/FolderBrowserViewAdapter;->_Root:Ljava/io/File;

    goto :goto_0

    .line 274
    :cond_1
    iput-boolean v2, p0, Lmobi/beyondpod/ui/views/impexp/FolderBrowserViewAdapter;->_CanNavigateBack:Z

    .line 279
    :goto_0
    :try_start_0
    iget-object v1, p0, Lmobi/beyondpod/ui/views/impexp/FolderBrowserViewAdapter;->_Items:Ljava/util/ArrayList;

    iget-object v2, p0, Lmobi/beyondpod/ui/views/impexp/FolderBrowserViewAdapter;->_Root:Ljava/io/File;

    new-instance v3, Lmobi/beyondpod/ui/views/impexp/FolderBrowserViewAdapter$2;

    invoke-direct {v3, p0}, Lmobi/beyondpod/ui/views/impexp/FolderBrowserViewAdapter$2;-><init>(Lmobi/beyondpod/ui/views/impexp/FolderBrowserViewAdapter;)V

    invoke-virtual {v2, v3}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 294
    :catch_0
    iget-object v1, p0, Lmobi/beyondpod/ui/views/impexp/FolderBrowserViewAdapter;->_Items:Ljava/util/ArrayList;

    new-instance v2, Lmobi/beyondpod/ui/views/impexp/FolderBrowserViewAdapter$FileNameComparator;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lmobi/beyondpod/ui/views/impexp/FolderBrowserViewAdapter$FileNameComparator;-><init>(Lmobi/beyondpod/ui/views/impexp/FolderBrowserViewAdapter$1;)V

    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 296
    iget-boolean v1, p0, Lmobi/beyondpod/ui/views/impexp/FolderBrowserViewAdapter;->_CanNavigateBack:Z

    if-eqz v1, :cond_2

    .line 297
    iget-object v1, p0, Lmobi/beyondpod/ui/views/impexp/FolderBrowserViewAdapter;->_Items:Ljava/util/ArrayList;

    invoke-direct {p0}, Lmobi/beyondpod/ui/views/impexp/FolderBrowserViewAdapter;->getParentDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 300
    :cond_2
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/impexp/FolderBrowserViewAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public setRoot(Ljava/io/File;)V
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    .line 349
    iget-object v1, p0, Lmobi/beyondpod/ui/views/impexp/FolderBrowserViewAdapter;->_RootMounts:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lmobi/beyondpod/ui/views/impexp/FolderBrowserViewAdapter;->_RootMounts:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 355
    :cond_0
    iget-object v1, p0, Lmobi/beyondpod/ui/views/impexp/FolderBrowserViewAdapter;->_RootMounts:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/File;

    .line 357
    invoke-virtual {p1, v2}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    .line 361
    :cond_2
    invoke-direct {p0, p1, v2}, Lmobi/beyondpod/ui/views/impexp/FolderBrowserViewAdapter;->isParentOf(Ljava/io/File;Ljava/io/File;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_3
    :goto_0
    move-object v0, p1

    .line 370
    :goto_1
    iput-object v0, p0, Lmobi/beyondpod/ui/views/impexp/FolderBrowserViewAdapter;->_Root:Ljava/io/File;

    .line 371
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/impexp/FolderBrowserViewAdapter;->refresh()V

    return-void
.end method
