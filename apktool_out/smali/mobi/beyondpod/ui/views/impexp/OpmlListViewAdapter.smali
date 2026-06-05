.class public Lmobi/beyondpod/ui/views/impexp/OpmlListViewAdapter;
.super Landroid/widget/BaseAdapter;
.source "OpmlListViewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmobi/beyondpod/ui/views/impexp/OpmlListViewAdapter$OpmlViewItem;
    }
.end annotation


# static fields
.field private static final BACK_TO_S:Ljava/lang/String;

.field private static final GO_BACK:Ljava/lang/String;

.field private static final IN_S:Ljava/lang/String;

.field private static final ITEMS:Ljava/lang/String;

.field static PrimaryBold:Landroid/graphics/Typeface;

.field static PrimaryNormal:Landroid/graphics/Typeface;

.field private static final SUBSCRIBED:Ljava/lang/String;


# instance fields
.field private _Feed:Lmobi/beyondpod/rsscore/Feed;

.field private _IfEmptyText:Ljava/lang/CharSequence;

.field private _Inflater:Landroid/view/LayoutInflater;

.field _ItemPreviewListener:Landroid/view/View$OnClickListener;

.field _Items:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lmobi/beyondpod/rsscore/Feed;",
            ">;"
        }
    .end annotation
.end field

