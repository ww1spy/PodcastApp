.class public Lmobi/beyondpod/ui/views/myepisodesview/SectionMyEpisodesHeaderAdapter;
.super Ljava/lang/Object;
.source "SectionMyEpisodesHeaderAdapter.java"

# interfaces
.implements Lmobi/beyondpod/ui/views/base/columnlistview/SectionedListViewAdapter$ISectionedAdapter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmobi/beyondpod/ui/views/myepisodesview/SectionMyEpisodesHeaderAdapter$Holder;,
        Lmobi/beyondpod/ui/views/myepisodesview/SectionMyEpisodesHeaderAdapter$IMyEpisodesHeaderAdapterOwner;
    }
.end annotation


# static fields
.field public static final AdapterID:Ljava/util/UUID;


# instance fields
.field private _Context:Landroid/content/Context;

.field private _Owner:Lmobi/beyondpod/ui/views/myepisodesview/SectionMyEpisodesHeaderAdapter$IMyEpisodesHeaderAdapterOwner;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "AABBCCDD-0000-0000-0000-000000000006"

    .line 16
    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lmobi/beyondpod/ui/views/myepisodesview/SectionMyEpisodesHeaderAdapter;->AdapterID:Ljava/util/UUID;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lmobi/beyondpod/ui/views/myepisodesview/SectionMyEpisodesHeaderAdapter$IMyEpisodesHeaderAdapterOwner;)V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p2, p0, Lmobi/beyondpod/ui/views/myepisodesview/SectionMyEpisodesHeaderAdapter;->_Owner:Lmobi/beyondpod/ui/views/myepisodesview/SectionMyEpisodesHeaderAdapter$IMyEpisodesHeaderAdapterOwner;

    .line 35
    iput-object p1, p0, Lmobi/beyondpod/ui/views/myepisodesview/SectionMyEpisodesHeaderAdapter;->_Context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public getAdapterId()Ljava/util/UUID;
    .locals 1

    .line 92
    sget-object v0, Lmobi/beyondpod/ui/views/myepisodesview/SectionMyEpisodesHeaderAdapter;->AdapterID:Ljava/util/UUID;

    return-object v0
.end method

