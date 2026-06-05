.class public Lmobi/beyondpod/ui/views/myepisodesview/EpisodeCardAdapter;
.super Landroid/widget/BaseAdapter;
.source "EpisodeCardAdapter.java"

# interfaces
.implements Lmobi/beyondpod/ui/views/base/columnlistview/SectionedListViewAdapter$ISectionedAdapter;
.implements Lmobi/beyondpod/ui/views/base/columnlistview/MultiItemRowListAdapter$MultiItemRowChildAdapter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmobi/beyondpod/ui/views/myepisodesview/EpisodeCardAdapter$ICardAdapterOwner;
    }
.end annotation


# static fields
.field public static final AdapterID:Ljava/util/UUID;


# instance fields
.field private _Context:Landroid/content/Context;

.field private _Owner:Lmobi/beyondpod/ui/views/myepisodesview/EpisodeCardAdapter$ICardAdapterOwner;

.field private _cardFaceListener:Landroid/view/View$OnClickListener;

.field private _cardFaceLongClickListener:Landroid/view/View$OnLongClickListener;

.field private _downloadListener:Landroid/view/View$OnClickListener;

.field private _overflowListener:Landroid/view/View$OnClickListener;

.field private _playPauseListener:Landroid/view/View$OnClickListener;

.field private _playlistListener:Landroid/view/View$OnClickListener;

.field private mItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lmobi/beyondpod/rsscore/Track;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "AABBCCDD-0000-0000-0000-000000000001"

    .line 24
    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lmobi/beyondpod/ui/views/myepisodesview/EpisodeCardAdapter;->AdapterID:Ljava/util/UUID;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lmobi/beyondpod/ui/views/myepisodesview/EpisodeCardAdapter$ICardAdapterOwner;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lmobi/beyondpod/ui/views/myepisodesview/EpisodeCardAdapter$ICardAdapterOwner;",
            "Ljava/util/List<",
            "Lmobi/beyondpod/rsscore/Track;",
            ">;)V"
        }
    .end annotation

    .line 131
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 28
    new-instance v0, Lmobi/beyondpod/ui/views/myepisodesview/EpisodeCardAdapter$1;

    invoke-direct {v0, p0}, Lmobi/beyondpod/ui/views/myepisodesview/EpisodeCardAdapter$1;-><init>(Lmobi/beyondpod/ui/views/myepisodesview/EpisodeCardAdapter;)V

    iput-object v0, p0, Lmobi/beyondpod/ui/views/myepisodesview/EpisodeCardAdapter;->_overflowListener:Landroid/view/View$OnClickListener;

    .line 48
    new-instance v0, Lmobi/beyondpod/ui/views/myepisodesview/EpisodeCardAdapter$2;

    invoke-direct {v0, p0}, Lmobi/beyondpod/ui/views/myepisodesview/EpisodeCardAdapter$2;-><init>(Lmobi/beyondpod/ui/views/myepisodesview/EpisodeCardAdapter;)V

    iput-object v0, p0, Lmobi/beyondpod/ui/views/myepisodesview/EpisodeCardAdapter;->_cardFaceListener:Landroid/view/View$OnClickListener;

    .line 57
    new-instance v0, Lmobi/beyondpod/ui/views/myepisodesview/EpisodeCardAdapter$3;

    invoke-direct {v0, p0}, Lmobi/beyondpod/ui/views/myepisodesview/EpisodeCardAdapter$3;-><init>(Lmobi/beyondpod/ui/views/myepisodesview/EpisodeCardAdapter;)V

    iput-object v0, p0, Lmobi/beyondpod/ui/views/myepisodesview/EpisodeCardAdapter;->_cardFaceLongClickListener:Landroid/view/View$OnLongClickListener;

    .line 74
    new-instance v0, Lmobi/beyondpod/ui/views/myepisodesview/EpisodeCardAdapter$4;

    invoke-direct {v0, p0}, Lmobi/beyondpod/ui/views/myepisodesview/EpisodeCardAdapter$4;-><init>(Lmobi/beyondpod/ui/views/myepisodesview/EpisodeCardAdapter;)V

    iput-object v0, p0, Lmobi/beyondpod/ui/views/myepisodesview/EpisodeCardAdapter;->_playPauseListener:Landroid/view/View$OnClickListener;

    .line 92
    new-instance v0, Lmobi/beyondpod/ui/views/myepisodesview/EpisodeCardAdapter$5;

    invoke-direct {v0, p0}, Lmobi/beyondpod/ui/views/myepisodesview/EpisodeCardAdapter$5;-><init>(Lmobi/beyondpod/ui/views/myepisodesview/EpisodeCardAdapter;)V

    iput-object v0, p0, Lmobi/beyondpod/ui/views/myepisodesview/EpisodeCardAdapter;->_downloadListener:Landroid/view/View$OnClickListener;

    .line 110
    new-instance v0, Lmobi/beyondpod/ui/views/myepisodesview/EpisodeCardAdapter$6;

    invoke-direct {v0, p0}, Lmobi/beyondpod/ui/views/myepisodesview/EpisodeCardAdapter$6;-><init>(Lmobi/beyondpod/ui/views/myepisodesview/EpisodeCardAdapter;)V

    iput-object v0, p0, Lmobi/beyondpod/ui/views/myepisodesview/EpisodeCardAdapter;->_playlistListener:Landroid/view/View$OnClickListener;

    .line 128
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmobi/beyondpod/ui/views/myepisodesview/EpisodeCardAdapter;->mItems:Ljava/util/ArrayList;

    .line 132
    iput-object p1, p0, Lmobi/beyondpod/ui/views/myepisodesview/EpisodeCardAdapter;->_Context:Landroid/content/Context;

    .line 133
    iput-object p2, p0, Lmobi/beyondpod/ui/views/myepisodesview/EpisodeCardAdapter;->_Owner:Lmobi/beyondpod/ui/views/myepisodesview/EpisodeCardAdapter$ICardAdapterOwner;

    .line 134
    iget-object p1, p0, Lmobi/beyondpod/ui/views/myepisodesview/EpisodeCardAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method static synthetic access$000(Lmobi/beyondpod/ui/views/myepisodesview/EpisodeCardAdapter;Landroid/view/View;)Lmobi/beyondpod/rsscore/Track;
    .locals 0

    .line 22
    invoke-direct {p0, p1}, Lmobi/beyondpod/ui/views/myepisodesview/EpisodeCardAdapter;->findEpisodeInParent(Landroid/view/View;)Lmobi/beyondpod/rsscore/Track;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Lmobi/beyondpod/ui/views/myepisodesview/EpisodeCardAdapter;)Lmobi/beyondpod/ui/views/myepisodesview/EpisodeCardAdapter$ICardAdapterOwner;
    .locals 0

    .line 22
    iget-object p0, p0, Lmobi/beyondpod/ui/views/myepisodesview/EpisodeCardAdapter;->_Owner:Lmobi/beyondpod/ui/views/myepisodesview/EpisodeCardAdapter$ICardAdapterOwner;

    return-object p0
