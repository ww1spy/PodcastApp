.class public Lmobi/beyondpod/ui/views/base/columnlistview/SectionedListViewAdapter;
.super Landroid/widget/BaseAdapter;
.source "SectionedListViewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmobi/beyondpod/ui/views/base/columnlistview/SectionedListViewAdapter$ItemLocation;,
        Lmobi/beyondpod/ui/views/base/columnlistview/SectionedListViewAdapter$ISectionedAdapter;
    }
.end annotation


# instance fields
.field private _AdapterIDs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/UUID;",
            ">;"
        }
    .end annotation
.end field

.field _NumRows:I

.field _RowSectionMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lmobi/beyondpod/ui/views/base/columnlistview/SectionedListViewAdapter$ISectionedAdapter;",
            ">;"
        }
    .end annotation
.end field

.field private _Sections:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lmobi/beyondpod/ui/views/base/columnlistview/SectionedListViewAdapter$ISectionedAdapter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>([Ljava/util/UUID;)V
    .locals 1

    .line 39
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 17
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmobi/beyondpod/ui/views/base/columnlistview/SectionedListViewAdapter;->_Sections:Ljava/util/ArrayList;

    .line 18
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmobi/beyondpod/ui/views/base/columnlistview/SectionedListViewAdapter;->_AdapterIDs:Ljava/util/List;

    .line 152
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lmobi/beyondpod/ui/views/base/columnlistview/SectionedListViewAdapter;->_RowSectionMap:Landroid/util/SparseArray;

    .line 40
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lmobi/beyondpod/ui/views/base/columnlistview/SectionedListViewAdapter;->_AdapterIDs:Ljava/util/List;

    return-void
.end method

.method private getAdapterStartForPos(I)I
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    .line 128
    :goto_0
    iget-object v2, p0, Lmobi/beyondpod/ui/views/base/columnlistview/SectionedListViewAdapter;->_RowSectionMap:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 130
    iget-object v2, p0, Lmobi/beyondpod/ui/views/base/columnlistview/SectionedListViewAdapter;->_RowSectionMap:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    if-le v2, p1, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    move v1, v2

    goto :goto_0

    :cond_1
    :goto_1
    return v1
.end method

.method private getStartPositionForAdapter(Lmobi/beyondpod/ui/views/base/columnlistview/SectionedListViewAdapter$ISectionedAdapter;)I
    .locals 2

    const/4 v0, 0x0

    .line 143
    :goto_0
    iget-object v1, p0, Lmobi/beyondpod/ui/views/base/columnlistview/SectionedListViewAdapter;->_RowSectionMap:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 145
    iget-object v1, p0, Lmobi/beyondpod/ui/views/base/columnlistview/SectionedListViewAdapter;->_RowSectionMap:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    if-ne p1, v1, :cond_0

    .line 146
    iget-object p1, p0, Lmobi/beyondpod/ui/views/base/columnlistview/SectionedListViewAdapter;->_RowSectionMap:Landroid/util/SparseArray;

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result p1

    return p1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method private updateRowMap()V
    .locals 4

    .line 156
    iget-object v0, p0, Lmobi/beyondpod/ui/views/base/columnlistview/SectionedListViewAdapter;->_RowSectionMap:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    const/4 v0, 0x0

    .line 157
    iput v0, p0, Lmobi/beyondpod/ui/views/base/columnlistview/SectionedListViewAdapter;->_NumRows:I

    .line 160
    iget-object v1, p0, Lmobi/beyondpod/ui/views/base/columnlistview/SectionedListViewAdapter;->_Sections:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmobi/beyondpod/ui/views/base/columnlistview/SectionedListViewAdapter$ISectionedAdapter;

    .line 162
    iget-object v3, p0, Lmobi/beyondpod/ui/views/base/columnlistview/SectionedListViewAdapter;->_RowSectionMap:Landroid/util/SparseArray;

    invoke-virtual {v3, v0, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 163
    invoke-interface {v2}, Lmobi/beyondpod/ui/views/base/columnlistview/SectionedListViewAdapter$ISectionedAdapter;->getRowCount()I

    move-result v3

    add-int/2addr v0, v3

    .line 164
    iget v3, p0, Lmobi/beyondpod/ui/views/base/columnlistview/SectionedListViewAdapter;->_NumRows:I

    invoke-interface {v2}, Lmobi/beyondpod/ui/views/base/columnlistview/SectionedListViewAdapter$ISectionedAdapter;->getRowCount()I

    move-result v2

    add-int/2addr v3, v2

    iput v3, p0, Lmobi/beyondpod/ui/views/base/columnlistview/SectionedListViewAdapter;->_NumRows:I

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getAllSectionItems()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 170
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 172
    iget-object v1, p0, Lmobi/beyondpod/ui/views/base/columnlistview/SectionedListViewAdapter;->_Sections:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmobi/beyondpod/ui/views/base/columnlistview/SectionedListViewAdapter$ISectionedAdapter;

    const/4 v3, 0x0

    .line 174
    :goto_0
    invoke-interface {v2}, Lmobi/beyondpod/ui/views/base/columnlistview/SectionedListViewAdapter$ISectionedAdapter;->getItemCount()I

    move-result v4

    if-eq v3, v4, :cond_0

    .line 176
    invoke-interface {v2, v3}, Lmobi/beyondpod/ui/views/base/columnlistview/SectionedListViewAdapter$ISectionedAdapter;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 178
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public getAllSectionItemsCount()I
    .locals 1

    .line 187
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/base/columnlistview/SectionedListViewAdapter;->getAllSectionItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getCount()I
    .locals 1

    .line 94
    iget v0, p0, Lmobi/beyondpod/ui/views/base/columnlistview/SectionedListViewAdapter;->_NumRows:I

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getItemIdForPosition(I)Lmobi/beyondpod/ui/views/base/columnlistview/SectionedListViewAdapter$ItemLocation;
    .locals 4

    .line 232
    new-instance v0, Lmobi/beyondpod/ui/views/base/columnlistview/SectionedListViewAdapter$ItemLocation;

    invoke-direct {v0}, Lmobi/beyondpod/ui/views/base/columnlistview/SectionedListViewAdapter$ItemLocation;-><init>()V

    if-gez p1, :cond_0

    return-object v0

    .line 237
    :cond_0
    invoke-direct {p0, p1}, Lmobi/beyondpod/ui/views/base/columnlistview/SectionedListViewAdapter;->getAdapterStartForPos(I)I

    move-result v1

    .line 238
    iget-object v2, p0, Lmobi/beyondpod/ui/views/base/columnlistview/SectionedListViewAdapter;->_RowSectionMap:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmobi/beyondpod/ui/views/base/columnlistview/SectionedListViewAdapter$ISectionedAdapter;

    if-eqz v2, :cond_1

    .line 241
    iget-object v3, p0, Lmobi/beyondpod/ui/views/base/columnlistview/SectionedListViewAdapter;->_Sections:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    iput v3, v0, Lmobi/beyondpod/ui/views/base/columnlistview/SectionedListViewAdapter$ItemLocation;->sectionIndex:I

    sub-int/2addr p1, v1

    .line 242
    invoke-interface {v2, p1}, Lmobi/beyondpod/ui/views/base/columnlistview/SectionedListViewAdapter$ISectionedAdapter;->getFirstItemAtRow(I)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, v0, Lmobi/beyondpod/ui/views/base/columnlistview/SectionedListViewAdapter$ItemLocation;->item:Ljava/lang/Object;

    :cond_1
    return-object v0
.end method

.method public getItemViewType(I)I
    .locals 1

    .line 80
    invoke-direct {p0, p1}, Lmobi/beyondpod/ui/views/base/columnlistview/SectionedListViewAdapter;->getAdapterStartForPos(I)I

    move-result p1

    .line 81
    iget-object v0, p0, Lmobi/beyondpod/ui/views/base/columnlistview/SectionedListViewAdapter;->_RowSectionMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lmobi/beyondpod/ui/views/base/columnlistview/SectionedListViewAdapter$ISectionedAdapter;

    .line 82
    iget-object v0, p0, Lmobi/beyondpod/ui/views/base/columnlistview/SectionedListViewAdapter;->_AdapterIDs:Ljava/util/List;

    invoke-interface {p1}, Lmobi/beyondpod/ui/views/base/columnlistview/SectionedListViewAdapter$ISectionedAdapter;->getAdapterId()Ljava/util/UUID;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public getPositionForItemID(Lmobi/beyondpod/ui/views/base/columnlistview/SectionedListViewAdapter$ItemLocation;)I
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 252
    :cond_0
    iget v1, p1, Lmobi/beyondpod/ui/views/base/columnlistview/SectionedListViewAdapter$ItemLocation;->sectionIndex:I

    if-ltz v1, :cond_1

    iget v1, p1, Lmobi/beyondpod/ui/views/base/columnlistview/SectionedListViewAdapter$ItemLocation;->sectionIndex:I

    iget-object v2, p0, Lmobi/beyondpod/ui/views/base/columnlistview/SectionedListViewAdapter;->_Sections:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 254
    iget-object v1, p0, Lmobi/beyondpod/ui/views/base/columnlistview/SectionedListViewAdapter;->_Sections:Ljava/util/ArrayList;

    iget v2, p1, Lmobi/beyondpod/ui/views/base/columnlistview/SectionedListViewAdapter$ItemLocation;->sectionIndex:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmobi/beyondpod/ui/views/base/columnlistview/SectionedListViewAdapter$ISectionedAdapter;

    if-eqz v1, :cond_1

    .line 257
    invoke-direct {p0, v1}, Lmobi/beyondpod/ui/views/base/columnlistview/SectionedListViewAdapter;->getStartPositionForAdapter(Lmobi/beyondpod/ui/views/base/columnlistview/SectionedListViewAdapter$ISectionedAdapter;)I

    move-result v0

    .line 258
    iget-object p1, p1, Lmobi/beyondpod/ui/views/base/columnlistview/SectionedListViewAdapter$ItemLocation;->item:Ljava/lang/Object;

    invoke-interface {v1, p1}, Lmobi/beyondpod/ui/views/base/columnlistview/SectionedListViewAdapter$ISectionedAdapter;->getItemRow(Ljava/lang/Object;)I

    move-result p1

    add-int/2addr v0, p1

    return v0

    :cond_1
    return v0
.end method

.method public getSection(Ljava/util/UUID;)Lmobi/beyondpod/ui/views/base/columnlistview/SectionedListViewAdapter$ISectionedAdapter;
    .locals 3

    .line 56
    iget-object v0, p0, Lmobi/beyondpod/ui/views/base/columnlistview/SectionedListViewAdapter;->_Sections:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmobi/beyondpod/ui/views/base/columnlistview/SectionedListViewAdapter$ISectionedAdapter;

    .line 58
    invoke-interface {v1}, Lmobi/beyondpod/ui/views/base/columnlistview/SectionedListViewAdapter$ISectionedAdapter;->getAdapterId()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    .line 120
    invoke-direct {p0, p1}, Lmobi/beyondpod/ui/views/base/columnlistview/SectionedListViewAdapter;->getAdapterStartForPos(I)I

    move-result v0

    .line 121
    iget-object v1, p0, Lmobi/beyondpod/ui/views/base/columnlistview/SectionedListViewAdapter;->_RowSectionMap:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmobi/beyondpod/ui/views/base/columnlistview/SectionedListViewAdapter$ISectionedAdapter;

    sub-int/2addr p1, v0

    .line 122
    invoke-interface {v1, p1, p2, p3}, Lmobi/beyondpod/ui/views/base/columnlistview/SectionedListViewAdapter$ISectionedAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public getViewTypeCount()I
    .locals 1

    .line 88
    iget-object v0, p0, Lmobi/beyondpod/ui/views/base/columnlistview/SectionedListViewAdapter;->_AdapterIDs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public isEnabled(I)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public notifyDataSetChanged()V
    .locals 0

    .line 112
    invoke-direct {p0}, Lmobi/beyondpod/ui/views/base/columnlistview/SectionedListViewAdapter;->updateRowMap()V

    .line 113
    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public setSections(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lmobi/beyondpod/ui/views/base/columnlistview/SectionedListViewAdapter$ISectionedAdapter;",
            ">;)V"
        }
    .end annotation

    .line 45
    iget-object v0, p0, Lmobi/beyondpod/ui/views/base/columnlistview/SectionedListViewAdapter;->_Sections:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    if-eqz p1, :cond_0

    .line 48
    iget-object v0, p0, Lmobi/beyondpod/ui/views/base/columnlistview/SectionedListViewAdapter;->_Sections:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 50
    :cond_0
    invoke-direct {p0}, Lmobi/beyondpod/ui/views/base/columnlistview/SectionedListViewAdapter;->updateRowMap()V

    .line 51
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/base/columnlistview/SectionedListViewAdapter;->notifyDataSetChanged()V

    return-void
.end method