.method public getFirstItemAtRow(I)Ljava/lang/Object;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getItemAtPosition(I)Ljava/lang/Object;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getItemCount()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getItemRow(Ljava/lang/Object;)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public getRowCount()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7

    const/4 p1, 0x0

    if-eqz p2, :cond_0

    .line 44
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    instance-of p3, p3, Lmobi/beyondpod/ui/views/myepisodesview/SectionMyEpisodesHeaderAdapter$Holder;

    if-nez p3, :cond_1

    .line 46
    :cond_0
    new-instance p2, Lmobi/beyondpod/ui/views/myepisodesview/SectionMyEpisodesHeaderAdapter$Holder;

    invoke-direct {p2, p0}, Lmobi/beyondpod/ui/views/myepisodesview/SectionMyEpisodesHeaderAdapter$Holder;-><init>(Lmobi/beyondpod/ui/views/myepisodesview/SectionMyEpisodesHeaderAdapter;)V

    .line 47
    iget-object p3, p0, Lmobi/beyondpod/ui/views/myepisodesview/SectionMyEpisodesHeaderAdapter;->_Context:Landroid/content/Context;

    const v0, 0x7f0c00c1

    invoke-static {p3, v0, p1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p3

    const v0, 0x7f09021a

    .line 48
    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p2, Lmobi/beyondpod/ui/views/myepisodesview/SectionMyEpisodesHeaderAdapter$Holder;->Title:Landroid/widget/TextView;

    const v0, 0x7f090218

    .line 49
    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p2, Lmobi/beyondpod/ui/views/myepisodesview/SectionMyEpisodesHeaderAdapter$Holder;->SubTitle:Landroid/widget/TextView;

    const v0, 0x7f090219

    .line 50
    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p2, Lmobi/beyondpod/ui/views/myepisodesview/SectionMyEpisodesHeaderAdapter$Holder;->SubTitle1:Landroid/widget/TextView;

    const v0, 0x7f090215

    .line 51
    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p2, Lmobi/beyondpod/ui/views/myepisodesview/SectionMyEpisodesHeaderAdapter$Holder;->SectionDivider:Landroid/view/View;

    .line 52
    invoke-virtual {p3, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object p2, p3

    .line 59
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lmobi/beyondpod/ui/views/myepisodesview/SectionMyEpisodesHeaderAdapter$Holder;

    .line 61
    iget-object v0, p3, Lmobi/beyondpod/ui/views/myepisodesview/SectionMyEpisodesHeaderAdapter$Holder;->Title:Landroid/widget/TextView;

    iget-object v1, p0, Lmobi/beyondpod/ui/views/myepisodesview/SectionMyEpisodesHeaderAdapter;->_Owner:Lmobi/beyondpod/ui/views/myepisodesview/SectionMyEpisodesHeaderAdapter$IMyEpisodesHeaderAdapterOwner;

    invoke-interface {v1}, Lmobi/beyondpod/ui/views/myepisodesview/SectionMyEpisodesHeaderAdapter$IMyEpisodesHeaderAdapterOwner;->getHeaderTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 63
    iget-object v0, p0, Lmobi/beyondpod/ui/views/myepisodesview/SectionMyEpisodesHeaderAdapter;->_Owner:Lmobi/beyondpod/ui/views/myepisodesview/SectionMyEpisodesHeaderAdapter$IMyEpisodesHeaderAdapterOwner;

    invoke-interface {v0}, Lmobi/beyondpod/ui/views/myepisodesview/SectionMyEpisodesHeaderAdapter$IMyEpisodesHeaderAdapterOwner;->getNumEpisodes()I

    move-result v0

    .line 64
    iget-object v1, p3, Lmobi/beyondpod/ui/views/myepisodesview/SectionMyEpisodesHeaderAdapter$Holder;->SubTitle:Landroid/widget/TextView;

    if-lez v0, :cond_2

    iget-object v2, p0, Lmobi/beyondpod/ui/views/myepisodesview/SectionMyEpisodesHeaderAdapter;->_Context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0e0001

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    .line 65
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    .line 64
    invoke-virtual {v2, v3, v0, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    move-object v0, p1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 67
    iget-object v0, p0, Lmobi/beyondpod/ui/views/myepisodesview/SectionMyEpisodesHeaderAdapter;->_Owner:Lmobi/beyondpod/ui/views/myepisodesview/SectionMyEpisodesHeaderAdapter$IMyEpisodesHeaderAdapterOwner;

    invoke-interface {v0}, Lmobi/beyondpod/ui/views/myepisodesview/SectionMyEpisodesHeaderAdapter$IMyEpisodesHeaderAdapterOwner;->getTotalSize()Lmobi/beyondpod/rsscore/helpers/CoreHelper$TrackSizeInfo;

    move-result-object v0

    iget-wide v0, v0, Lmobi/beyondpod/rsscore/helpers/CoreHelper$TrackSizeInfo;->sizeOnDisk:J

    .line 68
    iget-object v2, p3, Lmobi/beyondpod/ui/views/myepisodesview/SectionMyEpisodesHeaderAdapter$Holder;->SubTitle1:Landroid/widget/TextView;

    const-wide/16 v3, 0x0

    cmp-long v5, v0, v3

    if-lez v5, :cond_3

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-static {p1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->getFileLengthAsString(Ljava/lang/Long;)Ljava/lang/String;

    move-result-object p1

    :cond_3
    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 70
    iget-object p1, p3, Lmobi/beyondpod/ui/views/myepisodesview/SectionMyEpisodesHeaderAdapter$Holder;->SectionDivider:Landroid/view/View;

    iget-object p3, p0, Lmobi/beyondpod/ui/views/myepisodesview/SectionMyEpisodesHeaderAdapter;->_Owner:Lmobi/beyondpod/ui/views/myepisodesview/SectionMyEpisodesHeaderAdapter$IMyEpisodesHeaderAdapterOwner;

    invoke-interface {p3}, Lmobi/beyondpod/ui/views/myepisodesview/SectionMyEpisodesHeaderAdapter$IMyEpisodesHeaderAdapterOwner;->getDividerColor()I

    move-result p3

    invoke-virtual {p1, p3}, Landroid/view/View;->setBackgroundColor(I)V

    return-object p2
.end method