.field private _Owner:Landroid/widget/ListView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const v0, 0x7f1002b8

    .line 47
    invoke-static {v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->loadResourceString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmobi/beyondpod/ui/views/impexp/OpmlListViewAdapter;->IN_S:Ljava/lang/String;

    const v0, 0x7f1002ba

    .line 48
    invoke-static {v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->loadResourceString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmobi/beyondpod/ui/views/impexp/OpmlListViewAdapter;->SUBSCRIBED:Ljava/lang/String;

    const v0, 0x7f1002b6

    .line 49
    invoke-static {v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->loadResourceString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmobi/beyondpod/ui/views/impexp/OpmlListViewAdapter;->BACK_TO_S:Ljava/lang/String;

    const v0, 0x7f1002b7

    .line 50
    invoke-static {v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->loadResourceString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmobi/beyondpod/ui/views/impexp/OpmlListViewAdapter;->GO_BACK:Ljava/lang/String;

    const v0, 0x7f1002b9

    .line 51
    invoke-static {v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->loadResourceString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmobi/beyondpod/ui/views/impexp/OpmlListViewAdapter;->ITEMS:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/widget/ListView;)V
    .locals 1

    .line 66
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmobi/beyondpod/ui/views/impexp/OpmlListViewAdapter;->_Items:Ljava/util/ArrayList;

    .line 340
    new-instance v0, Lmobi/beyondpod/ui/views/impexp/OpmlListViewAdapter$2;

    invoke-direct {v0, p0}, Lmobi/beyondpod/ui/views/impexp/OpmlListViewAdapter$2;-><init>(Lmobi/beyondpod/ui/views/impexp/OpmlListViewAdapter;)V

    iput-object v0, p0, Lmobi/beyondpod/ui/views/impexp/OpmlListViewAdapter;->_ItemPreviewListener:Landroid/view/View$OnClickListener;

    .line 67
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lmobi/beyondpod/ui/views/impexp/OpmlListViewAdapter;->_Inflater:Landroid/view/LayoutInflater;

    .line 68
    iput-object p2, p0, Lmobi/beyondpod/ui/views/impexp/OpmlListViewAdapter;->_Owner:Landroid/widget/ListView;

    return-void
.end method

.method static synthetic access$100(Lmobi/beyondpod/ui/views/impexp/OpmlListViewAdapter;)Landroid/widget/ListView;
    .locals 0

    .line 45
    iget-object p0, p0, Lmobi/beyondpod/ui/views/impexp/OpmlListViewAdapter;->_Owner:Landroid/widget/ListView;

    return-object p0
.end method

.method private buildViewItem(Lmobi/beyondpod/ui/views/impexp/OpmlListViewAdapter$OpmlViewItem;I)Lmobi/beyondpod/ui/views/impexp/OpmlListViewAdapter$OpmlViewItem;
    .locals 6

    .line 198
    iget-object v0, p0, Lmobi/beyondpod/ui/views/impexp/OpmlListViewAdapter;->_Items:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lmobi/beyondpod/rsscore/Feed;

    .line 199
    iget-object v0, p1, Lmobi/beyondpod/ui/views/impexp/OpmlListViewAdapter$OpmlViewItem;->primaryText:Landroid/widget/TextView;

    invoke-virtual {p2}, Lmobi/beyondpod/rsscore/Feed;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 201
    invoke-virtual {p2}, Lmobi/beyondpod/rsscore/Feed;->subFeeds()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 202
    iget-object v1, p1, Lmobi/beyondpod/ui/views/impexp/OpmlListViewAdapter$OpmlViewItem;->secondaryText:Landroid/widget/TextView;

    if-lez v0, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lmobi/beyondpod/ui/views/impexp/OpmlListViewAdapter;->ITEMS:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    const-string v2, ""

    :goto_0
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 204
    invoke-virtual {p0, p2}, Lmobi/beyondpod/ui/views/impexp/OpmlListViewAdapter;->isFeedImportable(Lmobi/beyondpod/rsscore/Feed;)Z

    move-result v1

    .line 206
    iget-object v2, p1, Lmobi/beyondpod/ui/views/impexp/OpmlListViewAdapter$OpmlViewItem;->itemCheck:Landroid/widget/CheckBox;

    const/16 v3, 0x8

    const/4 v4, 0x0

    if-eqz v1, :cond_1

    move v1, v4

    goto :goto_1

    :cond_1
    move v1, v3

    :goto_1
    invoke-virtual {v2, v1}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 207
    iget-object v1, p1, Lmobi/beyondpod/ui/views/impexp/OpmlListViewAdapter$OpmlViewItem;->secondaryImage:Landroid/widget/ImageView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 214
    iget-object v1, p1, Lmobi/beyondpod/ui/views/impexp/OpmlListViewAdapter$OpmlViewItem;->preview:Landroid/view/View;

    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 215
    iget-object v1, p1, Lmobi/beyondpod/ui/views/impexp/OpmlListViewAdapter$OpmlViewItem;->preview:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 216
    iget-object v1, p1, Lmobi/beyondpod/ui/views/impexp/OpmlListViewAdapter$OpmlViewItem;->preview:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 219
    invoke-static {}, Lmobi/beyondpod/rsscore/repository/FeedRepository;->getGoUpPlaceholder()Lmobi/beyondpod/rsscore/Feed;

    move-result-object v1

    invoke-virtual {p2, v1}, Lmobi/beyondpod/rsscore/Feed;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_3

    .line 221
    iget-object p2, p1, Lmobi/beyondpod/ui/views/impexp/OpmlListViewAdapter$OpmlViewItem;->secondaryImage:Landroid/widget/ImageView;

    const v0, 0x7f0800db

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 222
    iget-object p2, p1, Lmobi/beyondpod/ui/views/impexp/OpmlListViewAdapter$OpmlViewItem;->secondaryImage:Landroid/widget/ImageView;

    invoke-virtual {p2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 223
    iget-object p2, p1, Lmobi/beyondpod/ui/views/impexp/OpmlListViewAdapter$OpmlViewItem;->primaryText:Landroid/widget/TextView;

    iget-object v0, p0, Lmobi/beyondpod/ui/views/impexp/OpmlListViewAdapter;->_Feed:Lmobi/beyondpod/rsscore/Feed;

    invoke-virtual {v0}, Lmobi/beyondpod/rsscore/Feed;->parentFeed()Lmobi/beyondpod/rsscore/Feed;

    move-result-object v0

    invoke-virtual {v0}, Lmobi/beyondpod/rsscore/Feed;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lmobi/beyondpod/ui/views/impexp/OpmlListViewAdapter;->GO_BACK:Ljava/lang/String;

    goto :goto_2

    :cond_2
    sget-object v0, Lmobi/beyondpod/ui/views/impexp/OpmlListViewAdapter;->BACK_TO_S:Ljava/lang/String;

    new-array v1, v2, [Ljava/lang/Object;

    iget-object v2, p0, Lmobi/beyondpod/ui/views/impexp/OpmlListViewAdapter;->_Feed:Lmobi/beyondpod/rsscore/Feed;

    .line 224
    invoke-virtual {v2}, Lmobi/beyondpod/rsscore/Feed;->parentFeed()Lmobi/beyondpod/rsscore/Feed;

    move-result-object v2

    invoke-virtual {v2}, Lmobi/beyondpod/rsscore/Feed;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    .line 223
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 225
    iget-object p2, p1, Lmobi/beyondpod/ui/views/impexp/OpmlListViewAdapter$OpmlViewItem;->primaryText:Landroid/widget/TextView;

    sget-object v0, Lmobi/beyondpod/ui/views/impexp/OpmlListViewAdapter;->PrimaryNormal:Landroid/graphics/Typeface;

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    goto :goto_5

    :cond_3
    if-nez v0, :cond_7

    .line 231
    invoke-virtual {p2}, Lmobi/beyondpod/rsscore/Feed;->getFeedUrl()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lmobi/beyondpod/rsscore/repository/FeedRepository;->getFeedByUrl(Ljava/lang/String;)Lmobi/beyondpod/rsscore/Feed;

    move-result-object p2

    if-eqz p2, :cond_8

    .line 235
    invoke-virtual {p2}, Lmobi/beyondpod/rsscore/Feed;->getCategories()Lmobi/beyondpod/rsscore/categories/FeedCategories;

    move-result-object v0

    invoke-virtual {v0}, Lmobi/beyondpod/rsscore/categories/FeedCategories;->getPrimary()Lmobi/beyondpod/rsscore/categories/FeedCategory;

    move-result-object v0

    invoke-virtual {v0}, Lmobi/beyondpod/rsscore/categories/FeedCategory;->name()Ljava/lang/String;

    move-result-object v0

    .line 236
    invoke-virtual {p2}, Lmobi/beyondpod/rsscore/Feed;->getCategories()Lmobi/beyondpod/rsscore/categories/FeedCategories;

    move-result-object p2

    invoke-virtual {p2}, Lmobi/beyondpod/rsscore/categories/FeedCategories;->getSecondary()Lmobi/beyondpod/rsscore/categories/FeedCategory;

    move-result-object p2

    invoke-virtual {p2}, Lmobi/beyondpod/rsscore/categories/FeedCategory;->name()Ljava/lang/String;

    move-result-object p2

    .line 237
    sget-object v1, Lmobi/beyondpod/rsscore/categories/CategoryManager;->Unassigned:Lmobi/beyondpod/rsscore/categories/FeedCategory;

    invoke-virtual {v1}, Lmobi/beyondpod/rsscore/categories/FeedCategory;->name()Ljava/lang/String;

    move-result-object v1

    .line 238
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    move-object p2, v0

    goto :goto_3

    .line 240
    :cond_4
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_3

    :cond_5
    move-object p2, v1

    .line 245
    :goto_3
    iget-object v0, p1, Lmobi/beyondpod/ui/views/impexp/OpmlListViewAdapter$OpmlViewItem;->secondaryText:Landroid/widget/TextView;

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    sget-object p2, Lmobi/beyondpod/ui/views/impexp/OpmlListViewAdapter;->SUBSCRIBED:Ljava/lang/String;

    goto :goto_4

    :cond_6
    sget-object v1, Lmobi/beyondpod/ui/views/impexp/OpmlListViewAdapter;->IN_S:Ljava/lang/String;

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p2, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    :goto_4
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 246
    iget-object p2, p1, Lmobi/beyondpod/ui/views/impexp/OpmlListViewAdapter$OpmlViewItem;->preview:Landroid/view/View;

    invoke-virtual {p2, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_5

    .line 251
    :cond_7
    iget-object p2, p1, Lmobi/beyondpod/ui/views/impexp/OpmlListViewAdapter$OpmlViewItem;->secondaryImage:Landroid/widget/ImageView;

    const v0, 0x7f0800bd

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 252
    iget-object p2, p1, Lmobi/beyondpod/ui/views/impexp/OpmlListViewAdapter$OpmlViewItem;->secondaryImage:Landroid/widget/ImageView;

    invoke-virtual {p2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_8
    :goto_5
    return-object p1
.end method


# virtual methods
.method public areAllItemsSelectable()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public clear()V
    .locals 1

    const/4 v0, 0x0

    .line 261
    iput-object v0, p0, Lmobi/beyondpod/ui/views/impexp/OpmlListViewAdapter;->_Feed:Lmobi/beyondpod/rsscore/Feed;

    .line 262
    iget-object v0, p0, Lmobi/beyondpod/ui/views/impexp/OpmlListViewAdapter;->_Items:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method feeds()Lmobi/beyondpod/rsscore/FeedList;
    .locals 3

    .line 313
    new-instance v0, Lmobi/beyondpod/rsscore/FeedList;

    invoke-direct {v0}, Lmobi/beyondpod/rsscore/FeedList;-><init>()V

    .line 314
    iget-object v1, p0, Lmobi/beyondpod/ui/views/impexp/OpmlListViewAdapter;->_Items:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmobi/beyondpod/rsscore/Feed;

    if-eqz v2, :cond_0

    .line 317
    invoke-virtual {v0, v2}, Lmobi/beyondpod/rsscore/FeedList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public getCount()I
    .locals 1

    .line 90
    iget-object v0, p0, Lmobi/beyondpod/ui/views/impexp/OpmlListViewAdapter;->_Items:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method getFeedAtPosition(I)Lmobi/beyondpod/rsscore/Feed;
    .locals 0

    .line 267
    invoke-virtual {p0, p1}, Lmobi/beyondpod/ui/views/impexp/OpmlListViewAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 268
    :cond_0
    check-cast p1, Lmobi/beyondpod/rsscore/Feed;

    :goto_0
    return-object p1
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .line 95
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/impexp/OpmlListViewAdapter;->getCount()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 96
    iget-object v0, p0, Lmobi/beyondpod/ui/views/impexp/OpmlListViewAdapter;->_Items:Ljava/util/ArrayList;

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
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method getRootFeed()Lmobi/beyondpod/rsscore/Feed;
    .locals 1

    .line 108
    iget-object v0, p0, Lmobi/beyondpod/ui/views/impexp/OpmlListViewAdapter;->_Feed:Lmobi/beyondpod/rsscore/Feed;

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .line 135
    iget-object p3, p0, Lmobi/beyondpod/ui/views/impexp/OpmlListViewAdapter;->_Items:Ljava/util/ArrayList;

    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lmobi/beyondpod/rsscore/Feed;

    const/4 v0, 0x0

    if-eqz p3, :cond_2

    if-nez p2, :cond_0

    .line 142
    :try_start_0
    iget-object p3, p0, Lmobi/beyondpod/ui/views/impexp/OpmlListViewAdapter;->_Inflater:Landroid/view/LayoutInflater;

    const v1, 0x7f0c00a4

    invoke-virtual {p3, v1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 143
    :try_start_1
    new-instance p2, Lmobi/beyondpod/ui/views/impexp/OpmlListViewAdapter$OpmlViewItem;

    invoke-direct {p2, v0}, Lmobi/beyondpod/ui/views/impexp/OpmlListViewAdapter$OpmlViewItem;-><init>(Lmobi/beyondpod/ui/views/impexp/OpmlListViewAdapter$1;)V

    const v0, 0x7f0900f6

    .line 144
    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p2, Lmobi/beyondpod/ui/views/impexp/OpmlListViewAdapter$OpmlViewItem;->primaryText:Landroid/widget/TextView;

    const v0, 0x7f0900f9

    .line 145
    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p2, Lmobi/beyondpod/ui/views/impexp/OpmlListViewAdapter$OpmlViewItem;->secondaryText:Landroid/widget/TextView;

    const v0, 0x7f0900e9

    .line 146
    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lmobi/beyondpod/ui/core/InertCheckBox;

    iput-object v0, p2, Lmobi/beyondpod/ui/views/impexp/OpmlListViewAdapter$OpmlViewItem;->itemCheck:Landroid/widget/CheckBox;

    const v0, 0x7f0901d4

    .line 147
    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p2, Lmobi/beyondpod/ui/views/impexp/OpmlListViewAdapter$OpmlViewItem;->preview:Landroid/view/View;

    const v0, 0x7f0900f0

    .line 151
    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p2, Lmobi/beyondpod/ui/views/impexp/OpmlListViewAdapter$OpmlViewItem;->secondaryImage:Landroid/widget/ImageView;

    .line 153
    invoke-virtual {p3, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 155
    sget-object v0, Lmobi/beyondpod/ui/views/impexp/OpmlListViewAdapter;->PrimaryNormal:Landroid/graphics/Typeface;

    if-nez v0, :cond_1

    .line 157
    iget-object v0, p2, Lmobi/beyondpod/ui/views/impexp/OpmlListViewAdapter$OpmlViewItem;->primaryText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    sput-object v0, Lmobi/beyondpod/ui/views/impexp/OpmlListViewAdapter;->PrimaryNormal:Landroid/graphics/Typeface;

    .line 158
    sget-object v0, Lmobi/beyondpod/ui/views/impexp/OpmlListViewAdapter;->PrimaryNormal:Landroid/graphics/Typeface;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v0

    sput-object v0, Lmobi/beyondpod/ui/views/impexp/OpmlListViewAdapter;->PrimaryBold:Landroid/graphics/Typeface;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    move-object p2, p3

    goto :goto_1

    :catch_1
    move-exception p1

    goto :goto_1

    .line 164
    :cond_0
    :try_start_2
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lmobi/beyondpod/ui/views/impexp/OpmlListViewAdapter$OpmlViewItem;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-object v2, p3

    move-object p3, p2

    move-object p2, v2

    .line 167
    :cond_1
    :goto_0
    :try_start_3
    invoke-direct {p0, p2, p1}, Lmobi/beyondpod/ui/views/impexp/OpmlListViewAdapter;->buildViewItem(Lmobi/beyondpod/ui/views/impexp/OpmlListViewAdapter$OpmlViewItem;I)Lmobi/beyondpod/ui/views/impexp/OpmlListViewAdapter$OpmlViewItem;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    move-object p2, p3

    goto :goto_2

    :cond_2
    if-nez p2, :cond_3

    .line 173
    :try_start_4
    iget-object p1, p0, Lmobi/beyondpod/ui/views/impexp/OpmlListViewAdapter;->_Inflater:Landroid/view/LayoutInflater;

    const p3, 0x7f0c007b

    invoke-virtual {p1, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    move-object p2, p1

    .line 176
    :cond_3
    move-object p1, p2

    check-cast p1, Landroid/widget/TextView;

    .line 177
    iget-object p3, p0, Lmobi/beyondpod/ui/views/impexp/OpmlListViewAdapter;->_IfEmptyText:Ljava/lang/CharSequence;

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_2

    .line 182
    :goto_1
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2
    return-object p2
.end method

.method public getViewTypeCount()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isEnabled(I)Z
    .locals 1

    .line 103
    iget-object v0, p0, Lmobi/beyondpod/ui/views/impexp/OpmlListViewAdapter;->_Items:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isFeedImportable(Lmobi/beyondpod/rsscore/Feed;)Z
    .locals 1

    .line 190
    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/Feed;->getFeedUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmobi/beyondpod/rsscore/repository/FeedRepository;->getFeedByUrl(Ljava/lang/String;)Lmobi/beyondpod/rsscore/Feed;

    move-result-object v0

    if-nez v0, :cond_0

    .line 191
    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/Feed;->subFeeds()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lmobi/beyondpod/rsscore/repository/FeedRepository;->getGoUpPlaceholder()Lmobi/beyondpod/rsscore/Feed;

    move-result-object v0

    invoke-virtual {p1, v0}, Lmobi/beyondpod/rsscore/Feed;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public numCheckableFeeds()I
    .locals 3

    .line 331
    iget-object v0, p0, Lmobi/beyondpod/ui/views/impexp/OpmlListViewAdapter;->_Items:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmobi/beyondpod/rsscore/Feed;

    .line 333
    invoke-virtual {p0, v2}, Lmobi/beyondpod/ui/views/impexp/OpmlListViewAdapter;->isFeedImportable(Lmobi/beyondpod/rsscore/Feed;)Z

    move-result v2

    if-eqz v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public refresh()V
    .locals 0

    .line 324
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/impexp/OpmlListViewAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public setIfEmptyText(Ljava/lang/CharSequence;)V
    .locals 0

    .line 85
    iput-object p1, p0, Lmobi/beyondpod/ui/views/impexp/OpmlListViewAdapter;->_IfEmptyText:Ljava/lang/CharSequence;

    return-void
.end method

.method setRootFeed(Lmobi/beyondpod/rsscore/Feed;)V
    .locals 3

    .line 273
    iput-object p1, p0, Lmobi/beyondpod/ui/views/impexp/OpmlListViewAdapter;->_Feed:Lmobi/beyondpod/rsscore/Feed;

    .line 274
    iget-object v0, p0, Lmobi/beyondpod/ui/views/impexp/OpmlListViewAdapter;->_Items:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 276
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/Feed;->subFeeds()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    if-eqz p1, :cond_3

    .line 279
    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/Feed;->subFeeds()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmobi/beyondpod/rsscore/Feed;

    .line 281
    invoke-virtual {v1}, Lmobi/beyondpod/rsscore/Feed;->getFeedUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lmobi/beyondpod/rsscore/repository/FeedRepository;->getFeedByUrl(Ljava/lang/String;)Lmobi/beyondpod/rsscore/Feed;

    move-result-object v2

    if-nez v2, :cond_0

    .line 283
    iget-object v2, p0, Lmobi/beyondpod/ui/views/impexp/OpmlListViewAdapter;->_Items:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 284
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 288
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmobi/beyondpod/rsscore/Feed;

    .line 290
    iget-object v1, p0, Lmobi/beyondpod/ui/views/impexp/OpmlListViewAdapter;->_Items:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 293
    :cond_2
    iget-object p1, p0, Lmobi/beyondpod/ui/views/impexp/OpmlListViewAdapter;->_Feed:Lmobi/beyondpod/rsscore/Feed;

    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/Feed;->canNavigateUp()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 294
    iget-object p1, p0, Lmobi/beyondpod/ui/views/impexp/OpmlListViewAdapter;->_Items:Ljava/util/ArrayList;

    const/4 v0, 0x0

    invoke-static {}, Lmobi/beyondpod/rsscore/repository/FeedRepository;->getGoUpPlaceholder()Lmobi/beyondpod/rsscore/Feed;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 297
    :cond_3
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/impexp/OpmlListViewAdapter;->notifyDataSetChanged()V

    .line 299
    iget-object p1, p0, Lmobi/beyondpod/ui/views/impexp/OpmlListViewAdapter;->_Owner:Landroid/widget/ListView;

    new-instance v0, Lmobi/beyondpod/ui/views/impexp/OpmlListViewAdapter$1;

    invoke-direct {v0, p0}, Lmobi/beyondpod/ui/views/impexp/OpmlListViewAdapter$1;-><init>(Lmobi/beyondpod/ui/views/impexp/OpmlListViewAdapter;)V

    const-wide/16 v1, 0x64

    invoke-virtual {p1, v0, v1, v2}, Landroid/widget/ListView;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
