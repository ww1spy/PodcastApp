.class public Lmobi/beyondpod/ui/views/player/SmartPlaylistViewAdapter;
.super Landroid/widget/BaseAdapter;
.source "SmartPlaylistViewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmobi/beyondpod/ui/views/player/SmartPlaylistViewAdapter$PodcastsViewItem;
    }
.end annotation


# instance fields
.field private _Inflater:Landroid/view/LayoutInflater;

.field private _Items:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lmobi/beyondpod/services/player/smartplay/SmartPlaylist;",
            ">;"
        }
    .end annotation
.end field

.field private _Owner:Lmobi/beyondpod/ui/views/player/SmartPlayListView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lmobi/beyondpod/ui/views/player/SmartPlayListView;)V
    .locals 1

    .line 44
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmobi/beyondpod/ui/views/player/SmartPlaylistViewAdapter;->_Items:Ljava/util/ArrayList;

    .line 45
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lmobi/beyondpod/ui/views/player/SmartPlaylistViewAdapter;->_Inflater:Landroid/view/LayoutInflater;

    .line 46
    iput-object p2, p0, Lmobi/beyondpod/ui/views/player/SmartPlaylistViewAdapter;->_Owner:Lmobi/beyondpod/ui/views/player/SmartPlayListView;

    return-void
.end method

.method static synthetic access$100(Lmobi/beyondpod/ui/views/player/SmartPlaylistViewAdapter;)Lmobi/beyondpod/ui/views/player/SmartPlayListView;
    .locals 0

    .line 37
    iget-object p0, p0, Lmobi/beyondpod/ui/views/player/SmartPlaylistViewAdapter;->_Owner:Lmobi/beyondpod/ui/views/player/SmartPlayListView;

    return-object p0
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 148
    iget-object v0, p0, Lmobi/beyondpod/ui/views/player/SmartPlaylistViewAdapter;->_Items:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public getCount()I
    .locals 1

    .line 51
    iget-object v0, p0, Lmobi/beyondpod/ui/views/player/SmartPlaylistViewAdapter;->_Items:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 0

    .line 56
    invoke-virtual {p0, p1}, Lmobi/beyondpod/ui/views/player/SmartPlaylistViewAdapter;->getItemAt(I)Lmobi/beyondpod/services/player/smartplay/SmartPlaylist;

    move-result-object p1

    return-object p1
.end method