.end method

.method private findEpisodeInParent(Landroid/view/View;)Lmobi/beyondpod/rsscore/Track;
    .locals 2

    :cond_0
    const v0, 0x7f09006e

    .line 197
    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_2

    .line 200
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 201
    instance-of v1, p1, Landroid/view/View;

    if-eqz v1, :cond_1

    .line 202
    check-cast p1, Landroid/view/View;

    goto :goto_0

    :cond_1
    move-object p1, v0

    :goto_0
    if-nez p1, :cond_0

    return-object v0

    .line 206
    :cond_2
    check-cast v0, Lmobi/beyondpod/rsscore/Track;

    return-object v0
.end method


# virtual methods
.method public buildConvertView(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    .line 187
    iget-object p1, p0, Lmobi/beyondpod/ui/views/myepisodesview/EpisodeCardAdapter;->_Context:Landroid/content/Context;

    invoke-static {p1}, Lmobi/beyondpod/ui/views/myepisodesview/cards/EpisodeCardFactory;->buildEpisodeCard(Landroid/content/Context;)Lmobi/beyondpod/ui/views/myepisodesview/cards/EpisodeCardBase;

    move-result-object p1

    .line 188
    iget-object v0, p0, Lmobi/beyondpod/ui/views/myepisodesview/EpisodeCardAdapter;->_playPauseListener:Landroid/view/View$OnClickListener;

    iget-object v1, p0, Lmobi/beyondpod/ui/views/myepisodesview/EpisodeCardAdapter;->_downloadListener:Landroid/view/View$OnClickListener;

    iget-object v2, p0, Lmobi/beyondpod/ui/views/myepisodesview/EpisodeCardAdapter;->_playlistListener:Landroid/view/View$OnClickListener;

    iget-object v3, p0, Lmobi/beyondpod/ui/views/myepisodesview/EpisodeCardAdapter;->_overflowListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0, v1, v2, v3}, Lmobi/beyondpod/ui/views/myepisodesview/cards/EpisodeCardBase;->setButtonListeners(Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V

    .line 189
    invoke-virtual {p1}, Lmobi/beyondpod/ui/views/myepisodesview/cards/EpisodeCardBase;->getCardRoot()Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public getAdapterId()Ljava/util/UUID;
    .locals 1

    .line 221
    sget-object v0, Lmobi/beyondpod/ui/views/myepisodesview/EpisodeCardAdapter;->AdapterID:Ljava/util/UUID;

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .line 140
    iget-object v0, p0, Lmobi/beyondpod/ui/views/myepisodesview/EpisodeCardAdapter;->mItems:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lmobi/beyondpod/ui/views/myepisodesview/EpisodeCardAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_0
    return v0
.end method

.method public getFirstItemAtRow(I)Ljava/lang/Object;
    .locals 0

    .line 249
    invoke-virtual {p0, p1}, Lmobi/beyondpod/ui/views/myepisodesview/EpisodeCardAdapter;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .line 146
    iget-object v0, p0, Lmobi/beyondpod/ui/views/myepisodesview/EpisodeCardAdapter;->mItems:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    if-ltz p1, :cond_1

    iget-object v0, p0, Lmobi/beyondpod/ui/views/myepisodesview/EpisodeCardAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 149
    :cond_0
    iget-object v0, p0, Lmobi/beyondpod/ui/views/myepisodesview/EpisodeCardAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getItemAtPosition(I)Ljava/lang/Object;
    .locals 0

    .line 233
    invoke-virtual {p0, p1}, Lmobi/beyondpod/ui/views/myepisodesview/EpisodeCardAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getItemCount()I
    .locals 1

    .line 227
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/myepisodesview/EpisodeCardAdapter;->getCount()I

    move-result v0

    return v0
.end method

.method public getItemId(I)J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getItemRow(Ljava/lang/Object;)I
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 242
    :cond_0
    iget-object v1, p0, Lmobi/beyondpod/ui/views/myepisodesview/EpisodeCardAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p1

    if-gez p1, :cond_1

    move p1, v0

    :cond_1
    return p1
.end method

.method public getRowCount()I
    .locals 1

    .line 215
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/myepisodesview/EpisodeCardAdapter;->getCount()I

    move-result v0

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    .line 162
    iget-object v0, p0, Lmobi/beyondpod/ui/views/myepisodesview/EpisodeCardAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lmobi/beyondpod/rsscore/Track;

    if-nez p2, :cond_0

    .line 165
    invoke-virtual {p0, p3}, Lmobi/beyondpod/ui/views/myepisodesview/EpisodeCardAdapter;->buildConvertView(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 167
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lmobi/beyondpod/ui/views/myepisodesview/cards/EpisodeCardBase;

    const v0, 0x7f09006e

    .line 169
    invoke-virtual {p2, v0, p1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 171
    iget-object v0, p0, Lmobi/beyondpod/ui/views/myepisodesview/EpisodeCardAdapter;->_cardFaceListener:Landroid/view/View$OnClickListener;

    iget-object v1, p0, Lmobi/beyondpod/ui/views/myepisodesview/EpisodeCardAdapter;->_cardFaceLongClickListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {p3, v0, v1}, Lmobi/beyondpod/ui/views/myepisodesview/cards/EpisodeCardBase;->setFaceListeners(Landroid/view/View$OnClickListener;Landroid/view/View$OnLongClickListener;)V

    .line 173
    iget-object v0, p0, Lmobi/beyondpod/ui/views/myepisodesview/EpisodeCardAdapter;->_Owner:Lmobi/beyondpod/ui/views/myepisodesview/EpisodeCardAdapter$ICardAdapterOwner;

    check-cast v0, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView;

    invoke-virtual {v0}, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView;->getImageLoader()Lmobi/beyondpod/ui/core/volley/ImageLoader;

    move-result-object v0

    invoke-virtual {p3, v0, p1}, Lmobi/beyondpod/ui/views/myepisodesview/cards/EpisodeCardBase;->buildItem(Lmobi/beyondpod/ui/core/volley/ImageLoader;Lmobi/beyondpod/rsscore/Track;)V

    .line 175
    iget-object p3, p0, Lmobi/beyondpod/ui/views/myepisodesview/EpisodeCardAdapter;->_Owner:Lmobi/beyondpod/ui/views/myepisodesview/EpisodeCardAdapter$ICardAdapterOwner;

    invoke-interface {p3, p1}, Lmobi/beyondpod/ui/views/myepisodesview/EpisodeCardAdapter$ICardAdapterOwner;->isItemSelected(Lmobi/beyondpod/rsscore/Track;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 177
    move-object p1, p2

    check-cast p1, Landroid/widget/Checkable;

    const/4 p3, 0x1

    invoke-interface {p1, p3}, Landroid/widget/Checkable;->setChecked(Z)V

    goto :goto_0

    .line 179
    :cond_1
    move-object p1, p2

    check-cast p1, Landroid/widget/Checkable;

    const/4 p3, 0x0

    invoke-interface {p1, p3}, Landroid/widget/Checkable;->setChecked(Z)V

    :goto_0
    return-object p2
.end method