.method public getItemAt(I)Lmobi/beyondpod/services/player/smartplay/SmartPlaylist;
    .locals 1

    if-ltz p1, :cond_0

    .line 137
    iget-object v0, p0, Lmobi/beyondpod/ui/views/player/SmartPlaylistViewAdapter;->_Items:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 138
    iget-object v0, p0, Lmobi/beyondpod/ui/views/player/SmartPlaylistViewAdapter;->_Items:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lmobi/beyondpod/services/player/smartplay/SmartPlaylist;

    return-object p1

    .line 140
    :cond_0
    iget-object p1, p0, Lmobi/beyondpod/ui/views/player/SmartPlaylistViewAdapter;->_Items:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_1

    .line 141
    iget-object p1, p0, Lmobi/beyondpod/ui/views/player/SmartPlaylistViewAdapter;->_Items:Ljava/util/ArrayList;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lmobi/beyondpod/services/player/smartplay/SmartPlaylist;

    return-object p1

    :cond_1
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

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    .line 82
    invoke-virtual {p0, p1}, Lmobi/beyondpod/ui/views/player/SmartPlaylistViewAdapter;->getItemAt(I)Lmobi/beyondpod/services/player/smartplay/SmartPlaylist;

    move-result-object p1

    if-nez p1, :cond_0

    return-object p2

    :cond_0
    const/4 p3, 0x0

    if-eqz p1, :cond_3

    if-nez p2, :cond_1

    .line 91
    :try_start_0
    iget-object v0, p0, Lmobi/beyondpod/ui/views/player/SmartPlaylistViewAdapter;->_Inflater:Landroid/view/LayoutInflater;

    const v1, 0x7f0c00ca

    invoke-virtual {v0, v1, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 92
    :try_start_1
    new-instance p2, Lmobi/beyondpod/ui/views/player/SmartPlaylistViewAdapter$PodcastsViewItem;

    invoke-direct {p2, p3}, Lmobi/beyondpod/ui/views/player/SmartPlaylistViewAdapter$PodcastsViewItem;-><init>(Lmobi/beyondpod/ui/views/player/SmartPlaylistViewAdapter$1;)V

    const p3, 0x7f0901cb

    .line 93
    invoke-virtual {v0, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    iput-object p3, p2, Lmobi/beyondpod/ui/views/player/SmartPlaylistViewAdapter$PodcastsViewItem;->primaryText:Landroid/widget/TextView;

    const p3, 0x7f0901c9

    .line 94
    invoke-virtual {v0, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/ImageView;

    iput-object p3, p2, Lmobi/beyondpod/ui/views/player/SmartPlaylistViewAdapter$PodcastsViewItem;->overflow:Landroid/widget/ImageView;

    .line 95
    iget-object p3, p2, Lmobi/beyondpod/ui/views/player/SmartPlaylistViewAdapter$PodcastsViewItem;->overflow:Landroid/widget/ImageView;

    new-instance v1, Lmobi/beyondpod/ui/views/player/SmartPlaylistViewAdapter$1;

    invoke-direct {v1, p0}, Lmobi/beyondpod/ui/views/player/SmartPlaylistViewAdapter$1;-><init>(Lmobi/beyondpod/ui/views/player/SmartPlaylistViewAdapter;)V

    invoke-virtual {p3, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 107
    invoke-virtual {v0, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_2

    .line 110
    :cond_1
    :try_start_2
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lmobi/beyondpod/ui/views/player/SmartPlaylistViewAdapter$PodcastsViewItem;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-object v0, p2

    move-object p2, p3

    .line 113
    :goto_0
    :try_start_3
    invoke-static {}, Lmobi/beyondpod/services/player/smartplay/SmartPlaylistManager;->primarySmartPlay()Lmobi/beyondpod/services/player/smartplay/SmartPlaylist;

    move-result-object p3

    .line 114
    iget-object v1, p2, Lmobi/beyondpod/ui/views/player/SmartPlaylistViewAdapter$PodcastsViewItem;->primaryText:Landroid/widget/TextView;

    invoke-virtual {p1}, Lmobi/beyondpod/services/player/smartplay/SmartPlaylist;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 115
    iget-object v1, p2, Lmobi/beyondpod/ui/views/player/SmartPlaylistViewAdapter$PodcastsViewItem;->overflow:Landroid/widget/ImageView;

    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 116
    iget-object p2, p2, Lmobi/beyondpod/ui/views/player/SmartPlaylistViewAdapter$PodcastsViewItem;->primaryText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/player/SmartPlaylistViewAdapter;->getCount()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-le v1, v2, :cond_2

    if-ne p3, p1, :cond_2

    const p1, 0x7f08013e

    goto :goto_1

    :cond_2
    move p1, v3

    :goto_1
    invoke-virtual {p2, v3, v3, p1, v3}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_3

    .line 124
    :cond_3
    :try_start_4
    iget-object p1, p0, Lmobi/beyondpod/ui/views/player/SmartPlaylistViewAdapter;->_Inflater:Landroid/view/LayoutInflater;

    const v0, 0x7f0c00ae

    invoke-virtual {p1, v0, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_3

    :catch_1
    move-exception p1

    move-object v0, p2

    .line 129
    :goto_2
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_3
    return-object v0
.end method

.method public getViewTypeCount()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isEnabled(I)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public refresh()V
    .locals 0

    .line 153
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/player/SmartPlaylistViewAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public reloadPlaylists()V
    .locals 2

    .line 158
    iget-object v0, p0, Lmobi/beyondpod/ui/views/player/SmartPlaylistViewAdapter;->_Items:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 159
    iget-object v0, p0, Lmobi/beyondpod/ui/views/player/SmartPlaylistViewAdapter;->_Items:Ljava/util/ArrayList;

    invoke-static {}, Lmobi/beyondpod/services/player/smartplay/SmartPlaylistManager;->getPlaylistsForDiaplay()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 160
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/player/SmartPlaylistViewAdapter;->notifyDataSetChanged()V

    return-void
.end method
